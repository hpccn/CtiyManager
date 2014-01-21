package com.tencent.qc.stat;

import android.content.ContentValues;
import android.content.Context;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import com.tencent.qc.stat.common.StatCommonHelper;
import com.tencent.qc.stat.common.StatLogger;
import com.tencent.qc.stat.common.User;
import com.tencent.qc.stat.event.Event;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public class StatStore
{
  private static StatLogger e = StatCommonHelper.b();
  private static StatStore f = null;
  Handler a = null;
  volatile int b = 0;
  User c = null;
  private i d;
  private HashMap g = new HashMap();

  private StatStore(Context paramContext)
  {
    HandlerThread localHandlerThread = new HandlerThread("StatStore");
    localHandlerThread.start();
    e.d("Launch store thread:" + localHandlerThread);
    this.a = new Handler(localHandlerThread.getLooper());
    Context localContext = paramContext.getApplicationContext();
    this.d = new i(localContext);
    this.d.getWritableDatabase();
    this.d.getReadableDatabase();
    b(localContext);
    e();
    this.a.post(new g(this));
  }

  public static StatStore a(Context paramContext)
  {
    if (f == null)
      f = new StatStore(paramContext);
    return f;
  }

  private void b(List paramList)
  {
    e.b("Delete " + paramList.size() + " sent events in thread:" + Thread.currentThread());
    try
    {
      this.d.getWritableDatabase().beginTransaction();
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext())
      {
        r localr = (r)localIterator.next();
        int i = this.b;
        SQLiteDatabase localSQLiteDatabase = this.d.getWritableDatabase();
        String[] arrayOfString = new String[1];
        arrayOfString[0] = Long.toString(localr.a);
        this.b = (i - localSQLiteDatabase.delete("events", "event_id = ?", arrayOfString));
      }
    }
    catch (SQLiteException localSQLiteException)
    {
      e.b(localSQLiteException);
      return;
      this.d.getWritableDatabase().setTransactionSuccessful();
      this.b = (int)DatabaseUtils.queryNumEntries(this.d.getReadableDatabase(), "events");
      return;
    }
    finally
    {
      this.d.getWritableDatabase().endTransaction();
    }
    throw localObject;
  }

  private void b(List paramList, int paramInt)
  {
    e.b("Update " + paramList.size() + " sending events to status:" + paramInt + " in thread:" + Thread.currentThread());
    try
    {
      localContentValues = new ContentValues();
      localContentValues.put("status", Integer.toString(paramInt));
      this.d.getWritableDatabase().beginTransaction();
      Iterator localIterator = paramList.iterator();
      while (true)
      {
        if (!localIterator.hasNext())
          break label344;
        localr = (r)localIterator.next();
        if (1 + localr.d <= StatConfig.f())
          break;
        int j = this.b;
        SQLiteDatabase localSQLiteDatabase2 = this.d.getWritableDatabase();
        String[] arrayOfString2 = new String[1];
        arrayOfString2[0] = Long.toString(localr.a);
        this.b = (j - localSQLiteDatabase2.delete("events", "event_id=?", arrayOfString2));
      }
    }
    catch (SQLiteException localSQLiteException)
    {
      while (true)
      {
        ContentValues localContentValues;
        r localr;
        e.b(localSQLiteException);
        return;
        localContentValues.put("send_count", Integer.valueOf(1 + localr.d));
        e.b("Update event:" + localr.a + " for content:" + localContentValues);
        SQLiteDatabase localSQLiteDatabase1 = this.d.getWritableDatabase();
        String[] arrayOfString1 = new String[1];
        arrayOfString1[0] = Long.toString(localr.a);
        int i = localSQLiteDatabase1.update("events", localContentValues, "event_id=?", arrayOfString1);
        if (i > 0)
          continue;
        e.f("Failed to update db, error code:" + Integer.toString(i));
      }
    }
    finally
    {
      this.d.getWritableDatabase().endTransaction();
    }
    label344: this.d.getWritableDatabase().setTransactionSuccessful();
    this.b = (int)DatabaseUtils.queryNumEntries(this.d.getReadableDatabase(), "events");
    this.d.getWritableDatabase().endTransaction();
  }

  // ERROR //
  private void c(List paramList, int paramInt)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aload_0
    //   3: getfield 96	com/tencent/qc/stat/StatStore:d	Lcom/tencent/qc/stat/i;
    //   6: invokevirtual 103	com/tencent/qc/stat/i:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   9: astore 7
    //   11: iconst_1
    //   12: anewarray 178	java/lang/String
    //   15: astore 8
    //   17: aload 8
    //   19: iconst_0
    //   20: iconst_1
    //   21: invokestatic 225	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   24: aastore
    //   25: aload 7
    //   27: ldc 188
    //   29: aconst_null
    //   30: ldc_w 263
    //   33: aload 8
    //   35: aconst_null
    //   36: aconst_null
    //   37: ldc_w 265
    //   40: iload_2
    //   41: invokestatic 225	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   44: invokevirtual 269	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   47: astore 9
    //   49: aload 9
    //   51: invokeinterface 274 1 0
    //   56: ifeq +79 -> 135
    //   59: aload_1
    //   60: new 176	com/tencent/qc/stat/r
    //   63: dup
    //   64: aload 9
    //   66: iconst_0
    //   67: invokeinterface 278 2 0
    //   72: aload 9
    //   74: iconst_1
    //   75: invokeinterface 281 2 0
    //   80: aload 9
    //   82: iconst_2
    //   83: invokeinterface 285 2 0
    //   88: aload 9
    //   90: iconst_3
    //   91: invokeinterface 285 2 0
    //   96: invokespecial 288	com/tencent/qc/stat/r:<init>	(JLjava/lang/String;II)V
    //   99: invokeinterface 292 2 0
    //   104: pop
    //   105: goto -56 -> 49
    //   108: astore 4
    //   110: aload 9
    //   112: astore 5
    //   114: getstatic 27	com/tencent/qc/stat/StatStore:e	Lcom/tencent/qc/stat/common/StatLogger;
    //   117: aload 4
    //   119: invokevirtual 197	com/tencent/qc/stat/common/StatLogger:b	(Ljava/lang/Exception;)V
    //   122: aload 5
    //   124: ifnull +10 -> 134
    //   127: aload 5
    //   129: invokeinterface 295 1 0
    //   134: return
    //   135: aload 9
    //   137: ifnull -3 -> 134
    //   140: aload 9
    //   142: invokeinterface 295 1 0
    //   147: return
    //   148: astore 6
    //   150: aload_3
    //   151: ifnull +9 -> 160
    //   154: aload_3
    //   155: invokeinterface 295 1 0
    //   160: aload 6
    //   162: athrow
    //   163: astore 6
    //   165: aload 9
    //   167: astore_3
    //   168: goto -18 -> 150
    //   171: astore 6
    //   173: aload 5
    //   175: astore_3
    //   176: goto -26 -> 150
    //   179: astore 4
    //   181: aconst_null
    //   182: astore 5
    //   184: goto -70 -> 114
    //
    // Exception table:
    //   from	to	target	type
    //   49	105	108	android/database/sqlite/SQLiteException
    //   2	49	148	finally
    //   49	105	163	finally
    //   114	122	171	finally
    //   2	49	179	android/database/sqlite/SQLiteException
  }

  private void d()
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("status", Integer.valueOf(1));
    SQLiteDatabase localSQLiteDatabase = this.d.getWritableDatabase();
    String[] arrayOfString = new String[1];
    arrayOfString[0] = Long.toString(2L);
    localSQLiteDatabase.update("events", localContentValues, "status=?", arrayOfString);
    this.b = (int)DatabaseUtils.queryNumEntries(this.d.getReadableDatabase(), "events");
    e.b("Total " + this.b + " unsent events.");
  }

  // ERROR //
  private void e()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 96	com/tencent/qc/stat/StatStore:d	Lcom/tencent/qc/stat/i;
    //   4: invokevirtual 103	com/tencent/qc/stat/i:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   7: ldc_w 303
    //   10: aconst_null
    //   11: aconst_null
    //   12: aconst_null
    //   13: aconst_null
    //   14: aconst_null
    //   15: aconst_null
    //   16: invokevirtual 306	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   19: astore 4
    //   21: aload 4
    //   23: astore_2
    //   24: aload_2
    //   25: invokeinterface 274 1 0
    //   30: ifeq +47 -> 77
    //   33: aload_0
    //   34: getfield 44	com/tencent/qc/stat/StatStore:g	Ljava/util/HashMap;
    //   37: aload_2
    //   38: iconst_0
    //   39: invokeinterface 281 2 0
    //   44: aload_2
    //   45: iconst_1
    //   46: invokeinterface 281 2 0
    //   51: invokevirtual 309	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   54: pop
    //   55: goto -31 -> 24
    //   58: astore_1
    //   59: getstatic 27	com/tencent/qc/stat/StatStore:e	Lcom/tencent/qc/stat/common/StatLogger;
    //   62: aload_1
    //   63: invokevirtual 197	com/tencent/qc/stat/common/StatLogger:b	(Ljava/lang/Exception;)V
    //   66: aload_2
    //   67: ifnull +9 -> 76
    //   70: aload_2
    //   71: invokeinterface 295 1 0
    //   76: return
    //   77: aload_2
    //   78: ifnull -2 -> 76
    //   81: aload_2
    //   82: invokeinterface 295 1 0
    //   87: return
    //   88: astore_3
    //   89: aconst_null
    //   90: astore_2
    //   91: aload_2
    //   92: ifnull +9 -> 101
    //   95: aload_2
    //   96: invokeinterface 295 1 0
    //   101: aload_3
    //   102: athrow
    //   103: astore_3
    //   104: goto -13 -> 91
    //   107: astore_1
    //   108: aconst_null
    //   109: astore_2
    //   110: goto -51 -> 59
    //
    // Exception table:
    //   from	to	target	type
    //   24	55	58	android/database/sqlite/SQLiteException
    //   0	21	88	finally
    //   24	55	103	finally
    //   59	66	103	finally
    //   0	21	107	android/database/sqlite/SQLiteException
  }

  public int a()
  {
    return this.b;
  }

  void a(int paramInt)
  {
    this.a.post(new b(this, paramInt));
  }

  void a(Event paramEvent, q paramq)
  {
    if (StatConfig.h() <= 0);
    do
    {
      return;
      if (this.b > StatConfig.h())
      {
        e.c("Too many events stored in db.");
        this.b -= this.d.getWritableDatabase().delete("events", "event_id in (select event_id from events where timestamp in (select min(timestamp) from events) limit 1)", null);
      }
      ContentValues localContentValues = new ContentValues();
      String str = paramEvent.d();
      localContentValues.put("content", str);
      localContentValues.put("send_count", "0");
      localContentValues.put("status", Integer.toString(1));
      localContentValues.put("timestamp", Long.valueOf(paramEvent.b()));
      if (this.d.getWritableDatabase().insert("events", null, localContentValues) == -1L)
      {
        e.e("Failed to store event:" + str);
        return;
      }
      this.b = (1 + this.b);
    }
    while (paramq == null);
    paramq.a();
  }

  void a(s params)
  {
    if (params == null)
      return;
    this.a.post(new c(this, params));
  }

  void a(List paramList)
  {
    if (Thread.currentThread().getId() == this.a.getLooper().getThread().getId())
    {
      b(paramList);
      return;
    }
    this.a.post(new e(this, paramList));
  }

  void a(List paramList, int paramInt)
  {
    if (Thread.currentThread().getId() == this.a.getLooper().getThread().getId())
    {
      b(paramList, paramInt);
      return;
    }
    this.a.post(new h(this, paramList, paramInt));
  }

  // ERROR //
  public User b(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 39	com/tencent/qc/stat/StatStore:c	Lcom/tencent/qc/stat/common/User;
    //   4: ifnull +8 -> 12
    //   7: aload_0
    //   8: getfield 39	com/tencent/qc/stat/StatStore:c	Lcom/tencent/qc/stat/common/User;
    //   11: areturn
    //   12: aload_0
    //   13: getfield 96	com/tencent/qc/stat/StatStore:d	Lcom/tencent/qc/stat/i;
    //   16: invokevirtual 103	com/tencent/qc/stat/i:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   19: ldc_w 383
    //   22: aconst_null
    //   23: aconst_null
    //   24: aconst_null
    //   25: aconst_null
    //   26: aconst_null
    //   27: aconst_null
    //   28: aconst_null
    //   29: invokevirtual 269	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   32: astore 5
    //   34: aload 5
    //   36: astore_3
    //   37: aload_3
    //   38: invokeinterface 274 1 0
    //   43: istore 6
    //   45: iconst_0
    //   46: istore 7
    //   48: iload 6
    //   50: ifeq +281 -> 331
    //   53: aload_3
    //   54: iconst_0
    //   55: invokeinterface 281 2 0
    //   60: astore 8
    //   62: aload_3
    //   63: iconst_1
    //   64: invokeinterface 285 2 0
    //   69: istore 9
    //   71: aload_3
    //   72: iconst_2
    //   73: invokeinterface 281 2 0
    //   78: astore 10
    //   80: aload_3
    //   81: iconst_3
    //   82: invokeinterface 278 2 0
    //   87: lstore 11
    //   89: iconst_1
    //   90: istore 7
    //   92: invokestatic 388	java/lang/System:currentTimeMillis	()J
    //   95: ldc2_w 389
    //   98: ldiv
    //   99: lstore 13
    //   101: iload 9
    //   103: iconst_1
    //   104: if_icmpeq +549 -> 653
    //   107: lload 11
    //   109: ldc2_w 389
    //   112: lmul
    //   113: invokestatic 392	com/tencent/qc/stat/common/StatCommonHelper:a	(J)Ljava/lang/String;
    //   116: ldc2_w 389
    //   119: lload 13
    //   121: lmul
    //   122: invokestatic 392	com/tencent/qc/stat/common/StatCommonHelper:a	(J)Ljava/lang/String;
    //   125: invokevirtual 395	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   128: ifne +525 -> 653
    //   131: iconst_1
    //   132: istore 15
    //   134: aload 10
    //   136: aload_1
    //   137: invokestatic 399	com/tencent/qc/stat/common/StatCommonHelper:p	(Landroid/content/Context;)Ljava/lang/String;
    //   140: invokevirtual 395	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   143: ifne +503 -> 646
    //   146: iload 15
    //   148: iconst_2
    //   149: ior
    //   150: istore 16
    //   152: aload 8
    //   154: ldc_w 401
    //   157: invokevirtual 405	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   160: astore 17
    //   162: iconst_0
    //   163: istore 18
    //   165: aload 17
    //   167: ifnull +339 -> 506
    //   170: aload 17
    //   172: arraylength
    //   173: ifle +333 -> 506
    //   176: aload 17
    //   178: iconst_0
    //   179: aaload
    //   180: astore 20
    //   182: aload 17
    //   184: ifnull +339 -> 523
    //   187: aload 17
    //   189: arraylength
    //   190: iconst_2
    //   191: if_icmplt +332 -> 523
    //   194: aload 17
    //   196: iconst_1
    //   197: aaload
    //   198: astore 21
    //   200: aload_0
    //   201: new 407	com/tencent/qc/stat/common/User
    //   204: dup
    //   205: aload 20
    //   207: aload 21
    //   209: iload 16
    //   211: invokespecial 410	com/tencent/qc/stat/common/User:<init>	(Ljava/lang/String;Ljava/lang/String;I)V
    //   214: putfield 39	com/tencent/qc/stat/StatStore:c	Lcom/tencent/qc/stat/common/User;
    //   217: new 217	android/content/ContentValues
    //   220: dup
    //   221: invokespecial 218	android/content/ContentValues:<init>	()V
    //   224: astore 24
    //   226: aload 24
    //   228: ldc_w 412
    //   231: aload 8
    //   233: invokevirtual 229	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   236: aload 24
    //   238: ldc_w 414
    //   241: iload 16
    //   243: invokestatic 243	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   246: invokevirtual 246	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   249: aload 24
    //   251: ldc_w 416
    //   254: aload_1
    //   255: invokestatic 399	com/tencent/qc/stat/common/StatCommonHelper:p	(Landroid/content/Context;)Ljava/lang/String;
    //   258: invokevirtual 229	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   261: aload 24
    //   263: ldc_w 418
    //   266: lload 13
    //   268: invokestatic 341	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   271: invokevirtual 344	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
    //   274: iload 18
    //   276: ifeq +31 -> 307
    //   279: aload_0
    //   280: getfield 96	com/tencent/qc/stat/StatStore:d	Lcom/tencent/qc/stat/i;
    //   283: invokevirtual 100	com/tencent/qc/stat/i:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   286: ldc_w 383
    //   289: aload 24
    //   291: ldc_w 420
    //   294: iconst_1
    //   295: anewarray 178	java/lang/String
    //   298: dup
    //   299: iconst_0
    //   300: aload 20
    //   302: aastore
    //   303: invokevirtual 257	android/database/sqlite/SQLiteDatabase:update	(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    //   306: pop
    //   307: iload 16
    //   309: iload 9
    //   311: if_icmpeq +20 -> 331
    //   314: aload_0
    //   315: getfield 96	com/tencent/qc/stat/StatStore:d	Lcom/tencent/qc/stat/i;
    //   318: invokevirtual 100	com/tencent/qc/stat/i:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   321: ldc_w 383
    //   324: aconst_null
    //   325: aload 24
    //   327: invokevirtual 423	android/database/sqlite/SQLiteDatabase:replace	(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    //   330: pop2
    //   331: iload 7
    //   333: ifne +158 -> 491
    //   336: aload_1
    //   337: invokestatic 425	com/tencent/qc/stat/common/StatCommonHelper:b	(Landroid/content/Context;)Ljava/lang/String;
    //   340: astore 28
    //   342: aload_1
    //   343: invokestatic 427	com/tencent/qc/stat/common/StatCommonHelper:c	(Landroid/content/Context;)Ljava/lang/String;
    //   346: astore 29
    //   348: aload 29
    //   350: ifnull +289 -> 639
    //   353: aload 29
    //   355: invokevirtual 430	java/lang/String:length	()I
    //   358: ifle +281 -> 639
    //   361: new 56	java/lang/StringBuilder
    //   364: dup
    //   365: invokespecial 57	java/lang/StringBuilder:<init>	()V
    //   368: aload 28
    //   370: invokevirtual 63	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   373: ldc_w 401
    //   376: invokevirtual 63	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   379: aload 29
    //   381: invokevirtual 63	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   384: invokevirtual 70	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   387: astore 30
    //   389: invokestatic 388	java/lang/System:currentTimeMillis	()J
    //   392: ldc2_w 389
    //   395: ldiv
    //   396: lstore 31
    //   398: aload_1
    //   399: invokestatic 399	com/tencent/qc/stat/common/StatCommonHelper:p	(Landroid/content/Context;)Ljava/lang/String;
    //   402: astore 33
    //   404: new 217	android/content/ContentValues
    //   407: dup
    //   408: invokespecial 218	android/content/ContentValues:<init>	()V
    //   411: astore 34
    //   413: aload 34
    //   415: ldc_w 412
    //   418: aload 30
    //   420: invokevirtual 229	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   423: aload 34
    //   425: ldc_w 414
    //   428: iconst_0
    //   429: invokestatic 243	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   432: invokevirtual 246	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   435: aload 34
    //   437: ldc_w 416
    //   440: aload 33
    //   442: invokevirtual 229	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   445: aload 34
    //   447: ldc_w 418
    //   450: lload 31
    //   452: invokestatic 341	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   455: invokevirtual 344	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
    //   458: aload_0
    //   459: getfield 96	com/tencent/qc/stat/StatStore:d	Lcom/tencent/qc/stat/i;
    //   462: invokevirtual 100	com/tencent/qc/stat/i:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   465: ldc_w 383
    //   468: aconst_null
    //   469: aload 34
    //   471: invokevirtual 348	android/database/sqlite/SQLiteDatabase:insert	(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    //   474: pop2
    //   475: aload_0
    //   476: new 407	com/tencent/qc/stat/common/User
    //   479: dup
    //   480: aload 28
    //   482: aload 29
    //   484: iconst_0
    //   485: invokespecial 410	com/tencent/qc/stat/common/User:<init>	(Ljava/lang/String;Ljava/lang/String;I)V
    //   488: putfield 39	com/tencent/qc/stat/StatStore:c	Lcom/tencent/qc/stat/common/User;
    //   491: aload_3
    //   492: ifnull +9 -> 501
    //   495: aload_3
    //   496: invokeinterface 295 1 0
    //   501: aload_0
    //   502: getfield 39	com/tencent/qc/stat/StatStore:c	Lcom/tencent/qc/stat/common/User;
    //   505: areturn
    //   506: aload_1
    //   507: invokestatic 425	com/tencent/qc/stat/common/StatCommonHelper:b	(Landroid/content/Context;)Ljava/lang/String;
    //   510: astore 19
    //   512: aload 19
    //   514: astore 20
    //   516: aload 19
    //   518: astore 8
    //   520: goto -338 -> 182
    //   523: aload_1
    //   524: invokestatic 427	com/tencent/qc/stat/common/StatCommonHelper:c	(Landroid/content/Context;)Ljava/lang/String;
    //   527: astore 21
    //   529: iconst_0
    //   530: istore 18
    //   532: aload 21
    //   534: ifnull -334 -> 200
    //   537: aload 21
    //   539: invokevirtual 430	java/lang/String:length	()I
    //   542: istore 22
    //   544: iconst_0
    //   545: istore 18
    //   547: iload 22
    //   549: ifle -349 -> 200
    //   552: new 56	java/lang/StringBuilder
    //   555: dup
    //   556: invokespecial 57	java/lang/StringBuilder:<init>	()V
    //   559: aload 20
    //   561: invokevirtual 63	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   564: ldc_w 401
    //   567: invokevirtual 63	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   570: aload 21
    //   572: invokevirtual 63	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   575: invokevirtual 70	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   578: astore 23
    //   580: aload 23
    //   582: astore 8
    //   584: iconst_1
    //   585: istore 18
    //   587: goto -387 -> 200
    //   590: astore 4
    //   592: aconst_null
    //   593: astore_3
    //   594: getstatic 27	com/tencent/qc/stat/StatStore:e	Lcom/tencent/qc/stat/common/StatLogger;
    //   597: aload 4
    //   599: invokevirtual 197	com/tencent/qc/stat/common/StatLogger:b	(Ljava/lang/Exception;)V
    //   602: aload_3
    //   603: ifnull -102 -> 501
    //   606: aload_3
    //   607: invokeinterface 295 1 0
    //   612: goto -111 -> 501
    //   615: astore_2
    //   616: aconst_null
    //   617: astore_3
    //   618: aload_3
    //   619: ifnull +9 -> 628
    //   622: aload_3
    //   623: invokeinterface 295 1 0
    //   628: aload_2
    //   629: athrow
    //   630: astore_2
    //   631: goto -13 -> 618
    //   634: astore 4
    //   636: goto -42 -> 594
    //   639: aload 28
    //   641: astore 30
    //   643: goto -254 -> 389
    //   646: iload 15
    //   648: istore 16
    //   650: goto -498 -> 152
    //   653: iload 9
    //   655: istore 15
    //   657: goto -523 -> 134
    //
    // Exception table:
    //   from	to	target	type
    //   12	34	590	android/database/sqlite/SQLiteException
    //   12	34	615	finally
    //   37	45	630	finally
    //   53	89	630	finally
    //   92	101	630	finally
    //   107	131	630	finally
    //   134	146	630	finally
    //   152	162	630	finally
    //   170	182	630	finally
    //   187	200	630	finally
    //   200	274	630	finally
    //   279	307	630	finally
    //   314	331	630	finally
    //   336	348	630	finally
    //   353	389	630	finally
    //   389	491	630	finally
    //   506	512	630	finally
    //   523	529	630	finally
    //   537	544	630	finally
    //   552	580	630	finally
    //   594	602	630	finally
    //   37	45	634	android/database/sqlite/SQLiteException
    //   53	89	634	android/database/sqlite/SQLiteException
    //   92	101	634	android/database/sqlite/SQLiteException
    //   107	131	634	android/database/sqlite/SQLiteException
    //   134	146	634	android/database/sqlite/SQLiteException
    //   152	162	634	android/database/sqlite/SQLiteException
    //   170	182	634	android/database/sqlite/SQLiteException
    //   187	200	634	android/database/sqlite/SQLiteException
    //   200	274	634	android/database/sqlite/SQLiteException
    //   279	307	634	android/database/sqlite/SQLiteException
    //   314	331	634	android/database/sqlite/SQLiteException
    //   336	348	634	android/database/sqlite/SQLiteException
    //   353	389	634	android/database/sqlite/SQLiteException
    //   389	491	634	android/database/sqlite/SQLiteException
    //   506	512	634	android/database/sqlite/SQLiteException
    //   523	529	634	android/database/sqlite/SQLiteException
    //   537	544	634	android/database/sqlite/SQLiteException
    //   552	580	634	android/database/sqlite/SQLiteException
  }

  void b()
  {
    this.a.post(new d(this));
  }

  void b(Event paramEvent, q paramq)
  {
    this.a.post(new f(this, paramEvent, paramq));
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.tencent.qc.stat.StatStore
 * JD-Core Version:    0.6.0
 */