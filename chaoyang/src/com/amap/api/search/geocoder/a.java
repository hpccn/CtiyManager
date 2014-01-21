package com.amap.api.search.geocoder;

import android.location.Address;
import com.amap.api.search.core.g;
import com.amap.api.search.core.h;
import java.io.UnsupportedEncodingException;
import java.net.Proxy;
import java.net.URLEncoder;
import java.util.ArrayList;

class a extends h<b, ArrayList<Address>>
{
  public int i = 0;

  public a(b paramb, Proxy paramProxy, String paramString1, String paramString2)
  {
    super(paramb, paramProxy, paramString1, paramString2);
    this.i = paramb.b;
  }

  // ERROR //
  protected ArrayList<Address> a(java.io.InputStream paramInputStream)
    throws com.amap.api.search.core.AMapException
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_2
    //   2: new 29	java/util/ArrayList
    //   5: dup
    //   6: invokespecial 32	java/util/ArrayList:<init>	()V
    //   9: astore_3
    //   10: new 34	java/lang/String
    //   13: dup
    //   14: aload_1
    //   15: invokestatic 39	com/amap/api/search/core/a:a	(Ljava/io/InputStream;)[B
    //   18: invokespecial 42	java/lang/String:<init>	([B)V
    //   21: astore 4
    //   23: aload 4
    //   25: invokestatic 47	com/amap/api/search/core/d:b	(Ljava/lang/String;)V
    //   28: new 49	org/json/JSONObject
    //   31: dup
    //   32: aload 4
    //   34: invokespecial 51	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   37: astore 5
    //   39: aload 5
    //   41: ldc 53
    //   43: invokevirtual 57	org/json/JSONObject:has	(Ljava/lang/String;)Z
    //   46: istore 8
    //   48: iload 8
    //   50: ifne +18 -> 68
    //   53: aload_3
    //   54: areturn
    //   55: astore 24
    //   57: aload 24
    //   59: invokevirtual 60	java/lang/Exception:printStackTrace	()V
    //   62: aconst_null
    //   63: astore 4
    //   65: goto -42 -> 23
    //   68: aload 5
    //   70: ldc 53
    //   72: invokevirtual 64	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   75: ifle +351 -> 426
    //   78: aload 5
    //   80: ldc 66
    //   82: invokevirtual 70	org/json/JSONObject:getJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
    //   85: astore 9
    //   87: iload_2
    //   88: aload 9
    //   90: invokevirtual 76	org/json/JSONArray:length	()I
    //   93: if_icmpge +333 -> 426
    //   96: aload 9
    //   98: iload_2
    //   99: invokevirtual 80	org/json/JSONArray:getJSONObject	(I)Lorg/json/JSONObject;
    //   102: astore 10
    //   104: invokestatic 83	com/amap/api/search/core/d:a	()Landroid/location/Address;
    //   107: astore 11
    //   109: aload 10
    //   111: ldc 85
    //   113: invokevirtual 89	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   116: astore 12
    //   118: aload 12
    //   120: invokestatic 95	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   123: ifne +10 -> 133
    //   126: aload 11
    //   128: aload 12
    //   130: invokevirtual 100	android/location/Address:setFeatureName	(Ljava/lang/String;)V
    //   133: aload 10
    //   135: ldc 102
    //   137: invokevirtual 89	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   140: astore 13
    //   142: aload 13
    //   144: invokestatic 95	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   147: ifne +11 -> 158
    //   150: aload 11
    //   152: iconst_2
    //   153: aload 13
    //   155: invokevirtual 106	android/location/Address:setAddressLine	(ILjava/lang/String;)V
    //   158: aload 10
    //   160: ldc 108
    //   162: invokevirtual 89	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   165: astore 14
    //   167: aload 14
    //   169: invokestatic 95	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   172: ifne +10 -> 182
    //   175: aload 11
    //   177: aload 14
    //   179: invokevirtual 111	android/location/Address:setAdminArea	(Ljava/lang/String;)V
    //   182: aload 10
    //   184: ldc 113
    //   186: invokevirtual 89	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   189: astore 15
    //   191: aload 15
    //   193: invokestatic 95	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   196: ifeq +7 -> 203
    //   199: aload 14
    //   201: astore 15
    //   203: aload 11
    //   205: aload 15
    //   207: invokevirtual 116	android/location/Address:setLocality	(Ljava/lang/String;)V
    //   210: aload 10
    //   212: ldc 118
    //   214: invokevirtual 89	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   217: astore 16
    //   219: aload 16
    //   221: invokestatic 95	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   224: istore 17
    //   226: iload 17
    //   228: ifne +46 -> 274
    //   231: aload 11
    //   233: invokevirtual 124	java/lang/Object:getClass	()Ljava/lang/Class;
    //   236: ldc 126
    //   238: iconst_1
    //   239: anewarray 128	java/lang/Class
    //   242: dup
    //   243: iconst_0
    //   244: ldc 34
    //   246: aastore
    //   247: invokevirtual 132	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   250: astore 22
    //   252: aload 22
    //   254: ifnull +20 -> 274
    //   257: aload 22
    //   259: aload 11
    //   261: iconst_1
    //   262: anewarray 120	java/lang/Object
    //   265: dup
    //   266: iconst_0
    //   267: aload 16
    //   269: aastore
    //   270: invokevirtual 138	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   273: pop
    //   274: aload 11
    //   276: iconst_0
    //   277: ldc 140
    //   279: invokevirtual 106	android/location/Address:setAddressLine	(ILjava/lang/String;)V
    //   282: aload 14
    //   284: aload 15
    //   286: invokevirtual 144	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   289: ifne +101 -> 390
    //   292: aload 11
    //   294: iconst_1
    //   295: new 146	java/lang/StringBuilder
    //   298: dup
    //   299: invokespecial 147	java/lang/StringBuilder:<init>	()V
    //   302: aload 14
    //   304: invokevirtual 151	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   307: aload 15
    //   309: invokevirtual 151	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   312: aload 16
    //   314: invokevirtual 151	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   317: invokevirtual 155	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   320: invokevirtual 106	android/location/Address:setAddressLine	(ILjava/lang/String;)V
    //   323: aload 10
    //   325: ldc 157
    //   327: invokevirtual 89	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   330: astore 18
    //   332: aload 18
    //   334: invokestatic 95	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   337: ifne +13 -> 350
    //   340: aload 11
    //   342: aload 18
    //   344: invokestatic 163	java/lang/Double:parseDouble	(Ljava/lang/String;)D
    //   347: invokevirtual 167	android/location/Address:setLongitude	(D)V
    //   350: aload 10
    //   352: ldc 169
    //   354: invokevirtual 89	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   357: astore 19
    //   359: aload 19
    //   361: invokestatic 95	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   364: ifne +13 -> 377
    //   367: aload 11
    //   369: aload 19
    //   371: invokestatic 163	java/lang/Double:parseDouble	(Ljava/lang/String;)D
    //   374: invokevirtual 172	android/location/Address:setLatitude	(D)V
    //   377: aload_3
    //   378: aload 11
    //   380: invokevirtual 175	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   383: pop
    //   384: iinc 2 1
    //   387: goto -300 -> 87
    //   390: aload 11
    //   392: iconst_1
    //   393: new 146	java/lang/StringBuilder
    //   396: dup
    //   397: invokespecial 147	java/lang/StringBuilder:<init>	()V
    //   400: aload 15
    //   402: invokevirtual 151	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   405: aload 16
    //   407: invokevirtual 151	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   410: invokevirtual 155	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   413: invokevirtual 106	android/location/Address:setAddressLine	(ILjava/lang/String;)V
    //   416: goto -93 -> 323
    //   419: astore 7
    //   421: aload 7
    //   423: invokevirtual 176	org/json/JSONException:printStackTrace	()V
    //   426: aload_3
    //   427: areturn
    //   428: astore 6
    //   430: aload 6
    //   432: invokevirtual 60	java/lang/Exception:printStackTrace	()V
    //   435: goto -9 -> 426
    //   438: astore 21
    //   440: goto -166 -> 274
    //
    // Exception table:
    //   from	to	target	type
    //   10	23	55	java/lang/Exception
    //   28	48	419	org/json/JSONException
    //   68	87	419	org/json/JSONException
    //   87	133	419	org/json/JSONException
    //   133	158	419	org/json/JSONException
    //   158	182	419	org/json/JSONException
    //   182	199	419	org/json/JSONException
    //   203	226	419	org/json/JSONException
    //   231	252	419	org/json/JSONException
    //   257	274	419	org/json/JSONException
    //   274	323	419	org/json/JSONException
    //   323	350	419	org/json/JSONException
    //   350	377	419	org/json/JSONException
    //   377	384	419	org/json/JSONException
    //   390	416	419	org/json/JSONException
    //   28	48	428	java/lang/Exception
    //   68	87	428	java/lang/Exception
    //   87	133	428	java/lang/Exception
    //   133	158	428	java/lang/Exception
    //   158	182	428	java/lang/Exception
    //   182	199	428	java/lang/Exception
    //   203	226	428	java/lang/Exception
    //   274	323	428	java/lang/Exception
    //   323	350	428	java/lang/Exception
    //   350	377	428	java/lang/Exception
    //   377	384	428	java/lang/Exception
    //   390	416	428	java/lang/Exception
    //   231	252	438	java/lang/Exception
    //   257	274	438	java/lang/Exception
  }

  protected byte[] d()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("?sid=7000&resType=json&encode=utf-8&address=");
    Object localObject1 = ((b)this.b).a;
    try
    {
      String str2 = URLEncoder.encode((String)localObject1, "utf-8");
      localObject1 = str2;
      localStringBuilder.append((String)localObject1);
      localObject2 = ((b)this.b).c;
      if ((localObject2 == null) || (((String)localObject2).equals("")));
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException1)
    {
      try
      {
        String str1 = URLEncoder.encode((String)localObject2, "utf-8");
        Object localObject2 = str1;
        localStringBuilder.append("&city=" + (String)localObject2);
        localStringBuilder.append("&count=");
        localStringBuilder.append(((b)this.b).b);
        return localStringBuilder.toString().getBytes();
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

  protected String e()
  {
    return g.a().b() + "/geocode/simple?";
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.search.geocoder.a
 * JD-Core Version:    0.6.0
 */