package com.amap.api.search.route;

import com.amap.api.search.core.LatLonPoint;
import com.amap.api.search.core.g;
import java.net.Proxy;
import java.util.LinkedList;
import java.util.List;

class a extends d
{
  List<LatLonPoint> i;

  public a(e parame, Proxy paramProxy, String paramString1, String paramString2)
  {
    super(parame, paramProxy, paramString1, paramString2);
  }

  private WalkSegment a(LatLonPoint paramLatLonPoint1, LatLonPoint paramLatLonPoint2)
  {
    WalkSegment localWalkSegment = new WalkSegment();
    LatLonPoint[] arrayOfLatLonPoint = new LatLonPoint[2];
    localWalkSegment.setShapes(arrayOfLatLonPoint);
    arrayOfLatLonPoint[0] = paramLatLonPoint1;
    arrayOfLatLonPoint[1] = paramLatLonPoint2;
    double d1 = paramLatLonPoint2.getLatitude() - paramLatLonPoint1.getLatitude();
    double d2 = paramLatLonPoint2.getLongitude() - paramLatLonPoint1.getLongitude();
    localWalkSegment.setLength(com.amap.api.search.core.d.a(Math.sqrt(d2 * d2 + d1 * d1)));
    if (localWalkSegment.getLength() == 0)
      localWalkSegment.setLength(10);
    return localWalkSegment;
  }

  private List<Segment> a(LinkedList<Segment> paramLinkedList)
  {
    int j = paramLinkedList.size();
    Segment[] arrayOfSegment = new Segment[j - 1];
    for (int k = 0; k <= j - 2; k++)
    {
      Segment localSegment1 = (Segment)paramLinkedList.get(k);
      Segment localSegment2 = (Segment)paramLinkedList.get(k + 1);
      arrayOfSegment[k] = a(localSegment1.getLastPoint(), localSegment2.getFirstPoint());
    }
    for (int m = 0; m <= j - 2; m++)
      paramLinkedList.add(1 + m * 2, arrayOfSegment[m]);
    paramLinkedList.addFirst(a(this.l, ((Segment)paramLinkedList.getFirst()).getFirstPoint()));
    paramLinkedList.addLast(a(((Segment)paramLinkedList.getLast()).getLastPoint(), this.m));
    return paramLinkedList;
  }

  private void a(BusSegment paramBusSegment, String paramString)
  {
    paramBusSegment.setLineName(paramString);
    paramBusSegment.setFirstStationName("");
    paramBusSegment.setLastStationName("");
    int j = paramString.indexOf("(");
    int k = paramString.lastIndexOf(")");
    if ((j <= 0) || (k <= 0) || (k <= j))
      return;
    paramBusSegment.setLineName(paramString.substring(0, j));
    int m = j + 1;
    try
    {
      String[] arrayOfString = paramString.substring(m, k).split("--");
      paramBusSegment.setFirstStationName(arrayOfString[0]);
      paramBusSegment.setLastStationName(arrayOfString[1]);
      return;
    }
    catch (Exception localException)
    {
    }
  }

  private void a(LatLonPoint[] paramArrayOfLatLonPoint, String[] paramArrayOfString)
  {
    int j = 0;
    for (int k = 1; j < -1 + paramArrayOfString.length; k++)
    {
      int m = (int)(1000000.0D * Double.parseDouble(paramArrayOfString[j]));
      paramArrayOfLatLonPoint[k] = new LatLonPoint((int)(1000000.0D * Double.parseDouble(paramArrayOfString[(j + 1)])), m);
      j += 2;
    }
  }

  private void a(String[] paramArrayOfString1, String[] paramArrayOfString2)
  {
    for (int j = 0; j < paramArrayOfString2.length; j++)
      paramArrayOfString1[(j + 1)] = paramArrayOfString2[j];
  }

