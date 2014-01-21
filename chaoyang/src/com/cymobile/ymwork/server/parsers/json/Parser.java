package com.cymobile.ymwork.server.parsers.json;

import com.cymobile.ymwork.types.BaseType;
import com.cymobile.ymwork.types.Group;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public abstract interface Parser<T extends BaseType>
{
  public abstract T parse(JSONObject paramJSONObject)
    throws JSONException;

  public abstract Group parse(JSONArray paramJSONArray)
    throws JSONException;
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.server.parsers.json.Parser
 * JD-Core Version:    0.6.0
 */