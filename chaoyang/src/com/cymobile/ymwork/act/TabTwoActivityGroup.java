package com.cymobile.ymwork.act;

import android.app.Activity;
import android.app.ActivityGroup;
import android.app.LocalActivityManager;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import java.util.ArrayList;

public class TabTwoActivityGroup extends ActivityGroup
{
  public static TabTwoActivityGroup group;
  private ArrayList<View> history = new ArrayList();

  public void back()
  {
    if (this.history.size() > 1)
    {
      group.setContentView((View)this.history.get(-2 + this.history.size()));
      this.history.remove(-1 + this.history.size());
      return;
    }
    getParent().onBackPressed();
  }

  public void onBackPressed()
  {
    group.back();
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    group = this;
  }

  protected void onResume()
  {
    super.onResume();
    this.history = new ArrayList();
    Intent localIntent = new Intent(this, StaticActivity.class).addFlags(67108864);
    replaceView(group.getLocalActivityManager().startActivity("StaticActivity", localIntent).getDecorView());
  }

  public void replaceView(View paramView)
  {
    this.history.add(paramView);
    group.setContentView(paramView);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.act.TabTwoActivityGroup
 * JD-Core Version:    0.6.0
 */