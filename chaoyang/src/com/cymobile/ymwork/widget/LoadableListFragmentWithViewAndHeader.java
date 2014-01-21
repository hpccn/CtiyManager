package com.cymobile.ymwork.widget;

import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.ListView;
import com.cymobile.ymwork.adapter.FilterDataSource;

public class LoadableListFragmentWithViewAndHeader extends FragmentListActivity
{
  public static final int CONTENT_VIEW_ID = 10101010;
  private RangeFilterFragment filterFragment;
  private LinearLayout mLayoutHeader;

  public FilterDataSource getFilterDataSource()
  {
    return this.filterFragment.getFilterDataSource();
  }

  public RangeFilterFragment getFilterFragment()
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

  public void onBackPressed()
  {
    if (!this.filterFragment.onBackPressed())
      super.onBackPressed();
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.filterFragment = new RangeFilterFragment();
    this.filterFragment.setShopListDataSource(new FilterDataSource());
    this.mLayoutHeader = ((LinearLayout)findViewById(2131230886));
    this.mLayoutHeader.setId(10101010);
    getSupportFragmentManager().beginTransaction().add(10101010, this.filterFragment).commit();
    getListView().setDividerHeight(0);
  }

  public void setEmptyView(View paramView)
  {
    if (paramView != null);
    try
    {
      if ((paramView.getParent() != null) && ((paramView.getParent() instanceof LinearLayout)))
        ((LinearLayout)paramView.getParent()).removeView(paramView);
      LinearLayout localLinearLayout = (LinearLayout)findViewById(16908292);
      if ((localLinearLayout != null) && (localLinearLayout.getChildAt(0) != null))
        localLinearLayout.getChildAt(0).setVisibility(8);
      if (localLinearLayout.getChildCount() > 1)
        localLinearLayout.removeViewAt(1);
      localLinearLayout.addView(paramView);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }

  public void setLoadingView()
  {
    ((PullToRefreshListView)findViewById(16908298)).setVisibility(8);
    LinearLayout localLinearLayout = (LinearLayout)findViewById(16908292);
    if (localLinearLayout.getChildCount() > 1)
      localLinearLayout.removeViewAt(1);
    localLinearLayout.setVisibility(0);
    localLinearLayout.getChildAt(0).setVisibility(0);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.widget.LoadableListFragmentWithViewAndHeader
 * JD-Core Version:    0.6.0
 */