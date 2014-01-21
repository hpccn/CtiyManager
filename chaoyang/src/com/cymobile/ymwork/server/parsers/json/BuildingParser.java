package com.cymobile.ymwork.server.parsers.json;

import com.cymobile.ymwork.types.Building;
import com.cymobile.ymwork.types.Reply;
import org.json.JSONException;
import org.json.JSONObject;

public class BuildingParser extends AbstractParser<Building>
{
  public Building parse(JSONObject paramJSONObject)
    throws JSONException
  {
    Building localBuilding = null;
    if (paramJSONObject != null)
    {
      localBuilding = new Building();
      if (paramJSONObject.has("id"))
        localBuilding.setId(paramJSONObject.getString("id"));
      if (paramJSONObject.has("system"))
        localBuilding.setSystem(paramJSONObject.getString("system"));
      if (paramJSONObject.has("caseid"))
        localBuilding.setCaseId(paramJSONObject.getString("caseid"));
      if (paramJSONObject.has("casetype"))
        localBuilding.setCaseType(paramJSONObject.getString("casetype"));
      if (paramJSONObject.has("bigcategory"))
        localBuilding.setBigCategory(paramJSONObject.getString("bigcategory"));
      if (paramJSONObject.has("smallcategory"))
        localBuilding.setSmallCategory(paramJSONObject.getString("smallcategory"));
      if (paramJSONObject.has("casedetail"))
        localBuilding.setCaseDetail(paramJSONObject.getString("casedetail"));
      if (paramJSONObject.has("reportmethod"))
        localBuilding.setReportMethod(paramJSONObject.getString("reportmethod"));
      if (paramJSONObject.has("buildingreplydatetime"))
        localBuilding.setReportTime(Long.parseLong(paramJSONObject.getString("buildingreplydatetime")) - 28800000L);
    }
    try
    {
      if (paramJSONObject.has("reportdatetime"))
        localBuilding.setReportTime(paramJSONObject.getLong("reportdatetime") - 28800000L);
      if (paramJSONObject.has("affixnum"))
        localBuilding.setAffixNum(paramJSONObject.getString("affixnum"));
      if (paramJSONObject.has("casestate"))
        localBuilding.setCaseState(paramJSONObject.getString("casestate"));
      if (paramJSONObject.has("region"))
        localBuilding.setRegion(paramJSONObject.getString("region"));
      if (paramJSONObject.has("street"))
        localBuilding.setStreet(paramJSONObject.getString("street"));
      if (paramJSONObject.has("community"))
        localBuilding.setCommunity(paramJSONObject.getString("community"));
      if (paramJSONObject.has("grid"))
        localBuilding.setGrid(paramJSONObject.getString("grid"));
      if (paramJSONObject.has("casedescription"))
        localBuilding.setCaseDescription(paramJSONObject.getString("casedescription"));
      if (paramJSONObject.has("location"))
        localBuilding.setLocation(paramJSONObject.getString("location"));
      if ((paramJSONObject.has("affactearea")) && (!paramJSONObject.getString("affactearea").startsWith("null")))
        localBuilding.setAffectArea(paramJSONObject.getString("affactearea"));
      if (paramJSONObject.has("geox"))
        localBuilding.setGeoX(paramJSONObject.getString("geox"));
      if (paramJSONObject.has("geoy"))
        localBuilding.setGeoY(paramJSONObject.getString("geoy"));
      if (paramJSONObject.has("image"))
        localBuilding.setImgUrl(paramJSONObject.getString("image"));
      if (paramJSONObject.has("imagething"))
        localBuilding.setImgUrl1(paramJSONObject.getString("imagething"));
      if (paramJSONObject.has("iswangge"))
        localBuilding.setIsWange(paramJSONObject.getInt("iswangge"));
      if (paramJSONObject.has("classids"))
        localBuilding.setclassid(paramJSONObject.getInt("classids"));
      if ((!paramJSONObject.has("replyid")) || (paramJSONObject.getString("replyid").trim().equals("null")) || (paramJSONObject.getString("replyid").trim().equals("0")));
    }
    catch (Exception localException1)
    {
      try
      {
        Reply localReply = new Reply();
        if ((paramJSONObject.has("replyid")) && (!paramJSONObject.getString("replyid").trim().equals("null")))
          localReply.setReplyId(paramJSONObject.getString("replyid"));
        if (paramJSONObject.has("replyresult"))
          localReply.setQulingdaopishi(paramJSONObject.getString("replyresult"));
        if (paramJSONObject.has("replydetail"))
          localReply.setQulingdaodetail(paramJSONObject.getString("replydetail"));
        if (paramJSONObject.has("replydesc"))
          localReply.setQulingdaodesc(paramJSONObject.getString("replydesc"));
        if (paramJSONObject.has("replydate_long"))
          localReply.setReplyTime(paramJSONObject.getLong("replydate_long"));
        localBuilding.setLastReply(localReply);
        return localBuilding;
        localException1 = localException1;
        localException1.printStackTrace();
      }
      catch (Exception localException2)
      {
        localException2.printStackTrace();
      }
    }
    return localBuilding;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.server.parsers.json.BuildingParser
 * JD-Core Version:    0.6.0
 */