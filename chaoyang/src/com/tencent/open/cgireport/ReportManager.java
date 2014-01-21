package com.tencent.open.cgireport;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.util.Log;
import com.tencent.open.OpenConfig;
import java.util.ArrayList;
import java.util.Random;

public class ReportManager
{
  private static ReportManager a = null;
  private long b = 0L;
  private int c = 3;
  private boolean d = false;
  private Random e = new Random();
  private ReportDataModal f;
  private ArrayList g = new ArrayList();
  private ArrayList h = new ArrayList();

  public static ReportManager a()
  {
    if (a == null)
      a = new ReportManager();
    return a;
  }

  private void a(Context paramContext, String paramString1, String paramString2, Bundle paramBundle)
  {
    new b(this, paramString1, paramContext, paramBundle).start();
  }

  private boolean a(Context paramContext)
  {
    int i = OpenConfig.a(paramContext, null).a("Common_CGIReportFrequency");
    Log.d("OpenConfig_test", "config 4:Common_CGIReportTimeinterval     config_value:" + i);
    if (i == 0)
      i = 10;
    Log.d("OpenConfig_test", "config 4:Common_CGIReportTimeinterval     result_value:" + i);
    if (this.e.nextInt(100) < i)
    {
      Log.i("cgi_report_debug", "ReportManager availableForFrequency = ture");
      return true;
    }
    Log.i("cgi_report_debug", "ReportManager availableForFrequency = false");
    return false;
  }

