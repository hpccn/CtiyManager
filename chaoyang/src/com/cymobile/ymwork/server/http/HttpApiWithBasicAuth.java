package com.cymobile.ymwork.server.http;

import com.cymobile.ymwork.server.error.ServerCredentialsException;
import com.cymobile.ymwork.server.error.ServerException;
import com.cymobile.ymwork.server.error.ServerParseException;
import com.cymobile.ymwork.server.parsers.json.Parser;
import com.cymobile.ymwork.types.BaseType;
import java.io.IOException;
import org.apache.http.HttpException;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.auth.AuthScope;
import org.apache.http.auth.AuthState;
import org.apache.http.auth.Credentials;
import org.apache.http.client.CredentialsProvider;
import org.apache.http.client.methods.HttpRequestBase;
import org.apache.http.impl.auth.BasicScheme;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.protocol.HttpContext;

public class HttpApiWithBasicAuth extends AbstractHttpApi
{
  private HttpRequestInterceptor preemptiveAuth = new HttpRequestInterceptor()
  {
    public void process(HttpRequest paramHttpRequest, HttpContext paramHttpContext)
      throws HttpException, IOException
    {
      AuthState localAuthState = (AuthState)paramHttpContext.getAttribute("http.auth.target-scope");
      CredentialsProvider localCredentialsProvider = (CredentialsProvider)paramHttpContext.getAttribute("http.auth.credentials-provider");
      HttpHost localHttpHost = (HttpHost)paramHttpContext.getAttribute("http.target_host");
      if (localAuthState.getAuthScheme() == null)
      {
        Credentials localCredentials = localCredentialsProvider.getCredentials(new AuthScope(localHttpHost.getHostName(), localHttpHost.getPort()));
        if (localCredentials != null)
        {
          localAuthState.setAuthScheme(new BasicScheme());
          localAuthState.setCredentials(localCredentials);
        }
      }
    }
  };

  public HttpApiWithBasicAuth(DefaultHttpClient paramDefaultHttpClient, String paramString)
  {
    super(paramDefaultHttpClient, paramString);
    paramDefaultHttpClient.addRequestInterceptor(this.preemptiveAuth, 0);
  }

  public BaseType doHttpRequest(HttpRequestBase paramHttpRequestBase, Parser<? extends BaseType> paramParser)
    throws ServerCredentialsException, ServerParseException, ServerException, IOException
  {
    return executeHttpRequest(paramHttpRequestBase, paramParser);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.server.http.HttpApiWithBasicAuth
 * JD-Core Version:    0.6.0
 */