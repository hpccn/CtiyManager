package com.cymobile.ymwork.server.parsers.json;

import com.cymobile.ymwork.types.ServerSettings;
import org.json.JSONException;
import org.json.JSONObject;

public class SettingsParser extends AbstractParser<ServerSettings>
{
  public ServerSettings parse(JSONObject paramJSONObject)
    throws JSONException
  {
    ServerSettings localServerSettings = new ServerSettings();
    if (paramJSONObject.has("feeds_key"))
      localServerSettings.setFeedsKey(paramJSONObject.getString("feeds_key"));
    if (paramJSONObject.has("get_pings"))
      localServerSettings.setGetPings(paramJSONObject.getBoolean("get_pings"));
    if (paramJSONObject.has("pings"))
      localServerSettings.setPings(paramJSONObject.getString("pings"));
    if (paramJSONObject.has("version"))
      localServerSettings.setVersion(paramJSONObject.getString("version"));
    if (paramJSONObject.has("versionName"))
      localServerSettings.setVersionName(paramJSONObject.getString("versionName"));
    if (paramJSONObject.has("versiondesc"))
      localServerSettings.setVersiondesc(paramJSONObject.getString("versiondesc"));
    if (paramJSONObject.has("downloadaddress"))
      localServerSettings.setDownloadaddress(paramJSONObject.getString("downloadaddress"));
    return localServerSettings;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.server.parsers.json.SettingsParser
 * JD-Core Version:    0.6.0
 */