  // ERROR //
  protected java.util.ArrayList<Route> a(java.io.InputStream paramInputStream)
    throws com.amap.api.search.core.AMapException
  {
    // Byte code:
    //   0: new 156	java/util/ArrayList
    //   3: dup
    //   4: invokespecial 157	java/util/ArrayList:<init>	()V
    //   7: astore_2
    //   8: new 117	java/lang/String
    //   11: dup
    //   12: aload_1
    //   13: invokestatic 162	com/amap/api/search/core/a:a	(Ljava/io/InputStream;)[B
    //   16: invokespecial 165	java/lang/String:<init>	([B)V
    //   19: astore_3
    //   20: aload_3
    //   21: invokestatic 168	com/amap/api/search/core/d:b	(Ljava/lang/String;)V
    //   24: new 170	org/json/JSONObject
    //   27: dup
    //   28: aload_3
    //   29: invokespecial 172	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   32: astore 4
    //   34: aload 4
    //   36: ldc 174
    //   38: invokevirtual 178	org/json/JSONObject:has	(Ljava/lang/String;)Z
    //   41: ifeq +346 -> 387
    //   44: aload 4
    //   46: ldc 174
    //   48: invokevirtual 181	org/json/JSONObject:isNull	(Ljava/lang/String;)Z
    //   51: ifne +336 -> 387
    //   54: aload 4
    //   56: ldc 174
    //   58: invokevirtual 185	org/json/JSONObject:getJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
    //   61: astore 6
    //   63: iconst_0
    //   64: istore 7
    //   66: iload 7
    //   68: aload 6
    //   70: invokevirtual 190	org/json/JSONArray:length	()I
    //   73: if_icmpge +314 -> 387
    //   76: aload 6
    //   78: iload 7
    //   80: invokevirtual 194	org/json/JSONArray:getJSONObject	(I)Lorg/json/JSONObject;
    //   83: ldc 196
    //   85: invokevirtual 185	org/json/JSONObject:getJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
    //   88: astore 8
    //   90: new 198	com/amap/api/search/route/Route
    //   93: dup
    //   94: aload_0
    //   95: getfield 201	com/amap/api/search/route/a:b	Ljava/lang/Object;
    //   98: checkcast 203	com/amap/api/search/route/e
    //   101: getfield 206	com/amap/api/search/route/e:b	I
    //   104: invokespecial 208	com/amap/api/search/route/Route:<init>	(I)V
    //   107: astore 9
    //   109: new 53	java/util/LinkedList
    //   112: dup
    //   113: invokespecial 209	java/util/LinkedList:<init>	()V
    //   116: astore 10
    //   118: iconst_0
    //   119: istore 11
    //   121: iload 11
    //   123: aload 8
    //   125: invokevirtual 190	org/json/JSONArray:length	()I
    //   128: if_icmpge +271 -> 399
    //   131: aload 8
    //   133: iload 11
    //   135: invokevirtual 194	org/json/JSONArray:getJSONObject	(I)Lorg/json/JSONObject;
    //   138: astore 14
    //   140: new 101	com/amap/api/search/route/BusSegment
    //   143: dup
    //   144: invokespecial 210	com/amap/api/search/route/BusSegment:<init>	()V
    //   147: astore 15
    //   149: aload 14
    //   151: ldc 212
    //   153: invokevirtual 216	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   156: astore 16
    //   158: aload 14
    //   160: ldc 218
    //   162: invokevirtual 216	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   165: astore 17
    //   167: aload_0
    //   168: aload 15
    //   170: aload 14
    //   172: ldc 220
    //   174: invokevirtual 216	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   177: invokespecial 222	com/amap/api/search/route/a:a	(Lcom/amap/api/search/route/BusSegment;Ljava/lang/String;)V
    //   180: aload 15
    //   182: aload 14
    //   184: ldc 224
    //   186: invokevirtual 227	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   189: invokevirtual 228	com/amap/api/search/route/BusSegment:setLength	(I)V
    //   192: aload 14
    //   194: ldc 230
    //   196: invokevirtual 227	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   199: istore 18
    //   201: iload 18
    //   203: iconst_2
    //   204: iadd
    //   205: anewarray 117	java/lang/String
    //   208: astore 19
    //   210: iload 18
    //   212: iconst_2
    //   213: iadd
    //   214: anewarray 20	com/amap/api/search/core/LatLonPoint
    //   217: astore 20
    //   219: aload 14
    //   221: ldc 232
    //   223: invokevirtual 216	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   226: ldc 234
    //   228: invokevirtual 136	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   231: astore 21
    //   233: aload 14
    //   235: ldc 236
    //   237: invokevirtual 216	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   240: ldc 238
    //   242: invokevirtual 136	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   245: astore 22
    //   247: aload 14
    //   249: ldc 240
    //   251: invokevirtual 216	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   254: ldc 238
    //   256: invokevirtual 136	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   259: astore 23
    //   261: aload_0
    //   262: aload 19
    //   264: aload 21
    //   266: invokespecial 242	com/amap/api/search/route/a:a	([Ljava/lang/String;[Ljava/lang/String;)V
    //   269: aload_0
    //   270: aload 20
    //   272: aload 22
    //   274: invokespecial 244	com/amap/api/search/route/a:a	([Lcom/amap/api/search/core/LatLonPoint;[Ljava/lang/String;)V
    //   277: aload 15
    //   279: aload_0
    //   280: aload 23
    //   282: invokevirtual 247	com/amap/api/search/route/a:a	([Ljava/lang/String;)[Lcom/amap/api/search/core/LatLonPoint;
    //   285: invokevirtual 248	com/amap/api/search/route/BusSegment:setShapes	([Lcom/amap/api/search/core/LatLonPoint;)V
    //   288: aload 20
    //   290: iconst_0
    //   291: aload 15
    //   293: invokevirtual 249	com/amap/api/search/route/BusSegment:getFirstPoint	()Lcom/amap/api/search/core/LatLonPoint;
    //   296: invokevirtual 252	com/amap/api/search/core/LatLonPoint:Copy	()Lcom/amap/api/search/core/LatLonPoint;
    //   299: aastore
    //   300: aload 20
    //   302: iload 18
    //   304: iconst_1
    //   305: iadd
    //   306: aload 15
    //   308: invokevirtual 253	com/amap/api/search/route/BusSegment:getLastPoint	()Lcom/amap/api/search/core/LatLonPoint;
    //   311: invokevirtual 252	com/amap/api/search/core/LatLonPoint:Copy	()Lcom/amap/api/search/core/LatLonPoint;
    //   314: aastore
    //   315: aload 19
    //   317: iconst_0
    //   318: aload 16
    //   320: aastore
    //   321: aload 19
    //   323: iload 18
    //   325: iconst_1
    //   326: iadd
    //   327: aload 17
    //   329: aastore
    //   330: aload 15
    //   332: aload 20
    //   334: invokevirtual 256	com/amap/api/search/route/BusSegment:setPassStopPos	([Lcom/amap/api/search/core/LatLonPoint;)V
    //   337: aload 15
    //   339: aload 19
    //   341: invokevirtual 260	com/amap/api/search/route/BusSegment:setPassStopName	([Ljava/lang/String;)V
    //   344: aload 10
    //   346: aload 15
    //   348: invokevirtual 263	java/util/LinkedList:add	(Ljava/lang/Object;)Z
    //   351: pop
    //   352: iinc 11 1
    //   355: goto -234 -> 121
    //   358: astore 27
    //   360: aload 27
    //   362: invokevirtual 266	java/lang/Exception:printStackTrace	()V
    //   365: aconst_null
    //   366: astore_3
    //   367: goto -347 -> 20
    //   370: astore 24
    //   372: aload 24
    //   374: invokevirtual 266	java/lang/Exception:printStackTrace	()V
    //   377: goto -100 -> 277
    //   380: astore 5
    //   382: aload 5
    //   384: invokevirtual 267	org/json/JSONException:printStackTrace	()V
    //   387: aload_2
    //   388: areturn
    //   389: astore 25
    //   391: aload 25
    //   393: invokevirtual 266	java/lang/Exception:printStackTrace	()V
    //   396: goto -108 -> 288
    //   399: aload 9
    //   401: aload 10
    //   403: invokevirtual 270	com/amap/api/search/route/Route:a	(Ljava/util/List;)V
    //   406: aload_0
    //   407: aload 9
    //   409: invokevirtual 273	com/amap/api/search/route/a:a	(Lcom/amap/api/search/route/Route;)V
    //   412: aload 9
    //   414: invokevirtual 276	com/amap/api/search/route/Route:a	()Ljava/util/List;
    //   417: invokeinterface 282 1 0
    //   422: astore 12
    //   424: aload 12
    //   426: invokeinterface 288 1 0
    //   431: ifeq +21 -> 452
    //   434: aload 12
    //   436: invokeinterface 291 1 0
    //   441: checkcast 58	com/amap/api/search/route/Segment
    //   444: aload 9
    //   446: invokevirtual 294	com/amap/api/search/route/Segment:setRoute	(Lcom/amap/api/search/route/Route;)V
    //   449: goto -25 -> 424
    //   452: aload 9
    //   454: ifnull +28 -> 482
    //   457: aload 9
    //   459: aload_0
    //   460: getfield 298	com/amap/api/search/route/a:j	Ljava/lang/String;
    //   463: invokevirtual 301	com/amap/api/search/route/Route:setStartPlace	(Ljava/lang/String;)V
    //   466: aload 9
    //   468: aload_0
    //   469: getfield 304	com/amap/api/search/route/a:k	Ljava/lang/String;
    //   472: invokevirtual 307	com/amap/api/search/route/Route:setTargetPlace	(Ljava/lang/String;)V
    //   475: aload_2
    //   476: aload 9
    //   478: invokevirtual 308	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   481: pop
    //   482: iinc 7 1
    //   485: goto -419 -> 66
    //
    // Exception table:
    //   from	to	target	type
    //   8	20	358	java/lang/Exception
    //   269	277	370	java/lang/Exception
    //   24	63	380	org/json/JSONException
    //   66	118	380	org/json/JSONException
    //   121	269	380	org/json/JSONException
    //   269	277	380	org/json/JSONException
    //   277	288	380	org/json/JSONException
    //   288	352	380	org/json/JSONException
    //   372	377	380	org/json/JSONException
    //   391	396	380	org/json/JSONException
    //   399	424	380	org/json/JSONException
    //   424	449	380	org/json/JSONException
    //   457	482	380	org/json/JSONException
    //   277	288	389	java/lang/Exception
  }

