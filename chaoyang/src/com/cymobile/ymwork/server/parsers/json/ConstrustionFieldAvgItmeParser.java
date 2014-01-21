package com.cymobile.ymwork.server.parsers.json;

import com.cymobile.ymwork.types.ConstrustionFieldAvgItem;
import org.json.JSONException;
import org.json.JSONObject;

public class ConstrustionFieldAvgItmeParser extends AbstractParser<ConstrustionFieldAvgItem>
{
  public ConstrustionFieldAvgItem parse(JSONObject paramJSONObject)
    throws JSONException
  {
    ConstrustionFieldAvgItem localConstrustionFieldAvgItem = null;
    if (paramJSONObject != null)
    {
      localConstrustionFieldAvgItem = new ConstrustionFieldAvgItem();
      if (paramJSONObject.has("name"))
        localConstrustionFieldAvgItem.setName(paramJSONObject.getString("name"));
      if (paramJSONObject.has("avg"))
        localConstrustionFieldAvgItem.setAvg(paramJSONObject.getString("avg"));
    }
    return localConstrustionFieldAvgItem;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.server.parsers.json.ConstrustionFieldAvgItmeParser
 * JD-Core Version:    0.6.0
 */