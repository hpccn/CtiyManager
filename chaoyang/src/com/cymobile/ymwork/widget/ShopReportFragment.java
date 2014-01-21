package com.cymobile.ymwork.widget;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.Button;
import android.widget.ListView;
import android.widget.Toast;
import com.cymobile.ymwork.HomeApplication;
import com.cymobile.ymwork.adapter.MainFilterAdapter;
import com.cymobile.ymwork.adapter.ReportDataSource;
import com.cymobile.ymwork.adapter.ReportDataSource.OnDataChangeListener;
import com.cymobile.ymwork.adapter.SubFilterAdapter;
import com.cymobile.ymwork.types.Category;
import com.cymobile.ymwork.types.Pair;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public abstract class ShopReportFragment extends YMFragment
  implements ReportDataSource.OnDataChangeListener
{
  public static final Pair DEFAULT_FILTER = new Pair("1", "默认排序", 2);
  public static String street_name = null;
  protected Animation animPushTopIn;
  protected Animation animPushTopOut;
  protected Button btnCategoryFilter;
  private Button btnMoreFilter;
  private DoubleLevelList categoryDoubleList;
  private View categoryLayout;
  private ArrayList<Pair> filterArrayList = new ArrayList();
  private View filterLayout;
  private SubFilterAdapter filterPairAdapter;
  private ListView filterPairListView;
  protected Drawable mNormalArrow;
  protected Drawable mSelectedArrow;
  private ArrayList<Category> mainCategoryItems = new ArrayList();
  private MainFilterAdapter mainFilterAdapter;
  private Category selectedCategory = ReportDataSource.TOP_CATEGORY;
  private Pair selectedFilter = DEFAULT_FILTER;
  ReportDataSource shopListDataSource;
  private HashMap<Category, ArrayList<Category>> subCategoryMapItems = new HashMap();
  private SubFilterAdapter subFilterAdapter;

  private boolean checkFilterable(Pair paramPair)
  {
    HomeApplication localHomeApplication = (HomeApplication)getActivity().getApplication();
    if ((paramPair != null) && (paramPair.name().contains("距离")) && (localHomeApplication.getLocation() == null))
    {
      Toast.makeText(getActivity(), "正在定位，此功能暂不可用", 0).show();
      return false;
    }
    return true;
  }

  private void dismissCategory(boolean paramBoolean)
  {
    if (paramBoolean)
      this.categoryLayout.startAnimation(this.animPushTopOut);
    this.btnCategoryFilter.setSelected(false);
    this.btnCategoryFilter.setCompoundDrawables(null, null, this.mNormalArrow, null);
    this.categoryLayout.setVisibility(8);
  }

  private void dismissFilter(boolean paramBoolean)
  {
    if (paramBoolean)
      this.filterLayout.startAnimation(this.animPushTopOut);
    this.btnMoreFilter.setSelected(false);
    this.btnMoreFilter.setCompoundDrawables(null, null, this.mNormalArrow, null);
    this.filterLayout.setVisibility(8);
  }

  private void setNavs(Category[] paramArrayOfCategory, Pair[] paramArrayOfPair, Category paramCategory, Pair paramPair)
  {
    monitorenter;
    while (true)
    {
      int i;
      int k;
      try
      {
        this.mainCategoryItems.clear();
        this.subCategoryMapItems.clear();
        this.selectedCategory = null;
        if (paramArrayOfCategory == null)
          continue;
        if (paramCategory == null)
          continue;
        if (paramCategory.id() != ReportDataSource.TOP_CATEGORY.id())
          break label568;
        this.selectedCategory = ReportDataSource.TOP_CATEGORY;
        paramCategory = ReportDataSource.TOP_CATEGORY;
        break label568;
        if (j < paramArrayOfCategory.length)
          continue;
        if ((this.selectedCategory != null) || (paramArrayOfCategory == null))
          continue;
        this.selectedCategory = paramCategory;
        if (this.selectedCategory == null)
          continue;
        this.btnCategoryFilter.setText(this.selectedCategory.name());
        street_name = this.selectedCategory.name();
        if (!street_name.contains("全部"))
          continue;
        street_name = street_name.substring(2);
        DoubleLevelList localDoubleLevelList = this.categoryDoubleList;
        ArrayList localArrayList1 = this.mainCategoryItems;
        HashMap localHashMap = this.subCategoryMapItems;
        Category localCategory1 = this.selectedCategory;
        localDoubleLevelList.setData(localArrayList1, localHashMap, paramCategory, localCategory1);
        this.filterArrayList.clear();
        if (paramArrayOfPair == null)
          continue;
        i = 0;
        if (i >= paramArrayOfPair.length)
        {
          if ((this.selectedFilter != null) || (paramPair == null))
            continue;
          this.selectedFilter = paramPair;
          if (this.selectedFilter == null)
            continue;
          this.btnMoreFilter.setText(this.selectedFilter.name());
          this.filterPairAdapter.setDataSet(this.filterArrayList, this.selectedFilter);
          return;
          paramCategory = ReportDataSource.TOP_CATEGORY;
          break label568;
          Category localCategory2 = paramArrayOfCategory[j];
          if ((localCategory2.id() != ReportDataSource.TOP_CATEGORY.id()) && (localCategory2.parentId() != ReportDataSource.TOP_CATEGORY.id()))
            break label574;
          this.mainCategoryItems.add(localCategory2);
          ArrayList localArrayList2 = new ArrayList();
          this.subCategoryMapItems.put(localCategory2, localArrayList2);
          long l = localCategory2.id();
          if (!localCategory2.name().startsWith("全部"))
            break label580;
          str = "";
          localArrayList2.add(new Category(l, str + localCategory2.name(), localCategory2.id(), localCategory2.favicon(), localCategory2.distance(), localCategory2.searchPara()));
          k = 0;
          if (k < paramArrayOfCategory.length)
            continue;
          if ((paramArrayOfCategory == null) || (paramCategory.id() != localCategory2.id()))
            break label574;
          this.selectedCategory = localCategory2;
          paramCategory = localCategory2;
          break label574;
          Category localCategory3 = paramArrayOfCategory[k];
          if (localCategory3.parentId() != localCategory2.id())
            break label587;
          localArrayList2.add(new Category(localCategory3.id(), localCategory3.name(), localCategory3.parentId(), localCategory3.favicon(), localCategory3.distance(), localCategory3.searchPara()));
        }
      }
      finally
      {
        monitorexit;
      }
      Pair localPair = paramArrayOfPair[i];
      this.filterArrayList.add(localPair);
      if ((paramArrayOfPair != null) && (paramArrayOfPair.length > 0) && (this.selectedFilter == null) && (this.selectedFilter == null))
        this.selectedFilter = localPair;
      i++;
      continue;
      label568: int j = 0;
      continue;
      label574: j++;
      continue;
      label580: String str = "全部";
      continue;
      label587: k++;
    }
  }

  private void showCategory()
  {
    prepareShowLayout(this.categoryLayout);
    this.btnCategoryFilter.setSelected(true);
    this.btnCategoryFilter.setCompoundDrawables(null, null, this.mSelectedArrow, null);
    this.categoryLayout.setVisibility(0);
    this.categoryLayout.startAnimation(this.animPushTopIn);
  }

  private void showFilter()
  {
    prepareShowLayout(this.filterLayout);
    this.btnMoreFilter.setSelected(true);
    this.btnMoreFilter.setCompoundDrawables(null, null, this.mSelectedArrow, null);
    this.filterLayout.setVisibility(0);
    this.filterLayout.startAnimation(this.animPushTopIn);
  }

  public ReportDataSource getReportDataSource()
  {
    return this.shopListDataSource;
  }

  protected abstract View inflateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup);

  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    this.mainFilterAdapter = new MainFilterAdapter(null, getActivity());
    this.subFilterAdapter = new SubFilterAdapter(null, getActivity());
    this.categoryDoubleList.setAdapter(this.mainFilterAdapter, this.subFilterAdapter);
    this.categoryDoubleList.setOnDoubleItemClickListener(new DoubleLevelList.OnDoubleItemClickListener()
    {
      public void onMainItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
      {
        Parcelable localParcelable = (Parcelable)ShopReportFragment.this.mainFilterAdapter.getItem(paramInt);
        ShopReportFragment.this.mainFilterAdapter.setSelectItem(paramInt);
        ShopReportFragment.this.subFilterAdapter.setDataSet((List)ShopReportFragment.this.subCategoryMapItems.get(localParcelable), null);
      }

      public void onSubItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
      {
        Category localCategory = (Category)ShopReportFragment.this.subFilterAdapter.getItem(paramInt);
        ShopReportFragment.this.selectedCategory = localCategory;
        ShopReportFragment.street_name = ShopReportFragment.this.selectedCategory.name();
        if (ShopReportFragment.street_name.length() == 2)
          ShopReportFragment.street_name = "全区";
        while (true)
        {
          ShopReportFragment.this.btnCategoryFilter.setText(ShopReportFragment.street_name);
          ShopReportFragment.this.dismissCategory(true);
          ShopReportFragment.this.selectionChanged(false);
          return;
          if (!ShopReportFragment.street_name.contains("全部"))
            continue;
          ShopReportFragment.street_name = ShopReportFragment.street_name.substring(2);
        }
      }
    });
    this.filterPairAdapter = new SubFilterAdapter(null, getActivity());
    this.filterPairAdapter.setNormalTextColor(-16777216);
    this.filterPairListView.setAdapter(this.filterPairAdapter);
    this.filterPairListView.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
      {
        Object localObject = paramAdapterView.getItemAtPosition(paramInt);
        ShopReportFragment.this.filterPairAdapter.setSelectItem(paramInt);
        ShopReportFragment.this.filterPairAdapter.notifyDataSetChanged();
        ShopReportFragment.this.btnMoreFilter.setText(((Pair)localObject).name());
        ShopReportFragment.this.selectedFilter = ((Pair)localObject);
        ShopReportFragment.this.dismissFilter(true);
        ShopReportFragment.this.selectionChanged(false);
      }
    });
    if ((this.shopListDataSource != null) && (this.shopListDataSource.curCategory() != null))
      this.btnCategoryFilter.setText(this.shopListDataSource.curCategory().name());
    if ((this.shopListDataSource != null) && (this.shopListDataSource.curFilterId() != null))
      this.btnMoreFilter.setText(this.shopListDataSource.curFilterId().name());
    setNavs(this.shopListDataSource.filterCategories(), this.shopListDataSource.filterIds(), this.shopListDataSource.curCategory(), this.shopListDataSource.curFilterId());
    this.animPushTopIn = AnimationUtils.loadAnimation(getActivity(), 2130968578);
    this.animPushTopOut = AnimationUtils.loadAnimation(getActivity(), 2130968579);
    this.mNormalArrow = getActivity().getResources().getDrawable(2130837547);
    this.mNormalArrow.setBounds(0, 0, this.mNormalArrow.getIntrinsicWidth(), this.mNormalArrow.getIntrinsicHeight());
    this.mSelectedArrow = getActivity().getResources().getDrawable(2130837548);
    this.mSelectedArrow.setBounds(0, 0, this.mSelectedArrow.getIntrinsicWidth(), this.mSelectedArrow.getIntrinsicHeight());
  }

  public boolean onBackPressed()
  {
    return onBackPressed(true);
  }

  public boolean onBackPressed(boolean paramBoolean)
  {
    int i = this.categoryLayout.getVisibility();
    int j = 0;
    if (i == 0)
    {
      j = 1;
      dismissCategory(paramBoolean);
    }
    if (this.filterLayout.getVisibility() == 0)
    {
      j = 1;
      dismissFilter(paramBoolean);
    }
    return j;
  }

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    View localView = inflateView(paramLayoutInflater, paramViewGroup);
    this.categoryLayout = localView.findViewById(2131230902);
    this.categoryLayout.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramView)
      {
        ShopReportFragment.this.dismissCategory(true);
      }
    });
    this.filterLayout = localView.findViewById(2131230907);
    this.filterLayout.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramView)
      {
        ShopReportFragment.this.dismissFilter(true);
      }
    });
    this.categoryDoubleList = ((DoubleLevelList)localView.findViewById(2131230903));
    this.categoryDoubleList.setBackgroundResource(2130837531);
    this.filterPairListView = ((ListView)localView.findViewById(2131230908));
    this.filterPairListView.setBackgroundResource(2130837531);
    this.btnCategoryFilter = ((Button)localView.findViewById(2131230899));
    this.btnCategoryFilter.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramView)
      {
        ShopReportFragment.this.categoryLayout.setFocusable(true);
        if (ShopReportFragment.this.categoryLayout.getVisibility() == 0)
        {
          ShopReportFragment.this.dismissCategory(true);
          return;
        }
        ShopReportFragment.this.showCategory();
      }
    });
    this.btnMoreFilter = ((Button)localView.findViewById(2131230900));
    this.btnMoreFilter.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramView)
      {
        ShopReportFragment.this.filterLayout.setFocusable(true);
        if (ShopReportFragment.this.filterLayout.getVisibility() == 0)
        {
          ShopReportFragment.this.dismissFilter(true);
          return;
        }
        ShopReportFragment.this.showFilter();
      }
    });
    return localView;
  }

  public void onDataChanged(int paramInt)
  {
    setNavs(this.shopListDataSource.filterCategories(), this.shopListDataSource.filterIds(), this.shopListDataSource.curCategory(), this.shopListDataSource.curFilterId());
  }

  public void onPause()
  {
    super.onPause();
    if (this.shopListDataSource != null)
      this.shopListDataSource.removeDataChangeListener(this);
  }

  public void onResume()
  {
    super.onResume();
    if (this.shopListDataSource != null)
      this.shopListDataSource.addDataChangeListener(this);
  }

  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    onActivityCreated(paramBundle);
  }

  protected void prepareShowLayout(View paramView)
  {
    if (paramView != this.categoryLayout)
      dismissCategory(false);
    if (paramView != this.filterLayout)
      dismissFilter(false);
  }

  protected void selectionChanged(boolean paramBoolean)
  {
    boolean bool = paramBoolean | this.shopListDataSource.setCurCategory(this.selectedCategory);
    if (this.shopListDataSource.setCurFilterId(this.selectedFilter))
    {
      bool = true;
      checkFilterable(this.selectedFilter);
    }
    if (bool)
    {
      this.shopListDataSource.reset(true);
      this.shopListDataSource.reload(false);
    }
  }

  public void setEnabled(boolean paramBoolean)
  {
    this.btnCategoryFilter.setEnabled(paramBoolean);
    this.btnMoreFilter.setEnabled(paramBoolean);
  }

  public void setShopListDataSource(ReportDataSource paramReportDataSource)
  {
    this.shopListDataSource = paramReportDataSource;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.widget.ShopReportFragment
 * JD-Core Version:    0.6.0
 */