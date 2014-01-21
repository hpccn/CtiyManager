package oauth.signpost.basic;

import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import oauth.signpost.http.HttpRequest;

public class HttpRequestAdapter
  implements HttpRequest
{
  protected HttpURLConnection connection;

  public HttpRequestAdapter(HttpURLConnection paramHttpURLConnection)
  {
    this.connection = paramHttpURLConnection;
  }

  public String getContentType()
  {
    return this.connection.getRequestProperty("Content-Type");
  }

  public String getHeader(String paramString)
  {
    return this.connection.getRequestProperty(paramString);
  }

  public InputStream getMessagePayload()
    throws IOException
  {
    return null;
  }

  public String getMethod()
  {
    return this.connection.getRequestMethod();
  }

  public String getRequestUrl()
  {
    return this.connection.getURL().toExternalForm();
  }

  public void setHeader(String paramString1, String paramString2)
  {
    this.connection.setRequestProperty(paramString1, paramString2);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     oauth.signpost.basic.HttpRequestAdapter
 * JD-Core Version:    0.6.0
 */