package com.cymobile.ymwork.server.http;

import android.util.Log;
import com.cymobile.ymwork.server.error.ServerCredentialsException;
import com.cymobile.ymwork.server.error.ServerException;
import com.cymobile.ymwork.server.error.ServerParseException;
import com.cymobile.ymwork.server.parsers.json.Parser;
import com.cymobile.ymwork.types.BaseType;
import com.cymobile.ymwork.utils.JSONUtils;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.ParseException;
import org.apache.http.StatusLine;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpRequestBase;
import org.apache.http.client.params.HttpClientParams;
import org.apache.http.client.utils.URLEncodedUtils;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.util.EntityUtils;

public abstract class AbstractHttpApi
  implements HttpApi
{
  private static final String CLIENT_VERSION_HEADER = "User-Agent";
  protected static final boolean DEBUG = true;
  private static final String DEFAULT_CLIENT_VERSION = "com.angeline.mob";
  protected static final Logger LOG = Logger.getLogger(AbstractHttpApi.class.getCanonicalName());
  private static final int TIMEOUT = 60;
  private final String mClientVersion;
  private final DefaultHttpClient mHttpClient;

  public AbstractHttpApi(DefaultHttpClient paramDefaultHttpClient, String paramString)
  {
    this.mHttpClient = paramDefaultHttpClient;
    if (paramString != null)
    {
      this.mClientVersion = paramString;
      return;
    }
    this.mClientVersion = "com.angeline.mob";
  }

  public static final DefaultHttpClient createHttpClient()
  {
    SchemeRegistry localSchemeRegistry = new SchemeRegistry();
    localSchemeRegistry.register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
    localSchemeRegistry.register(new Scheme("https", SSLSocketFactory.getSocketFactory(), 443));
    HttpParams localHttpParams = createHttpParams();
    HttpClientParams.setRedirecting(localHttpParams, false);
    return new DefaultHttpClient(new ThreadSafeClientConnManager(localHttpParams, localSchemeRegistry), localHttpParams);
  }

  private static final HttpParams createHttpParams()
  {
    BasicHttpParams localBasicHttpParams = new BasicHttpParams();
    HttpConnectionParams.setStaleCheckingEnabled(localBasicHttpParams, false);
    HttpConnectionParams.setConnectionTimeout(localBasicHttpParams, 60000);
    HttpConnectionParams.setSoTimeout(localBasicHttpParams, 60000);
    HttpConnectionParams.setSocketBufferSize(localBasicHttpParams, 8192);
    return localBasicHttpParams;
  }

  private List<NameValuePair> stripNulls(NameValuePair[] paramArrayOfNameValuePair)
  {
    ArrayList localArrayList = new ArrayList();
    for (int i = 0; ; i++)
    {
      if (i >= paramArrayOfNameValuePair.length)
        return localArrayList;
      NameValuePair localNameValuePair = paramArrayOfNameValuePair[i];
      if (localNameValuePair.getValue() == null)
        continue;
      LOG.log(Level.FINE, "Param: " + localNameValuePair);
      localArrayList.add(localNameValuePair);
    }
  }

  public HttpGet createHttpGet(String paramString, NameValuePair[] paramArrayOfNameValuePair)
  {
    LOG.log(Level.FINE, "creating HttpGet for: " + paramString);
    String str = URLEncodedUtils.format(stripNulls(paramArrayOfNameValuePair), "UTF-8");
    HttpGet localHttpGet = new HttpGet(paramString + "?" + str);
    localHttpGet.addHeader("User-Agent", this.mClientVersion);
    LOG.log(Level.FINE, "Created: " + localHttpGet.getURI());
    return localHttpGet;
  }

  public HttpPost createHttpPost(String paramString, NameValuePair[] paramArrayOfNameValuePair)
  {
    LOG.log(Level.FINE, "creating HttpPost for: " + paramString);
    HttpPost localHttpPost = new HttpPost(paramString);
    localHttpPost.addHeader("User-Agent", this.mClientVersion);
    try
    {
      localHttpPost.setEntity(new UrlEncodedFormEntity(stripNulls(paramArrayOfNameValuePair), "UTF-8"));
      LOG.log(Level.FINE, "Created: " + localHttpPost);
      return localHttpPost;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
    }
    throw new IllegalArgumentException("Unable to encode http parameters.");
  }

  public HttpURLConnection createHttpURLConnectionPost(URL paramURL, String paramString)
    throws IOException
  {
    HttpURLConnection localHttpURLConnection = (HttpURLConnection)paramURL.openConnection();
    localHttpURLConnection.setDoInput(true);
    localHttpURLConnection.setDoOutput(true);
    localHttpURLConnection.setUseCaches(false);
    localHttpURLConnection.setConnectTimeout(60000);
    localHttpURLConnection.setRequestMethod("POST");
    localHttpURLConnection.setRequestProperty("User-Agent", this.mClientVersion);
    localHttpURLConnection.setRequestProperty("Connection", "Keep-Alive");
    localHttpURLConnection.setRequestProperty("Content-Type", "multipart/form-data;boundary=" + paramString);
    return localHttpURLConnection;
  }

  public String doHttpPost(String paramString, NameValuePair[] paramArrayOfNameValuePair)
    throws ServerCredentialsException, ServerParseException, ServerException, IOException
  {
    LOG.log(Level.FINE, "doHttpPost: " + paramString);
    HttpPost localHttpPost = createHttpPost(paramString, paramArrayOfNameValuePair);
    HttpResponse localHttpResponse = executeHttpRequest(localHttpPost);
    LOG.log(Level.FINE, "executed HttpRequest for: " + localHttpPost.getURI().toString());
    switch (localHttpResponse.getStatusLine().getStatusCode())
    {
    default:
      localHttpResponse.getEntity().consumeContent();
      throw new ServerException(localHttpResponse.getStatusLine().toString());
    case 200:
      try
      {
        String str = EntityUtils.toString(localHttpResponse.getEntity());
        return str;
      }
      catch (ParseException localParseException)
      {
        throw new ServerParseException(localParseException.getMessage());
      }
    case 401:
      localHttpResponse.getEntity().consumeContent();
      throw new ServerCredentialsException(localHttpResponse.getStatusLine().toString());
    case 404:
    }
    localHttpResponse.getEntity().consumeContent();
    throw new ServerException(localHttpResponse.getStatusLine().toString());
  }

  public BaseType executeHttpRequest(HttpRequestBase paramHttpRequestBase, Parser<? extends BaseType> paramParser)
    throws ServerCredentialsException, ServerParseException, ServerException, IOException
  {
    LOG.log(Level.FINE, "doHttpRequest: " + paramHttpRequestBase.getURI());
    Log.i("HttpApi", paramHttpRequestBase.getURI().toString());
    HttpResponse localHttpResponse = executeHttpRequest(paramHttpRequestBase);
    LOG.log(Level.FINE, "executed HttpRequest for: " + paramHttpRequestBase.getURI().toString());
    int i = localHttpResponse.getStatusLine().getStatusCode();
    switch (i)
    {
    default:
      localHttpResponse.getEntity().consumeContent();
      throw new ServerException("Error connecting to Server: " + i + ". Try again later.");
    case 200:
      return JSONUtils.consume(paramParser, EntityUtils.toString(localHttpResponse.getEntity()));
    case 400:
      LOG.log(Level.FINE, "HTTP Code: 400");
      throw new ServerException(localHttpResponse.getStatusLine().toString(), EntityUtils.toString(localHttpResponse.getEntity()), 400);
    case 401:
      localHttpResponse.getEntity().consumeContent();
      throw new ServerCredentialsException(localHttpResponse.getStatusLine().toString());
    case 404:
      localHttpResponse.getEntity().consumeContent();
      throw new ServerException(localHttpResponse.getStatusLine().toString(), "", 404);
    case 500:
    }
    localHttpResponse.getEntity().consumeContent();
    throw new ServerException("Server is down. Try again later.", "", 500);
  }

  public HttpResponse executeHttpRequest(HttpRequestBase paramHttpRequestBase)
    throws IOException
  {
    LOG.log(Level.FINE, "executing HttpRequest for: " + paramHttpRequestBase.getURI().toString());
    try
    {
      this.mHttpClient.getConnectionManager().closeExpiredConnections();
      HttpResponse localHttpResponse = this.mHttpClient.execute(paramHttpRequestBase);
      return localHttpResponse;
    }
    catch (IOException localIOException)
    {
      paramHttpRequestBase.abort();
    }
    throw localIOException;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.server.http.AbstractHttpApi
 * JD-Core Version:    0.6.0
 */