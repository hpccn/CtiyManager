package com.tencent.qc.stat;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import com.tencent.qc.stat.common.StatCommonHelper;
import com.tencent.qc.stat.common.StatLogger;
import com.tencent.qc.stat.common.StatPreferences;
import com.tencent.qc.stat.common.User;
import com.tencent.qc.stat.event.AdditionEvent;
import com.tencent.qc.stat.event.CustomEvent;
import com.tencent.qc.stat.event.SessionEnv;
import java.util.Map;
import java.util.WeakHashMap;
import org.json.JSONException;
import org.json.JSONObject;

public class StatService
{
  private static Handler a;
  private static Map b = new WeakHashMap();
  private static volatile long c = 0L;
  private static volatile long d = 0L;
  private static volatile int e = 0;
  private static StatLogger f = StatCommonHelper.b();

  static int a(Context paramContext, boolean paramBoolean)
  {
    long l = System.currentTimeMillis();
    if ((paramBoolean) && (l - c >= StatConfig.d()))
      c(paramContext);
    c = l;
    if (d == 0L)
      d = StatCommonHelper.c();
    if (l >= d)
    {
      d = StatCommonHelper.c();
      if (StatStore.a(paramContext).b(paramContext).c() != 1)
        StatStore.a(paramContext).b(paramContext).a(1);
      c(paramContext);
    }
    if (e == 0)
      c(paramContext);
    return e;
  }

  static JSONObject a()
  {
    JSONObject localJSONObject1 = new JSONObject();
    try
    {
      JSONObject localJSONObject2 = new JSONObject();
      if (StatConfig.b.d != 0)
        localJSONObject2.put("v", StatConfig.b.d);
      localJSONObject1.put(Integer.toString(StatConfig.b.a), localJSONObject2);
      JSONObject localJSONObject3 = new JSONObject();
      if (StatConfig.a.d != 0)
        localJSONObject3.put("v", StatConfig.a.d);
      localJSONObject1.put(Integer.toString(StatConfig.a.a), localJSONObject3);
      return localJSONObject1;
    }
    catch (JSONException localJSONException)
    {
      f.b(localJSONException);
    }
    return localJSONObject1;
  }

  static void a(Context paramContext)
  {
    if (paramContext == null);
    do
    {
      do
      {
        do
          return;
        while ((a != null) || (!b(paramContext)));
        HandlerThread localHandlerThread = new HandlerThread("StatService");
        localHandlerThread.start();
        l.a(paramContext);
        a = new Handler(localHandlerThread.getLooper());
        StatStore.a(paramContext);
        StatStore.a(paramContext).b();
      }
      while (StatConfig.a() != StatReportStrategy.d);
      f.h("StatConfig.getStatSendStrategy() == StatReportStrategy.APP_LAUNCH");
    }
    while (!StatCommonHelper.h(paramContext));
    StatStore.a(paramContext).a(-1);
  }

  public static void a(Context paramContext, String paramString)
  {
    if (paramString == null)
      paramString = "";
    if (!StatConfig.d.equals(paramString))
    {
      StatConfig.d = paramString;
      a(paramContext, null);
    }
  }

  public static void a(Context paramContext, String paramString, String[] paramArrayOfString)
  {
    if (!StatConfig.c());
    CustomEvent localCustomEvent;
    do
    {
      return;
      if (paramContext == null)
      {
        f.e("The Context of StatService.trackCustomEvent() can not be null!");
        return;
      }
      if (a(paramString))
      {
        f.e("The event_id of StatService.trackCustomEvent() can not be null or empty.");
        return;
      }
      localCustomEvent = new CustomEvent(paramContext, a(paramContext, false), paramString);
      localCustomEvent.a(paramArrayOfString);
    }
    while (d(paramContext) == null);
    d(paramContext).post(new t(localCustomEvent));
  }

  static void a(Context paramContext, Map paramMap)
  {
    if (!StatConfig.c());
    AdditionEvent localAdditionEvent;
    do
    {
      return;
      if (paramContext == null)
      {
        f.e("The Context of StatService.sendAdditionEvent() can not be null!");
        return;
      }
      localAdditionEvent = new AdditionEvent(paramContext, a(paramContext, false), paramMap);
    }
    while (d(paramContext) == null);
    d(paramContext).post(new t(localAdditionEvent));
  }

  static boolean a(String paramString)
  {
    return (paramString == null) || (paramString.length() == 0);
  }

  public static void b(String paramString)
  {
    StatConfig.a("Aqc" + paramString);
    StatConfig.b("QQConnect");
    StatConfig.c(false);
    StatConfig.b(true);
    StatConfig.a(1800000);
    StatConfig.b(1440);
    StatConfig.a(StatReportStrategy.f);
  }

  static boolean b(Context paramContext)
  {
    long l = StatPreferences.a(paramContext, StatConfig.c, 0L);
    if (StatCommonHelper.b("0.6.12") <= l)
    {
      StatConfig.a(false);
      return false;
    }
    return true;
  }

  static void c(Context paramContext)
  {
    e = StatCommonHelper.a();
    if (d(paramContext) != null)
      d(paramContext).post(new t(new SessionEnv(paramContext, e, a())));
  }

  private static Handler d(Context paramContext)
  {
    a(paramContext);
    return a;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.tencent.qc.stat.StatService
 * JD-Core Version:    0.6.0
 */