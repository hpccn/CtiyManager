package com.cymobile.ymwork.types;

public class Credentials
  implements BaseType
{
  private String mOauthToken;
  private String mOauthTokenSecret;

  public String getOauthToken()
  {
    return this.mOauthToken;
  }

  public String getOauthTokenSecret()
  {
    return this.mOauthTokenSecret;
  }

  public void setOauthToken(String paramString)
  {
    this.mOauthToken = paramString;
  }

  public void setOauthTokenSecret(String paramString)
  {
    this.mOauthTokenSecret = paramString;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.types.Credentials
 * JD-Core Version:    0.6.0
 */