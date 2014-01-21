package com.cymobile.ymwork.server.parsers.json;

import android.util.Log;
import com.cymobile.ymwork.types.CommonResult;
import org.json.JSONException;
import org.json.JSONObject;

public class ResultParser extends AbstractParser<CommonResult>
{
  private static final String TAG = "ResultParser";

  public CommonResult parse(JSONObject paramJSONObject)
    throws JSONException
  {
    Log.i("ResultParser", paramJSONObject.toString());
    CommonResult localCommonResult = null;
    if (paramJSONObject != null)
    {
      localCommonResult = new CommonResult();
      if (paramJSONObject.has("result"))
        localCommonResult.setResult(paramJSONObject.getString("result").toString());
      if (paramJSONObject.has("userid"))
        localCommonResult.setUserId(paramJSONObject.getString("userid"));
    }
    return localCommonResult;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.server.parsers.json.ResultParser
 * JD-Core Version:    0.6.0
 */