  private String b(Context paramContext)
  {
    try
    {
      ConnectivityManager localConnectivityManager = (ConnectivityManager)paramContext.getSystemService("connectivity");
      if (localConnectivityManager == null)
      {
        Log.e("cgi_report_debug", "ReportManager getAPN failed:ConnectivityManager == null");
        return "no_net";
      }
      NetworkInfo localNetworkInfo = localConnectivityManager.getActiveNetworkInfo();
      if ((localNetworkInfo == null) || (!localNetworkInfo.isAvailable()))
      {
        Log.e("cgi_report_debug", "ReportManager getAPN failed:NetworkInfo == null");
        return "no_net";
      }
      if (localNetworkInfo.getTypeName().toUpperCase().equals("WIFI"))
      {
        Log.i("cgi_report_debug", "ReportManager getAPN type = wifi");
        return "wifi";
      }
      String str = localNetworkInfo.getExtraInfo().toLowerCase();
      if (str == null)
      {
        Log.e("cgi_report_debug", "ReportManager getAPN failed:extraInfo == null");
        return "mobile_unknow";
      }
      Log.i("cgi_report_debug", "ReportManager getAPN type = " + str);
      return str;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return "unknow";
  }

  private void b(Context paramContext, String paramString1, long paramLong1, long paramLong2, long paramLong3, int paramInt, String paramString2)
  {
    long l = SystemClock.elapsedRealtime() - paramLong1;
    Log.i("cgi_report_debug", "ReportManager updateDB url=" + paramString1 + ",resultCode=" + paramInt + ",timeCost=" + l + ",reqSize=" + paramLong2 + ",rspSize=" + paramLong3);
    int i = OpenConfig.a(paramContext, null).a("Common_CGIReportFrequency");
    Log.d("OpenConfig_test", "config 4:Common_CGIReportFrequency     config_value:" + i);
    if (i == 0)
      i = 10;
    Log.d("OpenConfig_test", "config 4:Common_CGIReportFrequency     result_value:" + i);
    int j = 100 / i;
    int k;
    if (j <= 0)
      k = 1;
    while (true)
    {
      String str = b(paramContext);
      this.f.a(str, k + "", paramString1, paramInt, l, paramLong2, paramLong3);
      return;
      if (j > 100)
      {
        k = 100;
        continue;
      }
      k = j;
    }
  }

  private boolean c(Context paramContext)
  {
    long l1 = OpenConfig.a(paramContext, null).b("Common_CGIReportTimeinterval");
    Log.d("OpenConfig_test", "config 5:Common_CGIReportTimeinterval     config_value:" + l1);
    if (l1 == 0L)
      l1 = 1200L;
    Log.d("OpenConfig_test", "config 5:Common_CGIReportTimeinterval     result_value:" + l1);
    long l2 = System.currentTimeMillis() / 1000L;
    if ((this.b == 0L) || (l1 + this.b <= l2))
    {
      this.b = l2;
      Log.i("cgi_report_debug", "ReportManager availableForTime = ture");
      return true;
    }
    Log.i("cgi_report_debug", "ReportManager availableForTime = false");
    return false;
  }

  private boolean d(Context paramContext)
  {
    int i = OpenConfig.a(paramContext, null).a("Common_CGIReportMaxcount");
    Log.d("OpenConfig_test", "config 6:Common_CGIReportMaxcount     config_value:" + i);
    if (i == 0)
      i = 20;
    Log.d("OpenConfig_test", "config 6:Common_CGIReportMaxcount     result_value:" + i);
    if (this.f.e() >= i)
    {
      Log.i("cgi_report_debug", "ReportManager availableForCount = ture");
      return true;
    }
    Log.i("cgi_report_debug", "ReportManager availableForCount = false");
    return false;
  }

  private void e(Context paramContext)
  {
    Log.i("cgi_report_debug", "ReportManager doUpload start");
    this.d = true;
    this.g = this.f.c();
    this.f.b();
    this.h = this.f.d();
    this.f.a();
    Bundle localBundle = new Bundle();
    localBundle.putString("appid", "1000002");
    localBundle.putString("releaseversion", "QQConnect_SDK_Android_1_5");
    localBundle.putString("device", Build.DEVICE);
    localBundle.putString("qua", "V1_AND_OpenSDK_1.5_709_RDM_B");
    localBundle.putString("key", "apn,frequency,commandid,resultcode,tmcost,reqsize,rspsize");
    for (int i = 0; i < this.g.size(); i++)
    {
      localBundle.putString(i + "_1", ((reportItem)this.g.get(i)).a());
      localBundle.putString(i + "_2", ((reportItem)this.g.get(i)).b());
      localBundle.putString(i + "_3", ((reportItem)this.g.get(i)).c());
      localBundle.putString(i + "_4", ((reportItem)this.g.get(i)).d());
      localBundle.putString(i + "_5", ((reportItem)this.g.get(i)).e());
      localBundle.putString(i + "_6", ((reportItem)this.g.get(i)).f());
      localBundle.putString(i + "_7", ((reportItem)this.g.get(i)).g());
    }
    for (int j = this.g.size(); j < this.h.size() + this.g.size(); j++)
    {
      int k = j - this.g.size();
      localBundle.putString(j + "_1", ((reportItem)this.h.get(k)).a());
      localBundle.putString(j + "_2", ((reportItem)this.h.get(k)).b());
      localBundle.putString(j + "_3", ((reportItem)this.h.get(k)).c());
      localBundle.putString(j + "_4", ((reportItem)this.h.get(k)).d());
      localBundle.putString(j + "_5", ((reportItem)this.h.get(k)).e());
      localBundle.putString(j + "_6", ((reportItem)this.h.get(k)).f());
      localBundle.putString(j + "_7", ((reportItem)this.h.get(k)).g());
    }
    a(paramContext, "http://wspeed.qq.com/w.cgi", "POST", localBundle);
  }

  public void a(Context paramContext, String paramString1, long paramLong1, long paramLong2, long paramLong3, int paramInt, String paramString2)
  {
    if (this.f == null)
      this.f = new ReportDataModal(paramContext);
    if (a(paramContext) == true)
    {
      b(paramContext, paramString1, paramLong1, paramLong2, paramLong3, paramInt, paramString2);
      if (this.d != true)
        break label52;
    }
    label52: 
    do
    {
      return;
      if (c(paramContext) != true)
        continue;
      e(paramContext);
      return;
    }
    while (d(paramContext) != true);
    e(paramContext);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.tencent.open.cgireport.ReportManager
 * JD-Core Version:    0.6.0
 */