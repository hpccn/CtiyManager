package android.support.v4.content;

import android.content.ComponentName;
import android.content.Intent;

class IntentCompatHoneycomb
{
  public static Intent makeMainActivity(ComponentName paramComponentName)
  {
    return Intent.makeMainActivity(paramComponentName);
  }

  public static Intent makeRestartActivityTask(ComponentName paramComponentName)
  {
    return Intent.makeRestartActivityTask(paramComponentName);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.content.IntentCompatHoneycomb
 * JD-Core Version:    0.6.0
 */