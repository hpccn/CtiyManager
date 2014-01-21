package com.cymobile.ymwork.server.parsers.json;

import com.cymobile.ymwork.types.UserArea;
import org.json.JSONException;
import org.json.JSONObject;

public class UserAreaParser extends AbstractParser<UserArea>
{
  public UserArea parse(JSONObject paramJSONObject)
    throws JSONException
  {
    UserArea localUserArea = new UserArea();
    if (paramJSONObject.has("commname"))
      localUserArea.setAreaName(paramJSONObject.getString("commname"));
    if (paramJSONObject.has("streetname"))
      localUserArea.setAreaName(paramJSONObject.getString("streetname"));
    if (paramJSONObject.has("streetgeox"))
      localUserArea.setGEOX(Double.valueOf(paramJSONObject.getString("streetgeox")).doubleValue());
    if (paramJSONObject.has("commgeox"))
      localUserArea.setGEOX(Double.valueOf(paramJSONObject.getString("commgeox")).doubleValue());
    if (paramJSONObject.has("streetgeoy"))
      localUserArea.setGEOY(Double.valueOf(paramJSONObject.getString("streetgeoy")).doubleValue());
    if (paramJSONObject.has("commngeoy"))
      localUserArea.setGEOY(Double.valueOf(paramJSONObject.getString("commngeoy")).doubleValue());
    if (paramJSONObject.has("leftdownx"))
      localUserArea.setLEFTDOWNX(Double.valueOf(paramJSONObject.getString("leftdownx")).doubleValue());
    if (paramJSONObject.has("leftdowny"))
      localUserArea.setLEFTDOWNY(Double.valueOf(paramJSONObject.getString("leftdowny")).doubleValue());
    if (paramJSONObject.has("rightupx"))
      localUserArea.setRIGHTUPX(Double.valueOf(paramJSONObject.getString("rightupx")).doubleValue());
    if (paramJSONObject.has("rightupy"))
      localUserArea.setRIGHTUPY(Double.valueOf(paramJSONObject.getString("rightupy")).doubleValue());
    if (paramJSONObject.has("bianjie"))
      localUserArea.setBIANJIE(paramJSONObject.getString("bianjie"));
    return localUserArea;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.server.parsers.json.UserAreaParser
 * JD-Core Version:    0.6.0
 */