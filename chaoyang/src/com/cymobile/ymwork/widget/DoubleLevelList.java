package com.cymobile.ymwork.widget;

import android.content.Context;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.cymobile.ymwork.adapter.IFilterAdapter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class DoubleLevelList extends LinearLayout
{
  private IFilterAdapter adapter1;
  private IFilterAdapter adapter2;
  private ListView list1;
  private ListView list2;
  private OnDoubleItemClickListener onItemClickListener;

  public DoubleLevelList(Context paramContext)
  {
    super(paramContext);
  }

  public DoubleLevelList(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  protected void onFinishInflate()
  {
    super.onFinishInflate();
    this.list1 = ((ListView)findViewById(2131230782));
    this.list2 = ((ListView)findViewById(2131230783));
  }

  public void setAdapter(IFilterAdapter paramIFilterAdapter1, IFilterAdapter paramIFilterAdapter2)
  {
    this.adapter1 = paramIFilterAdapter1;
    this.adapter2 = paramIFilterAdapter2;
    this.list1.setAdapter((ListAdapter)this.adapter1);
    this.list2.setAdapter((ListAdapter)this.adapter2);
  }

  public void setData(ArrayList<? extends Parcelable> paramArrayList, HashMap<? extends Parcelable, ? extends ArrayList<? extends Parcelable>> paramHashMap)
  {
    setData(paramArrayList, paramHashMap, null, null);
  }

  public void setData(ArrayList<? extends Parcelable> paramArrayList, HashMap<? extends Parcelable, ? extends ArrayList<? extends Parcelable>> paramHashMap, Parcelable paramParcelable1, Parcelable paramParcelable2)
  {
    if (this.adapter1 != null)
      this.adapter1.setDataSet(paramArrayList, paramParcelable1);
    if (this.adapter2 != null)
      this.adapter2.setDataSet((List)paramHashMap.get(paramParcelable1), paramParcelable2);
  }

  public void setOnDoubleItemClickListener(OnDoubleItemClickListener paramOnDoubleItemClickListener)
  {
    if (paramOnDoubleItemClickListener == null)
    {
      this.list1.setOnItemClickListener(null);
      this.list2.setOnItemClickListener(null);
      return;
    }
    this.onItemClickListener = paramOnDoubleItemClickListener;
    this.list1.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
      {
        DoubleLevelList.this.onItemClickListener.onMainItemClick(paramAdapterView, paramView, paramInt, paramLong);
      }
    });
    this.list2.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
      {
        DoubleLevelList.this.onItemClickListener.onSubItemClick(paramAdapterView, paramView, paramInt, paramLong);
      }
    });
  }

  public static abstract interface OnDoubleItemClickListener
  {
    public abstract void onMainItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong);

    public abstract void onSubItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.widget.DoubleLevelList
 * JD-Core Version:    0.6.0
 */