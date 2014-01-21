package com.amap.api.search.busline;

import com.amap.api.search.core.LatLonPoint;
import com.amap.api.search.core.g;
import com.amap.api.search.core.h;
import java.io.UnsupportedEncodingException;
import java.net.Proxy;
import java.net.URLEncoder;
import java.util.ArrayList;

public class a extends h<BusQuery, ArrayList<BusLineItem>>
{
  private int i = 1;
  private int j = 10;
  private int k = 0;

  public a(BusQuery paramBusQuery, Proxy paramProxy, String paramString1, String paramString2)
  {
    super(paramBusQuery, paramProxy, paramString1, paramString2);
  }

  private ArrayList<LatLonPoint> a(String paramString)
  {
    String[] arrayOfString = paramString.split(",|;");
    ArrayList localArrayList = new ArrayList();
    for (int m = 0; m < -1 + arrayOfString.length; m += 2)
      localArrayList.add(new LatLonPoint((int)Double.parseDouble(arrayOfString[(m + 1)]), (int)Double.parseDouble(arrayOfString[m])));
    return localArrayList;
  }

  private boolean b(String paramString)
  {
    return (paramString == null) || (paramString.equals(""));
  }

  public int a()
  {
    return this.j;
  }

  // ERROR //
  protected ArrayList<BusLineItem> a(java.io.InputStream paramInputStream)
    throws com.amap.api.search.core.AMapException
  {
    // Byte code:
    //   0: new 32	java/util/ArrayList
    //   3: dup
    //   4: invokespecial 35	java/util/ArrayList:<init>	()V
    //   7: astore_2
    //   8: new 26	java/lang/String
    //   11: dup
    //   12: aload_1
    //   13: invokestatic 70	com/amap/api/search/core/a:a	(Ljava/io/InputStream;)[B
    //   16: invokespecial 73	java/lang/String:<init>	([B)V
    //   19: astore_3
    //   20: aload_3
    //   21: invokestatic 78	com/amap/api/search/core/d:b	(Ljava/lang/String;)V
    //   24: aload_3
    //   25: invokestatic 78	com/amap/api/search/core/d:b	(Ljava/lang/String;)V
    //   28: new 80	org/json/JSONObject
    //   31: dup
    //   32: aload_3
    //   33: invokespecial 82	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   36: astore 5
    //   38: aload_0
    //   39: aload 5
    //   41: ldc 84
    //   43: invokevirtual 88	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   46: putfield 20	com/amap/api/search/busline/a:k	I
    //   49: aload 5
    //   51: ldc 90
    //   53: invokevirtual 94	org/json/JSONObject:getJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
    //   56: astore 7
    //   58: iconst_0
    //   59: istore 8
    //   61: iload 8
    //   63: aload 7
    //   65: invokevirtual 99	org/json/JSONArray:length	()I
    //   68: if_icmpge +572 -> 640
    //   71: aload 7
    //   73: iload 8
    //   75: invokevirtual 103	org/json/JSONArray:getJSONObject	(I)Lorg/json/JSONObject;
    //   78: astore 9
    //   80: new 105	com/amap/api/search/busline/BusLineItem
    //   83: dup
    //   84: invokespecial 106	com/amap/api/search/busline/BusLineItem:<init>	()V
    //   87: astore 10
    //   89: aload 10
    //   91: aload 9
    //   93: ldc 107
    //   95: invokevirtual 110	org/json/JSONObject:getDouble	(Ljava/lang/String;)D
    //   98: d2f
    //   99: invokevirtual 114	com/amap/api/search/busline/BusLineItem:setmLength	(F)V
    //   102: aload 10
    //   104: aload 9
    //   106: ldc 116
    //   108: invokevirtual 120	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   111: invokevirtual 123	com/amap/api/search/busline/BusLineItem:setmName	(Ljava/lang/String;)V
    //   114: aload 10
    //   116: aload 9
    //   118: ldc 125
    //   120: invokevirtual 120	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   123: invokevirtual 128	com/amap/api/search/busline/BusLineItem:setmDescription	(Ljava/lang/String;)V
    //   126: aload 10
    //   128: aload 9
    //   130: ldc 130
    //   132: invokevirtual 88	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   135: invokevirtual 134	com/amap/api/search/busline/BusLineItem:setmStatus	(I)V
    //   138: aload 9
    //   140: ldc 136
    //   142: invokevirtual 120	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   145: ldc 54
    //   147: invokevirtual 57	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   150: ifne +16 -> 166
    //   153: aload 10
    //   155: aload 9
    //   157: ldc 136
    //   159: invokevirtual 110	org/json/JSONObject:getDouble	(Ljava/lang/String;)D
    //   162: d2f
    //   163: invokevirtual 139	com/amap/api/search/busline/BusLineItem:setmSpeed	(F)V
    //   166: aload 10
    //   168: aload_0
    //   169: aload 9
    //   171: ldc 141
    //   173: invokevirtual 120	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   176: invokespecial 143	com/amap/api/search/busline/a:a	(Ljava/lang/String;)Ljava/util/ArrayList;
    //   179: invokevirtual 147	com/amap/api/search/busline/BusLineItem:setmXys	(Ljava/util/ArrayList;)V
    //   182: aload 10
    //   184: aload 9
    //   186: ldc 149
    //   188: invokevirtual 120	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   191: invokevirtual 152	com/amap/api/search/busline/BusLineItem:setmLineId	(Ljava/lang/String;)V
    //   194: aload 10
    //   196: aload 9
    //   198: ldc 154
    //   200: invokevirtual 120	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   203: invokevirtual 157	com/amap/api/search/busline/BusLineItem:setmKeyName	(Ljava/lang/String;)V
    //   206: aload 10
    //   208: aload 9
    //   210: ldc 159
    //   212: invokevirtual 120	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   215: invokevirtual 162	com/amap/api/search/busline/BusLineItem:setmFrontName	(Ljava/lang/String;)V
    //   218: aload 10
    //   220: aload 9
    //   222: ldc 164
    //   224: invokevirtual 120	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   227: invokevirtual 167	com/amap/api/search/busline/BusLineItem:setmTerminalName	(Ljava/lang/String;)V
    //   230: aload 10
    //   232: aload 9
    //   234: ldc 169
    //   236: invokevirtual 120	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   239: invokevirtual 172	com/amap/api/search/busline/BusLineItem:setmStartTime	(Ljava/lang/String;)V
    //   242: aload 10
    //   244: aload 9
    //   246: ldc 174
    //   248: invokevirtual 120	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   251: invokevirtual 177	com/amap/api/search/busline/BusLineItem:setmEndTime	(Ljava/lang/String;)V
    //   254: aload 10
    //   256: aload 9
    //   258: ldc 179
    //   260: invokevirtual 120	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   263: invokevirtual 182	com/amap/api/search/busline/BusLineItem:setmCompany	(Ljava/lang/String;)V
    //   266: aload 10
    //   268: aload 9
    //   270: ldc 184
    //   272: invokevirtual 110	org/json/JSONObject:getDouble	(Ljava/lang/String;)D
    //   275: d2f
    //   276: invokevirtual 187	com/amap/api/search/busline/BusLineItem:setmBasicPrice	(F)V
    //   279: aload 10
    //   281: aload 9
    //   283: ldc 189
    //   285: invokevirtual 110	org/json/JSONObject:getDouble	(Ljava/lang/String;)D
    //   288: d2f
    //   289: invokevirtual 192	com/amap/api/search/busline/BusLineItem:setmTotalPrice	(F)V
    //   292: aload 10
    //   294: aload 9
    //   296: ldc 194
    //   298: invokevirtual 120	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   301: ldc 196
    //   303: invokevirtual 57	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   306: invokevirtual 200	com/amap/api/search/busline/BusLineItem:setmCommunicationTicket	(Z)V
    //   309: aload 10
    //   311: aload 9
    //   313: ldc 202
    //   315: invokevirtual 120	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   318: ldc 196
    //   320: invokevirtual 57	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   323: invokevirtual 205	com/amap/api/search/busline/BusLineItem:setmAuto	(Z)V
    //   326: aload 10
    //   328: aload 9
    //   330: ldc 207
    //   332: invokevirtual 120	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   335: ldc 196
    //   337: invokevirtual 57	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   340: invokevirtual 210	com/amap/api/search/busline/BusLineItem:setmIcCard	(Z)V
    //   343: aload 10
    //   345: aload 9
    //   347: ldc 212
    //   349: invokevirtual 120	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   352: ldc 196
    //   354: invokevirtual 57	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   357: invokevirtual 215	com/amap/api/search/busline/BusLineItem:setmLoop	(Z)V
    //   360: aload 10
    //   362: aload 9
    //   364: ldc 217
    //   366: invokevirtual 120	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   369: ldc 196
    //   371: invokevirtual 57	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   374: invokevirtual 220	com/amap/api/search/busline/BusLineItem:setmDoubleDeck	(Z)V
    //   377: aload 10
    //   379: aload 9
    //   381: ldc 222
    //   383: invokevirtual 88	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   386: invokevirtual 225	com/amap/api/search/busline/BusLineItem:setmDataSource	(I)V
    //   389: aload 10
    //   391: aload 9
    //   393: ldc 227
    //   395: invokevirtual 120	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   398: ldc 196
    //   400: invokevirtual 57	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   403: invokevirtual 230	com/amap/api/search/busline/BusLineItem:setmAir	(Z)V
    //   406: aload 10
    //   408: aload 9
    //   410: ldc 232
    //   412: invokevirtual 120	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   415: invokevirtual 235	com/amap/api/search/busline/BusLineItem:setmFrontSpell	(Ljava/lang/String;)V
    //   418: aload 10
    //   420: aload 9
    //   422: ldc 237
    //   424: invokevirtual 120	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   427: invokevirtual 240	com/amap/api/search/busline/BusLineItem:setmTerminalSpell	(Ljava/lang/String;)V
    //   430: aload 10
    //   432: aload 9
    //   434: ldc 242
    //   436: invokevirtual 120	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   439: ldc 196
    //   441: invokevirtual 57	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   444: invokevirtual 245	com/amap/api/search/busline/BusLineItem:setmExpressWay	(Z)V
    //   447: aload 9
    //   449: ldc 247
    //   451: invokevirtual 94	org/json/JSONObject:getJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
    //   454: astore 11
    //   456: aload 11
    //   458: invokevirtual 99	org/json/JSONArray:length	()I
    //   461: istore 12
    //   463: new 32	java/util/ArrayList
    //   466: dup
    //   467: invokespecial 35	java/util/ArrayList:<init>	()V
    //   470: astore 13
    //   472: iconst_0
    //   473: istore 14
    //   475: iload 14
    //   477: iload 12
    //   479: if_icmpge +134 -> 613
    //   482: new 249	com/amap/api/search/busline/BusStationItem
    //   485: dup
    //   486: invokespecial 250	com/amap/api/search/busline/BusStationItem:<init>	()V
    //   489: astore 15
    //   491: aload 11
    //   493: iload 14
    //   495: invokevirtual 103	org/json/JSONArray:getJSONObject	(I)Lorg/json/JSONObject;
    //   498: astore 16
    //   500: aload 15
    //   502: aload 16
    //   504: ldc 252
    //   506: invokevirtual 120	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   509: invokevirtual 255	com/amap/api/search/busline/BusStationItem:setmCode	(Ljava/lang/String;)V
    //   512: aload 16
    //   514: ldc_w 257
    //   517: invokevirtual 120	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   520: ldc_w 259
    //   523: invokevirtual 30	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   526: astore 17
    //   528: aload 15
    //   530: new 37	com/amap/api/search/core/LatLonPoint
    //   533: dup
    //   534: aload 17
    //   536: iconst_1
    //   537: aaload
    //   538: invokestatic 43	java/lang/Double:parseDouble	(Ljava/lang/String;)D
    //   541: d2i
    //   542: i2d
    //   543: aload 17
    //   545: iconst_0
    //   546: aaload
    //   547: invokestatic 43	java/lang/Double:parseDouble	(Ljava/lang/String;)D
    //   550: d2i
    //   551: i2d
    //   552: invokespecial 46	com/amap/api/search/core/LatLonPoint:<init>	(DD)V
    //   555: invokevirtual 263	com/amap/api/search/busline/BusStationItem:setmCoord	(Lcom/amap/api/search/core/LatLonPoint;)V
    //   558: aload 15
    //   560: aload 16
    //   562: ldc 116
    //   564: invokevirtual 120	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   567: invokevirtual 264	com/amap/api/search/busline/BusStationItem:setmName	(Ljava/lang/String;)V
    //   570: aload 15
    //   572: aload 16
    //   574: ldc_w 266
    //   577: invokevirtual 88	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   580: invokevirtual 269	com/amap/api/search/busline/BusStationItem:setmStationNum	(I)V
    //   583: aload 13
    //   585: aload 15
    //   587: invokevirtual 50	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   590: pop
    //   591: iinc 14 1
    //   594: goto -119 -> 475
    //   597: astore 20
    //   599: aconst_null
    //   600: astore_3
    //   601: aload 20
    //   603: astore 4
    //   605: aload 4
    //   607: invokevirtual 272	java/lang/Exception:printStackTrace	()V
    //   610: goto -586 -> 24
    //   613: aload 10
    //   615: aload 13
    //   617: invokevirtual 275	com/amap/api/search/busline/BusLineItem:setmStations	(Ljava/util/ArrayList;)V
    //   620: aload_2
    //   621: aload 10
    //   623: invokevirtual 50	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   626: pop
    //   627: iinc 8 1
    //   630: goto -569 -> 61
    //   633: astore 6
    //   635: aload 6
    //   637: invokevirtual 276	org/json/JSONException:printStackTrace	()V
    //   640: aload_2
    //   641: areturn
    //   642: astore 4
    //   644: goto -39 -> 605
    //
    // Exception table:
    //   from	to	target	type
    //   8	20	597	java/lang/Exception
    //   28	58	633	org/json/JSONException
    //   61	166	633	org/json/JSONException
    //   166	472	633	org/json/JSONException
    //   482	591	633	org/json/JSONException
    //   613	627	633	org/json/JSONException
    //   20	24	642	java/lang/Exception
  }

