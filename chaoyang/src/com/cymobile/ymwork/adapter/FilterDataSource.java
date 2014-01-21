package com.cymobile.ymwork.adapter;

import com.cymobile.ymwork.preference.PreferencesUtils;
import com.cymobile.ymwork.types.Category;
import com.cymobile.ymwork.types.Group;
import com.cymobile.ymwork.types.Pair;
import com.cymobile.ymwork.types.Region;
import com.cymobile.ymwork.types.Zone;
import java.util.Calendar;

public class FilterDataSource
{
  public static final int DATATYPE_STATUS = 1;
  public static final Pair DEFAULT_FILTER;
  public static final int Filter_Default = 1;
  public static final int Filter_Distance = 4;
  public static final int Filter_Recent = 1;
  public static final int Filter_RecentDesc = 2;
  public static final int Filter_area = 3;
  public static final int STATUS_FAILED = 3;
  public static final int STATUS_LOADING = 1;
  public static final int STATUS_NONE = 0;
  public static final int STATUS_SUCCESS = 2;
  public static Category TOP_CATEGORY;
  public static final Region TOP_REGION = new Region(0, "全部", 0);
  protected static Category[] filterCategories;
  private Category curCategory = TOP_CATEGORY;
  private Pair curFilterId = DEFAULT_FILTER;
  private Pair curRange = new Pair("1", "当天", 0);
  private Pair[] filterIds = new Pair[3];
  protected Pair[] filterRanges;

  static
  {
    TOP_CATEGORY = new Category(110105L, "全部", 0L, null, 500, null);
    DEFAULT_FILTER = new Pair("1", "默认排序", 2);
  }

  public FilterDataSource()
  {
    this.filterIds[0] = new Pair("1", "默认排序", 2);
    this.filterIds[1] = new Pair("1", "上报时间从新到旧", 2);
    this.filterIds[2] = new Pair("2", "上报时间从旧到新", 2);
    if ((PreferencesUtils.getSubZone() != null) && (PreferencesUtils.getSubZone().size() > 0))
    {
      setCategory(PreferencesUtils.getSubZone());
      return;
    }
    filterCategories = new Category[1];
    filterCategories[0] = TOP_CATEGORY;
  }

  public static String getOrderDescStr(int paramInt)
  {
    if (paramInt == 1)
      return "timedown";
    if (paramInt == 2)
      return "timeup";
    if (paramInt == 3)
      return "mianjidesc";
    if (paramInt == 4)
      return "distance";
    return null;
  }

  public static void resetTOPCategory(long paramLong, String paramString)
  {
    TOP_CATEGORY = new Category(paramLong, paramString, 0L, null, 500, null);
  }

  public static void setCategory(Group<Zone> paramGroup)
  {
    if ((paramGroup != null) && (paramGroup.size() > 0))
    {
      filterCategories = new Category[1 + paramGroup.size()];
      filterCategories[0] = TOP_CATEGORY;
      long l = TOP_CATEGORY.id();
      if (!TOP_CATEGORY.name().startsWith("全部"))
        break label88;
      filterCategories[0] = new Category(l, TOP_CATEGORY.name(), 0L, null, 500, null);
    }
    int i;
    while (true)
    {
      i = 0;
      if (i < paramGroup.size())
        break;
      return;
      label88: filterCategories[0] = new Category(TOP_CATEGORY.id(), "全部" + TOP_CATEGORY.name(), 0L, null, 500, null);
    }
    Zone localZone = (Zone)paramGroup.get(i);
    if (localZone.getZoneid().length() == 9)
      filterCategories[(i + 1)] = new Category(Long.parseLong(localZone.getZoneid()), localZone.getZoneName(), Long.parseLong(localZone.getZoneid().substring(0, 6)), null, 500, null);
    while (true)
    {
      i++;
      break;
      if (localZone.getZoneid().length() != 12)
        continue;
      filterCategories[(i + 1)] = new Category(Long.parseLong(localZone.getZoneid()), localZone.getZoneName(), Long.parseLong(localZone.getZoneid().substring(0, 9)), null, 500, null);
    }
  }

  public static int toDays(int paramInt)
  {
    int i = 1;
    Calendar localCalendar = Calendar.getInstance();
    if (paramInt == 0)
      i = 0;
    do
    {
      do
        return i;
      while (paramInt == i);
      if (paramInt == 2)
        return 7;
      if (paramInt == 3)
        return 30;
      if (paramInt == 4)
        return 90;
      if (paramInt == 5)
        return 365;
      i = localCalendar.get(i);
    }
    while (paramInt == 6);
    if (paramInt == 7)
      return i - 1;
    if (paramInt == 8)
      return i - 2;
    if (paramInt == 9)
      return i - 3;
    return 0;
  }

  public void addDataChangeListener(OnDataChangeListener paramOnDataChangeListener)
  {
  }

  public Category curCategory()
  {
    return this.curCategory;
  }

  public Pair curFilterId()
  {
    return this.curFilterId;
  }

  public Pair curRange()
  {
    return this.curRange;
  }

  public Category[] filterCategories()
  {
    return filterCategories;
  }

  public Pair[] filterIds()
  {
    return this.filterIds;
  }

  public Pair[] filterRanges()
  {
    return this.filterRanges;
  }

  public void reload(boolean paramBoolean)
  {
  }

  public void removeDataChangeListener(OnDataChangeListener paramOnDataChangeListener)
  {
  }

  public void reset(boolean paramBoolean)
  {
  }

  public boolean setCurCategory(Category paramCategory)
  {
    if (paramCategory == null)
    {
      if (this.curCategory == null)
      {
        this.curCategory = TOP_CATEGORY;
        return true;
      }
      return false;
    }
    this.curCategory = paramCategory;
    return true;
  }

  public boolean setCurFilterId(Pair paramPair)
  {
    if (paramPair == null)
    {
      if (this.curFilterId != null)
      {
        this.curFilterId = null;
        return true;
      }
      return false;
    }
    this.curFilterId = paramPair;
    return true;
  }

  public boolean setCurRange(Pair paramPair)
  {
    if (paramPair == null)
    {
      if (this.curRange != null)
      {
        this.curRange = null;
        return true;
      }
      return false;
    }
    this.curRange = paramPair;
    return true;
  }

  public int status()
  {
    return 0;
  }

  public static abstract interface OnDataChangeListener
  {
    public abstract void onDataChanged(int paramInt);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.adapter.FilterDataSource
 * JD-Core Version:    0.6.0
 */