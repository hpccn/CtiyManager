package com.amap.api.search.poisearch;

import com.amap.api.search.core.LatLonPoint;
import com.amap.api.search.core.g;
import com.amap.api.search.core.h;
import java.io.UnsupportedEncodingException;
import java.net.Proxy;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;

public class b extends h<c, ArrayList<PoiItem>>
{
  private int i = 1;
  private int j = 20;
  private int k = 0;
  private ArrayList<String> l = new ArrayList();

  public b(c paramc, Proxy paramProxy, String paramString1, String paramString2)
  {
    super(paramc, paramProxy, paramString1, paramString2);
  }

  private boolean a(String paramString)
  {
    return (paramString == null) || (paramString.equals(""));
  }

  public int a()
  {
    return this.j;
  }

  // ERROR //
  public ArrayList<PoiItem> a(java.io.InputStream paramInputStream)
    throws com.amap.api.search.core.AMapException
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_2
    //   2: new 25	java/util/ArrayList
    //   5: dup
    //   6: invokespecial 28	java/util/ArrayList:<init>	()V
    //   9: astore_3
    //   10: new 36	java/lang/String
    //   13: dup
    //   14: aload_1
    //   15: invokestatic 53	com/amap/api/search/core/a:a	(Ljava/io/InputStream;)[B
    //   18: invokespecial 56	java/lang/String:<init>	([B)V
    //   21: astore 4
    //   23: aload 4
    //   25: invokestatic 62	com/amap/api/search/core/d:b	(Ljava/lang/String;)V
    //   28: new 64	org/json/JSONObject
    //   31: dup
    //   32: aload 4
    //   34: invokespecial 66	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   37: astore 5
    //   39: aload 5
    //   41: ldc 68
    //   43: invokevirtual 71	org/json/JSONObject:has	(Ljava/lang/String;)Z
    //   46: ifeq +312 -> 358
    //   49: aload 5
    //   51: ldc 68
    //   53: invokevirtual 75	org/json/JSONObject:getJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
    //   56: astore 8
    //   58: aload_0
    //   59: aload 5
    //   61: ldc 77
    //   63: invokevirtual 81	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   66: putfield 23	com/amap/api/search/poisearch/b:k	I
    //   69: iload_2
    //   70: aload 8
    //   72: invokevirtual 86	org/json/JSONArray:length	()I
    //   75: if_icmpge +302 -> 377
    //   78: aload 8
    //   80: iload_2
    //   81: invokevirtual 90	org/json/JSONArray:getJSONObject	(I)Lorg/json/JSONObject;
    //   84: astore 9
    //   86: aload 9
    //   88: ldc 92
    //   90: invokevirtual 96	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   93: astore 10
    //   95: aload 9
    //   97: ldc 98
    //   99: invokevirtual 102	org/json/JSONObject:getDouble	(Ljava/lang/String;)D
    //   102: dstore 11
    //   104: aload 9
    //   106: ldc 104
    //   108: invokevirtual 102	org/json/JSONObject:getDouble	(Ljava/lang/String;)D
    //   111: dstore 13
    //   113: aload 9
    //   115: ldc 106
    //   117: invokevirtual 96	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   120: astore 15
    //   122: aload 9
    //   124: ldc 108
    //   126: invokevirtual 96	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   129: astore 16
    //   131: new 110	com/amap/api/search/poisearch/PoiItem
    //   134: dup
    //   135: aload 10
    //   137: new 112	com/amap/api/search/core/LatLonPoint
    //   140: dup
    //   141: dload 13
    //   143: dload 11
    //   145: invokespecial 115	com/amap/api/search/core/LatLonPoint:<init>	(DD)V
    //   148: aload 15
    //   150: aload 16
    //   152: invokespecial 118	com/amap/api/search/poisearch/PoiItem:<init>	(Ljava/lang/String;Lcom/amap/api/search/core/LatLonPoint;Ljava/lang/String;Ljava/lang/String;)V
    //   155: astore 17
    //   157: aload 9
    //   159: ldc 120
    //   161: invokevirtual 71	org/json/JSONObject:has	(Ljava/lang/String;)Z
    //   164: ifeq +15 -> 179
    //   167: aload 17
    //   169: aload 9
    //   171: ldc 120
    //   173: invokevirtual 96	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   176: invokevirtual 123	com/amap/api/search/poisearch/PoiItem:setAdCode	(Ljava/lang/String;)V
    //   179: aload 9
    //   181: ldc 125
    //   183: invokevirtual 71	org/json/JSONObject:has	(Ljava/lang/String;)Z
    //   186: ifeq +32 -> 218
    //   189: aload 17
    //   191: aload 9
    //   193: ldc 125
    //   195: invokevirtual 96	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   198: invokestatic 130	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   201: invokevirtual 134	com/amap/api/search/poisearch/PoiItem:setDistance	(I)V
    //   204: aload 17
    //   206: invokevirtual 137	com/amap/api/search/poisearch/PoiItem:getDistance	()I
    //   209: ifne +9 -> 218
    //   212: aload 17
    //   214: iconst_m1
    //   215: invokevirtual 134	com/amap/api/search/poisearch/PoiItem:setDistance	(I)V
    //   218: aload 17
    //   220: aload 9
    //   222: ldc 139
    //   224: invokevirtual 96	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   227: invokevirtual 142	com/amap/api/search/poisearch/PoiItem:setTel	(Ljava/lang/String;)V
    //   230: ldc 34
    //   232: astore 18
    //   234: aload 9
    //   236: ldc 144
    //   238: invokevirtual 71	org/json/JSONObject:has	(Ljava/lang/String;)Z
    //   241: ifeq +12 -> 253
    //   244: aload 9
    //   246: ldc 144
    //   248: invokevirtual 96	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   251: astore 18
    //   253: aload 18
    //   255: invokevirtual 145	java/lang/String:length	()I
    //   258: iconst_4
    //   259: if_icmple +101 -> 360
    //   262: aload 17
    //   264: aload 18
    //   266: iconst_0
    //   267: iconst_4
    //   268: invokevirtual 149	java/lang/String:substring	(II)Ljava/lang/String;
    //   271: invokevirtual 152	com/amap/api/search/poisearch/PoiItem:setTypeCode	(Ljava/lang/String;)V
    //   274: aload 9
    //   276: ldc 154
    //   278: invokevirtual 96	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   281: ldc 156
    //   283: invokevirtual 160	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   286: astore 19
    //   288: aload 19
    //   290: iconst_0
    //   291: aaload
    //   292: astore 20
    //   294: iconst_1
    //   295: istore 21
    //   297: iload 21
    //   299: aload 19
    //   301: arraylength
    //   302: if_icmpge +77 -> 379
    //   305: new 162	java/lang/StringBuilder
    //   308: dup
    //   309: invokespecial 163	java/lang/StringBuilder:<init>	()V
    //   312: aload 20
    //   314: invokevirtual 167	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   317: ldc 169
    //   319: invokevirtual 167	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   322: aload 19
    //   324: iload 21
    //   326: aaload
    //   327: invokevirtual 167	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   330: invokevirtual 173	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   333: astore 23
    //   335: aload 23
    //   337: astore 20
    //   339: iinc 21 1
    //   342: goto -45 -> 297
    //   345: astore 24
    //   347: aload 24
    //   349: invokevirtual 176	java/lang/Exception:printStackTrace	()V
    //   352: aconst_null
    //   353: astore 4
    //   355: goto -332 -> 23
    //   358: aload_3
    //   359: areturn
    //   360: aload 17
    //   362: ldc 34
    //   364: invokevirtual 152	com/amap/api/search/poisearch/PoiItem:setTypeCode	(Ljava/lang/String;)V
    //   367: goto -93 -> 274
    //   370: astore 7
    //   372: aload 7
    //   374: invokevirtual 177	org/json/JSONException:printStackTrace	()V
    //   377: aload_3
    //   378: areturn
    //   379: aload 17
    //   381: aload 20
    //   383: invokevirtual 180	com/amap/api/search/poisearch/PoiItem:setTypeDes	(Ljava/lang/String;)V
    //   386: aload 17
    //   388: aload 9
    //   390: ldc 182
    //   392: invokevirtual 96	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   395: invokevirtual 185	com/amap/api/search/poisearch/PoiItem:setXmlNode	(Ljava/lang/String;)V
    //   398: aload_3
    //   399: aload 17
    //   401: invokevirtual 188	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   404: pop
    //   405: iinc 2 1
    //   408: goto -339 -> 69
    //   411: astore 6
    //   413: aload 6
    //   415: invokevirtual 176	java/lang/Exception:printStackTrace	()V
    //   418: goto -41 -> 377
    //
    // Exception table:
    //   from	to	target	type
    //   10	23	345	java/lang/Exception
    //   28	69	370	org/json/JSONException
    //   69	179	370	org/json/JSONException
    //   179	218	370	org/json/JSONException
    //   218	230	370	org/json/JSONException
    //   234	253	370	org/json/JSONException
    //   253	274	370	org/json/JSONException
    //   274	294	370	org/json/JSONException
    //   297	335	370	org/json/JSONException
    //   360	367	370	org/json/JSONException
    //   379	405	370	org/json/JSONException
    //   28	69	411	java/lang/Exception
    //   69	179	411	java/lang/Exception
    //   179	218	411	java/lang/Exception
    //   218	230	411	java/lang/Exception
    //   234	253	411	java/lang/Exception
    //   253	274	411	java/lang/Exception
    //   274	294	411	java/lang/Exception
    //   297	335	411	java/lang/Exception
    //   360	367	411	java/lang/Exception
    //   379	405	411	java/lang/Exception
  }

  public void a(int paramInt)
  {
    this.i = paramInt;
  }

  public int b()
  {
    return this.k;
  }

  public void b(int paramInt)
  {
    int m = 20;
    if (paramInt > m);
    for (int n = m; ; n = paramInt)
    {
      if (n <= 0);
      while (true)
      {
        this.j = m;
        return;
        m = n;
      }
    }
  }

  public PoiSearch.Query c()
  {
    return ((c)this.b).a;
  }

  protected byte[] d()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Object localObject3;
    if (((c)this.b).b == null)
    {
      localStringBuilder.append("sid=1000&city=");
      localObject3 = ((c)this.b).a.getCity();
      if (a((String)localObject3))
        localStringBuilder.append("total");
    }
    while (true)
    {
      Object localObject1 = ((c)this.b).a.getQueryString();
      try
      {
        String str2 = URLEncoder.encode((String)localObject1, "utf-8");
        localObject1 = str2;
        localStringBuilder.append("&keyword=" + (String)localObject1);
        localStringBuilder.append("&number=" + this.j);
        localStringBuilder.append("&batch=" + this.i);
        localObject2 = ((c)this.b).a.getCategory();
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException1)
      {
        try
        {
          String str1 = URLEncoder.encode((String)localObject2, "utf-8");
          Object localObject2 = str1;
          localStringBuilder.append("&type=" + (String)localObject2);
          localStringBuilder.append("&resType=json&encode=utf-8");
          return localStringBuilder.toString().getBytes();
          try
          {
            String str3 = URLEncoder.encode((String)localObject3, "utf-8");
            localObject3 = str3;
            localStringBuilder.append((String)localObject3);
          }
          catch (UnsupportedEncodingException localUnsupportedEncodingException3)
          {
            while (true)
              localUnsupportedEncodingException3.printStackTrace();
          }
          if (((c)this.b).b.getShape().equals("bound"))
          {
            localStringBuilder.append("sid=1002&city=total");
            localStringBuilder.append("&cenX=");
            localStringBuilder.append(((c)this.b).b.getCenter().getLongitude());
            localStringBuilder.append("&cenY=");
            localStringBuilder.append(((c)this.b).b.getCenter().getLatitude());
            localStringBuilder.append("&range=");
            localStringBuilder.append(((c)this.b).b.getRange());
            continue;
          }
          if (!((c)this.b).b.getShape().equals("Rectangle"))
            continue;
          localStringBuilder.append("sid=1005");
          LatLonPoint localLatLonPoint1 = ((c)this.b).b.getLowerLeft();
          LatLonPoint localLatLonPoint2 = ((c)this.b).b.getUpperRight();
          double d1 = localLatLonPoint1.getLatitude();
          double d2 = localLatLonPoint1.getLongitude();
          double d3 = localLatLonPoint2.getLatitude();
          double d4 = localLatLonPoint2.getLongitude();
          localStringBuilder.append("&regionType=rectangle");
          localStringBuilder.append("&region=" + d2 + "," + d1 + ";" + d4 + "," + d3);
          continue;
          localUnsupportedEncodingException1 = localUnsupportedEncodingException1;
          localUnsupportedEncodingException1.printStackTrace();
        }
        catch (UnsupportedEncodingException localUnsupportedEncodingException2)
        {
          while (true)
            localUnsupportedEncodingException2.printStackTrace();
        }
      }
    }
  }

  protected String e()
  {
    return g.a().b() + "/gss/simple?";
  }

  public PoiSearch.SearchBound i()
  {
    return ((c)this.b).b;
  }

  public List<String> j()
  {
    return this.l;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.search.poisearch.b
 * JD-Core Version:    0.6.0
 */