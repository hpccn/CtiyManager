package com.tencent.qc.stat;

import android.content.Context;
import com.tencent.qc.stat.common.StatCommonHelper;
import com.tencent.qc.stat.common.StatLogger;
import com.tencent.qc.stat.common.StatPreferences;
import java.util.Iterator;
import org.apache.http.HttpHost;
import org.json.JSONException;
import org.json.JSONObject;

public class StatConfig
{
  static s a;
  static s b;
  static String c;
  static String d;
  public static boolean e;
  private static StatLogger f = StatCommonHelper.b();
  private static StatReportStrategy g;
  private static boolean h;
  private static int i;
  private static int j;
  private static int k;
  private static int l;
  private static int m;
  private static String n;
  private static String o;
  private static String p;
  private static String q;
  private static int r;
  private static int s;
  private static boolean t;
  private static long u;
  private static long v;

  static
  {
    a = new s(2);
    b = new s(1);
    g = StatReportStrategy.f;
    h = true;
    i = 30000;
    j = 1024;
    k = 30;
    l = 3;
    m = 30;
    c = "__HIBERNATE__";
    n = null;
    o = null;
    d = "";
    r = 1440;
    s = 1024;
    t = true;
    u = 0L;
    v = 300000L;
    e = true;
  }

  public static StatReportStrategy a()
  {
    return g;
  }

  public static String a(Context paramContext)
  {
    if (p != null)
      return p;
    p = StatCommonHelper.i(paramContext);
    if ((p == null) || (p.trim().length() == 0))
      f.e("AppKey can not be null or empty, please read Developer's Guide first!");
    return p;
  }

  public static void a(int paramInt)
  {
    if (!a(paramInt, 1000, 86400000))
    {
      f.e("setSessionTimoutMillis can not exceed the range of [1000, 24 * 60 * 60 * 1000].");
      return;
    }
    i = paramInt;
  }

  public static void a(StatReportStrategy paramStatReportStrategy)
  {
    g = paramStatReportStrategy;
    f.h("Change to SendStrategy:" + paramStatReportStrategy.name());
  }

  static void a(s params)
  {
    if (params.a == b.a)
    {
      b = params;
      b(b.b);
    }
    do
      return;
    while (params.a != a.a);
    a = params;
  }

  static void a(s params, JSONObject paramJSONObject)
  {
    do
    {
      while (true)
      {
        String str1;
        try
        {
          Iterator localIterator = paramJSONObject.keys();
          if (!localIterator.hasNext())
            break;
          str1 = (String)localIterator.next();
          if (str1.equalsIgnoreCase("v"))
          {
            params.d = paramJSONObject.getInt(str1);
            continue;
          }
        }
        catch (JSONException localJSONException)
        {
          f.b(localJSONException);
          return;
        }
        if (str1.equalsIgnoreCase("c"))
        {
          String str2 = paramJSONObject.getString("c");
          if (str2.length() <= 0)
            continue;
          params.b = new JSONObject(str2);
          continue;
        }
        if (!str1.equalsIgnoreCase("m"))
          continue;
        params.c = paramJSONObject.getString("m");
      }
      StatStore localStatStore = StatStore.a(l.a());
      if (localStatStore == null)
        continue;
      localStatStore.a(params);
    }
    while (params.a != b.a);
    b(params.b);
    c(params.b);
  }

  public static void a(String paramString)
  {
    if (paramString.length() > 256)
    {
      f.e("The length of appkey cann't exceed 256 bytes.");
      return;
    }
    p = paramString;
  }

