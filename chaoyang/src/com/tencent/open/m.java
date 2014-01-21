package com.tencent.open;

import android.graphics.Bitmap;
import android.util.Log;
import android.webkit.WebView;
import android.webkit.WebViewClient;

class m extends WebViewClient
{
  private String b = null;

  public m(OpenUi paramOpenUi, String paramString1, String paramString2)
  {
    this.b = (paramString1 + "_" + paramString2 + "");
  }

  public void onPageFinished(WebView paramWebView, String paramString)
  {
    super.onPageFinished(paramWebView, paramString);
    Log.d("toddtest", ">>into pageFinished>>>>>>>>  mkey = " + this.b);
    paramWebView.loadUrl("javascript:alert(window.localStorage.getItem(\"" + this.b + "\"))");
  }

  public void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
  {
    super.onPageStarted(paramWebView, paramString, paramBitmap);
  }

  public void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
  {
    super.onReceivedError(paramWebView, paramInt, paramString1, paramString2);
  }

  public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    return true;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.tencent.open.m
 * JD-Core Version:    0.6.0
 */