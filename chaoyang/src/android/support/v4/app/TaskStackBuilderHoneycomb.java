package android.support.v4.app;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;

public class TaskStackBuilderHoneycomb
{
  public static PendingIntent getActivitiesPendingIntent(Context paramContext, int paramInt1, Intent[] paramArrayOfIntent, int paramInt2)
  {
    return PendingIntent.getActivities(paramContext, paramInt1, paramArrayOfIntent, paramInt2);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.app.TaskStackBuilderHoneycomb
 * JD-Core Version:    0.6.0
 */