  public void a(int paramInt)
  {
    this.i = paramInt;
  }

  public BusQuery b()
  {
    return (BusQuery)this.b;
  }

  public void b(int paramInt)
  {
    int m = 20;
    if (paramInt > m);
    while (true)
    {
      if (m <= 0)
        m = 10;
      this.j = m;
      return;
      m = paramInt;
    }
  }

  public int c()
  {
    return this.k;
  }

  protected byte[] d()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("encode=utf-8");
    localStringBuilder.append("&resType=json&city=");
    String str1 = ((BusQuery)this.b).getCity();
    if (b(str1))
      localStringBuilder.append("total");
    while (true)
    {
      label85: Object localObject;
      if (((BusQuery)this.b).getCategory() == BusQuery.SearchType.BY_LINE_NAME)
      {
        localStringBuilder.append("&sid=8004");
        localStringBuilder.append("&busName=");
        localObject = ((BusQuery)this.b).getQueryString();
      }
      try
      {
        String str2 = URLEncoder.encode((String)localObject, "utf-8");
        localObject = str2;
        localStringBuilder.append((String)localObject);
        localStringBuilder.append("&number=");
        localStringBuilder.append(this.j);
        localStringBuilder.append("&batch=");
        localStringBuilder.append(this.i);
        return localStringBuilder.toString().getBytes();
        try
        {
          localStringBuilder.append(URLEncoder.encode(str1, "utf-8"));
        }
        catch (UnsupportedEncodingException localUnsupportedEncodingException1)
        {
          localUnsupportedEncodingException1.printStackTrace();
        }
        continue;
        if (((BusQuery)this.b).getCategory() == BusQuery.SearchType.BY_ID)
        {
          localStringBuilder.append("&sid=8085");
          localStringBuilder.append("&ids=");
          break label85;
        }
        if (((BusQuery)this.b).getCategory() != BusQuery.SearchType.BY_STATION_NAME)
          break label85;
        localStringBuilder.append("&sid=8086");
        localStringBuilder.append("&stationName=");
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException2)
      {
        while (true)
          localUnsupportedEncodingException2.printStackTrace();
      }
    }
  }

  protected String e()
  {
    return g.a().b() + "/bus/simple";
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.search.busline.a
 * JD-Core Version:    0.6.0
 */