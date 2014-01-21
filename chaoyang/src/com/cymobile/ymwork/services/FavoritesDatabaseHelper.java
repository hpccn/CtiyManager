package com.cymobile.ymwork.services;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

public class FavoritesDatabaseHelper extends SQLiteOpenHelper
{
  private static final String TableName = "FavoritesDatabase";
  private static final int VERSION = 1;

  public FavoritesDatabaseHelper(Context paramContext)
  {
    super(paramContext, "FavoritesDatabase", null, 1);
  }

  public void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS FavoritesDatabase (_id INTEGER PRIMARY KEY ,favoritetype INTEGER, favoriteto VARCHAR,  favoritetime date)");
  }

  public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS FavoritesDatabase");
    onCreate(paramSQLiteDatabase);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.services.FavoritesDatabaseHelper
 * JD-Core Version:    0.6.0
 */