package com.cymobile.ymwork.services;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import com.cymobile.ymwork.search.SearchRecord;
import java.util.ArrayList;
import java.util.List;

public class SearchRecordEngine
{
  public static final long MAX_COUNT = 30L;
  private Context mContext;
  private SearchHistoryDatabaseHelper mDBHelper;

  public SearchRecordEngine(Context paramContext)
  {
    this.mContext = paramContext;
    this.mDBHelper = new SearchHistoryDatabaseHelper(this.mContext, "search_history_db");
    try
    {
      this.mDBHelper.getReadableDatabase();
      return;
    }
    catch (SQLiteException localSQLiteException)
    {
      localSQLiteException.printStackTrace();
      return;
    }
    finally
    {
      if (this.mDBHelper != null)
        this.mDBHelper.close();
    }
    throw localObject;
  }

  public void addSearchRecord(SearchRecord paramSearchRecord)
  {
    if (isExist(paramSearchRecord))
      removeSearchRecord(paramSearchRecord);
    if (getSearchRecordCount() > 30L)
      removeSearchRecord((SearchRecord)getSearchRecordList().get(0));
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("id", Integer.valueOf(paramSearchRecord.getIndex()));
    localContentValues.put("search_record", paramSearchRecord.getSearchRecordText());
    this.mDBHelper.getWritableDatabase().insert("search_history_table", null, localContentValues);
    if (this.mDBHelper != null)
      this.mDBHelper.close();
  }

  public void clearSearchRecord()
  {
    this.mDBHelper.getWritableDatabase().execSQL("DELETE FROM search_history_table WHERE id=0;");
    if (this.mDBHelper != null)
      this.mDBHelper.close();
  }

  public long getSearchRecordCount()
  {
    long l1 = 0L;
    Cursor localCursor = null;
    try
    {
      localCursor = this.mDBHelper.getWritableDatabase().rawQuery("select count(*) from search_history_table;", null);
      if (localCursor.moveToLast())
      {
        long l2 = localCursor.getLong(0);
        l1 = l2;
      }
      return l1;
    }
    catch (SQLException localSQLException)
    {
      localSQLException.printStackTrace();
      return l1;
    }
    finally
    {
      if (localCursor != null)
        localCursor.close();
      if (this.mDBHelper != null)
        this.mDBHelper.close();
    }
    throw localObject;
  }

  public List<SearchRecord> getSearchRecordList()
  {
    ArrayList localArrayList = new ArrayList();
    Cursor localCursor = null;
    try
    {
      localCursor = this.mDBHelper.getWritableDatabase().rawQuery("select * from search_history_table;", null);
      while (true)
      {
        boolean bool = localCursor.moveToNext();
        if (!bool)
          return localArrayList;
        int i = localCursor.getColumnIndex("search_record");
        localArrayList.add(new SearchRecord(localCursor.getString(i), i));
      }
    }
    catch (SQLException localSQLException)
    {
      localSQLException.printStackTrace();
      return localArrayList;
    }
    finally
    {
      if (localCursor != null)
        localCursor.close();
      if (this.mDBHelper != null)
        this.mDBHelper.close();
    }
    throw localObject;
  }

  boolean isExist(SearchRecord paramSearchRecord)
  {
    String str = paramSearchRecord.getSearchRecordText();
    Cursor localCursor = null;
    SearchHistoryDatabaseHelper localSearchHistoryDatabaseHelper2;
    do
    {
      try
      {
        localCursor = this.mDBHelper.getWritableDatabase().rawQuery("select count(*) from search_history_table where search_record='" + str + "';", null);
        if (localCursor.moveToLast())
        {
          long l = localCursor.getLong(0);
          if (l > 0L)
          {
            if (localCursor != null)
              localCursor.close();
            if (this.mDBHelper != null)
              this.mDBHelper.close();
            i = 1;
            return i;
          }
        }
      }
      catch (SQLException localSQLException)
      {
        SearchHistoryDatabaseHelper localSearchHistoryDatabaseHelper1;
        do
        {
          localSQLException.printStackTrace();
          if (localCursor != null)
            localCursor.close();
          localSearchHistoryDatabaseHelper1 = this.mDBHelper;
          i = 0;
        }
        while (localSearchHistoryDatabaseHelper1 == null);
        this.mDBHelper.close();
        return false;
      }
      finally
      {
        if (localCursor != null)
          localCursor.close();
        if (this.mDBHelper != null)
          this.mDBHelper.close();
      }
      if (localCursor != null)
        localCursor.close();
      localSearchHistoryDatabaseHelper2 = this.mDBHelper;
      int i = 0;
    }
    while (localSearchHistoryDatabaseHelper2 == null);
    this.mDBHelper.close();
    return false;
  }

  public void removeSearchRecord(int paramInt)
  {
  }

  public void removeSearchRecord(SearchRecord paramSearchRecord)
  {
    String str = paramSearchRecord.getSearchRecordText();
    this.mDBHelper.getWritableDatabase().execSQL("DELETE FROM search_history_table WHERE search_record='" + str + "';");
    if (this.mDBHelper != null)
      this.mDBHelper.close();
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.services.SearchRecordEngine
 * JD-Core Version:    0.6.0
 */