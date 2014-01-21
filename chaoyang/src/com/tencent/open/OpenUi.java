package com.tencent.open;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.util.Log;
import android.util.SparseArray;
import android.webkit.CookieSyncManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.tencent.plus.ImageActivity;
import com.tencent.tauth.Constants;
import com.tencent.tauth.IUiListener;
import com.tencent.tauth.UiError;
import java.io.File;
import org.json.JSONException;
import org.json.JSONObject;

public class OpenUi
{
  private TContext a;
  private int b = 5656;
  private SparseArray c = new SparseArray();

  public OpenUi(TContext paramTContext)
  {
    this.a = paramTContext;
  }

  private int a()
  {
    k localk;
    do
    {
      this.b = (1 + this.b);
      if (this.b == 6656)
        this.b = 5656;
      localk = (k)this.c.get(this.b);
      this.c.remove(this.b);
      if ((localk == null) || (localk.a == null))
        continue;
      localk.a.onCancel();
    }
    while (localk != null);
    return this.b;
  }

  private Intent a(Context paramContext, String paramString)
  {
    Intent localIntent = new Intent();
    if ("action_avatar".equals(paramString))
      localIntent.setClass(paramContext, ImageActivity.class);
    while (true)
    {
      localIntent.putExtra("key_request_code", a());
      if (!a(paramContext, localIntent))
        break;
      return localIntent;
      localIntent.setClassName(Constants.PACKAGE_AGENT, "com.tencent.open.agent.AgentActivity");
    }
    return null;
  }

  private Bundle a(String paramString, Bundle paramBundle)
  {
    Bundle localBundle = new Bundle(paramBundle);
    if (("action_login".equals(paramString)) || ("action_pay".equals(paramString)))
      if (this.a != null)
      {
        localBundle.putString("client_id", this.a.d());
        localBundle.putString("pf", "openmobile_android");
        localBundle.putString("need_pay", "1");
      }
    do
      return localBundle;
    while (this.a == null);
    localBundle.putString("oauth_consumer_key", this.a.d());
    if (this.a.a())
      localBundle.putString("access_token", this.a.b());
    String str = this.a.c();
    if (str != null)
      localBundle.putString("openid", str);
    try
    {
      localBundle.putString("pf", this.a.f().getSharedPreferences("pfStore", 0).getString("pf", "openmobile_android"));
      return localBundle;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      localBundle.putString("pf", "openmobile_android");
    }
    return localBundle;
  }

  private boolean a(Context paramContext, Intent paramIntent)
  {
    return paramContext.getPackageManager().resolveActivity(paramIntent, 0) != null;
  }

  private Bundle b(String paramString, Bundle paramBundle)
  {
    Bundle localBundle = new Bundle(paramBundle);
    if (("action_story".equals(paramString)) && (localBundle.containsKey("shareurl")))
      localBundle.putString("url", localBundle.getString("shareurl"));
    if ("action_login".equals(paramString))
    {
      if (this.a != null)
        localBundle.putString("client_id", this.a.d());
      localBundle.putString("pf", "openmobile_android");
      localBundle.putString("need_pay", "1");
    }
    while (true)
    {
      return localBundle;
      if (!"action_pay".equals(paramString))
        break;
      if (this.a == null)
        continue;
      localBundle.putString("oauth_consumer_key", this.a.d());
      localBundle.putString("pf", "openmobile_android");
      localBundle.putString("need_pay", "1");
      String str2 = this.a.c();
      if (str2 != null)
      {
        localBundle.putString("hopenid", str2);
        return localBundle;
      }
      localBundle.putString("hopenid", "");
      return localBundle;
    }
    if (this.a != null)
    {
      localBundle.putString("appid", this.a.d());
      if (this.a.a())
      {
        localBundle.putString("keystr", this.a.b());
        localBundle.putString("keytype", "0x80");
      }
      String str1 = this.a.c();
      if (str1 != null)
        localBundle.putString("hopenid", str1);
    }
    localBundle.putString("platform", "androidqz");
    try
    {
      localBundle.putString("pf", this.a.f().getSharedPreferences("pfStore", 0).getString("pf", "openmobile_android"));
      return localBundle;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      localBundle.putString("pf", "openmobile_android");
    }
    return localBundle;
  }

