package com.cymobile.ymwork.widget;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import com.cymobile.ymwork.act.NewBuildingReportAct;
import com.cymobile.ymwork.act.NewBuildingReportAct.StateHolder;
import com.cymobile.ymwork.adapter.ReportDataSource;
import com.cymobile.ymwork.types.Pair;

public class RangeFilterFragmentReport extends ShopReportFragment
  implements ShopRangeReportGroup.OnRangeReportChangeListener
{
  private Button btnRangeFilter;
  private ShopRangeReportGroup rangeGroup;
  private View rangeLayout;
  private Pair selectedRange;

  private boolean checkRangeable(Pair paramPair)
  {
    return true;
  }

  private void dismissRange(boolean paramBoolean)
  {
    if (paramBoolean)
      this.rangeLayout.startAnimation(this.animPushTopOut);
    this.btnRangeFilter.setSelected(false);
    this.btnRangeFilter.setCompoundDrawables(null, null, this.mNormalArrow, null);
    this.rangeLayout.setVisibility(8);
  }

  private String filterRangeText(String paramString)
  {
    if (paramString == null)
      return "";
    return paramString.replace("附近", "").replace("周边", "");
  }

  private void setRange(Pair paramPair)
  {
    this.selectedRange = paramPair;
    if (this.selectedRange != null)
    {
      this.btnRangeFilter.setText(filterRangeText(this.selectedRange.name()));
      this.rangeGroup.setRangeType(ShopRangeReportGroup.pairToRangeType(this.selectedRange.intId()));
    }
  }

  private void showRange()
  {
    prepareShowLayout(this.rangeLayout);
    this.btnRangeFilter.setSelected(true);
    this.btnRangeFilter.setCompoundDrawables(null, null, this.mSelectedArrow, null);
    this.rangeLayout.setVisibility(0);
    this.rangeLayout.startAnimation(this.animPushTopIn);
  }

  protected View inflateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup)
  {
    return paramLayoutInflater.inflate(2130903085, paramViewGroup, false);
  }

  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    this.rangeGroup.setOnRangeReportChangeListener(this);
    if (this.shopListDataSource.curRange() != null)
    {
      this.rangeGroup.setRangeType(ShopRangeReportGroup.pairToRangeType(this.shopListDataSource.curRange().intId()));
      this.btnRangeFilter.setText(filterRangeText(this.shopListDataSource.curRange().name()));
    }
    setRange(this.shopListDataSource.curRange());
  }

  public boolean onBackPressed(boolean paramBoolean)
  {
    boolean bool = super.onBackPressed(paramBoolean);
    if (this.rangeLayout.getVisibility() == 0)
    {
      bool = true;
      dismissRange(paramBoolean);
    }
    return bool;
  }

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    View localView = super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    this.rangeLayout = localView.findViewById(2131230901);
    this.rangeLayout.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramView)
      {
        RangeFilterFragmentReport.this.dismissRange(true);
      }
    });
    this.rangeGroup = ((ShopRangeReportGroup)localView.findViewById(2131230936));
    this.rangeGroup.setBackgroundResource(2130837531);
    this.btnRangeFilter = ((Button)localView.findViewById(2131230897));
    this.btnRangeFilter.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramView)
      {
        if (RangeFilterFragmentReport.this.rangeLayout.getVisibility() == 0)
        {
          RangeFilterFragmentReport.this.dismissRange(true);
          return;
        }
        RangeFilterFragmentReport.this.showRange();
      }
    });
    return localView;
  }

  public void onDataChanged(int paramInt)
  {
    setRange(this.shopListDataSource.curRange());
    super.onDataChanged(paramInt);
    NewBuildingReportAct localNewBuildingReportAct = (NewBuildingReportAct)getActivity();
    if ((localNewBuildingReportAct != null) && (localNewBuildingReportAct.getStateHolder() != null))
    {
      if (localNewBuildingReportAct.getStateHolder().getIsRunningTask())
        localNewBuildingReportAct.getStateHolder().cancel();
      localNewBuildingReportAct.getStateHolder().startTask(localNewBuildingReportAct);
    }
  }

  public void onRangeReportChanged(int paramInt)
  {
    this.selectedRange = ShopRangeReportGroup.rangeTypeToPair(paramInt);
    this.shopListDataSource.setCurRange(this.selectedRange);
    dismissRange(true);
    onDataChanged(paramInt);
  }

  public void onRangeSelChanged(int paramInt)
  {
  }

  protected void prepareShowLayout(View paramView)
  {
    super.prepareShowLayout(paramView);
    if (paramView != this.rangeLayout)
      dismissRange(false);
  }

  protected void selectionChanged(boolean paramBoolean)
  {
    if (this.shopListDataSource.setCurRange(this.selectedRange))
    {
      paramBoolean = true;
      checkRangeable(this.selectedRange);
    }
    super.selectionChanged(paramBoolean);
    onDataChanged(0);
  }

  public void setEnabled(boolean paramBoolean)
  {
    super.setEnabled(paramBoolean);
    this.btnRangeFilter.setEnabled(paramBoolean);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.widget.RangeFilterFragmentReport
 * JD-Core Version:    0.6.0
 */