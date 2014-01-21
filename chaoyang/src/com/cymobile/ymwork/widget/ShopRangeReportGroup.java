package com.cymobile.ymwork.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import com.cymobile.ymwork.types.Pair;
import java.util.Calendar;

public class ShopRangeReportGroup extends RadioGroup
  implements View.OnClickListener
{
  public static final int RANGE1K = 2;
  public static final int RANGE2K = 3;
  public static final int RANGE500 = 1;
  public static final int RANGE5K = 4;
  public static final int RANGEALL = 5;
  private View lastDivider;
  private int mCurRangeType = 0;
  private RadioButton mLastSel;
  private OnRangeReportChangeListener mListener;
  private Drawable mNormal;
  private Drawable mSelected;
  private RadioButton range1;
  private RadioButton range10;
  private RadioButton range2;
  private RadioButton range3;
  private RadioButton range4;
  private RadioButton range5;
  private RadioButton range6;
  private RadioButton range7;
  private RadioButton range8;
  private RadioButton range9;

  public ShopRangeReportGroup(Context paramContext)
  {
    super(paramContext);
  }

  public ShopRangeReportGroup(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public static int pairToRangeType(int paramInt)
  {
    Calendar.getInstance().get(1);
    if (paramInt == 0);
    do
    {
      return 0;
      if (paramInt == 1)
        return 1;
      if (paramInt == 2)
        return 2;
      if (paramInt == 3)
        return 3;
      if (paramInt == 4)
        return 4;
      if (paramInt == 5)
        return 5;
      if (paramInt == 6)
        return 6;
      if (paramInt == 7)
        return 7;
      if (paramInt == 8)
        return 8;
    }
    while (paramInt != 9);
    return 9;
  }

  public static Pair rangeTypeToPair(int paramInt)
  {
    Calendar localCalendar = Calendar.getInstance();
    int i = localCalendar.get(1);
    int j = localCalendar.get(2);
    if (j == 0);
    for (String str = i - 1 + "年12月"; paramInt == 1; str = j + "月")
      return new Pair("1", "当天");
    if (paramInt == 2)
      return new Pair("2", "本周");
    if (paramInt == 3)
      return new Pair("3", "本月");
    if (paramInt == 4)
      return new Pair("4", str);
    if (paramInt == 5)
      return new Pair("5", "本季度");
    if (paramInt == 6)
      return new Pair(6, "本年度");
    if (paramInt == 7)
      return new Pair(7, i - 1 + "年");
    if (paramInt == 8)
      return new Pair(8, i - 2 + "年");
    if (paramInt == 9)
      return new Pair(9, i - 3 + "年");
    return new Pair("0", "全部");
  }

  int dip2px(Context paramContext, float paramFloat)
  {
    return 5;
  }

  public void disableAllCity()
  {
  }

  public int getRangeType()
  {
    return this.mCurRangeType;
  }

  public void onClick(View paramView)
  {
    if (paramView == this.range1)
      setRangeType(1);
    while (true)
    {
      if (this.mListener != null)
        this.mListener.onRangeReportChanged(this.mCurRangeType);
      return;
      if (paramView == this.range2)
      {
        setRangeType(2);
        continue;
      }
      if (paramView == this.range3)
      {
        setRangeType(3);
        continue;
      }
      if (paramView == this.range4)
      {
        setRangeType(4);
        continue;
      }
      if (paramView == this.range5)
      {
        setRangeType(5);
        continue;
      }
      if (paramView == this.range6)
      {
        setRangeType(6);
        continue;
      }
      if (paramView == this.range7)
      {
        setRangeType(7);
        continue;
      }
      if (paramView == this.range8)
      {
        setRangeType(8);
        continue;
      }
      if (paramView == this.range9)
      {
        setRangeType(9);
        continue;
      }
      if (paramView != this.range10)
        continue;
      setRangeType(0);
    }
  }

  protected void onFinishInflate()
  {
    super.onFinishInflate();
    Calendar localCalendar = Calendar.getInstance();
    int i = localCalendar.get(1);
    int j = localCalendar.get(2);
    if (j == 0);
    for (String str = i - 1 + "年12月"; ; str = j + "月")
    {
      this.range1 = ((RadioButton)findViewById(2131230937));
      this.range1.setOnClickListener(this);
      this.range2 = ((RadioButton)findViewById(2131230938));
      this.range2.setOnClickListener(this);
      this.range3 = ((RadioButton)findViewById(2131230939));
      this.range3.setOnClickListener(this);
      this.range4 = ((RadioButton)findViewById(2131230940));
      this.range4.setOnClickListener(this);
      this.range4.setText(str);
      this.range5 = ((RadioButton)findViewById(2131230941));
      this.range5.setOnClickListener(this);
      this.range6 = ((RadioButton)findViewById(2131230942));
      this.range6.setOnClickListener(this);
      this.range6.setText("本年度");
      this.range7 = ((RadioButton)findViewById(2131230943));
      this.range7.setOnClickListener(this);
      this.range7.setText(i - 1 + "年");
      this.range8 = ((RadioButton)findViewById(2131230944));
      this.range8.setOnClickListener(this);
      this.range8.setText(i - 2 + "年");
      this.range9 = ((RadioButton)findViewById(2131230945));
      this.range9.setOnClickListener(this);
      this.range9.setText(i - 3 + "年");
      this.range10 = ((RadioButton)findViewById(2131230947));
      this.range10.setOnClickListener(this);
      this.lastDivider = findViewById(2131230946);
      this.mNormal = getContext().getResources().getDrawable(2130837770);
      this.mNormal.setBounds(0, 0, this.mNormal.getIntrinsicWidth(), this.mNormal.getIntrinsicHeight());
      this.mSelected = getContext().getResources().getDrawable(2130837771);
      this.mSelected.setBounds(0, 0, this.mSelected.getIntrinsicWidth(), this.mSelected.getIntrinsicHeight());
      setRangeType(this.mCurRangeType);
      return;
    }
  }

  public void setOnRangeReportChangeListener(OnRangeReportChangeListener paramOnRangeReportChangeListener)
  {
    this.mListener = paramOnRangeReportChangeListener;
  }

  public void setRangeType(int paramInt)
  {
    this.mCurRangeType = paramInt;
    if (this.mLastSel != null)
      this.mLastSel.setCompoundDrawables(null, this.mNormal, null, null);
    if (this.mCurRangeType == 0)
    {
      this.range10.setChecked(true);
      this.mLastSel = this.range10;
    }
    while (true)
    {
      if (this.mLastSel != null)
        this.mLastSel.setCompoundDrawables(null, this.mSelected, null, null);
      return;
      if (this.mCurRangeType == 1)
      {
        this.range1.setChecked(true);
        this.mLastSel = this.range1;
        continue;
      }
      if (this.mCurRangeType == 2)
      {
        this.range2.setChecked(true);
        this.mLastSel = this.range2;
        continue;
      }
      if (this.mCurRangeType == 3)
      {
        this.range3.setChecked(true);
        this.mLastSel = this.range3;
        continue;
      }
      if (this.mCurRangeType == 4)
      {
        this.range4.setChecked(true);
        this.mLastSel = this.range4;
        continue;
      }
      if (this.mCurRangeType == 5)
      {
        this.range5.setChecked(true);
        this.mLastSel = this.range5;
        continue;
      }
      if (this.mCurRangeType == 6)
      {
        this.range6.setChecked(true);
        this.mLastSel = this.range6;
        continue;
      }
      if (this.mCurRangeType == 7)
      {
        this.range7.setChecked(true);
        this.mLastSel = this.range7;
        continue;
      }
      if (this.mCurRangeType == 8)
      {
        this.range8.setChecked(true);
        this.mLastSel = this.range8;
        continue;
      }
      if (this.mCurRangeType != 9)
        continue;
      this.range9.setChecked(true);
      this.mLastSel = this.range9;
    }
  }

  public static abstract interface OnRangeReportChangeListener
  {
    public abstract void onRangeReportChanged(int paramInt);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.widget.ShopRangeReportGroup
 * JD-Core Version:    0.6.0
 */