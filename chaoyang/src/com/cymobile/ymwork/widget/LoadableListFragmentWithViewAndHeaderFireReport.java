package com.cymobile.ymwork.widget;

import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.View;
import android.widget.LinearLayout;
import com.cymobile.ymwork.adapter.ReportDataSource;

public class LoadableListFragmentWithViewAndHeaderFireReport extends FragmentReportActivity
{
  private static final int CONTENT_VIEW_ID = 1414141414;
  private RangeFilterFragmentFireReport filterFragment;
  private LinearLayout mLayoutHeader;

  public RangeFilterFragmentFireReport getFilterFragment()
  {
    return this.filterFragment;
  }

  public LinearLayout getHeaderLayout()
  {
    return this.mLayoutHeader;
  }

  public LinearLayout getLayoutHeader()
  {
    return this.mLayoutHeader;
  }

  public int getNoSearchResultsStringId()
  {
    return 2131296307;
  }

  public ReportDataSource getReportDataSource()
  {
    return this.filterFragment.getReportDataSource();
  }

  public void onBackPressed()
  {
    if (!this.filterFragment.onBackPressed())
      super.onBackPressed();
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.filterFragment = new RangeFilterFragmentFireReport();
    this.filterFragment.setShopListDataSource(new ReportDataSource());
    this.mLayoutHeader = ((LinearLayout)findViewById(2131230886));
    this.mLayoutHeader.setId(1414141414);
    getSupportFragmentManager().beginTransaction().add(1414141414, this.filterFragment).commit();
  }

  public void setLoadingView()
  {
    ((LinearLayout)findViewById(2131230885)).setVisibility(8);
    LinearLayout localLinearLayout = (LinearLayout)findViewById(16908292);
    if (localLinearLayout.getChildCount() > 1)
      localLinearLayout.removeViewAt(1);
    localLinearLayout.setVisibility(0);
    localLinearLayout.getChildAt(0).setVisibility(0);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.widget.LoadableListFragmentWithViewAndHeaderFireReport
 * JD-Core Version:    0.6.0
 */