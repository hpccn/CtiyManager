package com.cymobile.ymwork.types;

public class Photo extends DataItemBase
  implements BaseType
{
  private int flowerstimes;
  private String photethumb = "";
  private String photoaboutid = "";
  private String photoclass = "";
  private String photodesc = "";
  private String photoid = "";
  private String photoowner = "";
  private long phototime;
  private String phototype = "";
  private String photourl = null;

  public int getFlowerstimes()
  {
    return this.flowerstimes;
  }

  public String getPhotethumb()
  {
    return this.photethumb;
  }

  public String getPhotoaboutid()
  {
    return this.photoaboutid;
  }

  public String getPhotoclass()
  {
    return this.photoclass;
  }

  public String getPhotodesc()
  {
    return this.photodesc;
  }

  public String getPhotoid()
  {
    return this.photoid;
  }

  public String getPhotoowner()
  {
    return this.photoowner;
  }

  public long getPhototime()
  {
    return this.phototime;
  }

  public String getPhototype()
  {
    return this.phototype;
  }

  public String getPhotourl()
  {
    return this.photourl;
  }

  public void setFlowerstimes(int paramInt)
  {
    this.flowerstimes = paramInt;
  }

  public void setPhotethumb(String paramString)
  {
    this.photethumb = paramString;
  }

  public void setPhotoaboutid(String paramString)
  {
    this.photoaboutid = paramString;
  }

  public void setPhotoclass(String paramString)
  {
    this.photoclass = paramString;
  }

  public void setPhotodesc(String paramString)
  {
    this.photodesc = paramString;
  }

  public void setPhotoid(String paramString)
  {
    this.photoid = paramString;
  }

  public void setPhotoowner(String paramString)
  {
    this.photoowner = paramString;
  }

  public void setPhototime(long paramLong)
  {
    this.phototime = paramLong;
  }

  public void setPhototype(String paramString)
  {
    this.phototype = paramString;
  }

  public void setPhotourl(String paramString)
  {
    this.photourl = paramString;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.types.Photo
 * JD-Core Version:    0.6.0
 */