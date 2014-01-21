package com.cymobile.ymwork.server.parsers.json;

import com.cymobile.ymwork.types.User;
import org.json.JSONException;
import org.json.JSONObject;

public class UserParser extends AbstractParser<User>
{
  public User parse(JSONObject paramJSONObject)
    throws JSONException
  {
    User localUser = new User();
    if (paramJSONObject.has("userid"))
      localUser.setId(paramJSONObject.getString("userid"));
    if (paramJSONObject.has("username"))
      localUser.setUserName(paramJSONObject.getString("username"));
    if (paramJSONObject.has("passwd"))
      localUser.setPassword(paramJSONObject.getString("passwd"));
    boolean bool2;
    if (paramJSONObject.has("usergender"))
    {
      if (paramJSONObject.getString("usergender").equals("0"))
      {
        bool2 = false;
        localUser.setGender(bool2);
      }
    }
    else if (paramJSONObject.has("isadmin"))
      if (!paramJSONObject.getString("isadmin").equals("0"))
        break label325;
    label325: for (boolean bool1 = false; ; bool1 = true)
    {
      localUser.setAdmin(bool1);
      if (paramJSONObject.has("userage"))
        localUser.setAge(paramJSONObject.getInt("userage"));
      if (paramJSONObject.has("zoneid"))
        localUser.setZoneid(paramJSONObject.getString("zoneid"));
      if (paramJSONObject.has("workcompany"))
        localUser.setWorkcompany(paramJSONObject.getString("workcompany"));
      if (paramJSONObject.has("workpost"))
        localUser.setWorkpost(paramJSONObject.getString("workpost"));
      if (paramJSONObject.has("zonename"))
        localUser.setZoneName(paramJSONObject.getString("zonename"));
      if (paramJSONObject.has("usermobile"))
        localUser.setMobile(paramJSONObject.getString("usermobile"));
      if (paramJSONObject.has("userlocation"))
        localUser.setLocation(paramJSONObject.getString("userlocation"));
      if (paramJSONObject.has("useravatar"))
        localUser.setImage(paramJSONObject.getString("useravatar"));
      if (paramJSONObject.has("useravatarlarge"))
        localUser.setImageLarge(paramJSONObject.getString("useravatarlarge"));
      if (paramJSONObject.has("descr"))
        localUser.setDesc(paramJSONObject.getString("descr"));
      return localUser;
      bool2 = true;
      break;
    }
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.server.parsers.json.UserParser
 * JD-Core Version:    0.6.0
 */