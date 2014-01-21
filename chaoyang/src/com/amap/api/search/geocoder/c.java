package com.amap.api.search.geocoder;

import android.location.Address;
import com.amap.api.search.core.AMapException;
import com.amap.api.search.core.a;
import com.amap.api.search.core.g;
import com.amap.api.search.core.h;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Method;
import java.net.Proxy;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class c extends h<d, ArrayList<Address>>
{
  private String i = null;
  private String j = null;
  private String k = null;
  private int l = 0;
  private ArrayList<Address> m;
  private ArrayList<Address> n;
  private ArrayList<Address> o;
  private boolean p;
  private boolean q;
  private boolean r;

  public c(d paramd, Proxy paramProxy, String paramString1, String paramString2)
  {
    super(paramd, paramProxy, paramString1, paramString2);
    this.l = paramd.c;
    this.m = new ArrayList();
    this.n = new ArrayList();
    this.o = new ArrayList();
  }

  private String a(JSONObject paramJSONObject)
    throws JSONException
  {
    return paramJSONObject.getString("name");
  }

  private void a(ArrayList<Address> paramArrayList1, ArrayList<Address> paramArrayList2)
  {
    int i1 = paramArrayList2.size();
    int i2 = this.l - paramArrayList1.size();
    for (int i3 = 0; i3 < i2; i3++)
    {
      if (i1 <= i3)
        continue;
      paramArrayList1.add(paramArrayList2.get(i3));
    }
  }

  // ERROR //
  private void a(JSONObject paramJSONObject, String paramString)
    throws Exception
  {
    // Byte code:
    //   0: aload_1
    //   1: aload_2
    //   2: invokevirtual 81	org/json/JSONObject:isNull	(Ljava/lang/String;)Z
    //   5: ifne +16 -> 21
    //   8: aload_1
    //   9: aload_2
    //   10: invokevirtual 84	org/json/JSONObject:get	(Ljava/lang/String;)Ljava/lang/Object;
    //   13: ldc 86
    //   15: invokevirtual 91	java/lang/Object:equals	(Ljava/lang/Object;)Z
    //   18: ifeq +4 -> 22
    //   21: return
    //   22: aload_1
    //   23: aload_2
    //   24: invokevirtual 95	org/json/JSONObject:getJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
    //   27: astore_3
    //   28: aload_2
    //   29: ldc 97
    //   31: invokevirtual 100	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   34: ifeq +455 -> 489
    //   37: iconst_0
    //   38: istore 23
    //   40: iload 23
    //   42: aload_3
    //   43: invokevirtual 105	org/json/JSONArray:length	()I
    //   46: if_icmpge -25 -> 21
    //   49: invokestatic 110	com/amap/api/search/core/d:a	()Landroid/location/Address;
    //   52: astore 24
    //   54: aload_3
    //   55: iload 23
    //   57: invokevirtual 114	org/json/JSONArray:getJSONObject	(I)Lorg/json/JSONObject;
    //   60: astore 25
    //   62: aload 24
    //   64: aload 25
    //   66: ldc 55
    //   68: invokevirtual 61	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   71: invokevirtual 120	android/location/Address:setFeatureName	(Ljava/lang/String;)V
    //   74: aload 24
    //   76: aload 25
    //   78: ldc 122
    //   80: invokevirtual 126	org/json/JSONObject:getDouble	(Ljava/lang/String;)D
    //   83: invokevirtual 130	android/location/Address:setLatitude	(D)V
    //   86: aload 24
    //   88: aload 25
    //   90: ldc 132
    //   92: invokevirtual 126	org/json/JSONObject:getDouble	(Ljava/lang/String;)D
    //   95: invokevirtual 135	android/location/Address:setLongitude	(D)V
    //   98: aload 25
    //   100: ldc 137
    //   102: invokevirtual 61	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   105: astore 26
    //   107: aload 26
    //   109: ifnull +20 -> 129
    //   112: aload 26
    //   114: ldc 86
    //   116: invokevirtual 100	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   119: ifne +10 -> 129
    //   122: aload 24
    //   124: aload 26
    //   126: invokevirtual 140	android/location/Address:setPhone	(Ljava/lang/String;)V
    //   129: aload 25
    //   131: ldc 142
    //   133: invokevirtual 61	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   136: astore 27
    //   138: aload 27
    //   140: ifnull +164 -> 304
    //   143: aload 27
    //   145: ldc 86
    //   147: invokevirtual 100	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   150: ifne +154 -> 304
    //   153: aload 27
    //   155: iconst_m1
    //   156: aload 27
    //   158: invokevirtual 143	java/lang/String:length	()I
    //   161: iadd
    //   162: invokevirtual 147	java/lang/String:charAt	(I)C
    //   165: invokestatic 153	java/lang/Character:isDigit	(C)Z
    //   168: ifeq +25 -> 193
    //   171: new 155	java/lang/StringBuilder
    //   174: dup
    //   175: invokespecial 156	java/lang/StringBuilder:<init>	()V
    //   178: aload 27
    //   180: invokevirtual 160	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   183: ldc 162
    //   185: invokevirtual 160	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   188: invokevirtual 166	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   191: astore 27
    //   193: aload 24
    //   195: iconst_2
    //   196: aload 27
    //   198: invokevirtual 170	android/location/Address:setAddressLine	(ILjava/lang/String;)V
    //   201: aload 27
    //   203: ldc 171
    //   205: invokevirtual 175	java/lang/String:indexOf	(I)I
    //   208: istore 32
    //   210: iload 32
    //   212: iconst_m1
    //   213: if_icmpeq +160 -> 373
    //   216: aload 27
    //   218: iconst_0
    //   219: iload 32
    //   221: iconst_1
    //   222: iadd
    //   223: invokevirtual 179	java/lang/String:substring	(II)Ljava/lang/String;
    //   226: astore 38
    //   228: aload 27
    //   230: iload 32
    //   232: iconst_1
    //   233: iadd
    //   234: invokevirtual 182	java/lang/String:substring	(I)Ljava/lang/String;
    //   237: astore 37
    //   239: aload 24
    //   241: aload 38
    //   243: invokevirtual 185	android/location/Address:setThoroughfare	(Ljava/lang/String;)V
    //   246: aload 24
    //   248: invokevirtual 189	java/lang/Object:getClass	()Ljava/lang/Class;
    //   251: ldc 191
    //   253: iconst_1
    //   254: anewarray 193	java/lang/Class
    //   257: dup
    //   258: iconst_0
    //   259: ldc 99
    //   261: aastore
    //   262: invokevirtual 197	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   265: astore 40
    //   267: aload 40
    //   269: ifnull +35 -> 304
    //   272: aload 37
    //   274: ifnull +30 -> 304
    //   277: aload 37
    //   279: ldc 86
    //   281: invokevirtual 100	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   284: ifne +20 -> 304
    //   287: aload 40
    //   289: aload 24
    //   291: iconst_1
    //   292: anewarray 88	java/lang/Object
    //   295: dup
    //   296: iconst_0
    //   297: aload 37
    //   299: aastore
    //   300: invokevirtual 203	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   303: pop
    //   304: aload 24
    //   306: invokevirtual 189	java/lang/Object:getClass	()Ljava/lang/Class;
    //   309: ldc 205
    //   311: iconst_1
    //   312: anewarray 193	java/lang/Class
    //   315: dup
    //   316: iconst_0
    //   317: ldc 99
    //   319: aastore
    //   320: invokevirtual 197	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   323: astore 30
    //   325: aload 30
    //   327: ifnull +20 -> 347
    //   330: aload 30
    //   332: aload 24
    //   334: iconst_1
    //   335: anewarray 88	java/lang/Object
    //   338: dup
    //   339: iconst_0
    //   340: ldc 207
    //   342: aastore
    //   343: invokevirtual 203	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   346: pop
    //   347: aload 24
    //   349: ifnull +18 -> 367
    //   352: aload_0
    //   353: getfield 47	com/amap/api/search/geocoder/c:n	Ljava/util/ArrayList;
    //   356: aload 24
    //   358: invokevirtual 74	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   361: pop
    //   362: aload_0
    //   363: iconst_1
    //   364: putfield 209	com/amap/api/search/geocoder/c:q	Z
    //   367: iinc 23 1
    //   370: goto -330 -> 40
    //   373: aload 27
    //   375: ldc 210
    //   377: invokevirtual 175	java/lang/String:indexOf	(I)I
    //   380: istore 33
    //   382: iload 33
    //   384: iconst_m1
    //   385: if_icmpeq +29 -> 414
    //   388: aload 27
    //   390: iconst_0
    //   391: iload 33
    //   393: iconst_1
    //   394: iadd
    //   395: invokevirtual 179	java/lang/String:substring	(II)Ljava/lang/String;
    //   398: astore 38
    //   400: aload 27
    //   402: iload 33
    //   404: iconst_1
    //   405: iadd
    //   406: invokevirtual 182	java/lang/String:substring	(I)Ljava/lang/String;
    //   409: astore 37
    //   411: goto -172 -> 239
    //   414: aload 27
    //   416: invokevirtual 143	java/lang/String:length	()I
    //   419: istore 34
    //   421: iconst_0
    //   422: istore 35
    //   424: iload 35
    //   426: aload 27
    //   428: invokevirtual 143	java/lang/String:length	()I
    //   431: if_icmpge +424 -> 855
    //   434: aload 27
    //   436: iload 35
    //   438: invokevirtual 147	java/lang/String:charAt	(I)C
    //   441: invokestatic 153	java/lang/Character:isDigit	(C)Z
    //   444: ifeq +29 -> 473
    //   447: aload 27
    //   449: iconst_0
    //   450: iload 35
    //   452: invokevirtual 179	java/lang/String:substring	(II)Ljava/lang/String;
    //   455: astore 36
    //   457: aload 27
    //   459: iload 35
    //   461: invokevirtual 182	java/lang/String:substring	(I)Ljava/lang/String;
    //   464: astore 37
    //   466: aload 36
    //   468: astore 38
    //   470: goto -231 -> 239
    //   473: iinc 35 1
    //   476: goto -52 -> 424
    //   479: astore 39
    //   481: aload 39
    //   483: invokevirtual 213	java/lang/Exception:printStackTrace	()V
    //   486: goto -182 -> 304
    //   489: aload_2
    //   490: ldc 215
    //   492: invokevirtual 100	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   495: istore 4
    //   497: iconst_0
    //   498: istore 5
    //   500: iload 4
    //   502: ifeq +176 -> 678
    //   505: iload 5
    //   507: aload_3
    //   508: invokevirtual 105	org/json/JSONArray:length	()I
    //   511: if_icmpge -490 -> 21
    //   514: invokestatic 110	com/amap/api/search/core/d:a	()Landroid/location/Address;
    //   517: astore 15
    //   519: aload_3
    //   520: iload 5
    //   522: invokevirtual 114	org/json/JSONArray:getJSONObject	(I)Lorg/json/JSONObject;
    //   525: astore 16
    //   527: aload 16
    //   529: ldc 217
    //   531: invokevirtual 220	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   534: astore 17
    //   536: aload 16
    //   538: ldc 222
    //   540: invokevirtual 220	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   543: astore 18
    //   545: aload 15
    //   547: new 155	java/lang/StringBuilder
    //   550: dup
    //   551: invokespecial 156	java/lang/StringBuilder:<init>	()V
    //   554: aload 17
    //   556: ldc 55
    //   558: invokevirtual 61	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   561: invokevirtual 160	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   564: ldc 224
    //   566: invokevirtual 160	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   569: aload 18
    //   571: ldc 55
    //   573: invokevirtual 61	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   576: invokevirtual 160	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   579: invokevirtual 166	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   582: invokevirtual 120	android/location/Address:setFeatureName	(Ljava/lang/String;)V
    //   585: aload 15
    //   587: aload 16
    //   589: ldc 122
    //   591: invokevirtual 126	org/json/JSONObject:getDouble	(Ljava/lang/String;)D
    //   594: invokevirtual 130	android/location/Address:setLatitude	(D)V
    //   597: aload 15
    //   599: aload 16
    //   601: ldc 132
    //   603: invokevirtual 126	org/json/JSONObject:getDouble	(Ljava/lang/String;)D
    //   606: invokevirtual 135	android/location/Address:setLongitude	(D)V
    //   609: aload 15
    //   611: invokevirtual 189	java/lang/Object:getClass	()Ljava/lang/Class;
    //   614: ldc 205
    //   616: iconst_1
    //   617: anewarray 193	java/lang/Class
    //   620: dup
    //   621: iconst_0
    //   622: ldc 99
    //   624: aastore
    //   625: invokevirtual 197	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   628: astore 21
    //   630: aload 21
    //   632: ifnull +20 -> 652
    //   635: aload 21
    //   637: aload 15
    //   639: iconst_1
    //   640: anewarray 88	java/lang/Object
    //   643: dup
    //   644: iconst_0
    //   645: ldc 226
    //   647: aastore
    //   648: invokevirtual 203	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   651: pop
    //   652: aload 15
    //   654: ifnull +18 -> 672
    //   657: aload_0
    //   658: getfield 49	com/amap/api/search/geocoder/c:o	Ljava/util/ArrayList;
    //   661: aload 15
    //   663: invokevirtual 74	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   666: pop
    //   667: aload_0
    //   668: iconst_1
    //   669: putfield 228	com/amap/api/search/geocoder/c:r	Z
    //   672: iinc 5 1
    //   675: goto -170 -> 505
    //   678: aload_2
    //   679: ldc 230
    //   681: invokevirtual 100	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   684: istore 6
    //   686: iconst_0
    //   687: istore 7
    //   689: iload 6
    //   691: ifeq -670 -> 21
    //   694: iload 7
    //   696: aload_3
    //   697: invokevirtual 105	org/json/JSONArray:length	()I
    //   700: if_icmpge -679 -> 21
    //   703: invokestatic 110	com/amap/api/search/core/d:a	()Landroid/location/Address;
    //   706: astore 8
    //   708: aload_3
    //   709: iload 7
    //   711: invokevirtual 114	org/json/JSONArray:getJSONObject	(I)Lorg/json/JSONObject;
    //   714: astore 9
    //   716: aload 9
    //   718: ldc 55
    //   720: invokevirtual 61	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   723: astore 10
    //   725: aload 8
    //   727: aload 10
    //   729: invokevirtual 120	android/location/Address:setFeatureName	(Ljava/lang/String;)V
    //   732: aload 8
    //   734: aload 9
    //   736: ldc 122
    //   738: invokevirtual 126	org/json/JSONObject:getDouble	(Ljava/lang/String;)D
    //   741: invokevirtual 130	android/location/Address:setLatitude	(D)V
    //   744: aload 8
    //   746: aload 9
    //   748: ldc 132
    //   750: invokevirtual 126	org/json/JSONObject:getDouble	(Ljava/lang/String;)D
    //   753: invokevirtual 135	android/location/Address:setLongitude	(D)V
    //   756: aload 8
    //   758: iconst_2
    //   759: aload 10
    //   761: invokevirtual 170	android/location/Address:setAddressLine	(ILjava/lang/String;)V
    //   764: aload 8
    //   766: aload 10
    //   768: invokevirtual 185	android/location/Address:setThoroughfare	(Ljava/lang/String;)V
    //   771: aload 8
    //   773: invokevirtual 189	java/lang/Object:getClass	()Ljava/lang/Class;
    //   776: ldc 205
    //   778: iconst_1
    //   779: anewarray 193	java/lang/Class
    //   782: dup
    //   783: iconst_0
    //   784: ldc 99
    //   786: aastore
    //   787: invokevirtual 197	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   790: astore 13
    //   792: aload 13
    //   794: ifnull +20 -> 814
    //   797: aload 13
    //   799: aload 8
    //   801: iconst_1
    //   802: anewarray 88	java/lang/Object
    //   805: dup
    //   806: iconst_0
    //   807: ldc 232
    //   809: aastore
    //   810: invokevirtual 203	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   813: pop
    //   814: aload 8
    //   816: ifnull +18 -> 834
    //   819: aload_0
    //   820: getfield 45	com/amap/api/search/geocoder/c:m	Ljava/util/ArrayList;
    //   823: aload 8
    //   825: invokevirtual 74	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   828: pop
    //   829: aload_0
    //   830: iconst_1
    //   831: putfield 234	com/amap/api/search/geocoder/c:p	Z
    //   834: iinc 7 1
    //   837: goto -143 -> 694
    //   840: astore 11
    //   842: goto -28 -> 814
    //   845: astore 19
    //   847: goto -195 -> 652
    //   850: astore 28
    //   852: goto -505 -> 347
    //   855: iload 34
    //   857: istore 35
    //   859: goto -412 -> 447
    //
    // Exception table:
    //   from	to	target	type
    //   246	267	479	java/lang/Exception
    //   277	304	479	java/lang/Exception
    //   771	792	840	java/lang/Exception
    //   797	814	840	java/lang/Exception
    //   609	630	845	java/lang/Exception
    //   635	652	845	java/lang/Exception
    //   304	325	850	java/lang/Exception
    //   330	347	850	java/lang/Exception
  }

  private ArrayList<Address> b(ArrayList<Address> paramArrayList)
  {
    if (this.l <= 0)
      return paramArrayList;
    if (this.p)
    {
      paramArrayList.add(this.m.get(0));
      this.m.remove(0);
    }
    a(paramArrayList, this.n);
    if ((this.l - paramArrayList.size() > 0) && (this.r))
      paramArrayList.add(this.o.get(0));
    a(paramArrayList, this.m);
    return paramArrayList;
  }

  protected ArrayList<Address> a(InputStream paramInputStream)
    throws AMapException
  {
    ArrayList localArrayList = new ArrayList();
    try
    {
      str = new String(a.a(paramInputStream));
      com.amap.api.search.core.d.b(str);
    }
    catch (Exception localException3)
    {
      try
      {
        String str;
        JSONObject localJSONObject1 = new JSONObject(str);
        if (localJSONObject1.has("list"))
        {
          JSONArray localJSONArray = localJSONObject1.getJSONArray("list");
          int i1 = 0;
          while (i1 < localJSONArray.length())
          {
            JSONObject localJSONObject2 = localJSONArray.getJSONObject(i1);
            if (localJSONObject2.has("province"))
              this.j = a(localJSONObject2.getJSONObject("province"));
            if (localJSONObject2.has("district"))
              this.k = a(localJSONObject2.getJSONObject("district"));
            if (localJSONObject2.has("city"))
            {
              this.i = a(localJSONObject2.getJSONObject("city"));
              if ((this.i == null) || (this.i.equals("")))
                this.i = this.j;
            }
            if (localJSONObject2.has("roadlist"))
            {
              a(localJSONObject2, "roadlist");
              if (this.m.size() > 0)
                a(this.m);
            }
            if (localJSONObject2.has("crosslist"))
            {
              a(localJSONObject2, "crosslist");
              if (this.o.size() > 0)
                a(this.o);
            }
            if (localJSONObject2.has("poilist"))
            {
              a(localJSONObject2, "poilist");
              if (this.n.size() > 0)
                a(this.n);
            }
            i1++;
            continue;
            localException3 = localException3;
            localException3.printStackTrace();
            str = null;
          }
        }
      }
      catch (JSONException localJSONException)
      {
        localJSONException.printStackTrace();
        if ((this.r) || (this.q) || (this.p))
          return b(localArrayList);
      }
      catch (IOException localIOException)
      {
        while (true)
          localIOException.printStackTrace();
      }
      catch (Exception localException1)
      {
        while (true)
          localException1.printStackTrace();
      }
      if (this.j == null)
        break label552;
    }
    Address localAddress = com.amap.api.search.core.d.a();
    localAddress.setAdminArea(this.j);
    localAddress.setLocality(this.i);
    localAddress.setFeatureName(this.k);
    localAddress.setLatitude(((d)this.b).b);
    localAddress.setLongitude(((d)this.b).a);
    try
    {
      Method localMethod = localAddress.getClass().getMethod("setSubLocality", new Class[] { String.class });
      if (localMethod != null)
      {
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = this.k;
        localMethod.invoke(localAddress, arrayOfObject);
      }
      label485: localAddress.setAddressLine(0, "中国");
      if (!this.j.equals(this.i))
        localAddress.setAddressLine(1, this.j + this.i + this.k);
      while (true)
      {
        localArrayList.add(localAddress);
        label552: return localArrayList;
        localAddress.setAddressLine(1, this.i + this.k);
      }
    }
    catch (Exception localException2)
    {
      break label485;
    }
  }

  protected void a(ArrayList<Address> paramArrayList)
  {
    if ((this.j != null) && (paramArrayList.size() == 0))
      paramArrayList.add(com.amap.api.search.core.d.a());
    Iterator localIterator = paramArrayList.iterator();
    while (true)
    {
      Address localAddress;
      if (localIterator.hasNext())
      {
        localAddress = (Address)localIterator.next();
        localAddress.setAdminArea(this.j);
        localAddress.setLocality(this.i);
      }
      try
      {
        Method localMethod = localAddress.getClass().getMethod("setSubLocality", new Class[] { String.class });
        if (localMethod != null)
        {
          Object[] arrayOfObject = new Object[1];
          arrayOfObject[0] = this.k;
          localMethod.invoke(localAddress, arrayOfObject);
        }
        label111: localAddress.setAddressLine(0, "中国");
        if (!this.j.equals(this.i))
        {
          localAddress.setAddressLine(1, this.j + this.i + this.k);
          continue;
        }
        localAddress.setAddressLine(1, this.i + this.k);
        continue;
        return;
      }
      catch (Exception localException)
      {
        break label111;
      }
    }
  }

  protected byte[] d()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("sid=7001&resType=json&encode=utf-8");
    localStringBuilder.append("&region=" + ((d)this.b).a + "," + ((d)this.b).b);
    localStringBuilder.append("&range=500&roadnum=10&crossnum=1&poinum=" + ((d)this.b).c);
    return localStringBuilder.toString().getBytes();
  }

  protected String e()
  {
    return g.a().b() + "/rgeocode/simple?";
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.search.geocoder.c
 * JD-Core Version:    0.6.0
 */