  private String c(String paramString, Bundle paramBundle)
  {
    paramBundle.putString("display", "mobile");
    StringBuilder localStringBuilder = new StringBuilder();
    if (("action_login".equals(paramString)) || ("action_pay".equals(paramString)))
    {
      paramBundle.putString("response_type", "token");
      paramBundle.putString("redirect_uri", ServerSetting.getInstance().getSettingUrl(this.a.f(), 1));
      paramBundle.putString("cancel_display", "1");
      paramBundle.putString("switch", "1");
      paramBundle.putString("sdkp", "a");
      paramBundle.putString("sdkv", "1.5");
      paramBundle.putString("status_userip", Util.a());
      paramBundle.putString("status_os", Build.VERSION.RELEASE);
      paramBundle.putString("status_version", Build.VERSION.SDK);
      paramBundle.putString("status_machine", Build.MODEL);
      localStringBuilder.append(ServerSetting.getInstance().getSettingUrl(this.a.f(), 2));
      localStringBuilder.append(Util.a(paramBundle));
    }
    while (true)
    {
      return localStringBuilder.toString();
      if ("action_story".equals(paramString))
      {
        localStringBuilder.append(ServerSetting.getInstance().getSettingUrl(this.a.f(), 3));
        paramBundle.putString("sdkv", "1.5");
        localStringBuilder.append(Util.a(paramBundle));
        continue;
      }
      if ("action_invite".equals(paramString))
      {
        localStringBuilder.append(ServerSetting.getInstance().getSettingUrl(this.a.f(), 4));
        paramBundle.putString("sdkv", "1.5");
        localStringBuilder.append(Util.a(paramBundle));
        continue;
      }
      if (("action_challenge".equals(paramString)) || ("action_brag".equals(paramString)))
      {
        localStringBuilder.append(ServerSetting.getInstance().getSettingUrl(this.a.f(), 7));
        paramBundle.putString("sdkv", "1.5");
        localStringBuilder.append(Util.a(paramBundle));
        continue;
      }
      if ("action_ask".equals(paramString))
      {
        localStringBuilder.append(ServerSetting.getInstance().getSettingUrl(this.a.f(), 8));
        paramBundle.putString("sdkv", "1.5");
        localStringBuilder.append(Util.a(paramBundle));
        continue;
      }
      if (!"action_gift".equals(paramString))
        continue;
      localStringBuilder.append(ServerSetting.getInstance().getSettingUrl(this.a.f(), 9));
      paramBundle.putString("sdkv", "1.5");
      localStringBuilder.append(Util.a(paramBundle));
    }
  }

  public int a(Activity paramActivity, String paramString, Bundle paramBundle, IUiListener paramIUiListener)
  {
    return a(paramActivity, paramString, paramBundle, paramIUiListener, false);
  }

  public int a(Activity paramActivity, String paramString, Bundle paramBundle, IUiListener paramIUiListener, boolean paramBoolean)
  {
    int i = 1;
    if (("action_challenge".equals(paramString)) || ("action_brag".equals(paramString)) || ("action_ask".equals(paramString)) || ("action_gift".equals(paramString)))
    {
      b(paramActivity, paramString, paramBundle, paramIUiListener, false);
      i = 2;
    }
    while (true)
    {
      return i;
      if (!paramBoolean)
      {
        String str1 = this.a.b();
        String str2 = this.a.c();
        String str3 = this.a.d();
        Log.d("toddtest", "OpenUI showUi");
        if ((str1 != null) && (str2 != null) && (str3 != null) && (str1.length() > 0) && (str2.length() > 0) && (str3.length() > 0) && ("action_login".equals(paramString)))
        {
          b(paramActivity, "action_check_token", paramBundle, paramIUiListener, i);
          return 3;
        }
      }
      if (!b(paramActivity, paramString, paramBundle, paramIUiListener))
        break;
      if (!paramBoolean)
        continue;
      Util.a(paramActivity, "10785", 0L, this.a.d());
      return i;
    }
    return a(paramActivity, paramString, paramBundle, paramIUiListener);
  }

  public int a(Context paramContext, String paramString, Bundle paramBundle, IUiListener paramIUiListener)
  {
    CookieSyncManager.createInstance(paramContext);
    String str = c(paramString, a(paramString, paramBundle));
    if ("action_login".equals(paramString))
    {
      paramIUiListener = new b(this, paramIUiListener, true, false);
      if ((!"action_challenge".equals(paramString)) && (!"action_brag".equals(paramString)))
        break label104;
      new PKDialog(paramContext, str, paramIUiListener).show();
    }
    while (true)
    {
      return 2;
      if (!"action_pay".equals(paramString))
        break;
      paramIUiListener = new b(this, paramIUiListener, true, true);
      break;
      label104: new TDialog(paramContext, str, paramIUiListener).show();
    }
  }

  public boolean a(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if ((paramInt1 >= 5656) && (paramInt1 <= 6656))
    {
      k localk = (k)this.c.get(paramInt1);
      this.c.remove(paramInt1);
      if ((localk != null) && (localk.a != null))
      {
        int i;
        String str3;
        if (paramInt2 == -1)
        {
          i = paramIntent.getIntExtra("key_error_code", 0);
          if (i == 0)
            str3 = paramIntent.getStringExtra("key_response");
        }
        while (true)
        {
          try
          {
            localk.a.onComplete(Util.d(str3));
            return true;
          }
          catch (JSONException localJSONException)
          {
            localk.a.onError(new UiError(-4, "服务器返回数据格式有误!", str3));
            continue;
          }
          String str1 = paramIntent.getStringExtra("key_error_msg");
          String str2 = paramIntent.getStringExtra("key_error_detail");
          localk.a.onError(new UiError(i, str1, str2));
          continue;
          if (paramInt2 != 0)
            continue;
          localk.a.onCancel();
        }
      }
    }
    return false;
  }

