package oauth.signpost.exception;

public class OAuthCommunicationException extends Exception
{
  public OAuthCommunicationException(Exception paramException)
  {
    super("Communication with the service provider failed: " + paramException.getLocalizedMessage(), paramException);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     oauth.signpost.exception.OAuthCommunicationException
 * JD-Core Version:    0.6.0
 */