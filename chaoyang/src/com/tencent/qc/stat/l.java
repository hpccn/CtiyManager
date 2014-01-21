package com.tencent.qc.stat;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import com.tencent.qc.stat.common.StatCommonHelper;
import com.tencent.qc.stat.common.StatLogger;
import com.tencent.qc.stat.event.Event;
import java.util.Arrays;
import java.util.List;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;

class l
{
  static final byte[] c;
  private static StatLogger d = StatCommonHelper.b();
  private static long e = -1L;
  private static l f;
  private static Context g;
  DefaultHttpClient a = null;
  Handler b = null;

  static
  {
    c = "03a976511e2cbe3a7f26808fb7af3c05".getBytes();
    f = new l();
    g = null;
  }

  private l()
  {
    HandlerThread localHandlerThread = new HandlerThread("StatDispatcher");
    localHandlerThread.start();
    e = localHandlerThread.getId();
    this.b = new Handler(localHandlerThread.getLooper());
    BasicHttpParams localBasicHttpParams = new BasicHttpParams();
    HttpConnectionParams.setConnectionTimeout(localBasicHttpParams, 10000);
    HttpConnectionParams.setSoTimeout(localBasicHttpParams, 10000);
    this.a = new DefaultHttpClient(localBasicHttpParams);
    this.a.setKeepAliveStrategy(new n(this));
    if (StatConfig.i() != null)
      this.a.getParams().setParameter("http.route.default-proxy", StatConfig.i());
  }

  static Context a()
  {
    return g;
  }

  static void a(Context paramContext)
  {
    g = paramContext.getApplicationContext();
  }

  static l b()
  {
    return f;
  }

  void a(Event paramEvent, q paramq)
  {
    String[] arrayOfString = new String[1];
    arrayOfString[0] = paramEvent.d();
    b(Arrays.asList(arrayOfString), paramq);
  }

