package com.tencent.open.cgireport;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;

public class ReportDataModal
{
  private SQLiteDatabase a;
  private a b;
  private int c;

  public ReportDataModal(Context paramContext)
  {
    this.b = new a(this, paramContext, "sdk_cgi_report.db", null, 1);
    this.c = c().size();
  }

  public int a(ArrayList paramArrayList)
  {
    Log.i("cgi_report_debug", "ReportDataModal backupOldItems count = " + paramArrayList.size());
    Iterator localIterator = paramArrayList.iterator();
    int i = 0;
    while (true)
      if (localIterator.hasNext())
      {
        reportItem localreportItem = (reportItem)localIterator.next();
        ContentValues localContentValues = new ContentValues();
        localContentValues.put("apn", localreportItem.a());
        localContentValues.put("frequency", localreportItem.b());
        localContentValues.put("commandid", localreportItem.c());
        localContentValues.put("resultcode", localreportItem.d());
        localContentValues.put("tmcost", localreportItem.e());
        localContentValues.put("reqsize", localreportItem.f());
        localContentValues.put("rspsize", localreportItem.g());
        try
        {
          this.a = this.b.getWritableDatabase();
          this.a.insertOrThrow("olddata", null, localContentValues);
          this.a.close();
          i++;
        }
        catch (Exception localException)
        {
          while (true)
            localException.printStackTrace();
        }
      }
    Log.i("cgi_report_debug", "ReportDataModal backupOldItems succ_count = " + i);
    return i;
  }

  // ERROR //
  public boolean a()
  {
    // Byte code:
    //   0: ldc 40
    //   2: ldc 141
    //   4: invokestatic 62	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   7: pop
    //   8: aload_0
    //   9: aload_0
    //   10: getfield 24	com/tencent/open/cgireport/ReportDataModal:b	Lcom/tencent/open/cgireport/a;
    //   13: invokevirtual 121	com/tencent/open/cgireport/a:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   16: putfield 123	com/tencent/open/cgireport/ReportDataModal:a	Landroid/database/sqlite/SQLiteDatabase;
    //   19: aload_0
    //   20: getfield 123	com/tencent/open/cgireport/ReportDataModal:a	Landroid/database/sqlite/SQLiteDatabase;
    //   23: ldc 143
    //   25: invokevirtual 147	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
    //   28: aload_0
    //   29: getfield 123	com/tencent/open/cgireport/ReportDataModal:a	Landroid/database/sqlite/SQLiteDatabase;
    //   32: invokevirtual 134	android/database/sqlite/SQLiteDatabase:close	()V
    //   35: ldc 40
    //   37: ldc 149
    //   39: invokestatic 62	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   42: pop
    //   43: iconst_1
    //   44: ireturn
    //   45: astore_2
    //   46: aload_2
    //   47: invokevirtual 137	java/lang/Exception:printStackTrace	()V
    //   50: iconst_0
    //   51: ireturn
    //   52: astore_3
    //   53: aload_3
    //   54: invokevirtual 137	java/lang/Exception:printStackTrace	()V
    //   57: aload_0
    //   58: getfield 123	com/tencent/open/cgireport/ReportDataModal:a	Landroid/database/sqlite/SQLiteDatabase;
    //   61: invokevirtual 134	android/database/sqlite/SQLiteDatabase:close	()V
    //   64: iconst_0
    //   65: ireturn
    //
    // Exception table:
    //   from	to	target	type
    //   8	19	45	java/lang/Exception
    //   19	28	52	java/lang/Exception
  }

  public boolean a(String paramString1, String paramString2, String paramString3, int paramInt, long paramLong1, long paramLong2, long paramLong3)
  {
    if (paramString3.contains("?"))
      paramString3 = paramString3.split("\\?")[0];
    Log.i("cgi_report_debug", "ReportDataModal addNewItem apn=" + paramString1 + ",frequency=" + paramString2 + ",commandid=" + paramString3 + ",resultCode=" + paramInt + ",costTime=" + paramLong1 + ",reqSzie=" + paramLong2 + ",rspSize=" + paramLong3);
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("apn", paramString1 + "");
    localContentValues.put("frequency", paramString2 + "");
    localContentValues.put("commandid", paramString3 + "");
    localContentValues.put("resultcode", paramInt + "");
    localContentValues.put("tmcost", paramLong1 + "");
    localContentValues.put("reqsize", paramLong2 + "");
    localContentValues.put("rspsize", paramLong3 + "");
    try
    {
      this.a = this.b.getWritableDatabase();
      this.a.insertOrThrow("newdata", null, localContentValues);
      this.a.close();
      Log.i("cgi_report_debug", "ReportDataModal addNewItem success");
      this.c = (1 + this.c);
      return true;
    }
    catch (Exception localException)
    {
      Log.e("cgi_report_debug", "ReportDataModal addNewItem failed");
      localException.printStackTrace();
    }
    return false;
  }

