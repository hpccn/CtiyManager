package oauth.signpost;

import java.io.Serializable;
import java.util.Map;
import oauth.signpost.exception.OAuthCommunicationException;
import oauth.signpost.exception.OAuthExpectationFailedException;
import oauth.signpost.exception.OAuthMessageSignerException;
import oauth.signpost.exception.OAuthNotAuthorizedException;

public abstract interface OAuthProvider extends Serializable
{
  public abstract String getAccessTokenEndpointUrl();

  public abstract String getAuthorizationWebsiteUrl();

  public abstract OAuthConsumer getConsumer();

  public abstract String getRequestTokenEndpointUrl();

  public abstract Map<String, String> getResponseParameters();

  public abstract boolean isOAuth10a();

  public abstract void retrieveAccessToken(String paramString)
    throws OAuthMessageSignerException, OAuthNotAuthorizedException, OAuthExpectationFailedException, OAuthCommunicationException;

  public abstract String retrieveRequestToken(String paramString)
    throws OAuthMessageSignerException, OAuthNotAuthorizedException, OAuthExpectationFailedException, OAuthCommunicationException;

  public abstract void setConsumer(OAuthConsumer paramOAuthConsumer);

  public abstract void setOAuth10a(boolean paramBoolean);
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     oauth.signpost.OAuthProvider
 * JD-Core Version:    0.6.0
 */