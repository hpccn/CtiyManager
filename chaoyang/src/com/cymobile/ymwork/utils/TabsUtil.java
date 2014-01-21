package com.cymobile.ymwork.utils;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.TabHost;
import android.widget.TabHost.TabSpec;
import android.widget.TextView;

public class TabsUtil
{
  public static void addTab(TabHost paramTabHost, String paramString, int paramInt1, int paramInt2, int paramInt3)
  {
    TabHost.TabSpec localTabSpec = paramTabHost.newTabSpec("tab" + paramInt2);
    localTabSpec.setContent(paramInt3);
    View localView = prepareTabView(paramTabHost.getContext(), paramString, paramInt1);
    setTabIndicator(localTabSpec, paramString, paramTabHost.getContext().getResources().getDrawable(paramInt1), localView);
    paramTabHost.addTab(localTabSpec);
  }

  public static void addTab(TabHost paramTabHost, String paramString, int paramInt1, int paramInt2, Intent paramIntent)
  {
    TabHost.TabSpec localTabSpec = paramTabHost.newTabSpec("tab" + paramInt2);
    localTabSpec.setContent(paramIntent);
    View localView = prepareTabView(paramTabHost.getContext(), paramString, paramInt1);
    setTabIndicator(localTabSpec, paramString, paramTabHost.getContext().getResources().getDrawable(paramInt1), localView);
    paramTabHost.addTab(localTabSpec);
  }

  private static View prepareTabView(Context paramContext, String paramString, int paramInt)
  {
    View localView = LayoutInflater.from(paramContext).inflate(2130903109, null);
    ((TextView)localView.findViewById(2131231002)).setText(paramString);
    ((ImageView)localView.findViewById(2131231001)).setImageResource(paramInt);
    return localView;
  }

  private static void setTabIndicator(TabHost.TabSpec paramTabSpec, String paramString, Drawable paramDrawable, View paramView)
  {
    if (new Integer(Build.VERSION.SDK).intValue() < 4)
    {
      TabsUtil3.setTabIndicator(paramTabSpec, paramString, paramDrawable);
      return;
    }
    TabsUtil4.setTabIndicator(paramTabSpec, paramView);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.utils.TabsUtil
 * JD-Core Version:    0.6.0
 */