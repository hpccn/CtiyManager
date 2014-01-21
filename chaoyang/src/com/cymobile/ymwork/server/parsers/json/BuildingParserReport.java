package com.cymobile.ymwork.server.parsers.json;

import com.cymobile.ymwork.types.BuildingReport;
import com.cymobile.ymwork.types.Group;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class BuildingParserReport extends AbstractParser<BuildingReport>
{
  public BuildingReport parse(JSONObject paramJSONObject)
    throws JSONException
  {
    BuildingReport localBuildingReport = null;
    if (paramJSONObject != null)
    {
      localBuildingReport = new BuildingReport();
      if (paramJSONObject.has("number_all"))
        localBuildingReport.setNumber_all(paramJSONObject.getInt("number_all"));
      if (paramJSONObject.has("area_all"))
        localBuildingReport.setArea_all(paramJSONObject.getInt("area_all"));
      if (paramJSONObject.has("maxnum"))
        localBuildingReport.setMaxnum(paramJSONObject.getInt("maxnum"));
      if (!paramJSONObject.has("numberarea_all"));
    }
    try
    {
      localJSONArray2 = paramJSONObject.getJSONArray("numberarea_all");
      if ((localJSONArray2 != null) && (localJSONArray2.length() > 0))
      {
        localGroup2 = new Group();
        j = 0;
        if (j >= localJSONArray2.length())
          localBuildingReport.setItems(localGroup2);
      }
      else
      {
        label129: if (paramJSONObject.has("avgsum"))
          localBuildingReport.setAvgsum(paramJSONObject.getString("avgsum"));
        if (!paramJSONObject.has("avgjson"));
      }
    }
    catch (Exception localException2)
    {
      try
      {
        JSONArray localJSONArray2;
        Group localGroup2;
        int j;
        JSONArray localJSONArray1 = paramJSONObject.getJSONArray("avgjson");
        Group localGroup1;
        if ((localJSONArray1 != null) && (localJSONArray1.length() > 0))
          localGroup1 = new Group();
        for (int i = 0; ; i++)
        {
          if (i >= localJSONArray1.length())
          {
            localBuildingReport.setAvgs(localGroup1);
            return localBuildingReport;
            localGroup2.add(new BuildingReportItmeParser().parse(localJSONArray2.getJSONObject(j)));
            j++;
            break;
            localException2 = localException2;
            localException2.printStackTrace();
            break label129;
          }
          localGroup1.add(new ConstrustionFieldAvgItmeParser().parse(localJSONArray1.getJSONObject(i)));
        }
      }
      catch (Exception localException1)
      {
        localException1.printStackTrace();
      }
    }
    return localBuildingReport;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.server.parsers.json.BuildingParserReport
 * JD-Core Version:    0.6.0
 */