package com.cymobile.ymwork.utils;

import android.view.View;
import android.widget.TabHost;
import android.widget.TabHost.TabSpec;
import android.widget.TabWidget;

public class TabsUtil4
{
  public static int getTabCount(TabHost paramTabHost)
  {
    return paramTabHost.getTabWidget().getTabCount();
  }

  public static void setTabIndicator(TabHost.TabSpec paramTabSpec, View paramView)
  {
    paramTabSpec.setIndicator(paramView);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.utils.TabsUtil4
 * JD-Core Version:    0.6.0
 */