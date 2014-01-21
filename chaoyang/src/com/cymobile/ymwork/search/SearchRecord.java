package com.cymobile.ymwork.search;

public class SearchRecord
{
  private int mIndex;
  private String mSearchRecordText;

  public SearchRecord(String paramString)
  {
    this.mSearchRecordText = paramString;
    this.mIndex = 0;
  }

  public SearchRecord(String paramString, int paramInt)
  {
    this.mSearchRecordText = paramString;
    this.mIndex = paramInt;
  }

  public int getIndex()
  {
    return this.mIndex;
  }

  public String getSearchRecordText()
  {
    return this.mSearchRecordText;
  }

  public void setIndex(int paramInt)
  {
    this.mIndex = paramInt;
  }

  public void setSearchRecordText(String paramString)
  {
    this.mSearchRecordText = paramString;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.search.SearchRecord
 * JD-Core Version:    0.6.0
 */