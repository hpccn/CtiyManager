package com.cymobile.ymwork.server.parsers.json;

import com.cymobile.ymwork.types.BaseType;
import com.cymobile.ymwork.types.Group;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class GroupParser extends AbstractParser<Group>
{
  private Parser<? extends BaseType> mSubParser;

  public GroupParser(Parser<? extends BaseType> paramParser)
  {
    this.mSubParser = paramParser;
  }

  private void parse(Group paramGroup, JSONArray paramJSONArray)
    throws JSONException
  {
    int i = 0;
    int j = paramJSONArray.length();
    if (i >= j)
      return;
    Object localObject1 = paramJSONArray.get(i);
    if ((localObject1 instanceof JSONArray));
    for (Object localObject2 = this.mSubParser.parse((JSONArray)localObject1); ; localObject2 = this.mSubParser.parse((JSONObject)localObject1))
    {
      paramGroup.add(localObject2);
      i++;
      break;
    }
  }

  public Group parse(JSONArray paramJSONArray)
    throws JSONException
  {
    Group localGroup = new Group();
    parse(localGroup, paramJSONArray);
    return localGroup;
  }

  public Group<BaseType> parse(JSONObject paramJSONObject)
    throws JSONException
  {
    Group localGroup = new Group();
    Iterator localIterator = paramJSONObject.keys();
    while (true)
    {
      if (!localIterator.hasNext())
        return localGroup;
      String str = (String)localIterator.next();
      if (str.equals("type"))
        localGroup.setType(paramJSONObject.getString(str));
      if (str.equals("number"))
      {
        localGroup.setNumber(paramJSONObject.getInt("number"));
        continue;
      }
      Object localObject = paramJSONObject.get(str);
      if (!(localObject instanceof JSONArray))
        break;
      parse(localGroup, (JSONArray)localObject);
    }
    throw new JSONException("Could not parse data.");
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.server.parsers.json.GroupParser
 * JD-Core Version:    0.6.0
 */