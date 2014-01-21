package oauth.signpost.basic;

import java.net.HttpURLConnection;
import oauth.signpost.AbstractOAuthConsumer;
import oauth.signpost.http.HttpRequest;
import oauth.signpost.signature.SignatureMethod;

public class DefaultOAuthConsumer extends AbstractOAuthConsumer
{
  public DefaultOAuthConsumer(String paramString1, String paramString2, SignatureMethod paramSignatureMethod)
  {
    super(paramString1, paramString2, paramSignatureMethod);
  }

  protected HttpRequest wrap(Object paramObject)
  {
    if (!(paramObject instanceof HttpURLConnection))
      throw new IllegalArgumentException("The default consumer expects requests of type java.net.HttpURLConnection");
    return new HttpRequestAdapter((HttpURLConnection)paramObject);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     oauth.signpost.basic.DefaultOAuthConsumer
 * JD-Core Version:    0.6.0
 */