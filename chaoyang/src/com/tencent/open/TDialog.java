package com.tencent.open;

import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebSettings.RenderPriority;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import com.tencent.tauth.IUiListener;
import java.io.File;
import java.lang.ref.WeakReference;
import org.json.JSONException;
import org.json.JSONObject;

public class TDialog extends Dialog
{
  static final FrameLayout.LayoutParams a = new FrameLayout.LayoutParams(-1, -1);
  static Toast b = null;
  private static WeakReference c;
  private static WeakReference d;
  private static WeakReference e;
  private String f;
  private TDialog.OnTimeListener g;
  private IUiListener h;
  private FrameLayout i;
  private WebView j;
  private FrameLayout k;
  private ProgressBar l;
  private Handler m;
  private boolean n = false;

  public TDialog(Context paramContext, String paramString, IUiListener paramIUiListener)
  {
    super(paramContext, 16973840);
    c = new WeakReference(paramContext);
    this.f = paramString;
    this.g = new TDialog.OnTimeListener(paramIUiListener);
    this.m = new TDialog.THandler(this.g, paramContext.getMainLooper());
    this.h = paramIUiListener;
  }

  private void c()
  {
    this.l = new ProgressBar((Context)c.get());
    FrameLayout.LayoutParams localLayoutParams1 = new FrameLayout.LayoutParams(-2, -2);
    localLayoutParams1.gravity = 17;
    this.l.setLayoutParams(localLayoutParams1);
    new TextView((Context)c.get()).setText("test");
    this.k = new FrameLayout((Context)c.get());
    FrameLayout.LayoutParams localLayoutParams2 = new FrameLayout.LayoutParams(-1, -2);
    localLayoutParams2.bottomMargin = 40;
    localLayoutParams2.leftMargin = 80;
    localLayoutParams2.rightMargin = 80;
    localLayoutParams2.topMargin = 40;
    localLayoutParams2.gravity = 17;
    this.k.setLayoutParams(localLayoutParams2);
    this.k.setBackgroundResource(17301504);
    this.k.addView(this.l);
    FrameLayout.LayoutParams localLayoutParams3 = new FrameLayout.LayoutParams(-1, -1);
    this.j = new WebView((Context)c.get());
    this.j.setLayoutParams(localLayoutParams3);
    this.i = new FrameLayout((Context)c.get());
    localLayoutParams3.gravity = 17;
    this.i.setLayoutParams(localLayoutParams3);
    this.i.addView(this.j);
    this.i.addView(this.k);
    d = new WeakReference(this.k);
    setContentView(this.i);
  }

  private static void c(Context paramContext, String paramString)
  {
    int i1;
    String str;
    try
    {
      JSONObject localJSONObject = Util.d(paramString);
      i1 = localJSONObject.getInt("type");
      str = localJSONObject.getString("msg");
      if (i1 == 0)
      {
        if (b == null)
          b = Toast.makeText(paramContext, str, 0);
        while (true)
        {
          b.show();
          return;
          b.setView(b.getView());
          b.setText(str);
          b.setDuration(0);
        }
      }
    }
    catch (JSONException localJSONException)
    {
      localJSONException.printStackTrace();
      return;
    }
    if (i1 == 1)
    {
      if (b == null)
        b = Toast.makeText(paramContext, str, 1);
      while (true)
      {
        b.show();
        return;
        b.setView(b.getView());
        b.setText(str);
        b.setDuration(1);
      }
    }
  }

  private void d()
  {
    this.j.setVerticalScrollBarEnabled(false);
    this.j.setHorizontalScrollBarEnabled(false);
    this.j.setWebViewClient(new TDialog.FbWebViewClient(this, null));
    this.j.setWebChromeClient(new WebChromeClient());
    this.j.clearFormData();
    WebSettings localWebSettings = this.j.getSettings();
    localWebSettings.setSavePassword(false);
    localWebSettings.setSaveFormData(false);
    localWebSettings.setCacheMode(-1);
    localWebSettings.setNeedInitialFocus(false);
    localWebSettings.setBuiltInZoomControls(true);
    localWebSettings.setSupportZoom(true);
    localWebSettings.setRenderPriority(WebSettings.RenderPriority.HIGH);
    localWebSettings.setJavaScriptEnabled(true);
    if ((c != null) && (c.get() != null))
    {
      localWebSettings.setDatabaseEnabled(true);
      localWebSettings.setDatabasePath(((Context)c.get()).getApplicationContext().getDir("databases", 0).getPath());
    }
    localWebSettings.setDomStorageEnabled(true);
    this.j.addJavascriptInterface(new TDialog.JsListener(this, null), "sdk_js_if");
    this.j.loadUrl(this.f);
    this.j.setLayoutParams(a);
    this.j.setVisibility(4);
    this.j.getSettings().setSavePassword(false);
  }

  private static void d(Context paramContext, String paramString)
  {
    if ((paramContext == null) || (paramString == null));
    int i1;
    do
      while (true)
      {
        return;
        String str;
        try
        {
          JSONObject localJSONObject = Util.d(paramString);
          i1 = localJSONObject.getInt("action");
          str = localJSONObject.getString("msg");
          if (i1 != 1)
            break;
          if (e == null)
          {
            ProgressDialog localProgressDialog = new ProgressDialog(paramContext);
            localProgressDialog.setMessage(str);
            e = new WeakReference(localProgressDialog);
            localProgressDialog.show();
            return;
          }
        }
        catch (JSONException localJSONException)
        {
          localJSONException.printStackTrace();
          return;
        }
        ((ProgressDialog)e.get()).setMessage(str);
        if (((ProgressDialog)e.get()).isShowing())
          continue;
        ((ProgressDialog)e.get()).show();
        return;
      }
    while ((i1 != 0) || (e == null) || (e.get() == null) || (!((ProgressDialog)e.get()).isShowing()));
    ((ProgressDialog)e.get()).dismiss();
    e = null;
  }

  private boolean e()
  {
    BrowserAuth localBrowserAuth = BrowserAuth.a();
    String str1 = localBrowserAuth.c();
    BrowserAuth.Auth localAuth = new BrowserAuth.Auth();
    localAuth.a = this.h;
    localAuth.b = this;
    localAuth.c = str1;
    String str2 = localBrowserAuth.a(localAuth);
    String str3 = this.f.substring(0, this.f.indexOf("?"));
    Bundle localBundle = Util.b(this.f);
    localBundle.putString("token_key", str1);
    localBundle.putString("serial", str2);
    localBundle.putString("browser", "1");
    this.f = (str3 + "?" + Util.a(localBundle));
    WeakReference localWeakReference = c;
    boolean bool = false;
    if (localWeakReference != null)
    {
      Object localObject = c.get();
      bool = false;
      if (localObject != null)
        bool = Util.a((Context)c.get(), this.f);
    }
    return bool;
  }

  public void a(String paramString1, String paramString2)
  {
    String str = "javascript:" + paramString1 + "(" + paramString2 + ");void(" + System.currentTimeMillis() + ");";
    this.j.loadUrl(str);
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    c();
    d();
  }

  protected void onStop()
  {
    if (!this.n)
      this.g.onCancel();
    super.onStop();
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.tencent.open.TDialog
 * JD-Core Version:    0.6.0
 */