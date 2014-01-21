package oauth.signpost.commonshttp;

import oauth.signpost.AbstractOAuthConsumer;
import oauth.signpost.signature.SignatureMethod;

public class CommonsHttpOAuthConsumer extends AbstractOAuthConsumer
{
  public CommonsHttpOAuthConsumer(String paramString1, String paramString2, SignatureMethod paramSignatureMethod)
  {
    super(paramString1, paramString2, paramSignatureMethod);
  }

  protected oauth.signpost.http.HttpRequest wrap(Object paramObject)
  {
    if (!(paramObject instanceof org.apache.http.HttpRequest))
      throw new IllegalArgumentException("This consumer expects requests of type " + org.apache.http.HttpRequest.class.getCanonicalName());
    return new HttpRequestAdapter((org.apache.http.HttpRequest)paramObject);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     oauth.signpost.commonshttp.CommonsHttpOAuthConsumer
 * JD-Core Version:    0.6.0
 */