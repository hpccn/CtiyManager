package com.cymobile.ymwork.server.parsers.json;

import com.cymobile.ymwork.types.BaseType;
import com.cymobile.ymwork.types.Group;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class AbstractParser<T extends BaseType>
  implements Parser<T>
{
  public abstract T parse(JSONObject paramJSONObject)
    throws JSONException;

  public Group parse(JSONArray paramJSONArray)
    throws JSONException
  {
    throw new JSONException("Unexpected JSONArray parse type encountered.");
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.server.parsers.json.AbstractParser
 * JD-Core Version:    0.6.0
 */