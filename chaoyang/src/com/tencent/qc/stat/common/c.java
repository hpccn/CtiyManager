package com.tencent.qc.stat.common;

import android.content.Context;
import android.os.Build;
import android.os.Build.VERSION;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import com.tencent.qc.stat.StatConfig;
import java.util.Locale;
import java.util.TimeZone;
import org.json.JSONObject;

class c
{
  String a;
  String b = "0.6.12";
  DisplayMetrics c;
  int d = Build.VERSION.SDK_INT;
  String e = Build.MODEL;
  String f = Build.MANUFACTURER;
  String g = Locale.getDefault().getLanguage();
  String h;
  String i;
  String j;
  int k = 0;

  private c(Context paramContext)
  {
    this.c = StatCommonHelper.d(paramContext);
    this.a = StatCommonHelper.l(paramContext);
    this.h = StatConfig.b(paramContext);
    this.i = ((TelephonyManager)(TelephonyManager)paramContext.getSystemService("phone")).getNetworkOperator();
    this.j = TimeZone.getDefault().getID();
    this.k = StatCommonHelper.q(paramContext);
  }

  void a(JSONObject paramJSONObject)
  {
    paramJSONObject.put("sr", this.c.widthPixels + "*" + this.c.heightPixels);
    StatCommonHelper.a(paramJSONObject, "av", this.a);
    StatCommonHelper.a(paramJSONObject, "ch", this.h);
    StatCommonHelper.a(paramJSONObject, "mf", this.f);
    StatCommonHelper.a(paramJSONObject, "sv", this.b);
    StatCommonHelper.a(paramJSONObject, "ov", Integer.toString(this.d));
    paramJSONObject.put("os", 1);
    StatCommonHelper.a(paramJSONObject, "op", this.i);
    StatCommonHelper.a(paramJSONObject, "lg", this.g);
    StatCommonHelper.a(paramJSONObject, "md", this.e);
    StatCommonHelper.a(paramJSONObject, "tz", this.j);
    if (this.k != 0)
      paramJSONObject.put("jb", this.k);
    StatCommonHelper.a(paramJSONObject, "sd", StatCommonHelper.d());
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.tencent.qc.stat.common.c
 * JD-Core Version:    0.6.0
 */