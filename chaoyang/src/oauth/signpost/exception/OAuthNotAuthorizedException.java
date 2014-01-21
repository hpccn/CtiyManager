package oauth.signpost.exception;

public class OAuthNotAuthorizedException extends OAuthException
{
  public OAuthNotAuthorizedException()
  {
    super("Authorization failed (server replied with a 401). This can happen if the consumer key was not correct or the signatures did not match.");
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     oauth.signpost.exception.OAuthNotAuthorizedException
 * JD-Core Version:    0.6.0
 */