  protected void a(Route paramRoute)
  {
    paramRoute.a(a((LinkedList)paramRoute.a()));
  }

  public void a(List<LatLonPoint> paramList)
  {
    this.i = paramList;
  }

  protected byte[] d()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("sid=8001");
    localStringBuilder.append("&encode=utf-8");
    localStringBuilder.append("&xys=" + ((e)this.b).a() + "," + ((e)this.b).c() + ";");
    if ((this.i != null) && (this.i.size() > 0))
    {
      int j = this.i.size();
      String str = "";
      for (int k = 0; k < j; k++)
      {
        LatLonPoint localLatLonPoint = (LatLonPoint)this.i.get(k);
        str = str + localLatLonPoint.getLongitude() + "," + localLatLonPoint.getLatitude() + ";";
      }
      localStringBuilder.append(str);
    }
    localStringBuilder.append(((e)this.b).b() + "," + ((e)this.b).d());
    localStringBuilder.append("&resType=json");
    localStringBuilder.append("&RouteType=" + ((e)this.b).b);
    localStringBuilder.append("&per=");
    localStringBuilder.append(50);
    return localStringBuilder.toString().getBytes();
  }

  protected String e()
  {
    return g.a().b() + "/bus/simple";
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.search.route.a
 * JD-Core Version:    0.6.0
 */