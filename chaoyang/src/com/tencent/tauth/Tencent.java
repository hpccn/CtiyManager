package com.tencent.tauth;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.util.Log;
import android.webkit.CookieSyncManager;
import com.tencent.open.OpenApi;
import com.tencent.open.OpenUi;
import com.tencent.open.ServerSetting;
import com.tencent.open.TContext;
import com.tencent.open.TemporaryStorage;
import com.tencent.open.TencentStat;
import com.tencent.open.Util;
import org.json.JSONObject;

public class Tencent
{
  private OpenApi mOpenApi;
  private OpenUi mOpenUi;
  private TContext mTContext;

  private Tencent(String paramString, Context paramContext)
  {
    this.mTContext = new TContext(paramString, paramContext);
    this.mOpenApi = new OpenApi(this.mTContext);
    this.mOpenUi = new OpenUi(this.mTContext);
    TencentStat.a(this.mTContext, paramString);
  }

  public static Tencent createInstance(String paramString, Context paramContext)
  {
    try
    {
      ComponentName localComponentName = new ComponentName(paramContext.getPackageName(), "com.tencent.tauth.AuthActivity");
      paramContext.getPackageManager().getActivityInfo(localComponentName, 0);
      return new Tencent(paramString, paramContext);
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      String str = "没有在AndroidManifest.xml中检测到com.tencent.tauth.AuthActivity,请加上com.tencent.open.AuthActivity,并配置<data android:scheme=\"tencent" + paramString + "\" />,详细信息请查看官网文档.";
      Log.e("Tencent", str + "\n配置示例如下: \n<activity\n     android:name=\"com.tencent.tauth.AuthActivity\"\n     android:noHistory=\"true\"\n     android:launchMode=\"singleTask\">\n<intent-filter>\n    <action android:name=\"android.intent.action.VIEW\" />\n     <category android:name=\"android.intent.category.DEFAULT\" />\n    <category android:name=\"android.intent.category.BROWSABLE\" />\n    <data android:scheme=\"tencent" + paramString + "\" />\n" + "</intent-filter>\n" + "</activity>");
    }
    return null;
  }

  private String fillShareToQQParams(String paramString, Bundle paramBundle)
  {
    paramBundle.putString("action", "shareToQQ");
    paramBundle.putString("appId", getAppId());
    paramBundle.putString("sdkp", "a");
    paramBundle.putString("sdkv", "1.5");
    paramBundle.putString("status_os", Build.VERSION.RELEASE);
    paramBundle.putString("status_machine", Build.MODEL);
    if ((paramBundle.containsKey("content")) && (paramBundle.getString("content").length() > 40))
      paramBundle.putString("content", paramBundle.getString("content").substring(0, 40) + "...");
    if ((paramBundle.containsKey("summary")) && (paramBundle.getString("summary").length() > 50))
      paramBundle.putString("summary", paramBundle.getString("summary").substring(0, 50) + "...");
    String str = Util.a(paramBundle);
    return paramString + "&" + str.replaceAll("\\+", "%20");
  }

  public int ask(Activity paramActivity, Bundle paramBundle, IUiListener paramIUiListener)
  {
    paramBundle.putString("type", "request");
    return this.mOpenUi.a(paramActivity, "action_ask", paramBundle, paramIUiListener);
  }

  public int brag(Activity paramActivity, Bundle paramBundle, IUiListener paramIUiListener)
  {
    paramBundle.putString("type", "brag");
    return this.mOpenUi.a(paramActivity, "action_brag", paramBundle, paramIUiListener);
  }

  public int challenge(Activity paramActivity, Bundle paramBundle, IUiListener paramIUiListener)
  {
    paramBundle.putString("type", "pk");
    return this.mOpenUi.a(paramActivity, "action_challenge", paramBundle, paramIUiListener);
  }

  public String getAccessToken()
  {
    return this.mTContext.b();
  }

  public void getAppFriends(IRequestListener paramIRequestListener)
  {
    this.mOpenApi.a(paramIRequestListener);
  }

  public String getAppId()
  {
    return this.mTContext.d();
  }

  public String getOpenId()
  {
    return this.mTContext.c();
  }

  public String getSDKVersion()
  {
    return OpenApi.a();
  }

  public int gift(Activity paramActivity, Bundle paramBundle, IUiListener paramIUiListener)
  {
    paramBundle.putString("type", "freegift");
    return this.mOpenUi.a(paramActivity, "action_gift", paramBundle, paramIUiListener);
  }

