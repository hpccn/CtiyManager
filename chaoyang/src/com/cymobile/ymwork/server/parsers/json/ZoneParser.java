package com.cymobile.ymwork.server.parsers.json;

import com.cymobile.ymwork.types.Zone;
import org.json.JSONException;
import org.json.JSONObject;

public class ZoneParser extends AbstractParser<Zone>
{
  public Zone parse(JSONObject paramJSONObject)
    throws JSONException
  {
    Zone localZone = new Zone();
    if (paramJSONObject.has("streetcode"))
    {
      localZone.setZoneid(paramJSONObject.getString("streetcode"));
      if ((paramJSONObject.getString("streetcode") != null) && (paramJSONObject.getString("streetcode").length() == 9) && (paramJSONObject.has("type")))
      {
        if (!"1".equals(paramJSONObject.getString("type")))
          break label170;
        localZone.setCityOrSuburb(1);
      }
    }
    while (true)
    {
      if (paramJSONObject.has("streetname"))
        localZone.setZoneName(paramJSONObject.getString("streetname"));
      if (paramJSONObject.has("commcode"))
        localZone.setZoneid(paramJSONObject.getString("commcode"));
      if (paramJSONObject.has("commname"))
        localZone.setZoneName(paramJSONObject.getString("commname"));
      if ((localZone.getZoneid() != null) && (localZone.getZoneid().length() > 9))
        localZone.setPid(localZone.getZoneid().substring(0, 9));
      return localZone;
      label170: if (!"2".equals(paramJSONObject.getString("type")))
        continue;
      localZone.setCityOrSuburb(2);
    }
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.server.parsers.json.ZoneParser
 * JD-Core Version:    0.6.0
 */