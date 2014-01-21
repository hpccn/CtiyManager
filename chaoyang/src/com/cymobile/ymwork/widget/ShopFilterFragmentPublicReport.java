package com.cymobile.ymwork.widget;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.app.FragmentActivity;
import android.util.Log;
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
import com.cymobile.ymwork.adapter.FilterDataSource;
import com.cymobile.ymwork.adapter.FilterDataSourcePublicReport;
import com.cymobile.ymwork.adapter.FilterDataSourcePublicReport.OnDataChangeListener;
import com.cymobile.ymwork.adapter.MainClassFilterAdapter;
import com.cymobile.ymwork.adapter.MainFilterAdapter;
import com.cymobile.ymwork.adapter.SubClassFilterAdapter;
import com.cymobile.ymwork.adapter.SubFilterAdapter;
import com.cymobile.ymwork.types.Category;
import com.cymobile.ymwork.types.Pair;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public abstract class ShopFilterFragmentPublicReport extends YMFragment
  implements FilterDataSourcePublicReport.OnDataChangeListener
{
  public static final Pair DEFAULT_FILTER = new Pair("1", "默认排序", 2);
  protected Animation animPushTopIn;
  protected Animation animPushTopOut;
  protected Button btnCategoryFilter;
  private Button btnMoreFilter;
  private Button btnNewCategory;
  private DoubleClassList categoryClassesDoubleList;
  private View categoryClassesLayout;
  private DoubleLevelList categoryDoubleList;
  private View categoryLayout;
  private ArrayList<Pair> filterArrayList = new ArrayList();
  private View filterLayout;
  private SubFilterAdapter filterPairAdapter;
  private ListView filterPairListView;
  protected Drawable mNormalArrow;
  protected Drawable mSelectedArrow;
  private ArrayList<Category> mainCategoryClassesItems = new ArrayList();
  private ArrayList<Category> mainCategoryItems = new ArrayList();
  private MainClassFilterAdapter mainClassFilterAdapter;
  private MainFilterAdapter mainFilterAdapter;
  private Category selectedCategory = FilterDataSource.TOP_CATEGORY;
  private Category selectedClassesCategory = FilterDataSourcePublicReport.TOP_ClASSES;
  private Pair selectedFilter = DEFAULT_FILTER;
  FilterDataSourcePublicReport shopListDataSource;
  private HashMap<Category, ArrayList<Category>> subCategoryClassesMapItems = new HashMap();
  private HashMap<Category, ArrayList<Category>> subCategoryMapItems = new HashMap();
  private SubClassFilterAdapter subClassFilterAdapter;
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

  private void dismissClassCategory(boolean paramBoolean)
  {
    if (paramBoolean)
      this.categoryClassesLayout.startAnimation(this.animPushTopOut);
    this.btnNewCategory.setSelected(false);
    this.btnNewCategory.setCompoundDrawables(null, null, this.mNormalArrow, null);
    this.categoryClassesLayout.setVisibility(8);
  }

  private void dismissFilter(boolean paramBoolean)
  {
    if (paramBoolean)
      this.filterLayout.startAnimation(this.animPushTopOut);
    this.btnMoreFilter.setSelected(false);
    this.btnMoreFilter.setCompoundDrawables(null, null, this.mNormalArrow, null);
    this.filterLayout.setVisibility(8);
  }

  private void setNavs(Category[] paramArrayOfCategory1, Category[] paramArrayOfCategory2, Category paramCategory1, Pair[] paramArrayOfPair, Category paramCategory2, Pair paramPair)
  {
    monitorenter;
    int m;
    label122: int j;
    int i;
    label279: label352: String str2;
    label445: String str3;
    label609: int n;
    try
    {
      this.mainCategoryItems.clear();
      this.subCategoryMapItems.clear();
      this.mainCategoryClassesItems.clear();
      this.subCategoryClassesMapItems.clear();
      this.selectedCategory = null;
      if (paramArrayOfCategory1 != null)
      {
        if (paramCategory2 != null)
        {
          if (paramCategory2.id() != FilterDataSource.TOP_CATEGORY.id())
            break label1169;
          this.selectedCategory = FilterDataSource.TOP_CATEGORY;
          paramCategory2 = FilterDataSource.TOP_CATEGORY;
          break label1169;
          if (m < paramArrayOfCategory1.length)
            break label352;
        }
      }
      else
      {
        this.selectedClassesCategory = null;
        if (paramArrayOfCategory2 != null)
        {
          if (paramCategory1 == null)
            break label794;
          if (paramCategory1.id() != FilterDataSourcePublicReport.TOP_ClASSES.id())
            break label1175;
          this.selectedClassesCategory = FilterDataSourcePublicReport.TOP_ClASSES;
          paramCategory1 = FilterDataSourcePublicReport.TOP_ClASSES;
          break label1175;
          if (j < paramArrayOfCategory2.length)
            break label801;
        }
        if ((this.selectedCategory == null) && (paramArrayOfCategory1 != null))
          this.selectedCategory = paramCategory2;
        if (this.selectedCategory != null)
          this.btnCategoryFilter.setText(this.selectedCategory.name());
        DoubleLevelList localDoubleLevelList = this.categoryDoubleList;
        ArrayList localArrayList1 = this.mainCategoryItems;
        HashMap localHashMap1 = this.subCategoryMapItems;
        Category localCategory1 = this.selectedCategory;
        localDoubleLevelList.setData(localArrayList1, localHashMap1, paramCategory2, localCategory1);
        DoubleClassList localDoubleClassList = this.categoryClassesDoubleList;
        ArrayList localArrayList2 = this.mainCategoryClassesItems;
        HashMap localHashMap2 = this.subCategoryClassesMapItems;
        Category localCategory2 = this.selectedClassesCategory;
        localDoubleClassList.setData(localArrayList2, localHashMap2, paramCategory1, localCategory2);
        Log.d("subCategoryClassesMapItems", this.subCategoryClassesMapItems);
        this.filterArrayList.clear();
        if (paramArrayOfPair != null)
        {
          i = 0;
          if (i < paramArrayOfPair.length)
            break label1115;
        }
        if ((this.selectedFilter == null) && (paramPair != null))
          this.selectedFilter = paramPair;
        if (this.selectedFilter != null)
          this.btnMoreFilter.setText(this.selectedFilter.name());
        this.filterPairAdapter.setDataSet(this.filterArrayList, this.selectedFilter);
        return;
      }
      paramCategory2 = FilterDataSource.TOP_CATEGORY;
      break label1169;
      Category localCategory5 = paramArrayOfCategory1[m];
      if ((localCategory5.id() != FilterDataSourcePublicReport.TOP_CATEGORY.id()) && (localCategory5.parentId() != FilterDataSourcePublicReport.TOP_CATEGORY.id()))
        break label1181;
      this.mainCategoryItems.add(localCategory5);
      ArrayList localArrayList4 = new ArrayList();
      this.subCategoryMapItems.put(localCategory5, localArrayList4);
      long l2 = localCategory5.id();
      if (!localCategory5.name().startsWith("全部"))
        break label1187;
      str2 = "";
      Category localCategory6 = new Category(l2, str2 + localCategory5.name(), localCategory5.id(), localCategory5.favicon(), localCategory5.distance(), localCategory5.searchPara());
      if ((localCategory5.id() == 110105119L) || (localCategory5.id() == 110105120L) || (localCategory5.id() == 110105121L) || (localCategory5.id() == 110105122L) || (localCategory5.id() == 110105123L) || (localCategory5.id() == 110105124L) || (localCategory5.id() == 110105125L))
      {
        long l3 = localCategory5.id();
        if (!localCategory5.name().startsWith("全部"))
          break label1195;
        str3 = "";
        localCategory6 = new Category(l3, str3 + localCategory5.name() + "分管职能局", localCategory5.id(), localCategory5.favicon(), localCategory5.distance(), localCategory5.searchPara());
      }
      localArrayList4.add(localCategory6);
      n = 0;
      label680: if (n >= paramArrayOfCategory1.length)
      {
        if ((paramArrayOfCategory1 == null) || (paramCategory2.id() != localCategory5.id()))
          break label1181;
        this.selectedCategory = localCategory5;
        paramCategory2 = localCategory5;
        break label1181;
      }
      Category localCategory7 = paramArrayOfCategory1[n];
      if (localCategory7.parentId() != localCategory5.id())
        break label1203;
      localArrayList4.add(new Category(localCategory7.id(), localCategory7.name(), localCategory7.parentId(), localCategory7.favicon(), localCategory7.distance(), localCategory7.searchPara()));
    }
    finally
    {
      monitorexit;
    }
    label794: paramCategory1 = FilterDataSourcePublicReport.TOP_ClASSES;
    break label1175;
    label801: Category localCategory3 = paramArrayOfCategory2[j];
    ArrayList localArrayList3;
    String str1;
    if ((localCategory3.id() == FilterDataSourcePublicReport.TOP_ClASSES.id()) || (localCategory3.parentId() == FilterDataSourcePublicReport.TOP_ClASSES.id()))
    {
      this.mainCategoryClassesItems.add(localCategory3);
      Log.d("twoCategory", localCategory3);
      localArrayList3 = new ArrayList();
      this.subCategoryClassesMapItems.put(localCategory3, localArrayList3);
      long l1 = localCategory3.id();
      if (!localCategory3.name().startsWith("全部"))
        break label1209;
      str1 = "";
      label916: localArrayList3.add(new Category(l1, str1 + localCategory3.name() + "案件", localCategory3.id(), localCategory3.favicon(), localCategory3.distance(), localCategory3.searchPara()));
    }
    for (int k = 0; ; k++)
    {
      if (k >= paramArrayOfCategory2.length)
      {
        if ((paramArrayOfCategory2 != null) && (paramCategory1.id() == localCategory3.id()))
        {
          this.selectedClassesCategory = localCategory3;
          paramCategory1 = localCategory3;
        }
        Log.d("mainCategoryClassesItems111", this.mainCategoryClassesItems);
        j++;
        break label122;
      }
      Category localCategory4 = paramArrayOfCategory2[k];
      if (localCategory4.parentId() != localCategory3.id())
        continue;
      localArrayList3.add(new Category(localCategory4.id(), localCategory4.name(), localCategory4.parentId(), localCategory4.favicon(), localCategory4.distance(), localCategory4.searchPara()));
      continue;
      label1115: Pair localPair = paramArrayOfPair[i];
      this.filterArrayList.add(localPair);
      if ((paramArrayOfPair != null) && (paramArrayOfPair.length > 0) && (this.selectedFilter == null) && (this.selectedFilter == null))
        this.selectedFilter = localPair;
      i++;
      break label279;
      label1169: m = 0;
      break;
      label1175: j = 0;
      break label122;
      label1181: m++;
      break;
      label1187: str2 = "全部";
      break label445;
      label1195: str3 = "全部";
      break label609;
      label1203: n++;
      break label680;
      label1209: str1 = "全部";
      break label916;
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

  private void showClassesCategory()
  {
    prepareShowLayout(this.categoryClassesLayout);
    this.btnNewCategory.setSelected(true);
    this.btnNewCategory.setCompoundDrawables(null, null, this.mSelectedArrow, null);
    this.categoryClassesLayout.setVisibility(0);
    this.categoryClassesLayout.startAnimation(this.animPushTopIn);
  }

  private void showFilter()
  {
    prepareShowLayout(this.filterLayout);
    this.btnMoreFilter.setSelected(true);
    this.btnMoreFilter.setCompoundDrawables(null, null, this.mSelectedArrow, null);
    this.filterLayout.setVisibility(0);
    this.filterLayout.startAnimation(this.animPushTopIn);
  }

  protected void classChanged(boolean paramBoolean)
  {
    boolean bool = paramBoolean | this.shopListDataSource.setCurClass(this.selectedClassesCategory);
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

  public FilterDataSourcePublicReport getFilterDataSource()
  {
    return this.shopListDataSource;
  }

  protected abstract View inflateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup);

  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    this.mainFilterAdapter = new MainFilterAdapter(null, getActivity());
    this.subFilterAdapter = new SubFilterAdapter(null, getActivity());
    this.mainClassFilterAdapter = new MainClassFilterAdapter(null, getActivity());
    this.subClassFilterAdapter = new SubClassFilterAdapter(null, getActivity());
    this.categoryDoubleList.setAdapter(this.mainFilterAdapter, this.subFilterAdapter);
    this.categoryDoubleList.setOnDoubleItemClickListener(new DoubleLevelList.OnDoubleItemClickListener()
    {
      public void onMainItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
      {
        Parcelable localParcelable = (Parcelable)ShopFilterFragmentPublicReport.this.mainFilterAdapter.getItem(paramInt);
        ShopFilterFragmentPublicReport.this.mainFilterAdapter.setSelectItem(paramInt);
        ShopFilterFragmentPublicReport.this.subFilterAdapter.setDataSet((List)ShopFilterFragmentPublicReport.this.subCategoryMapItems.get(localParcelable), null);
      }

      public void onSubItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
      {
        Category localCategory = (Category)ShopFilterFragmentPublicReport.this.subFilterAdapter.getItem(paramInt);
        ShopFilterFragmentPublicReport.this.selectedCategory = localCategory;
        ShopFilterFragmentPublicReport.this.btnCategoryFilter.setText(ShopFilterFragmentPublicReport.this.selectedCategory.name());
        ShopFilterFragmentPublicReport.this.dismissCategory(true);
        ShopFilterFragmentPublicReport.this.selectionChanged(false);
      }
    });
    this.categoryClassesDoubleList.setAdapter(this.mainClassFilterAdapter, this.subClassFilterAdapter);
    this.categoryClassesDoubleList.setOnDoubleItemClickListener(new DoubleClassList.OnDoubleItemClickListener()
    {
      public void onMainItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
      {
        Parcelable localParcelable = (Parcelable)ShopFilterFragmentPublicReport.this.mainClassFilterAdapter.getItem(paramInt);
        ShopFilterFragmentPublicReport.this.mainClassFilterAdapter.setSelectItem(paramInt);
        ShopFilterFragmentPublicReport.this.subClassFilterAdapter.setDataSet((List)ShopFilterFragmentPublicReport.this.subCategoryClassesMapItems.get(localParcelable), null);
      }

      public void onSubItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
      {
        Category localCategory = (Category)ShopFilterFragmentPublicReport.this.subClassFilterAdapter.getItem(paramInt);
        ShopFilterFragmentPublicReport.this.selectedClassesCategory = localCategory;
        ShopFilterFragmentPublicReport.this.btnNewCategory.setText(ShopFilterFragmentPublicReport.this.selectedClassesCategory.name());
        ShopFilterFragmentPublicReport.this.dismissClassCategory(true);
        ShopFilterFragmentPublicReport.this.classChanged(false);
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
        ShopFilterFragmentPublicReport.this.filterPairAdapter.setSelectItem(paramInt);
        ShopFilterFragmentPublicReport.this.filterPairAdapter.notifyDataSetChanged();
        ShopFilterFragmentPublicReport.this.btnMoreFilter.setText(((Pair)localObject).name());
        ShopFilterFragmentPublicReport.this.selectedFilter = ((Pair)localObject);
        ShopFilterFragmentPublicReport.this.dismissFilter(true);
        ShopFilterFragmentPublicReport.this.selectionChanged(false);
        ShopFilterFragmentPublicReport.this.classChanged(false);
      }
    });
    if ((this.shopListDataSource != null) && (this.shopListDataSource.curCategory() != null))
      this.btnCategoryFilter.setText(this.shopListDataSource.curCategory().name());
    if ((this.shopListDataSource != null) && (this.shopListDataSource.curClasses() != null))
      this.btnNewCategory.setText(this.shopListDataSource.curClasses().name());
    if ((this.shopListDataSource != null) && (this.shopListDataSource.curFilterId() != null))
      this.btnMoreFilter.setText(this.shopListDataSource.curFilterId().name());
    setNavs(this.shopListDataSource.filterCategories(), this.shopListDataSource.filterClassesCategories(), this.shopListDataSource.curClasses(), this.shopListDataSource.filterIds(), this.shopListDataSource.curCategory(), this.shopListDataSource.curFilterId());
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
    if (this.categoryClassesLayout.getVisibility() == 0)
    {
      j = 1;
      dismissClassCategory(paramBoolean);
    }
    return j;
  }

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    View localView = inflateView(paramLayoutInflater, paramViewGroup);
    this.categoryClassesLayout = localView.findViewById(2131230905);
    this.categoryClassesLayout.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramView)
      {
        ShopFilterFragmentPublicReport.this.dismissClassCategory(true);
      }
    });
    this.categoryLayout = localView.findViewById(2131230902);
    this.categoryLayout.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramView)
      {
        ShopFilterFragmentPublicReport.this.dismissCategory(true);
      }
    });
    this.filterLayout = localView.findViewById(2131230907);
    this.filterLayout.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramView)
      {
        ShopFilterFragmentPublicReport.this.dismissFilter(true);
      }
    });
    this.categoryDoubleList = ((DoubleLevelList)localView.findViewById(2131230903));
    this.categoryDoubleList.setBackgroundResource(2130837531);
    this.categoryClassesDoubleList = ((DoubleClassList)localView.findViewById(2131230906));
    this.categoryDoubleList.setBackgroundResource(2130837531);
    this.filterPairListView = ((ListView)localView.findViewById(2131230908));
    this.filterPairListView.setBackgroundResource(2130837531);
    this.btnNewCategory = ((Button)localView.findViewById(2131230898));
    this.btnNewCategory.setText("全部分类");
    this.btnNewCategory.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramView)
      {
        ShopFilterFragmentPublicReport.this.categoryClassesLayout.setFocusable(true);
        if (ShopFilterFragmentPublicReport.this.categoryClassesLayout.getVisibility() == 0)
        {
          ShopFilterFragmentPublicReport.this.dismissClassCategory(true);
          return;
        }
        ShopFilterFragmentPublicReport.this.showClassesCategory();
      }
    });
    this.btnCategoryFilter = ((Button)localView.findViewById(2131230899));
    this.btnCategoryFilter.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramView)
      {
        ShopFilterFragmentPublicReport.this.categoryLayout.setFocusable(true);
        if (ShopFilterFragmentPublicReport.this.categoryLayout.getVisibility() == 0)
        {
          ShopFilterFragmentPublicReport.this.dismissCategory(true);
          return;
        }
        ShopFilterFragmentPublicReport.this.showCategory();
      }
    });
    this.btnMoreFilter = ((Button)localView.findViewById(2131230900));
    this.btnMoreFilter.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramView)
      {
        ShopFilterFragmentPublicReport.this.filterLayout.setFocusable(true);
        if (ShopFilterFragmentPublicReport.this.filterLayout.getVisibility() == 0)
        {
          ShopFilterFragmentPublicReport.this.dismissFilter(true);
          return;
        }
        ShopFilterFragmentPublicReport.this.showFilter();
      }
    });
    return localView;
  }

  public void onDataChanged(int paramInt)
  {
    setNavs(this.shopListDataSource.filterCategories(), this.shopListDataSource.filterClassesCategories(), this.shopListDataSource.curClasses(), this.shopListDataSource.filterIds(), this.shopListDataSource.curCategory(), this.shopListDataSource.curFilterId());
    Log.d("filterClassesCategories", this.shopListDataSource.filterClassesCategories());
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

  protected void prepareShowLayout(View paramView)
  {
    if (paramView != this.categoryLayout)
      dismissCategory(false);
    if (paramView != this.filterLayout)
      dismissFilter(false);
    if (paramView != this.categoryClassesLayout)
      dismissClassCategory(false);
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

  public void setShopListDataSource(FilterDataSourcePublicReport paramFilterDataSourcePublicReport)
  {
    this.shopListDataSource = paramFilterDataSourcePublicReport;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.widget.ShopFilterFragmentPublicReport
 * JD-Core Version:    0.6.0
 */