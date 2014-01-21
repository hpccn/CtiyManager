package oauth.signpost;

import java.io.Serializable;
import oauth.signpost.exception.OAuthExpectationFailedException;
import oauth.signpost.exception.OAuthMessageSignerException;
import oauth.signpost.http.HttpRequest;

public abstract interface OAuthConsumer extends Serializable
{
  public abstract String getConsumerKey();

  public abstract String getConsumerSecret();

  public abstract String getToken();

  public abstract String getTokenSecret();

  public abstract void setTokenWithSecret(String paramString1, String paramString2);

  public abstract HttpRequest sign(Object paramObject)
    throws OAuthMessageSignerException, OAuthExpectationFailedException;

  public abstract HttpRequest sign(HttpRequest paramHttpRequest)
    throws OAuthMessageSignerException, OAuthExpectationFailedException;
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     oauth.signpost.OAuthConsumer
 * JD-Core Version:    0.6.0
 */