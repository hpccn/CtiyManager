package com.cymobile.ymwork.types;

public class Building extends DataItemBase
  implements BaseType
{
  private String affectArea;
  private String affixNum;
  private String bigCategory;
  private String caseDescription;
  private String caseDetail;
  private String caseId;
  private String caseState;
  private String caseType;
  private int classid;
  private String community;
  private String geox;
  private String geoy;
  private String grid;
  private String id;
  String img;
  String img1;
  private int isWange;
  private Reply lastReply;
  private String location;
  private String region;
  private String reportMethod;
  private long reportTime;
  private String reporterNumber;
  private String smallCategory;
  private String street;
  private String system;

  public String getAffectArea()
  {
    return this.affectArea;
  }

  public String getAffixNum()
  {
    return this.affixNum;
  }

  public String getBigCategory()
  {
    return this.bigCategory;
  }

  public String getCaseDescription()
  {
    return this.caseDescription;
  }

  public String getCaseDetail()
  {
    return this.caseDetail;
  }

  public String getCaseId()
  {
    return this.caseId;
  }

  public String getCaseState()
  {
    return this.caseState;
  }

  public String getCaseType()
  {
    return this.caseType;
  }

  public String getClassName()
  {
    return "";
  }

  public String getCommunity()
  {
    return this.community;
  }

  public String getDistance()
  {
    return "12";
  }

  public String getGeoX()
  {
    return this.geox;
  }

  public String getGeoY()
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
        String str = "http://203.86.54.62:8080" + "/workimage/" + this.img + ".jpg";
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
        String str = "http://203.86.54.62:8080" + "/workimage/" + this.img1 + ".jpg";
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
    return this.isWange == 1;
  }

  public Reply getLastReply()
  {
    return this.lastReply;
  }

  public String getLocation()
  {
    return this.location;
  }

  public String getRegion()
  {
    return this.region;
  }

  public String getReportMethod()
  {
    return this.reportMethod;
  }

  public long getReportTime()
  {
    return this.reportTime;
  }

  public String getReporterNumber()
  {
    return this.reporterNumber;
  }

  public String getShortaddress()
  {
    return "";
  }

  public String getSmallCategory()
  {
    return this.smallCategory;
  }

  public String getStreet()
  {
    return this.street;
  }

  public String getSystem()
  {
    return this.system;
  }

  public int getclassid()
  {
    return this.classid;
  }

  public void setAffectArea(String paramString)
  {
    this.affectArea = paramString;
  }

  public void setAffixNum(String paramString)
  {
    this.affixNum = paramString;
  }

  public void setBigCategory(String paramString)
  {
    this.bigCategory = paramString;
  }

  public void setCaseDescription(String paramString)
  {
    this.caseDescription = paramString;
  }

  public void setCaseDetail(String paramString)
  {
    this.caseDetail = paramString;
  }

  public void setCaseId(String paramString)
  {
    this.caseId = paramString;
  }

  public void setCaseState(String paramString)
  {
    this.caseState = paramString;
  }

  public void setCaseType(String paramString)
  {
    this.caseType = paramString;
  }

  public void setCommunity(String paramString)
  {
    this.community = paramString;
  }

  public void setGeoX(String paramString)
  {
    this.geox = paramString;
  }

  public void setGeoY(String paramString)
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

  public void setIsWange(int paramInt)
  {
    this.isWange = paramInt;
  }

  public void setLastReply(Reply paramReply)
  {
    this.lastReply = paramReply;
  }

  public void setLocation(String paramString)
  {
    this.location = paramString;
  }

  public void setRegion(String paramString)
  {
    this.region = paramString;
  }

  public void setReportMethod(String paramString)
  {
    this.reportMethod = paramString;
  }

  public void setReportTime(long paramLong)
  {
    this.reportTime = paramLong;
  }

  public void setReporterNumber(String paramString)
  {
    this.reporterNumber = paramString;
  }

  public void setSmallCategory(String paramString)
  {
    this.smallCategory = paramString;
  }

  public void setStreet(String paramString)
  {
    this.street = paramString;
  }

  public void setSystem(String paramString)
  {
    this.system = paramString;
  }

  public void setclassid(int paramInt)
  {
    this.classid = paramInt;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.types.Building
 * JD-Core Version:    0.6.0
 */