package com.tencent.open;

import android.app.ProgressDialog;
import android.graphics.Bitmap;
import android.webkit.HttpAuthHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import com.tencent.tauth.IUiListener;
import com.tencent.tauth.UiError;
import org.json.JSONException;
import org.json.JSONObject;

class j extends WebViewClient
{
  private j(RedoDialog paramRedoDialog)
  {
  }

  public void onPageFinished(WebView paramWebView, String paramString)
  {
    super.onPageFinished(paramWebView, paramString);
    RedoDialog.c(this.a).dismiss();
    RedoDialog.d(this.a).setBackgroundColor(0);
    RedoDialog.a(this.a).setVisibility(0);
  }

  public void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
  {
    Util.a("TDialog", "Webview loading URL: " + paramString);
    super.onPageStarted(paramWebView, paramString, paramBitmap);
    RedoDialog.c(this.a).show();
  }

  public void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
  {
    super.onReceivedError(paramWebView, paramInt, paramString1, paramString2);
    RedoDialog.b(this.a).onError(new UiError(paramInt, paramString1, paramString2));
    this.a.dismiss();
  }

  public void onReceivedHttpAuthRequest(WebView paramWebView, HttpAuthHandler paramHttpAuthHandler, String paramString1, String paramString2)
  {
    super.onReceivedHttpAuthRequest(paramWebView, paramHttpAuthHandler, paramString1, paramString2);
  }

  public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    Util.a("TDialog", "Redirect URL: " + paramString);
    if (paramString.startsWith(ServerSetting.getInstance().getSettingUrl(null, 1)))
    {
      JSONObject localJSONObject = Util.c(paramString);
      try
      {
        if (localJSONObject.getString("error") == null)
          localJSONObject.getString("error_type");
        this.a.c = localJSONObject.getString("access_token");
        this.a.d = localJSONObject.getString("expires_in");
        if ((this.a.c != null) && (this.a.d != null))
          return true;
        RedoDialog.b(this.a).onComplete(this.a.b);
        this.a.dismiss();
        return true;
      }
      catch (JSONException localJSONException)
      {
        RedoDialog.b(this.a).onComplete(this.a.b);
        this.a.dismiss();
        return true;
      }
    }
    return false;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.tencent.open.j
 * JD-Core Version:    0.6.0
 */