  public void b(Activity paramActivity, String paramString, Bundle paramBundle, IUiListener paramIUiListener, boolean paramBoolean)
  {
    Log.d("toddtest", "OpenUI getEncryToken");
    Intent localIntent1 = new Intent();
    localIntent1.setClassName(Constants.PACKAGE_AGENT, "com.tencent.open.agent.EncryTokenActivity");
    localIntent1.putExtra("key_request_code", a());
    Intent localIntent2 = new Intent();
    localIntent2.setClassName(Constants.PACKAGE_AGENT, "com.tencent.open.agent.AgentActivity");
    a locala = new a(this, paramActivity, paramBundle, paramIUiListener, this.a.d(), this.a.c(), this.a.b(), paramString);
    String str1;
    if (a(paramActivity.getApplicationContext(), localIntent1))
      str1 = "qzone3.5_up";
    while (str1.equals("qzone3.5_up"))
    {
      Log.d("toddtest", "OpenUI checkToken qzone exist, version = " + str1);
      localIntent1.putExtra("key_action", "action_check_token");
      localIntent1.putExtra("oauth_consumer_key", this.a.d());
      localIntent1.putExtra("openid", this.a.c());
      localIntent1.putExtra("access_token", this.a.b());
      int i = a();
      paramActivity.startActivityForResult(localIntent1, i);
      this.c.put(i, new k(paramActivity, "action_check_token", paramBundle, locala));
      return;
      if (a(paramActivity.getApplicationContext(), localIntent2))
      {
        str1 = "qzone3.4";
        continue;
      }
      str1 = "qzone3.3_below";
    }
    if (str1.equals("qzone3.4"))
    {
      String str3 = this.a.b();
      String str4 = this.a.d();
      String str5 = this.a.c();
      if ((str3 != null) && (str3.length() > 0) && (str4 != null) && (str4.length() > 0) && (str5 != null) && (str5.length() > 0))
      {
        String str6 = Util.e("tencent&sdk&qazxc***14969%%" + str3 + str4 + str5 + "qzone3.4");
        JSONObject localJSONObject3 = new JSONObject();
        try
        {
          localJSONObject3.put("encry_token", str6);
          locala.onComplete(localJSONObject3);
          return;
        }
        catch (JSONException localJSONException3)
        {
          while (true)
            localJSONException3.printStackTrace();
        }
      }
      JSONObject localJSONObject2 = new JSONObject();
      try
      {
        localJSONObject2.put("encry_token", "");
        locala.onComplete(localJSONObject2);
        return;
      }
      catch (JSONException localJSONException2)
      {
        while (true)
          localJSONException2.printStackTrace();
      }
    }
    if (!paramBoolean)
    {
      JSONObject localJSONObject1 = new JSONObject();
      try
      {
        localJSONObject1.put("encry_token", "");
        locala.onComplete(localJSONObject1);
        return;
      }
      catch (JSONException localJSONException1)
      {
        while (true)
          localJSONException1.printStackTrace();
      }
    }
    WebView localWebView = new WebView(paramActivity);
    WebSettings localWebSettings = localWebView.getSettings();
    localWebSettings.setDomStorageEnabled(true);
    localWebSettings.setJavaScriptEnabled(true);
    localWebSettings.setDatabaseEnabled(true);
    localWebSettings.setDatabasePath(paramActivity.getDir("databases", 0).getPath());
    localWebView.setWebViewClient(new m(this, this.a.c(), this.a.d()));
    localWebView.setWebChromeClient(new n(this, locala));
    String str2 = ServerSetting.getInstance().getSettingUrl(this.a.f(), 10);
    localWebView.loadDataWithBaseURL(str2, "<!DOCTYPE HTML><html lang=\"en-US\"><head><meta charset=\"UTF-8\"><title>localStorage Test</title><script type=\"text/javascript\">document.domain = 'qq.com';</script></head><body></body></html>", "text/html", "utf-8", str2);
  }

  public boolean b(Activity paramActivity, String paramString, Bundle paramBundle, IUiListener paramIUiListener)
  {
    Bundle localBundle = b(paramString, paramBundle);
    Intent localIntent = a(paramActivity, paramString);
    if (localIntent != null)
    {
      localIntent.putExtra("key_action", paramString);
      localIntent.putExtra("key_params", localBundle);
      try
      {
        int i = localIntent.getIntExtra("key_request_code", 0);
        paramActivity.startActivityForResult(localIntent, i);
        if ("action_login".equals(paramString))
          paramIUiListener = new b(this, paramIUiListener, false, false);
        while (true)
        {
          this.c.put(i, new k(paramActivity, paramString, paramBundle, paramIUiListener));
          return true;
          if (!"action_pay".equals(paramString))
            continue;
          b localb = new b(this, paramIUiListener, false, true);
          paramIUiListener = localb;
        }
      }
      catch (ActivityNotFoundException localActivityNotFoundException)
      {
        return false;
      }
    }
    return false;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.tencent.open.OpenUi
 * JD-Core Version:    0.6.0
 */