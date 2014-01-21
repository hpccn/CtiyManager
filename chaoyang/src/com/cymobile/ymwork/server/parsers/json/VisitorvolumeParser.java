package com.cymobile.ymwork.server.parsers.json;

import com.cymobile.ymwork.types.VisitorvolumeReport;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;
import org.json.JSONException;
import org.json.JSONObject;

public class VisitorvolumeParser extends AbstractParser<VisitorvolumeReport>
{
  public VisitorvolumeReport parse(JSONObject paramJSONObject)
    throws JSONException
  {
    VisitorvolumeReport localVisitorvolumeReport = null;
    if (paramJSONObject != null)
    {
      localVisitorvolumeReport = new VisitorvolumeReport();
      if (paramJSONObject.has("times"))
        localVisitorvolumeReport.setTimes(paramJSONObject.getString("times"));
    }
    try
    {
      if (paramJSONObject.has("time"))
        localVisitorvolumeReport.setTime(paramJSONObject.getString("time"));
      if (paramJSONObject.has("registTimes"))
        localVisitorvolumeReport.setRegistTimes(paramJSONObject.getString("registTimes"));
    }
    catch (Exception localException1)
    {
      try
      {
        if (paramJSONObject.has("registTime"))
        {
          SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("HH");
          localSimpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
          localVisitorvolumeReport.setRegistTime(localSimpleDateFormat.format(new Date(paramJSONObject.getLong("registTime"))));
        }
        return localVisitorvolumeReport;
        localException1 = localException1;
        localException1.printStackTrace();
      }
      catch (Exception localException2)
      {
        localException2.printStackTrace();
      }
    }
    return localVisitorvolumeReport;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.server.parsers.json.VisitorvolumeParser
 * JD-Core Version:    0.6.0
 */