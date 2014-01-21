package com.tencent.tauth;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.tencent.open.BrowserAuth;
import com.tencent.open.BrowserAuth.Auth;
import com.tencent.open.TDialog;
import com.tencent.open.TemporaryStorage;
import com.tencent.open.Util;
import org.json.JSONException;
import org.json.JSONObject;

public class AuthActivity extends Activity
{
  private static final String TAG = "AuthActivity";

  private void execAuthCallback(Bundle paramBundle, String paramString)
  {
    BrowserAuth localBrowserAuth = BrowserAuth.a();
    String str1 = paramBundle.getString("serial");
    BrowserAuth.Auth localAuth = localBrowserAuth.a(str1);
    if (localAuth != null)
    {
      if (paramString.indexOf("://cancel") == -1)
        break label64;
      localAuth.a.onCancel();
      localAuth.b.dismiss();
    }
    while (true)
    {
      localBrowserAuth.b(str1);
      finish();
      return;
      label64: String str2 = paramBundle.getString("access_token");
      if (str2 != null)
        paramBundle.putString("access_token", localBrowserAuth.a(str2, localAuth.c));
      String str3 = Util.a(paramBundle);
      JSONObject localJSONObject = Util.a(new JSONObject(), str3);
      String str4 = localJSONObject.optString("cb");
      if (!"".equals(str4))
      {
        localAuth.b.a(str4, localJSONObject.toString());
        continue;
      }
      localAuth.a.onComplete(localJSONObject);
      localAuth.b.dismiss();
    }
  }

  private void execShareToQQCallback(Bundle paramBundle)
  {
    Object localObject = TemporaryStorage.a("shareToQQ");
    if (localObject == null)
    {
      finish();
      return;
    }
    IUiListener localIUiListener = (IUiListener)localObject;
    String str1 = paramBundle.getString("result");
    String str2 = paramBundle.getString("response");
    if (str1.equals("cancel"))
      localIUiListener.onCancel();
    do
      while (true)
      {
        finish();
        return;
        if (!str1.equals("error"))
          break;
        localIUiListener.onError(new UiError(-6, "unknown error", str2));
      }
    while (!str1.equals("complete"));
    if (str2 == null);
    for (String str3 = "{\"ret\": 0}"; ; str3 = str2)
      try
      {
        localJSONObject = new JSONObject(str3);
        localIUiListener.onComplete(localJSONObject);
      }
      catch (JSONException localJSONException)
      {
        while (true)
        {
          localJSONException.printStackTrace();
          JSONObject localJSONObject = null;
        }
      }
  }

  private void handleActionUri(Uri paramUri)
  {
    if ((paramUri == null) || (paramUri.toString().equals("")))
    {
      finish();
      return;
    }
    String str1 = paramUri.toString();
    Bundle localBundle = Util.a(str1.substring(1 + str1.indexOf("#")));
    String str2 = localBundle.getString("action");
    if (str2 == null)
    {
      execAuthCallback(localBundle, str1);
      return;
    }
    if (str2.equals("shareToQQ"))
    {
      execShareToQQCallback(localBundle);
      return;
    }
    execAuthCallback(localBundle, str1);
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    handleActionUri(getIntent().getData());
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.tencent.tauth.AuthActivity
 * JD-Core Version:    0.6.0
 */