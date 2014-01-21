package com.cymobile.ymwork.server.http;

import com.cymobile.ymwork.server.error.ServerCredentialsException;
import com.cymobile.ymwork.server.error.ServerException;
import com.cymobile.ymwork.server.error.ServerParseException;
import com.cymobile.ymwork.server.parsers.json.Parser;
import com.cymobile.ymwork.types.BaseType;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import org.apache.http.NameValuePair;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpRequestBase;

public abstract interface HttpApi
{
  public abstract HttpGet createHttpGet(String paramString, NameValuePair[] paramArrayOfNameValuePair);

  public abstract HttpPost createHttpPost(String paramString, NameValuePair[] paramArrayOfNameValuePair);

  public abstract HttpURLConnection createHttpURLConnectionPost(URL paramURL, String paramString)
    throws IOException;

  public abstract String doHttpPost(String paramString, NameValuePair[] paramArrayOfNameValuePair)
    throws ServerCredentialsException, ServerParseException, ServerException, IOException;

  public abstract BaseType doHttpRequest(HttpRequestBase paramHttpRequestBase, Parser<? extends BaseType> paramParser)
    throws ServerCredentialsException, ServerParseException, ServerException, IOException;
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.server.http.HttpApi
 * JD-Core Version:    0.6.0
 */