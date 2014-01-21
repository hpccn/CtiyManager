package com.cymobile.ymwork.widget;

import android.support.v4.app.FragmentActivity;
import android.widget.LinearLayout;

public class FragmentReportActivity extends FragmentActivity
{
  private LinearLayout mlayout;

  private void ensureLinearLayout()
  {
    if (this.mlayout != null)
      return;
    setContentView(2130903068);
  }

  public LinearLayout getLinearLayout()
  {
    ensureLinearLayout();
    return this.mlayout;
  }

  public void onContentChanged()
  {
    super.onContentChanged();
    findViewById(16908292);
    this.mlayout = ((LinearLayout)findViewById(2131230885));
    if (this.mlayout == null)
      throw new RuntimeException("Your content must have a LinearLayout whose id attribute is 'R.id.line'");
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.widget.FragmentReportActivity
 * JD-Core Version:    0.6.0
 */