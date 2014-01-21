package com.cymobile.ymwork.services;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.util.Log;

public class FavoritesEngine
{
  private static final String TAG = "FavoritesEngine";
  private SQLiteDatabase db;
  private Context mContext;

  public FavoritesEngine(Context paramContext)
  {
    this.mContext = paramContext;
    this.db = new FavoritesDatabaseHelper(this.mContext).getWritableDatabase();
  }

  public void CreateTable(String paramString)
  {
    Log.i("FavoritesEngine", "FavoritesEngine CreateTable()" + paramString);
    String str = "CREATE TABLE IF NOT EXISTS " + paramString + " CREATE TABLE IF NOT EXISTS FavoritesDatabase (_id INTEGER PRIMARY KEY ,favoritetype INTEGER, favoriteto VARCHAR,  favoritetime date)";
    this.db.beginTransaction();
    this.db.execSQL(str);
    this.db.endTransaction();
  }

  public void closeDatabase()
  {
    Log.i("FavoritesEngine", "FavoritesEngine closeDatabase()");
    this.db.close();
  }

  public void delete(String paramString)
  {
    Log.i("FavoritesEngine", "FavoritesEngine delete()" + paramString);
    this.db.delete("FavoritesDatabase", "_id=?", new String[] { paramString });
  }

  public void dropTable(String paramString)
  {
    Log.i("FavoritesEngine", "FavoritesEngine dropTable()" + paramString);
    String str = "DROP TABLE IF EXISTS " + paramString;
    this.db.execSQL(str);
  }

  public void insert(int paramInt, String paramString, long paramLong)
  {
    Log.i("FavoritesEngine", "FavoritesEngine insert()");
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("favoritetype", Integer.valueOf(paramInt));
    localContentValues.put("favoriteto", paramString);
    localContentValues.put("favoritetime", Long.valueOf(paramLong));
    this.db.insert("FavoritesDatabase", null, localContentValues);
  }

  public void openDatabase(String paramString)
  {
    Log.i("FavoritesEngine", "FavoritesEngine openDatabase()");
    this.db = SQLiteDatabase.openDatabase(paramString, null, 0);
  }

  public Cursor queryAll()
  {
    Log.i("FavoritesEngine", "FavoritesEngine queryAll()");
    return this.db.rawQuery("select *from FavoritesDatabase order by _id desc", null);
  }

  public Cursor queryById(String paramString)
  {
    Log.i("FavoritesEngine", "FavoritesEngine queryByType()");
    SQLiteDatabase localSQLiteDatabase = this.db;
    String[] arrayOfString = new String[1];
    arrayOfString[0] = paramString;
    return localSQLiteDatabase.query("FavoritesDatabase", null, "_id=?", arrayOfString, null, null, null);
  }

  public Cursor queryByType(int paramInt)
  {
    Log.i("FavoritesEngine", "FavoritesEngine queryByType()");
    SQLiteDatabase localSQLiteDatabase = this.db;
    String[] arrayOfString = new String[1];
    arrayOfString[0] = paramInt;
    return localSQLiteDatabase.query("FavoritesDatabase", null, "favoritetype=?", arrayOfString, null, null, null);
  }

  public Cursor queryByTypeAndTo(int paramInt, String paramString)
  {
    Log.i("FavoritesEngine", "FavoritesEngine queryByUrl()");
    SQLiteDatabase localSQLiteDatabase = this.db;
    String[] arrayOfString = new String[2];
    arrayOfString[0] = paramInt;
    arrayOfString[1] = paramString;
    return localSQLiteDatabase.query("FavoritesDatabase", null, "favoritetype=?, favoriteto=?", arrayOfString, null, null, null);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.services.FavoritesEngine
 * JD-Core Version:    0.6.0
 */