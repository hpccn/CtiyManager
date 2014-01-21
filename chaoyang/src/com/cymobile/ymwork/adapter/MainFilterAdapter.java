package com.cymobile.ymwork.adapter;

import android.content.Context;
import android.os.Parcelable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.cymobile.ymwork.types.Category;
import java.util.ArrayList;

public class MainFilterAdapter extends SubFilterAdapter
{
  public MainFilterAdapter(ArrayList<? extends Parcelable> paramArrayList, Context paramContext)
  {
    super(paramArrayList, paramContext);
  }

  public static int getCategoryIconId(long paramLong)
  {
    return 2130837558;
  }

  protected int getMainItemLayout()
  {
    return 2130903061;
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if ((paramView == null) || (paramView.getTag() != this))
    {
      paramView = this.layoutInflater.inflate(getMainItemLayout(), paramViewGroup, false);
      paramView.setTag(this);
    }
    ImageView localImageView = (ImageView)paramView.findViewById(2131230795);
    if (localImageView != null)
    {
      Object localObject = getItem(paramInt);
      if (!(localObject instanceof Category))
        localImageView.setVisibility(8);
      localImageView.setImageResource(getCategoryIconId(((Category)localObject).id()));
      localImageView.setVisibility(0);
    }
    ((TextView)paramView.findViewById(16908308)).setText(getName(paramInt));
    if (this.selectedItem != paramInt)
    {
      paramView.setBackgroundResource(0);
      return paramView;
    }
    paramView.setBackgroundResource(2130837533);
    return paramView;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.adapter.MainFilterAdapter
 * JD-Core Version:    0.6.0
 */