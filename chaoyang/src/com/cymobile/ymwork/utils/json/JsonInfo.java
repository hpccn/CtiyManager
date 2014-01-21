package com.cymobile.ymwork.utils.json;

import java.util.List;

public abstract class JsonInfo
{
  protected String mUrl;

  public JsonInfo()
  {
    this.mUrl = null;
  }

  public JsonInfo(String paramString)
  {
    this.mUrl = paramString;
  }

  public List getInfoFromJson()
  {
    return parseJson(JsonEngine.getJson(this.mUrl));
  }

  public String getUrl()
  {
    return this.mUrl;
  }

  public abstract List parseJson(String paramString);

  public void setUrl(String paramString)
  {
    this.mUrl = paramString;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.utils.json.JsonInfo
 * JD-Core Version:    0.6.0
 */