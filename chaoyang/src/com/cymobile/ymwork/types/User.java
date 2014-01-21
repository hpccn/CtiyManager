package com.cymobile.ymwork.types;

public class User extends DataItemBase
  implements BaseType
{
  public static final boolean FEMALE = false;
  public static final boolean MALE = true;
  private boolean admin = false;
  private int age;
  private String createdTime;
  private String desc;
  private boolean gender;
  private String id;
  private String image;
  private String imageLarge;
  private String lastLoginTime;
  private String lastgeo;
  private String location;
  private String mobile;
  private String password;
  private String userName;
  private String workcompany;
  private String workpost;
  private String zoneName;
  private String zoneid;

  public int getAge()
  {
    return this.age;
  }

  public String getCreatedTime()
  {
    return this.createdTime;
  }

  public String getDesc()
  {
    return this.desc;
  }

  public boolean getGender()
  {
    return this.gender;
  }

  public String getId()
  {
    return this.id;
  }

  public String getImage()
  {
    return this.image;
  }

  public String getImageLarge()
  {
    return this.imageLarge;
  }

  public String getLastLoginTime()
  {
    return this.lastLoginTime;
  }

  public String getLastgeo()
  {
    return this.lastgeo;
  }

  public String getLocation()
  {
    return this.location;
  }

  public String getMobile()
  {
    return this.mobile;
  }

  public String getPassword()
  {
    return this.password;
  }

  public String getUserName()
  {
    return this.userName;
  }

  public String getWorkcompany()
  {
    return this.workcompany;
  }

  public String getWorkpost()
  {
    return this.workpost;
  }

  public String getZoneName()
  {
    return this.zoneName;
  }

  public String getZoneid()
  {
    return this.zoneid;
  }

  public boolean isAdmin()
  {
    return this.admin;
  }

  public void setAdmin(boolean paramBoolean)
  {
    this.admin = paramBoolean;
  }

  public void setAge(int paramInt)
  {
    this.age = paramInt;
  }

  public void setCreatedTime(String paramString)
  {
    this.createdTime = paramString;
  }

  public void setDesc(String paramString)
  {
    this.desc = paramString;
  }

  public void setGender(boolean paramBoolean)
  {
    this.gender = paramBoolean;
  }

  public void setId(String paramString)
  {
    this.id = paramString;
  }

  public void setImage(String paramString)
  {
    this.image = paramString;
  }

  public void setImageLarge(String paramString)
  {
    this.imageLarge = paramString;
  }

  public void setLastLoginTime(String paramString)
  {
    this.lastLoginTime = paramString;
  }

  public void setLastgeo(String paramString)
  {
    this.lastgeo = paramString;
  }

  public void setLocation(String paramString)
  {
    this.location = paramString;
  }

  public void setMobile(String paramString)
  {
    this.mobile = paramString;
  }

  public void setPassword(String paramString)
  {
    this.password = paramString;
  }

  public void setUserName(String paramString)
  {
    this.userName = paramString;
  }

  public void setWorkcompany(String paramString)
  {
    this.workcompany = paramString;
  }

  public void setWorkpost(String paramString)
  {
    this.workpost = paramString;
  }

  public void setZoneName(String paramString)
  {
    this.zoneName = paramString;
  }

  public void setZoneid(String paramString)
  {
    this.zoneid = paramString;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.types.User
 * JD-Core Version:    0.6.0
 */