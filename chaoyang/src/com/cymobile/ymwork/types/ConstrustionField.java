package com.cymobile.ymwork.types;

public class ConstrustionField extends DataItemBase
  implements BaseType
{
  private String affactearea;
  private String bigCategory;
  private long buildingreplydatetime;
  private String caseType;
  private String case_type_id;
  private String casedescription;
  private String casedetail;
  private String caseid;
  private String casestate;
  private int classids;
  private String community;
  private String geox;
  private String geoy;
  private String grid;
  private String id;
  private String image;
  String img;
  String img1;
  private int iswangge;
  private Reply lastReply;
  private String leftdownx;
  private String leftdowny;
  private String location;
  private String object_id;
  private String object_name;
  private String reportmethod;
  private String reporttime;
  private String rightupx;
  private String rightupy;
  private String smallCategory;
  private String type;

  public String getAffactearea()
  {
    return this.affactearea;
  }

  public String getBigCategory()
  {
    return this.bigCategory;
  }

  public long getBuildingreplydatetime()
  {
    return this.buildingreplydatetime;
  }

  public String getCaseType()
  {
    return this.caseType;
  }

  public String getCase_type_id()
  {
    return this.case_type_id;
  }

  public String getCasedescription()
  {
    return this.casedescription;
  }

  public String getCasedetail()
  {
    return this.casedetail;
  }

  public String getCaseid()
  {
    return this.caseid;
  }

  public String getCasestate()
  {
    return this.casestate;
  }

  public int getClassids()
  {
    return this.classids;
  }

  public String getCommunity()
  {
    return this.community;
  }

  public String getDistance()
  {
    return "12";
  }

  public String getGeox()
  {
    return this.geox;
  }

  public String getGeoy()
  {
    return this.geoy;
  }

  public String getGrid()
  {
    return this.grid;
  }

  public String getId()
  {
    return this.id;
  }

  public String getImgUrl()
  {
    if ((this.img != null) && (this.img.trim().length() > 0) && (!this.img.equals("null")))
      try
      {
        String str = "http://203.86.54.62:8080" + "/workclass/" + this.img + ".jpg";
        return str;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        return this.img;
      }
    return this.img;
  }

  public String getImgUrl1()
  {
    if (this.img1 != null)
      try
      {
        String str = "http://203.86.54.62:8080" + "/workclass/" + this.img1 + ".jpg";
        return str;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        return this.img1;
      }
    return this.img1;
  }

  public boolean getIsWange()
  {
    return this.iswangge == 1;
  }

  public Reply getLastReply()
  {
    return this.lastReply;
  }

  public String getLeftdownx()
  {
    return this.leftdownx;
  }

  public String getLeftdowny()
  {
    return this.leftdowny;
  }

  public String getLocation()
  {
    return this.location;
  }

  public String getObject_id()
  {
    return this.object_id;
  }

  public String getObject_name()
  {
    return this.object_name;
  }

  public String getReportmethod()
  {
    return this.reportmethod;
  }

  public String getReporttime()
  {
    return this.reporttime;
  }

  public String getRightupx()
  {
    return this.rightupx;
  }

  public String getRightupy()
  {
    return this.rightupy;
  }

  public String getSmallCategory()
  {
    return this.smallCategory;
  }

  public String getType()
  {
    return this.type;
  }

  public void setAffactearea(String paramString)
  {
    this.affactearea = paramString;
  }

  public void setBigCategory(String paramString)
  {
    this.bigCategory = paramString;
  }

  public void setBuildingreplydatetime(long paramLong)
  {
    this.buildingreplydatetime = paramLong;
  }

  public void setCaseType(String paramString)
  {
    this.caseType = paramString;
  }

  public void setCase_type_id(String paramString)
  {
    this.case_type_id = paramString;
  }

  public void setCasedescription(String paramString)
  {
    this.casedescription = paramString;
  }

  public void setCasedetail(String paramString)
  {
    this.casedetail = paramString;
  }

  public void setCaseid(String paramString)
  {
    this.caseid = paramString;
  }

  public void setCasestate(String paramString)
  {
    this.casestate = paramString;
  }

  public void setClassids(int paramInt)
  {
    this.classids = paramInt;
  }

  public void setCommunity(String paramString)
  {
    this.community = paramString;
  }

  public void setGeox(String paramString)
  {
    this.geox = paramString;
  }

  public void setGeoy(String paramString)
  {
    this.geoy = paramString;
  }

  public void setGrid(String paramString)
  {
    this.grid = paramString;
  }

  public void setId(String paramString)
  {
    this.id = paramString;
  }

  public void setImgUrl(String paramString)
  {
    this.img = paramString;
  }

  public void setImgUrl1(String paramString)
  {
    this.img1 = paramString;
  }

  public void setIswangge(int paramInt)
  {
    this.iswangge = paramInt;
  }

  public void setLastReply(Reply paramReply)
  {
    this.lastReply = paramReply;
  }

  public void setLeftdownx(String paramString)
  {
    this.leftdownx = paramString;
  }

  public void setLeftdowny(String paramString)
  {
    this.leftdowny = paramString;
  }

  public void setLocation(String paramString)
  {
    this.location = paramString;
  }

  public void setObject_id(String paramString)
  {
    this.object_id = paramString;
  }

  public void setObject_name(String paramString)
  {
    this.object_name = paramString;
  }

  public void setReportmethod(String paramString)
  {
    this.reportmethod = paramString;
  }

  public void setReporttime(String paramString)
  {
    this.reporttime = paramString;
  }

  public void setRightupx(String paramString)
  {
    this.rightupx = paramString;
  }

  public void setRightupy(String paramString)
  {
    this.rightupy = paramString;
  }

  public void setSmallCategory(String paramString)
  {
    this.smallCategory = paramString;
  }

  public void setType(String paramString)
  {
    this.type = paramString;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.types.ConstrustionField
 * JD-Core Version:    0.6.0
 */