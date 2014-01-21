package com.cymobile.ymwork.server.error;

public class ServerException extends Exception
{
  public static final int ErrorCode_Custom = 66;
  public static final int ErrorCode_DataDuplicated = 21;
  public static final int ErrorCode_DataError = 25;
  public static final int ErrorCode_DataTypeWrong = 30;
  public static final int ErrorCode_noData = 20;
  public static final int ErrorCode_serverError = 10;
  private static final long serialVersionUID = 1L;
  int errorCode = 0;
  private String mExtra;

  public ServerException(String paramString)
  {
    super(paramString);
  }

  public ServerException(String paramString1, String paramString2)
  {
    super(paramString1);
    this.mExtra = paramString2;
  }

  public ServerException(String paramString1, String paramString2, int paramInt)
  {
    super(paramString1);
    this.mExtra = paramString2;
    this.errorCode = paramInt;
  }

  public int getErrorCode()
  {
    return this.errorCode;
  }

  public String getExtra()
  {
    return this.mExtra;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.server.error.ServerException
 * JD-Core Version:    0.6.0
 */