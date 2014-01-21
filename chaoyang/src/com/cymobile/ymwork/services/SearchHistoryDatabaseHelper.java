package com.cymobile.ymwork.services;

import android.content.Context;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabase.CursorFactory;
import android.database.sqlite.SQLiteOpenHelper;

public class SearchHistoryDatabaseHelper extends SQLiteOpenHelper
{
  public SearchHistoryDatabaseHelper(Context paramContext, String paramString)
  {
    this(paramContext, paramString, 3);
  }

  public SearchHistoryDatabaseHelper(Context paramContext, String paramString, int paramInt)
  {
    this(paramContext, paramString, null, paramInt);
  }

  public SearchHistoryDatabaseHelper(Context paramContext, String paramString, SQLiteDatabase.CursorFactory paramCursorFactory, int paramInt)
  {
    super(paramContext, paramString, paramCursorFactory, paramInt);
  }

  public void close()
  {
    super.close();
  }

  public void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    try
    {
      paramSQLiteDatabase.execSQL("create table search_history_table(id int , search_record varchar(52));");
      return;
    }
    catch (SQLException localSQLException)
    {
      localSQLException.printStackTrace();
    }
  }

  public void onOpen(SQLiteDatabase paramSQLiteDatabase)
  {
    super.onOpen(paramSQLiteDatabase);
  }

  public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.services.SearchHistoryDatabaseHelper
 * JD-Core Version:    0.6.0
 */