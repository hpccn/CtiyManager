package com.cymobile.ymwork.server.parsers.json;

import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;

public class StringArrayParser
{
  public static List<String> parse(JSONArray paramJSONArray)
    throws JSONException
  {
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    int j = paramJSONArray.length();
    while (true)
    {
      if (i >= j)
        return localArrayList;
      localArrayList.add(paramJSONArray.getString(i));
      i++;
    }
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.server.parsers.json.StringArrayParser
 * JD-Core Version:    0.6.0
 */