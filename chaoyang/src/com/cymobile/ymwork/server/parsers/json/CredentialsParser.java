package com.cymobile.ymwork.server.parsers.json;

import com.cymobile.ymwork.types.Credentials;
import org.json.JSONException;
import org.json.JSONObject;

public class CredentialsParser extends AbstractParser<Credentials>
{
  public Credentials parse(JSONObject paramJSONObject)
    throws JSONException
  {
    Credentials localCredentials = new Credentials();
    if (paramJSONObject.has("oauth_token"))
      localCredentials.setOauthToken(paramJSONObject.getString("oauth_token"));
    if (paramJSONObject.has("oauth_token_secret"))
      localCredentials.setOauthTokenSecret(paramJSONObject.getString("oauth_token_secret"));
    return localCredentials;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.server.parsers.json.CredentialsParser
 * JD-Core Version:    0.6.0
 */