  public int invite(Activity paramActivity, Bundle paramBundle, IUiListener paramIUiListener)
  {
    TencentStat.a(this.mTContext, "requireApi", new String[] { "invite" });
    return this.mOpenUi.a(paramActivity, "action_invite", paramBundle, paramIUiListener);
  }

  public boolean isSessionValid()
  {
    return this.mTContext.a();
  }

  public int login(Activity paramActivity, String paramString, IUiListener paramIUiListener)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("scope", paramString);
    return this.mOpenUi.a(paramActivity, "action_login", localBundle, paramIUiListener);
  }

  public void logout(Context paramContext)
  {
    CookieSyncManager.createInstance(paramContext);
    setAccessToken(null, null);
    setOpenId(null);
  }

  public boolean onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    return this.mOpenUi.a(paramInt1, paramInt2, paramIntent);
  }

  public int pay(Activity paramActivity, IUiListener paramIUiListener)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("scope", "");
    return this.mOpenUi.a(paramActivity, "action_pay", localBundle, paramIUiListener);
  }

  public int reAuth(Activity paramActivity, String paramString, IUiListener paramIUiListener)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("scope", paramString);
    localBundle.putString("isadd", "1");
    return this.mOpenUi.a(paramActivity, "action_login", localBundle, paramIUiListener, true);
  }

  public JSONObject request(String paramString1, Bundle paramBundle, String paramString2)
  {
    return this.mOpenApi.a(this.mTContext.f(), paramString1, paramBundle, paramString2);
  }

  public void requestAsync(String paramString1, Bundle paramBundle, String paramString2, IRequestListener paramIRequestListener, Object paramObject)
  {
    this.mOpenApi.a(this.mTContext.f(), paramString1, paramBundle, paramString2, paramIRequestListener, paramObject);
  }

  public void setAccessToken(String paramString1, String paramString2)
  {
    this.mTContext.a(paramString1, paramString2);
  }

  public void setAvatar(Activity paramActivity, Bundle paramBundle)
  {
    setAvatar(paramActivity, paramBundle, null);
  }

  public void setAvatar(Activity paramActivity, Bundle paramBundle, IUiListener paramIUiListener)
  {
    paramBundle.putString("appid", this.mTContext.d());
    paramBundle.putString("access_token", this.mTContext.b());
    paramBundle.putLong("expires_in", this.mTContext.e());
    paramBundle.putString("openid", this.mTContext.c());
    this.mOpenUi.b(paramActivity, "action_avatar", paramBundle, paramIUiListener);
  }

  public void setAvatar(Activity paramActivity, Bundle paramBundle, IUiListener paramIUiListener, int paramInt1, int paramInt2)
  {
    paramBundle.putInt("exitAnim", paramInt2);
    paramActivity.overridePendingTransition(paramInt1, 0);
    setAvatar(paramActivity, paramBundle, paramIUiListener);
  }

  public void setEnvironment(Activity paramActivity, int paramInt)
  {
    if ((paramInt != 0) && (paramInt != 1))
    {
      Log.e("TAG", "切换环境参数错误，正式环境为0，体验环境为1, which=" + paramInt);
      return;
    }
    ServerSetting.getInstance().setEnvironment(paramActivity, paramInt);
  }

  public void setOpenId(String paramString)
  {
    this.mTContext.a(paramString);
    TencentStat.b(this.mTContext, paramString);
  }

  public void shareToQQ(Activity paramActivity, Bundle paramBundle, IUiListener paramIUiListener)
  {
    Object localObject = TemporaryStorage.a("shareToQQ", paramIUiListener);
    if (localObject != null)
      ((IUiListener)localObject).onCancel();
    if (paramBundle == null)
      paramBundle = new Bundle();
    if ((!Util.a(paramActivity, fillShareToQQParams("http://openmobile.qq.com/api/check?page=shareindex.html&style=9", paramBundle))) && (paramIUiListener != null))
      paramIUiListener.onError(new UiError(-6, "打开浏览器失败!", null));
  }

  public int story(Activity paramActivity, Bundle paramBundle, IUiListener paramIUiListener)
  {
    TencentStat.a(this.mTContext, "requireApi", new String[] { "story" });
    return this.mOpenUi.a(paramActivity, "action_story", paramBundle, paramIUiListener);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.tencent.tauth.Tencent
 * JD-Core Version:    0.6.0
 */