  static void a(JSONObject paramJSONObject)
  {
    while (true)
    {
      String str;
      try
      {
        Iterator localIterator = paramJSONObject.keys();
        if (localIterator.hasNext())
        {
          str = (String)localIterator.next();
          if (!str.equalsIgnoreCase(Integer.toString(b.a)))
            break label67;
          JSONObject localJSONObject2 = paramJSONObject.getJSONObject(str);
          a(b, localJSONObject2);
          continue;
        }
      }
      catch (JSONException localJSONException)
      {
        f.b(localJSONException);
      }
      label67: 
      do
      {
        return;
        if (!str.equalsIgnoreCase(Integer.toString(a.a)))
          continue;
        JSONObject localJSONObject1 = paramJSONObject.getJSONObject(str);
        a(a, localJSONObject1);
        break;
      }
      while (!str.equalsIgnoreCase("rs"));
      StatReportStrategy localStatReportStrategy = StatReportStrategy.a(paramJSONObject.getInt(str));
      if (localStatReportStrategy == null)
        continue;
      g = localStatReportStrategy;
      f.h("Change to ReportStrategy:" + localStatReportStrategy.name());
    }
  }

  public static void a(boolean paramBoolean)
  {
    h = paramBoolean;
    if (!paramBoolean)
      f.c("!!!!!!MTA StatService has been disabled!!!!!!");
  }

  static boolean a(int paramInt1, int paramInt2, int paramInt3)
  {
    return (paramInt1 >= paramInt2) && (paramInt1 <= paramInt3);
  }

  public static String b(Context paramContext)
  {
    if (q != null)
      return q;
    q = StatCommonHelper.j(paramContext);
    if ((q == null) || (q.trim().length() == 0))
      f.e("installChannel can not be null or empty, please read Developer's Guide first!");
    return q;
  }

  public static void b(int paramInt)
  {
    if (!a(paramInt, 1, 10080))
    {
      f.e("setSendPeriodMinutes can not exceed the range of [1, 7*24*60] minutes.");
      return;
    }
    r = paramInt;
  }

  public static void b(String paramString)
  {
    if (paramString.length() > 128)
    {
      f.e("the length of installChannel can not exceed the range of 128 bytes.");
      return;
    }
    q = paramString;
  }

  static void b(JSONObject paramJSONObject)
  {
    try
    {
      StatReportStrategy localStatReportStrategy = StatReportStrategy.a(paramJSONObject.getInt("rs"));
      if (localStatReportStrategy != null)
      {
        a(localStatReportStrategy);
        f.g("Change to ReportStrategy: " + localStatReportStrategy.name());
      }
      return;
    }
    catch (JSONException localJSONException)
    {
      f.h("rs not found.");
    }
  }

  public static void b(boolean paramBoolean)
  {
    t = paramBoolean;
  }

  public static boolean b()
  {
    return StatCommonHelper.b().a();
  }

  static void c(JSONObject paramJSONObject)
  {
    try
    {
      String str = paramJSONObject.getString(c);
      f.h("hibernateVer:" + str + ", current version:" + "0.6.12");
      long l1 = StatCommonHelper.b(str);
      if (StatCommonHelper.b("0.6.12") <= l1)
      {
        StatPreferences.b(l.a(), c, l1);
        a(false);
        f.c("MTA has disable for SDK version of " + str + " or lower.");
      }
      return;
    }
    catch (JSONException localJSONException)
    {
      f.h("__HIBERNATE__ not found.");
    }
  }

  public static void c(boolean paramBoolean)
  {
    e = paramBoolean;
  }

  public static boolean c()
  {
    return h;
  }

  public static int d()
  {
    return i;
  }

  public static int e()
  {
    return m;
  }

  public static int f()
  {
    return l;
  }

  static int g()
  {
    return k;
  }

  public static int h()
  {
    return j;
  }

  static HttpHost i()
  {
    if ((o != null) && (o.length() > 0))
    {
      String str = o;
      String[] arrayOfString = str.split(":");
      int i1 = 80;
      if (arrayOfString.length == 2)
      {
        str = arrayOfString[0];
        i1 = Integer.parseInt(arrayOfString[1]);
      }
      return new HttpHost(str, i1);
    }
    return null;
  }

  static String j()
  {
    if ((n != null) && (n.length() > 0))
      return n;
    return "cgi.connect.qq.com";
  }

  public static String k()
  {
    return d;
  }

  public static int l()
  {
    return r;
  }

  public static boolean m()
  {
    return t;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.tencent.qc.stat.StatConfig
 * JD-Core Version:    0.6.0
 */