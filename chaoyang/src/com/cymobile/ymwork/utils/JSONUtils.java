package com.cymobile.ymwork.utils;

import android.util.Log;
import com.cymobile.ymwork.server.error.ServerCredentialsException;
import com.cymobile.ymwork.server.error.ServerException;
import com.cymobile.ymwork.server.error.ServerParseException;
import com.cymobile.ymwork.server.parsers.json.Parser;
import com.cymobile.ymwork.types.BaseType;
import com.cymobile.ymwork.types.CommonResult;
import java.io.IOException;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class JSONUtils
{
  private static final boolean DEBUG = true;
  private static final String TAG = "JSONUtils";

  public static BaseType consume(Parser<? extends BaseType> paramParser, String paramString)
    throws ServerCredentialsException, ServerParseException, ServerException, IOException
  {
    Log.i("JSONUtils", "http response: " + paramString);
    JSONObject localJSONObject;
    String str;
    try
    {
      localJSONObject = new JSONObject(paramString);
      Iterator localIterator = localJSONObject.keys();
      if (!localIterator.hasNext())
        break label221;
      str = (String)localIterator.next();
      if ((str.equals("result")) && (localJSONObject.getString("result").equals("error")))
        throw new ServerException("Error", "", Integer.parseInt(localJSONObject.getString("errorcode")));
    }
    catch (JSONException localJSONException)
    {
      throw new ServerException("Error parsing JSON response: " + localJSONException.getMessage(), "", 25);
    }
    if ((str.equals("result")) && (localJSONObject.getString("result").equals("success")))
    {
      CommonResult localCommonResult = new CommonResult();
      localCommonResult.setResult("success");
      return localCommonResult;
    }
    Object localObject = localJSONObject.get(str);
    if ((localObject instanceof JSONArray))
      return paramParser.parse((JSONArray)localObject);
    return paramParser.parse((JSONObject)localObject);
    label221: throw new ServerException("Error parsing JSON response, object had no single child key.");
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.utils.JSONUtils
 * JD-Core Version:    0.6.0
 */