  // ERROR //
  public boolean b()
  {
    // Byte code:
    //   0: ldc 40
    //   2: ldc 193
    //   4: invokestatic 62	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   7: pop
    //   8: aload_0
    //   9: aload_0
    //   10: getfield 24	com/tencent/open/cgireport/ReportDataModal:b	Lcom/tencent/open/cgireport/a;
    //   13: invokevirtual 121	com/tencent/open/cgireport/a:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   16: putfield 123	com/tencent/open/cgireport/ReportDataModal:a	Landroid/database/sqlite/SQLiteDatabase;
    //   19: aload_0
    //   20: getfield 123	com/tencent/open/cgireport/ReportDataModal:a	Landroid/database/sqlite/SQLiteDatabase;
    //   23: ldc 195
    //   25: invokevirtual 147	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
    //   28: aload_0
    //   29: iconst_0
    //   30: putfield 35	com/tencent/open/cgireport/ReportDataModal:c	I
    //   33: aload_0
    //   34: getfield 123	com/tencent/open/cgireport/ReportDataModal:a	Landroid/database/sqlite/SQLiteDatabase;
    //   37: invokevirtual 134	android/database/sqlite/SQLiteDatabase:close	()V
    //   40: ldc 40
    //   42: ldc 193
    //   44: invokestatic 62	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   47: pop
    //   48: iconst_1
    //   49: ireturn
    //   50: astore_2
    //   51: aload_2
    //   52: invokevirtual 137	java/lang/Exception:printStackTrace	()V
    //   55: iconst_0
    //   56: ireturn
    //   57: astore_3
    //   58: aload_3
    //   59: invokevirtual 137	java/lang/Exception:printStackTrace	()V
    //   62: aload_0
    //   63: getfield 123	com/tencent/open/cgireport/ReportDataModal:a	Landroid/database/sqlite/SQLiteDatabase;
    //   66: invokevirtual 134	android/database/sqlite/SQLiteDatabase:close	()V
    //   69: iconst_0
    //   70: ireturn
    //
    // Exception table:
    //   from	to	target	type
    //   8	19	50	java/lang/Exception
    //   19	28	57	java/lang/Exception
  }

  public ArrayList c()
  {
    Log.i("cgi_report_debug", "ReportDataModal getNewItems start");
    ArrayList localArrayList = new ArrayList();
    Cursor localCursor;
    try
    {
      this.a = this.b.getReadableDatabase();
      localCursor = this.a.rawQuery("select * from newdata", new String[0]);
      localCursor.moveToFirst();
      while (!localCursor.isAfterLast())
      {
        localArrayList.add(new reportItem(localCursor.getString(localCursor.getColumnIndex("apn")), localCursor.getString(localCursor.getColumnIndex("frequency")), localCursor.getString(localCursor.getColumnIndex("commandid")), localCursor.getString(localCursor.getColumnIndex("resultcode")), localCursor.getString(localCursor.getColumnIndex("tmcost")), localCursor.getString(localCursor.getColumnIndex("reqsize")), localCursor.getString(localCursor.getColumnIndex("rspsize"))));
        localCursor.moveToNext();
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      return localArrayList;
    }
    localCursor.close();
    this.a.close();
    Log.i("cgi_report_debug", "ReportDataModal getNewItems success, count = " + localArrayList.size());
    return localArrayList;
  }

  public ArrayList d()
  {
    Log.i("cgi_report_debug", "ReportDataModal getOldItems start");
    ArrayList localArrayList = new ArrayList();
    Cursor localCursor;
    try
    {
      this.a = this.b.getReadableDatabase();
      localCursor = this.a.rawQuery("select * from olddata", new String[0]);
      localCursor.moveToFirst();
      while (!localCursor.isAfterLast())
      {
        localArrayList.add(new reportItem(localCursor.getString(localCursor.getColumnIndex("apn")), localCursor.getString(localCursor.getColumnIndex("frequency")), localCursor.getString(localCursor.getColumnIndex("commandid")), localCursor.getString(localCursor.getColumnIndex("resultcode")), localCursor.getString(localCursor.getColumnIndex("tmcost")), localCursor.getString(localCursor.getColumnIndex("reqsize")), localCursor.getString(localCursor.getColumnIndex("rspsize"))));
        localCursor.moveToNext();
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      return localArrayList;
    }
    localCursor.close();
    this.a.close();
    Log.i("cgi_report_debug", "ReportDataModal getOldItems success, count = " + localArrayList.size());
    return localArrayList;
  }

  public int e()
  {
    Log.i("cgi_report_debug", "ReportDataModal getTotalCount count = " + this.c);
    return this.c;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.tencent.open.cgireport.ReportDataModal
 * JD-Core Version:    0.6.0
 */