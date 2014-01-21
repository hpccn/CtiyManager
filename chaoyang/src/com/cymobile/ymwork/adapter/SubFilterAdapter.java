package com.cymobile.ymwork.adapter;

import android.content.Context;
import android.os.Parcelable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.cymobile.ymwork.types.Category;
import com.cymobile.ymwork.types.Pair;
import com.cymobile.ymwork.types.Region;
import java.util.ArrayList;
import java.util.List;

public class SubFilterAdapter extends BaseAdapter
  implements IFilterAdapter
{
  protected LayoutInflater layoutInflater;
  protected List<Parcelable> list = new ArrayList();
  protected int selectedItem = -1;
  protected int textColor_n;

  public SubFilterAdapter(ArrayList<? extends Parcelable> paramArrayList, Context paramContext)
  {
    if (paramArrayList != null)
    {
      this.list.clear();
      this.list.addAll(paramArrayList);
    }
    this.layoutInflater = LayoutInflater.from(paramContext);
  }

  public int getCount()
  {
    if (this.list == null)
      return 0;
    return this.list.size();
  }

  protected long getId(Parcelable paramParcelable)
  {
    if (paramParcelable == null)
      return 0L;
    if ((paramParcelable instanceof Category))
      return ((Category)paramParcelable).id();
    if ((paramParcelable instanceof Region))
      return ((Region)paramParcelable).id();
    return -1L;
  }

  public Object getItem(int paramInt)
  {
    if (this.list == null)
      return null;
    return this.list.get(paramInt);
  }

  public long getItemId(int paramInt)
  {
    return paramInt;
  }

  protected String getName(int paramInt)
  {
    Object localObject = getItem(paramInt);
    if (localObject == null)
      return "";
    if ((localObject instanceof Category))
      return ((Category)localObject).name();
    if ((localObject instanceof Region))
      return ((Region)localObject).name();
    if ((localObject instanceof Pair))
      return ((Pair)localObject).name();
    return localObject.toString();
  }

  public int getSelectItem()
  {
    return this.selectedItem;
  }

  protected int getSubFilterItemLayout()
  {
    return 2130903062;
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if ((paramView == null) || (paramView.getTag() != this))
    {
      paramView = this.layoutInflater.inflate(getSubFilterItemLayout(), paramViewGroup, false);
      paramView.setTag(this);
    }
    TextView localTextView = (TextView)paramView.findViewById(16908308);
    localTextView.setText(getName(paramInt));
    if (this.selectedItem == paramInt)
    {
      localTextView.setTextColor(-39679);
      return paramView;
    }
    if (this.textColor_n != 0)
    {
      localTextView.setTextColor(this.textColor_n);
      return paramView;
    }
    localTextView.setTextColor(-10066330);
    return paramView;
  }

  protected int indexOf(List<? extends Parcelable> paramList, Parcelable paramParcelable)
  {
    if ((paramList == null) || (paramParcelable == null));
    while (true)
    {
      return -1;
      long l = getId(paramParcelable);
      for (int i = 0; (i < paramList.size()) && (getId((Parcelable)paramList.get(i)) != l); i++);
    }
  }

  public void setDataSet(ArrayList<? extends Parcelable> paramArrayList)
  {
    this.list.clear();
    if (paramArrayList != null)
      this.list.addAll(paramArrayList);
    notifyDataSetChanged();
  }

  public void setDataSet(List<? extends Parcelable> paramList, Parcelable paramParcelable)
  {
    this.list.clear();
    if (paramList != null)
    {
      this.list.addAll(paramList);
      this.selectedItem = indexOf(paramList, paramParcelable);
    }
    notifyDataSetChanged();
  }

  public void setNormalTextColor(int paramInt)
  {
    this.textColor_n = paramInt;
  }

  public void setSelectItem(int paramInt)
  {
    this.selectedItem = paramInt;
    notifyDataSetChanged();
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.adapter.SubFilterAdapter
 * JD-Core Version:    0.6.0
 */