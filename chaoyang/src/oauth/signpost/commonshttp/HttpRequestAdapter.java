package oauth.signpost.commonshttp;

import java.io.IOException;
import java.io.InputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.RequestLine;

public class HttpRequestAdapter
  implements oauth.signpost.http.HttpRequest
{
  private HttpEntity entity;
  private org.apache.http.HttpRequest request;

  public HttpRequestAdapter(org.apache.http.HttpRequest paramHttpRequest)
  {
    this.request = paramHttpRequest;
    if ((paramHttpRequest instanceof HttpEntityEnclosingRequest))
      this.entity = ((HttpEntityEnclosingRequest)paramHttpRequest).getEntity();
  }

  public String getContentType()
  {
    if (this.entity == null);
    Header localHeader;
    do
    {
      return null;
      localHeader = this.entity.getContentType();
    }
    while (localHeader == null);
    return localHeader.getValue();
  }

  public String getHeader(String paramString)
  {
    Header localHeader = this.request.getFirstHeader(paramString);
    if (localHeader == null)
      return null;
    return localHeader.getValue();
  }

  public InputStream getMessagePayload()
    throws IOException
  {
    if (this.entity == null)
      return null;
    return this.entity.getContent();
  }

  public String getMethod()
  {
    return this.request.getRequestLine().getMethod();
  }

  public String getRequestUrl()
  {
    return this.request.getRequestLine().getUri();
  }

  public void setHeader(String paramString1, String paramString2)
  {
    this.request.setHeader(paramString1, paramString2);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     oauth.signpost.commonshttp.HttpRequestAdapter
 * JD-Core Version:    0.6.0
 */