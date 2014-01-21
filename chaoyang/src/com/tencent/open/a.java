package com.tencent.open;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import com.tencent.tauth.IUiListener;
import com.tencent.tauth.UiError;
import org.json.JSONException;
import org.json.JSONObject;

class a
  implements IUiListener
{
  private IUiListener b;
  private Activity c;
  private Bundle d;
  private String e;
  private String f;
  private String g;
  private String h;
  private Handler i = new l(this);

  public a(OpenUi paramOpenUi, Activity paramActivity, Bundle paramBundle, IUiListener paramIUiListener, String paramString1, String paramString2, String paramString3, String paramString4)
  {
    this.c = paramActivity;
    this.d = paramBundle;
    this.b = paramIUiListener;
    this.e = paramString1;
    this.f = paramString2;
    this.g = paramString3;
    this.h = paramString4;
    Log.d("toddtest", "EncrytokenListener appid=" + paramString1 + ",  openid=" + paramString2 + ",  token=" + paramString3 + ",  params=" + paramBundle.toString() + ", action=" + paramString4);
  }

  private void a()
  {
    Log.d("toddtest", "relogin");
    OpenUi.a(this.a).a(null);
    OpenUi.a(this.a).a(null, "0");
    this.a.a(this.c, "action_login", this.d, this.b);
  }

  private void a(String paramString)
  {
    Log.d("toddtest", "validToken encrytoken=" + paramString);
    OpenApi localOpenApi = new OpenApi(OpenUi.a(this.a));
    Bundle localBundle = new Bundle();
    localBundle.putString("oauth_consumer_key", this.e);
    localBundle.putString("openid", this.f);
    localBundle.putString("access_token", this.g);
    localBundle.putString("encrytoken", paramString);
    localOpenApi.a(OpenUi.a(this.a).f(), "https://openmobile.qq.com/user/user_login_statis", localBundle, "POST", new d(this), localBundle);
  }

  public void onCancel()
  {
    if (this.h.equals("action_check_token"))
      a();
  }

  public void onComplete(JSONObject paramJSONObject)
  {
    String str1;
    do
      try
      {
        String str2 = paramJSONObject.getString("encry_token");
        str1 = str2;
        Log.d("toddtest", "EncrytokenListener onComplete jsonobj = " + paramJSONObject.toString());
        if (!this.h.equals("action_check_token"))
          continue;
        if ((str1 != null) && (str1.length() > 0))
        {
          a(str1);
          return;
        }
      }
      catch (JSONException localJSONException)
      {
        while (true)
        {
          localJSONException.printStackTrace();
          str1 = null;
        }
        a();
        return;
      }
    while ((!"action_challenge".equals(this.h)) && (!"action_brag".equals(this.h)) && (!"action_ask".equals(this.h)) && (!"action_gift".equals(this.h)));
    this.d.putString("encrytoken", str1);
    this.a.a(this.c, this.h, this.d, this.b);
  }

  public void onError(UiError paramUiError)
  {
    if (this.h.equals("action_check_token"))
      a();
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.tencent.open.a
 * JD-Core Version:    0.6.0
 */