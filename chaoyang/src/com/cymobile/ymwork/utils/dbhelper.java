package com.cymobile.ymwork.utils;

import android.content.Context;
import android.content.res.AssetManager;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.Environment;
import android.util.Log;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class dbhelper
{
  private String DB_PATH = "";
  private final Context adapterContext;
  private SQLiteAdapter mDbHelper;

  public dbhelper(Context paramContext, String paramString)
  {
    this.adapterContext = paramContext;
    this.DB_PATH = paramString;
  }

  public Cursor ExecuteSelect(String paramString, String[] paramArrayOfString)
  {
    if (this.mDbHelper == null)
      openDb();
    return this.mDbHelper.mDb.rawQuery(paramString, paramArrayOfString);
  }

  public void close()
  {
    this.mDbHelper.close();
    this.mDbHelper = null;
  }

  public void openDb()
    throws SQLException
  {
    this.mDbHelper = new SQLiteAdapter(this.adapterContext, this.DB_PATH);
    try
    {
      this.mDbHelper.openDataBase();
      return;
    }
    catch (SQLException localSQLException)
    {
    }
    throw localSQLException;
  }

  private static class SQLiteAdapter extends SQLiteOpenHelper
  {
    private static String DATABASE_NAME = "";
    private static int DATABASE_VERSION = 3;
    Context helperContext;
    private SQLiteDatabase mDb;

    SQLiteAdapter(Context paramContext, String paramString)
    {
      super(DATABASE_NAME, null, DATABASE_VERSION);
      this.helperContext = paramContext;
      DATABASE_NAME = Environment.getExternalStorageDirectory().getAbsolutePath() + "/" + paramString;
      try
      {
        StroeDataBase();
        return;
      }
      catch (IOException localIOException)
      {
        localIOException.printStackTrace();
      }
    }

    private boolean checkDataBase()
    {
      try
      {
        SQLiteDatabase localSQLiteDatabase2 = SQLiteDatabase.openDatabase(DATABASE_NAME, null, 1);
        localSQLiteDatabase1 = localSQLiteDatabase2;
        if (localSQLiteDatabase1 != null)
          localSQLiteDatabase1.close();
        return localSQLiteDatabase1 != null;
      }
      catch (SQLiteException localSQLiteException)
      {
        while (true)
          SQLiteDatabase localSQLiteDatabase1 = null;
      }
    }

    private void copyDataBase()
      throws IOException
    {
      InputStream localInputStream = this.helperContext.getAssets().open(DATABASE_NAME);
      String str = DATABASE_NAME;
      Log.d("IB", str);
      FileOutputStream localFileOutputStream = new FileOutputStream(str);
      byte[] arrayOfByte = new byte[1024];
      while (true)
      {
        int i = localInputStream.read(arrayOfByte);
        if (i <= 0)
        {
          localFileOutputStream.flush();
          localFileOutputStream.close();
          localInputStream.close();
          return;
        }
        localFileOutputStream.write(arrayOfByte, 0, i);
      }
    }

    public void StroeDataBase()
      throws IOException
    {
      if (!checkDataBase());
      try
      {
        copyDataBase();
        return;
      }
      catch (IOException localIOException)
      {
      }
      throw new Error("Error copying database");
    }

    public void close()
    {
      monitorenter;
      try
      {
        if (this.mDb != null)
          this.mDb.close();
        super.close();
        return;
      }
      finally
      {
        monitorexit;
      }
      throw localObject;
    }

    public void onCreate(SQLiteDatabase paramSQLiteDatabase)
    {
    }

    public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
    {
    }

    public void openDataBase()
      throws SQLException
    {
      this.mDb = SQLiteDatabase.openDatabase(DATABASE_NAME, null, 0);
    }
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.utils.dbhelper
 * JD-Core Version:    0.6.0
 */