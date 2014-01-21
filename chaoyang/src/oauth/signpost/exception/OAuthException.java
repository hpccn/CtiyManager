package oauth.signpost.exception;

public abstract class OAuthException extends Exception
{
  public OAuthException(String paramString)
  {
    super(paramString);
  }

  public OAuthException(String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
  }

  public OAuthException(Throwable paramThrowable)
  {
    super(paramThrowable);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     oauth.signpost.exception.OAuthException
 * JD-Core Version:    0.6.0
 */