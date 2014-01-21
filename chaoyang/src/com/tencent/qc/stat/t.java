package com.tencent.qc.stat;

import android.content.Context;
import com.tencent.qc.stat.common.StatCommonHelper;
import com.tencent.qc.stat.common.StatLogger;
import com.tencent.qc.stat.common.StatPreferences;
import com.tencent.qc.stat.event.Event;

class t
  implements Runnable
{
  private Event a;
  private StatReportStrategy b = null;

  public t(Event paramEvent)
  {
    this.a = paramEvent;
    this.b = StatConfig.a();
  }

  private void a()
  {
    l.b().a(this.a, new a(this));
  }

  public void run()
  {
    if (!StatConfig.c());
    while (true)
    {
      return;
      StatService.b().b("Lauch stat task in thread:" + Thread.currentThread().getName());
      Context localContext = this.a.c();
      if (!StatCommonHelper.h(localContext))
      {
        StatStore.a(localContext).b(this.a, null);
        return;
      }
      if ((StatConfig.m()) && (StatCommonHelper.g(localContext)))
        this.b = StatReportStrategy.a;
      switch (p.a[this.b.ordinal()])
      {
      default:
        StatService.b().e("Invalid stat strategy:" + StatConfig.a());
        return;
      case 1:
        a();
        return;
      case 2:
        if (StatCommonHelper.e(localContext))
        {
          a();
          return;
        }
        StatStore.a(localContext).b(this.a, null);
        return;
      case 3:
      case 4:
        StatStore.a(localContext).b(this.a, null);
        return;
      case 5:
        StatStore.a(localContext).b(this.a, new k(this, localContext));
        return;
      case 6:
      }
      try
      {
        StatStore.a(localContext).b(this.a, null);
        Long localLong1 = Long.valueOf(StatPreferences.a(localContext, "last_period_ts", 0L));
        Long localLong2 = Long.valueOf(System.currentTimeMillis());
        if (Long.valueOf(Long.valueOf(localLong2.longValue() - localLong1.longValue()).longValue() / 60000L).longValue() <= StatConfig.l())
          continue;
        StatStore.a(localContext).a(-1);
        StatPreferences.b(localContext, "last_period_ts", localLong2.longValue());
        return;
      }
      catch (Exception localException)
      {
        StatService.b().b(localException);
      }
    }
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.tencent.qc.stat.t
 * JD-Core Version:    0.6.0
 */