  // ERROR //
  void a(List paramList, q paramq)
  {
    // Byte code:
    //   0: new 149	java/lang/StringBuilder
    //   3: dup
    //   4: invokespecial 150	java/lang/StringBuilder:<init>	()V
    //   7: astore_3
    //   8: aload_3
    //   9: ldc 152
    //   11: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   14: pop
    //   15: iconst_0
    //   16: istore 5
    //   18: iload 5
    //   20: aload_1
    //   21: invokeinterface 162 1 0
    //   26: if_icmpge +45 -> 71
    //   29: aload_3
    //   30: aload_1
    //   31: iload 5
    //   33: invokeinterface 166 2 0
    //   38: checkcast 35	java/lang/String
    //   41: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   44: pop
    //   45: iload 5
    //   47: iconst_m1
    //   48: aload_1
    //   49: invokeinterface 162 1 0
    //   54: iadd
    //   55: if_icmpeq +10 -> 65
    //   58: aload_3
    //   59: ldc 168
    //   61: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   64: pop
    //   65: iinc 5 1
    //   68: goto -50 -> 18
    //   71: aload_3
    //   72: ldc 170
    //   74: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   77: pop
    //   78: getstatic 27	com/tencent/qc/stat/l:d	Lcom/tencent/qc/stat/common/StatLogger;
    //   81: new 149	java/lang/StringBuilder
    //   84: dup
    //   85: invokespecial 150	java/lang/StringBuilder:<init>	()V
    //   88: ldc 152
    //   90: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   93: invokestatic 173	com/tencent/qc/stat/StatConfig:j	()Ljava/lang/String;
    //   96: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   99: ldc 175
    //   101: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   104: aload_3
    //   105: invokevirtual 178	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   108: invokevirtual 181	java/lang/String:length	()I
    //   111: invokevirtual 184	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   114: ldc 186
    //   116: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   119: aload_3
    //   120: invokevirtual 178	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   123: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   126: invokevirtual 178	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   129: invokevirtual 191	com/tencent/qc/stat/common/StatLogger:b	(Ljava/lang/Object;)V
    //   132: new 193	org/apache/http/client/methods/HttpPost
    //   135: dup
    //   136: new 149	java/lang/StringBuilder
    //   139: dup
    //   140: invokespecial 150	java/lang/StringBuilder:<init>	()V
    //   143: ldc 195
    //   145: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   148: invokestatic 173	com/tencent/qc/stat/StatConfig:j	()Ljava/lang/String;
    //   151: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   154: ldc 197
    //   156: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   159: invokevirtual 178	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   162: invokespecial 198	org/apache/http/client/methods/HttpPost:<init>	(Ljava/lang/String;)V
    //   165: astore 7
    //   167: aload 7
    //   169: ldc 200
    //   171: ldc 202
    //   173: invokevirtual 206	org/apache/http/client/methods/HttpPost:addHeader	(Ljava/lang/String;Ljava/lang/String;)V
    //   176: aload 7
    //   178: ldc 208
    //   180: ldc 210
    //   182: invokevirtual 213	org/apache/http/client/methods/HttpPost:setHeader	(Ljava/lang/String;Ljava/lang/String;)V
    //   185: aload 7
    //   187: ldc 215
    //   189: invokevirtual 218	org/apache/http/client/methods/HttpPost:removeHeaders	(Ljava/lang/String;)V
    //   192: getstatic 48	com/tencent/qc/stat/l:g	Landroid/content/Context;
    //   195: invokestatic 221	com/tencent/qc/stat/common/StatCommonHelper:a	(Landroid/content/Context;)Lorg/apache/http/HttpHost;
    //   198: astore 10
    //   200: iconst_0
    //   201: istore 11
    //   203: aload 10
    //   205: ifnull +54 -> 259
    //   208: aload_0
    //   209: getfield 51	com/tencent/qc/stat/l:a	Lorg/apache/http/impl/client/DefaultHttpClient;
    //   212: invokevirtual 112	org/apache/http/impl/client/DefaultHttpClient:getParams	()Lorg/apache/http/params/HttpParams;
    //   215: ldc 114
    //   217: getstatic 48	com/tencent/qc/stat/l:g	Landroid/content/Context;
    //   220: invokestatic 221	com/tencent/qc/stat/common/StatCommonHelper:a	(Landroid/content/Context;)Lorg/apache/http/HttpHost;
    //   223: invokeinterface 120 3 0
    //   228: pop
    //   229: aload 7
    //   231: ldc 223
    //   233: ldc 225
    //   235: invokevirtual 206	org/apache/http/client/methods/HttpPost:addHeader	(Ljava/lang/String;Ljava/lang/String;)V
    //   238: aload 7
    //   240: ldc 227
    //   242: ldc 229
    //   244: invokevirtual 206	org/apache/http/client/methods/HttpPost:addHeader	(Ljava/lang/String;Ljava/lang/String;)V
    //   247: aload 7
    //   249: ldc 231
    //   251: ldc 233
    //   253: invokevirtual 206	org/apache/http/client/methods/HttpPost:addHeader	(Ljava/lang/String;Ljava/lang/String;)V
    //   256: iconst_1
    //   257: istore 11
    //   259: new 235	java/io/ByteArrayOutputStream
    //   262: dup
    //   263: invokespecial 236	java/io/ByteArrayOutputStream:<init>	()V
    //   266: astore 13
    //   268: aload_3
    //   269: invokevirtual 178	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   272: ldc 238
    //   274: invokevirtual 241	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   277: astore 14
    //   279: aload 14
    //   281: arraylength
    //   282: istore 15
    //   284: aload_3
    //   285: invokevirtual 242	java/lang/StringBuilder:length	()I
    //   288: sipush 256
    //   291: if_icmpge +343 -> 634
    //   294: aload 10
    //   296: ifnonnull +299 -> 595
    //   299: aload 7
    //   301: ldc 244
    //   303: ldc 246
    //   305: invokevirtual 206	org/apache/http/client/methods/HttpPost:addHeader	(Ljava/lang/String;Ljava/lang/String;)V
    //   308: aload 7
    //   310: new 248	org/apache/http/entity/ByteArrayEntity
    //   313: dup
    //   314: aload 14
    //   316: getstatic 41	com/tencent/qc/stat/l:c	[B
    //   319: invokestatic 253	com/tencent/qc/stat/j:a	([B[B)[B
    //   322: invokespecial 256	org/apache/http/entity/ByteArrayEntity:<init>	([B)V
    //   325: invokevirtual 260	org/apache/http/client/methods/HttpPost:setEntity	(Lorg/apache/http/HttpEntity;)V
    //   328: aload_0
    //   329: getfield 51	com/tencent/qc/stat/l:a	Lorg/apache/http/impl/client/DefaultHttpClient;
    //   332: aload 7
    //   334: invokevirtual 264	org/apache/http/impl/client/DefaultHttpClient:execute	(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    //   337: astore 16
    //   339: iload 11
    //   341: ifeq +18 -> 359
    //   344: aload_0
    //   345: getfield 51	com/tencent/qc/stat/l:a	Lorg/apache/http/impl/client/DefaultHttpClient;
    //   348: invokevirtual 112	org/apache/http/impl/client/DefaultHttpClient:getParams	()Lorg/apache/http/params/HttpParams;
    //   351: ldc 114
    //   353: invokeinterface 268 2 0
    //   358: pop
    //   359: aload 16
    //   361: invokeinterface 274 1 0
    //   366: astore 18
    //   368: aload 16
    //   370: invokeinterface 278 1 0
    //   375: invokeinterface 283 1 0
    //   380: sipush 200
    //   383: if_icmpne +161 -> 544
    //   386: aload 18
    //   388: invokeinterface 288 1 0
    //   393: lconst_0
    //   394: lcmp
    //   395: ifle +468 -> 863
    //   398: aload 18
    //   400: invokeinterface 292 1 0
    //   405: astore 20
    //   407: new 294	java/io/DataInputStream
    //   410: dup
    //   411: aload 20
    //   413: invokespecial 297	java/io/DataInputStream:<init>	(Ljava/io/InputStream;)V
    //   416: astore 21
    //   418: aload 18
    //   420: invokeinterface 288 1 0
    //   425: l2i
    //   426: newarray byte
    //   428: astore 22
    //   430: aload 21
    //   432: aload 22
    //   434: invokevirtual 300	java/io/DataInputStream:readFully	([B)V
    //   437: aload 16
    //   439: ldc 244
    //   441: invokeinterface 304 2 0
    //   446: astore 23
    //   448: aload 23
    //   450: ifnull +89 -> 539
    //   453: aload 23
    //   455: invokeinterface 309 1 0
    //   460: ldc_w 311
    //   463: invokevirtual 314	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   466: ifeq +296 -> 762
    //   469: aload 22
    //   471: invokestatic 317	com/tencent/qc/stat/common/StatCommonHelper:a	([B)[B
    //   474: getstatic 41	com/tencent/qc/stat/l:c	[B
    //   477: invokestatic 319	com/tencent/qc/stat/j:b	([B[B)[B
    //   480: astore 26
    //   482: aload 26
    //   484: astore 22
    //   486: getstatic 27	com/tencent/qc/stat/l:d	Lcom/tencent/qc/stat/common/StatLogger;
    //   489: new 35	java/lang/String
    //   492: dup
    //   493: aload 22
    //   495: ldc 238
    //   497: invokespecial 322	java/lang/String:<init>	([BLjava/lang/String;)V
    //   500: invokevirtual 325	com/tencent/qc/stat/common/StatLogger:h	(Ljava/lang/Object;)V
    //   503: new 327	org/json/JSONObject
    //   506: dup
    //   507: new 35	java/lang/String
    //   510: dup
    //   511: aload 22
    //   513: ldc 238
    //   515: invokespecial 322	java/lang/String:<init>	([BLjava/lang/String;)V
    //   518: invokespecial 328	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   521: ldc_w 330
    //   524: invokevirtual 334	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   527: astore 25
    //   529: aload 25
    //   531: ifnull +8 -> 539
    //   534: aload 25
    //   536: invokestatic 337	com/tencent/qc/stat/StatConfig:a	(Lorg/json/JSONObject;)V
    //   539: aload 20
    //   541: invokevirtual 342	java/io/InputStream:close	()V
    //   544: getstatic 27	com/tencent/qc/stat/l:d	Lcom/tencent/qc/stat/common/StatLogger;
    //   547: new 149	java/lang/StringBuilder
    //   550: dup
    //   551: invokespecial 150	java/lang/StringBuilder:<init>	()V
    //   554: ldc_w 344
    //   557: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   560: aload 16
    //   562: invokeinterface 278 1 0
    //   567: invokeinterface 283 1 0
    //   572: invokestatic 349	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   575: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   578: invokevirtual 178	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   581: invokevirtual 191	com/tencent/qc/stat/common/StatLogger:b	(Ljava/lang/Object;)V
    //   584: aload_2
    //   585: ifnull +287 -> 872
    //   588: aload_2
    //   589: invokeinterface 353 1 0
    //   594: return
    //   595: aload 7
    //   597: ldc_w 355
    //   600: ldc 246
    //   602: invokevirtual 206	org/apache/http/client/methods/HttpPost:addHeader	(Ljava/lang/String;Ljava/lang/String;)V
    //   605: goto -297 -> 308
    //   608: astore 9
    //   610: getstatic 27	com/tencent/qc/stat/l:d	Lcom/tencent/qc/stat/common/StatLogger;
    //   613: aload 9
    //   615: invokevirtual 358	com/tencent/qc/stat/common/StatLogger:b	(Ljava/lang/Exception;)V
    //   618: aload_2
    //   619: ifnull +253 -> 872
    //   622: aload_2
    //   623: invokeinterface 360 1 0
    //   628: return
    //   629: astore 8
    //   631: aload 8
    //   633: athrow
    //   634: aload 10
    //   636: ifnonnull +112 -> 748
    //   639: aload 7
    //   641: ldc 244
    //   643: ldc_w 362
    //   646: invokevirtual 206	org/apache/http/client/methods/HttpPost:addHeader	(Ljava/lang/String;Ljava/lang/String;)V
    //   649: aload 13
    //   651: iconst_4
    //   652: newarray byte
    //   654: invokevirtual 365	java/io/ByteArrayOutputStream:write	([B)V
    //   657: new 367	java/util/zip/GZIPOutputStream
    //   660: dup
    //   661: aload 13
    //   663: invokespecial 370	java/util/zip/GZIPOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   666: astore 27
    //   668: aload 27
    //   670: aload 14
    //   672: invokevirtual 371	java/util/zip/GZIPOutputStream:write	([B)V
    //   675: aload 27
    //   677: invokevirtual 372	java/util/zip/GZIPOutputStream:close	()V
    //   680: aload 13
    //   682: invokevirtual 375	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   685: astore 14
    //   687: aload 14
    //   689: iconst_0
    //   690: iconst_4
    //   691: invokestatic 381	java/nio/ByteBuffer:wrap	([BII)Ljava/nio/ByteBuffer;
    //   694: iload 15
    //   696: invokevirtual 385	java/nio/ByteBuffer:putInt	(I)Ljava/nio/ByteBuffer;
    //   699: pop
    //   700: getstatic 27	com/tencent/qc/stat/l:d	Lcom/tencent/qc/stat/common/StatLogger;
    //   703: new 149	java/lang/StringBuilder
    //   706: dup
    //   707: invokespecial 150	java/lang/StringBuilder:<init>	()V
    //   710: ldc_w 387
    //   713: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   716: iload 15
    //   718: invokevirtual 184	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   721: ldc_w 389
    //   724: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   727: aload 14
    //   729: arraylength
    //   730: invokevirtual 184	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   733: ldc_w 391
    //   736: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   739: invokevirtual 178	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   742: invokevirtual 325	com/tencent/qc/stat/common/StatLogger:h	(Ljava/lang/Object;)V
    //   745: goto -437 -> 308
    //   748: aload 7
    //   750: ldc_w 355
    //   753: ldc_w 362
    //   756: invokevirtual 206	org/apache/http/client/methods/HttpPost:addHeader	(Ljava/lang/String;Ljava/lang/String;)V
    //   759: goto -110 -> 649
    //   762: aload 23
    //   764: invokeinterface 309 1 0
    //   769: ldc_w 362
    //   772: invokevirtual 314	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   775: ifeq +19 -> 794
    //   778: aload 22
    //   780: getstatic 41	com/tencent/qc/stat/l:c	[B
    //   783: invokestatic 319	com/tencent/qc/stat/j:b	([B[B)[B
    //   786: invokestatic 317	com/tencent/qc/stat/common/StatCommonHelper:a	([B)[B
    //   789: astore 22
    //   791: goto -305 -> 486
    //   794: aload 23
    //   796: invokeinterface 309 1 0
    //   801: ldc 202
    //   803: invokevirtual 314	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   806: ifeq +13 -> 819
    //   809: aload 22
    //   811: invokestatic 317	com/tencent/qc/stat/common/StatCommonHelper:a	([B)[B
    //   814: astore 22
    //   816: goto -330 -> 486
    //   819: aload 23
    //   821: invokeinterface 309 1 0
    //   826: ldc 246
    //   828: invokevirtual 314	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   831: ifeq -345 -> 486
    //   834: aload 22
    //   836: getstatic 41	com/tencent/qc/stat/l:c	[B
    //   839: invokestatic 319	com/tencent/qc/stat/j:b	([B[B)[B
    //   842: astore 22
    //   844: goto -358 -> 486
    //   847: astore 24
    //   849: getstatic 27	com/tencent/qc/stat/l:d	Lcom/tencent/qc/stat/common/StatLogger;
    //   852: aload 24
    //   854: invokevirtual 392	org/json/JSONException:toString	()Ljava/lang/String;
    //   857: invokevirtual 191	com/tencent/qc/stat/common/StatLogger:b	(Ljava/lang/Object;)V
    //   860: goto -321 -> 539
    //   863: aload 18
    //   865: invokestatic 397	org/apache/http/util/EntityUtils:toString	(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    //   868: pop
    //   869: goto -325 -> 544
    //   872: return
    //
    // Exception table:
    //   from	to	target	type
    //   167	200	608	java/lang/Exception
    //   208	256	608	java/lang/Exception
    //   259	294	608	java/lang/Exception
    //   299	308	608	java/lang/Exception
    //   308	339	608	java/lang/Exception
    //   344	359	608	java/lang/Exception
    //   359	448	608	java/lang/Exception
    //   453	482	608	java/lang/Exception
    //   486	529	608	java/lang/Exception
    //   534	539	608	java/lang/Exception
    //   539	544	608	java/lang/Exception
    //   544	584	608	java/lang/Exception
    //   588	594	608	java/lang/Exception
    //   595	605	608	java/lang/Exception
    //   639	649	608	java/lang/Exception
    //   649	745	608	java/lang/Exception
    //   748	759	608	java/lang/Exception
    //   762	791	608	java/lang/Exception
    //   794	816	608	java/lang/Exception
    //   819	844	608	java/lang/Exception
    //   849	860	608	java/lang/Exception
    //   863	869	608	java/lang/Exception
    //   167	200	629	finally
    //   208	256	629	finally
    //   259	294	629	finally
    //   299	308	629	finally
    //   308	339	629	finally
    //   344	359	629	finally
    //   359	448	629	finally
    //   453	482	629	finally
    //   486	529	629	finally
    //   534	539	629	finally
    //   539	544	629	finally
    //   544	584	629	finally
    //   588	594	629	finally
    //   595	605	629	finally
    //   610	618	629	finally
    //   622	628	629	finally
    //   639	649	629	finally
    //   649	745	629	finally
    //   748	759	629	finally
    //   762	791	629	finally
    //   794	816	629	finally
    //   819	844	629	finally
    //   849	860	629	finally
    //   863	869	629	finally
    //   486	529	847	org/json/JSONException
    //   534	539	847	org/json/JSONException
  }

  void b(List paramList, q paramq)
  {
    if (paramList.isEmpty())
      return;
    this.b.post(new o(this, paramList, paramq));
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.tencent.qc.stat.l
 * JD-Core Version:    0.6.0
 */