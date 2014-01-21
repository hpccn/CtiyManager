package com.tencent.open;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.view.View;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Toast;
import com.tencent.tauth.UiError;
import java.lang.ref.WeakReference;
import org.json.JSONObject;

class TDialog$FbWebViewClient extends WebViewClient
{
  private TDialog$FbWebViewClient(TDialog paramTDialog)
  {
  }

  public void onPageFinished(WebView paramWebView, String paramString)
  {
    super.onPageFinished(paramWebView, paramString);
    if ((TDialog.b() != null) && (TDialog.b().get() != null))
      ((View)TDialog.b().get()).setVisibility(8);
    TDialog.e(this.this$0).setVisibility(0);
  }

  public void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
  {
    Util.a("TDialog", "Webview loading URL: " + paramString);
    super.onPageStarted(paramWebView, paramString, paramBitmap);
    if ((TDialog.b() != null) && (TDialog.b().get() != null))
      ((View)TDialog.b().get()).setVisibility(0);
  }

  public void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
  {
    super.onReceivedError(paramWebView, paramInt, paramString1, paramString2);
    TDialog.f(this.this$0).onError(new UiError(paramInt, paramString1, paramString2));
    if ((TDialog.a() != null) && (TDialog.a().get() != null))
      Toast.makeText((Context)TDialog.a().get(), "网络连接异常或系统错误", 0).show();
    this.this$0.dismiss();
  }

  public void onReceivedSslError(WebView paramWebView, SslErrorHandler paramSslErrorHandler, SslError paramSslError)
  {
    paramSslErrorHandler.proceed();
  }

  public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    Util.a("TDialog", "Redirect URL: " + paramString);
    if (paramString.startsWith("auth://browser"))
    {
      JSONObject localJSONObject = Util.c(paramString);
      TDialog.a(this.this$0, TDialog.b(this.this$0));
      if (TDialog.c(this.this$0));
      while (true)
      {
        return true;
        if (localJSONObject.optString("fail_cb", null) != null)
        {
          this.this$0.a(localJSONObject.optString("fail_cb"), "");
          continue;
        }
        if (localJSONObject.optInt("fall_to_wv") == 1)
        {
          TDialog localTDialog = this.this$0;
          if (TDialog.d(this.this$0).indexOf("?") > -1);
          for (String str2 = "&"; ; str2 = "?")
          {
            TDialog.a(localTDialog, str2);
            TDialog.a(this.this$0, "browser_error=1");
            TDialog.e(this.this$0).loadUrl(TDialog.d(this.this$0));
            break;
          }
        }
        String str1 = localJSONObject.optString("redir", null);
        if (str1 == null)
          continue;
        TDialog.e(this.this$0).loadUrl(str1);
      }
    }
    if (paramString.startsWith(ServerSetting.getInstance().getSettingUrl((Context)TDialog.a().get(), 1)))
    {
      TDialog.f(this.this$0).onComplete(Util.c(paramString));
      this.this$0.dismiss();
      return true;
    }
    if (paramString.startsWith("auth://cancel"))
    {
      TDialog.f(this.this$0).onCancel();
      this.this$0.dismiss();
      return true;
    }
    if (paramString.startsWith("auth://close"))
    {
      this.this$0.dismiss();
      return true;
    }
    if (paramString.startsWith("download://"))
    {
      Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse(Uri.decode(paramString.substring("download://".length()))));
      if ((TDialog.a() != null) && (TDialog.a().get() != null))
        ((Context)TDialog.a().get()).startActivity(localIntent);
      return true;
    }
    return false;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.tencent.open.TDialog.FbWebViewClient
 * JD-Core Version:    0.6.0
 */