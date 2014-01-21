package com.tencent.open;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.webkit.CookieSyncManager;
import com.tencent.tauth.IUiListener;
import com.tencent.tauth.UiError;
import org.json.JSONException;
import org.json.JSONObject;

class b
  implements IUiListener
{
  private IUiListener b;
  private boolean c;

  public b(OpenUi paramOpenUi, IUiListener paramIUiListener, boolean paramBoolean1, boolean paramBoolean2)
  {
    this.b = paramIUiListener;
    this.c = paramBoolean1;
  }

  public void onCancel()
  {
    this.b.onCancel();
  }

  public void onComplete(JSONObject paramJSONObject)
  {
    try
    {
      String str1 = paramJSONObject.getString("access_token");
      String str2 = paramJSONObject.getString("expires_in");
      String str3 = paramJSONObject.getString("openid");
      if ((str1 != null) && (OpenUi.a(this.a) != null) && (str3 != null))
      {
        OpenUi.a(this.a).a(str1, str2);
        OpenUi.a(this.a).a(str3);
        TencentStat.b(OpenUi.a(this.a), str3);
      }
      String str4 = paramJSONObject.getString("pf");
      if (str4 != null);
      try
      {
        OpenUi.a(this.a).f().getSharedPreferences("pfStore", 0).edit().putString("pf", str4).commit();
        if (this.c)
          CookieSyncManager.getInstance().sync();
        this.b.onComplete(paramJSONObject);
        return;
      }
      catch (Exception localException)
      {
        while (true)
          localException.printStackTrace();
      }
    }
    catch (JSONException localJSONException)
    {
      while (true)
        localJSONException.printStackTrace();
    }
  }

  public void onError(UiError paramUiError)
  {
    this.b.onError(paramUiError);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.tencent.open.b
 * JD-Core Version:    0.6.0
 */