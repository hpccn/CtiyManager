package com.cymobile.ymwork.server.parsers.json;

import com.cymobile.ymwork.types.Group;
import com.cymobile.ymwork.types.VisitorvolumeReports;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class VisitorvolumeParser1 extends AbstractParser<VisitorvolumeReports>
{
  public VisitorvolumeReports parse(JSONObject paramJSONObject)
    throws JSONException
  {
    VisitorvolumeReports localVisitorvolumeReports = null;
    if (paramJSONObject != null)
    {
      localVisitorvolumeReports = new VisitorvolumeReports();
      if (!paramJSONObject.has("count"));
    }
    try
    {
      localJSONArray2 = paramJSONObject.getJSONArray("count");
      if ((localJSONArray2 != null) && (localJSONArray2.length() > 0))
      {
        localGroup2 = new Group();
        j = 0;
        if (j >= localJSONArray2.length())
          localVisitorvolumeReports.setItems(localGroup2);
      }
      else
      {
        label72: if (!paramJSONObject.has("regist"));
      }
    }
    catch (Exception localException2)
    {
      try
      {
        JSONArray localJSONArray2;
        Group localGroup2;
        int j;
        JSONArray localJSONArray1 = paramJSONObject.getJSONArray("regist");
        Group localGroup1;
        if ((localJSONArray1 != null) && (localJSONArray1.length() > 0))
          localGroup1 = new Group();
        for (int i = 0; ; i++)
        {
          if (i >= localJSONArray1.length())
          {
            localVisitorvolumeReports.setItems_regist(localGroup1);
            if (paramJSONObject.has("maxnum1"))
              localVisitorvolumeReports.setMaxnum1(paramJSONObject.getInt("maxnum1"));
            if (paramJSONObject.has("maxnum2"))
              localVisitorvolumeReports.setMaxnum2(paramJSONObject.getInt("maxnum2"));
            return localVisitorvolumeReports;
            localGroup2.add(new VisitorvolumeParser().parse(localJSONArray2.getJSONObject(j)));
            j++;
            break;
            localException2 = localException2;
            localException2.printStackTrace();
            break label72;
          }
          localGroup1.add(new VisitorvolumeParser().parse(localJSONArray1.getJSONObject(i)));
        }
      }
      catch (Exception localException1)
      {
        while (true)
          localException1.printStackTrace();
      }
    }
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.server.parsers.json.VisitorvolumeParser1
 * JD-Core Version:    0.6.0
 */