package com.cymobile.ymwork.server.parsers.json;

import com.cymobile.ymwork.types.BuildingReportItem;
import org.json.JSONException;
import org.json.JSONObject;

public class BuildingReportItmeParser extends AbstractParser<BuildingReportItem>
{
  public BuildingReportItem parse(JSONObject paramJSONObject)
    throws JSONException
  {
    BuildingReportItem localBuildingReportItem = null;
    if (paramJSONObject != null)
    {
      localBuildingReportItem = new BuildingReportItem();
      if (paramJSONObject.has("name"))
        localBuildingReportItem.setName(paramJSONObject.getString("name"));
      if (paramJSONObject.has("number"))
        localBuildingReportItem.setNumber(paramJSONObject.getInt("number"));
      if (paramJSONObject.has("unitname"))
        localBuildingReportItem.setUnitname(paramJSONObject.getString("unitname"));
    }
    return localBuildingReportItem;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.server.parsers.json.BuildingReportItmeParser
 * JD-Core Version:    0.6.0
 */