package com.amap.api.search.poisearch;

import com.amap.api.search.core.AMapException;
import java.util.ArrayList;
import java.util.List;

public final class PoiPagedResult
{
  private int a;
  private ArrayList<ArrayList<PoiItem>> b;
  private b c;

  private PoiPagedResult(b paramb, ArrayList<PoiItem> paramArrayList)
  {
    this.c = paramb;
    this.a = a(paramb.b());
    a(paramArrayList);
  }

  private int a(int paramInt)
  {
    int i = this.c.a();
    int j = (-1 + (paramInt + i)) / i;
    if (j > 30)
      return 30;
    return j;
  }

  static PoiPagedResult a(b paramb, ArrayList<PoiItem> paramArrayList)
  {
    return new PoiPagedResult(paramb, paramArrayList);
  }

  private void a(ArrayList<PoiItem> paramArrayList)
  {
    this.b = new ArrayList();
    for (int i = 0; i <= this.a; i++)
      this.b.add(null);
    if (this.a > 0)
      this.b.set(1, paramArrayList);
  }

  private boolean b(int paramInt)
  {
    return (paramInt <= this.a) && (paramInt > 0);
  }

  public PoiSearch.SearchBound getBound()
  {
    return this.c.i();
  }

  public List<PoiItem> getPage(int paramInt)
    throws AMapException
  {
    ArrayList localArrayList1;
    if (this.a == 0)
      localArrayList1 = null;
    do
    {
      return localArrayList1;
      if (!b(paramInt))
        throw new IllegalArgumentException("page out of range");
      localArrayList1 = (ArrayList)getPageLocal(paramInt);
    }
    while (localArrayList1 != null);
    this.c.a(paramInt);
    ArrayList localArrayList2 = (ArrayList)this.c.g();
    this.b.set(paramInt, localArrayList2);
    return localArrayList2;
  }

  public int getPageCount()
  {
    return this.a;
  }

  public List<PoiItem> getPageLocal(int paramInt)
  {
    if (!b(paramInt))
      throw new IllegalArgumentException("page out of range");
    return (List)this.b.get(paramInt);
  }

  public PoiSearch.Query getQuery()
  {
    return this.c.c();
  }

  public List<String> getSearchSuggestions()
  {
    return this.c.j();
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.search.poisearch.PoiPagedResult
 * JD-Core Version:    0.6.0
 */