package com.tencent.open;

import android.util.Log;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import com.tencent.tauth.IUiListener;
import org.json.JSONException;
import org.json.JSONObject;

class n extends WebChromeClient
{
  private IUiListener b;

  public n(OpenUi paramOpenUi, IUiListener paramIUiListener)
  {
    this.b = paramIUiListener;
  }

  public boolean onJsAlert(WebView paramWebView, String paramString1, String paramString2, JsResult paramJsResult)
  {
    Log.d("toddtest", "That's my local storage value =" + paramString2);
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("encry_token", paramString2 + "");
      paramWebView.destroy();
      this.b.onComplete(localJSONObject);
      return true;
    }
    catch (JSONException localJSONException)
    {
      while (true)
        localJSONException.printStackTrace();
    }
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.tencent.open.n
 * JD-Core Version:    0.6.0
 */