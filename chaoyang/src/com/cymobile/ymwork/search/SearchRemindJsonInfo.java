package com.cymobile.ymwork.search;

import com.cymobile.ymwork.utils.json.JsonInfo;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class SearchRemindJsonInfo extends JsonInfo
{
  public SearchRemindJsonInfo()
  {
  }

  public SearchRemindJsonInfo(String paramString)
  {
    super(paramString);
  }

  public List<String> parseJson(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    int i = 1 + paramString.indexOf("(");
    int j = paramString.indexOf(");");
    if (paramString != null)
      try
      {
        if (!paramString.trim().equals(""))
        {
          JSONObject localJSONObject = new JSONObject(paramString.substring(i, j));
          localArrayList.add(localJSONObject.getString("q"));
          JSONArray localJSONArray = localJSONObject.optJSONArray("s");
          for (int k = 0; ; k++)
          {
            if (k >= localJSONArray.length())
              return localArrayList;
            localArrayList.add(localJSONArray.getString(k));
          }
        }
      }
      catch (JSONException localJSONException)
      {
        localJSONException.printStackTrace();
      }
    return localArrayList;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.search.SearchRemindJsonInfo
 * JD-Core Version:    0.6.0
 */