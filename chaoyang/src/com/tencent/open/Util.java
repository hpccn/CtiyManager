package com.tencent.open;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Proxy;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.util.Log;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.net.InetAddress;
import java.net.MalformedURLException;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.net.URL;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.Set;
import java.util.zip.GZIPInputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.entity.ByteArrayEntity;
import org.json.JSONException;
import org.json.JSONObject;

public class Util
{
  private static boolean a = true;

  private static char a(int paramInt)
  {
    int i = paramInt & 0xF;
    if (i < 10)
      return (char)(i + 48);
    return (char)(97 + (i - 10));
  }

  public static Bundle a(String paramString)
  {
    Bundle localBundle = new Bundle();
    if (paramString != null)
    {
      String[] arrayOfString1 = paramString.split("&");
      int i = arrayOfString1.length;
      for (int j = 0; j < i; j++)
      {
        String[] arrayOfString2 = arrayOfString1[j].split("=");
        if (arrayOfString2.length != 2)
          continue;
        localBundle.putString(URLDecoder.decode(arrayOfString2[0]), URLDecoder.decode(arrayOfString2[1]));
      }
    }
    return localBundle;
  }

  public static Util.NetworkProxy a(Context paramContext)
  {
    if (paramContext == null)
      return null;
    ConnectivityManager localConnectivityManager = (ConnectivityManager)paramContext.getSystemService("connectivity");
    if (localConnectivityManager == null)
      return null;
    NetworkInfo localNetworkInfo = localConnectivityManager.getActiveNetworkInfo();
    if (localNetworkInfo == null)
      return null;
    if (localNetworkInfo.getType() == 0)
    {
      String str = b(paramContext);
      int i = c(paramContext);
      if ((!f(str)) && (i >= 0))
        return new Util.NetworkProxy(str, i, null);
    }
    return null;
  }

  public static Util.Statistic a(Context paramContext, String paramString1, String paramString2, Bundle paramBundle)
  {
    if (paramContext != null)
    {
      ConnectivityManager localConnectivityManager = (ConnectivityManager)paramContext.getSystemService("connectivity");
      if (localConnectivityManager != null)
      {
        NetworkInfo localNetworkInfo = localConnectivityManager.getActiveNetworkInfo();
        if ((localNetworkInfo == null) || (!localNetworkInfo.isAvailable()))
          throw new NetworkUnavailableException("network unavailable");
      }
    }
    Bundle localBundle1 = new Bundle(paramBundle);
    String str1 = localBundle1.getString("appid_for_getting_config");
    localBundle1.remove("appid_for_getting_config");
    HttpClient localHttpClient = a(paramContext, str1, paramString1);
    String str5;
    Object localObject1;
    int i;
    if (paramString2.equals("GET"))
    {
      String str4 = a(localBundle1);
      int n = 0 + str4.length();
      if (paramString1.indexOf("?") == -1)
      {
        str5 = paramString1 + "?";
        HttpGet localHttpGet = new HttpGet(str5 + str4);
        localHttpGet.addHeader("Accept-Encoding", "gzip");
        localObject1 = localHttpGet;
        i = n;
      }
    }
    while (true)
    {
      HttpResponse localHttpResponse = localHttpClient.execute((HttpUriRequest)localObject1);
      int j = localHttpResponse.getStatusLine().getStatusCode();
      if (j == 200)
      {
        return new Util.Statistic(a(localHttpResponse), i);
        str5 = paramString1 + "&";
        break;
        if (paramString2.equals("POST"))
        {
          HttpPost localHttpPost = new HttpPost(paramString1);
          localHttpPost.addHeader("Accept-Encoding", "gzip");
          Bundle localBundle2 = new Bundle();
          Iterator localIterator1 = localBundle1.keySet().iterator();
          while (localIterator1.hasNext())
          {
            String str3 = (String)localIterator1.next();
            Object localObject2 = localBundle1.get(str3);
            if (!(localObject2 instanceof byte[]))
              continue;
            localBundle2.putByteArray(str3, (byte[])(byte[])localObject2);
          }
          if (!localBundle1.containsKey("method"))
            localBundle1.putString("method", paramString2);
          localHttpPost.setHeader("Content-Type", "multipart/form-data;boundary=3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f");
          localHttpPost.setHeader("Connection", "Keep-Alive");
          ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
          localByteArrayOutputStream.write("--3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f\r\n".getBytes());
          localByteArrayOutputStream.write(a(localBundle1, "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f").getBytes());
          if (!localBundle2.isEmpty())
          {
            int k = localBundle2.size();
            localByteArrayOutputStream.write("\r\n--3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f\r\n".getBytes());
            Iterator localIterator2 = localBundle2.keySet().iterator();
            int m = -1;
            while (localIterator2.hasNext())
            {
              String str2 = (String)localIterator2.next();
              m++;
              localByteArrayOutputStream.write(("Content-Disposition: form-data; name=\"" + str2 + "\"; filename=\"" + str2 + "\"" + "\r\n").getBytes());
              localByteArrayOutputStream.write("Content-Type: content/unknown\r\n\r\n".getBytes());
              localByteArrayOutputStream.write(localBundle2.getByteArray(str2));
              if (m >= k - 1)
                continue;
              localByteArrayOutputStream.write("\r\n--3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f\r\n".getBytes());
            }
          }
          localByteArrayOutputStream.write("\r\n--3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f--\r\n".getBytes());
          byte[] arrayOfByte = localByteArrayOutputStream.toByteArray();
          i = 0 + arrayOfByte.length;
          localByteArrayOutputStream.close();
          localHttpPost.setEntity(new ByteArrayEntity(arrayOfByte));
          localObject1 = localHttpPost;
          continue;
        }
      }
      else
      {
        throw new HttpStatusException("http status code error:" + j);
      }
      i = 0;
      localObject1 = null;
    }
  }

  public static String a()
  {
    try
    {
      while (true)
      {
        Enumeration localEnumeration1 = NetworkInterface.getNetworkInterfaces();
        while (true)
          if (localEnumeration1.hasMoreElements())
          {
            Enumeration localEnumeration2 = ((NetworkInterface)localEnumeration1.nextElement()).getInetAddresses();
            if (!localEnumeration2.hasMoreElements())
              continue;
            InetAddress localInetAddress = (InetAddress)localEnumeration2.nextElement();
            if (localInetAddress.isLoopbackAddress())
              break;
            String str = localInetAddress.getHostAddress().toString();
            return str;
          }
      }
    }
    catch (SocketException localSocketException)
    {
      a("Tencent-Util", localSocketException.toString());
    }
    return "";
  }

  public static String a(Bundle paramBundle)
  {
    if (paramBundle == null)
      return "";
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator = paramBundle.keySet().iterator();
    int i = 1;
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      Object localObject = paramBundle.get(str);
      if ((!(localObject instanceof String)) && (!(localObject instanceof String[])))
        continue;
      label128: label170: label205: int j;
      if ((localObject instanceof String[]))
      {
        String[] arrayOfString;
        int k;
        if (i != 0)
        {
          i = 0;
          localStringBuilder.append(URLEncoder.encode(str) + "=");
          arrayOfString = (String[])paramBundle.getStringArray(str);
          k = 0;
          if (k >= arrayOfString.length)
            break label205;
          if (k != 0)
            break label170;
          localStringBuilder.append(URLEncoder.encode(arrayOfString[k]));
        }
        while (true)
        {
          k++;
          break label128;
          localStringBuilder.append("&");
          break;
          localStringBuilder.append(URLEncoder.encode("," + arrayOfString[k]));
        }
        j = i;
        i = j;
        continue;
      }
      if (i != 0)
        i = 0;
      while (true)
      {
        localStringBuilder.append(URLEncoder.encode(str) + "=" + URLEncoder.encode(paramBundle.getString(str)));
        j = i;
        break;
        localStringBuilder.append("&");
      }
    }
    return localStringBuilder.toString();
  }

  public static String a(Bundle paramBundle, String paramString)
  {
    if (paramBundle == null)
      return "";
    StringBuilder localStringBuilder = new StringBuilder();
    int i = paramBundle.size();
    Iterator localIterator = paramBundle.keySet().iterator();
    int j = -1;
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      int k = j + 1;
      Object localObject = paramBundle.get(str);
      if (!(localObject instanceof String))
      {
        j = k;
        continue;
      }
      localStringBuilder.append("Content-Disposition: form-data; name=\"" + str + "\"" + "\r\n" + "\r\n" + (String)localObject);
      if (k < i - 1)
        localStringBuilder.append("\r\n--" + paramString + "\r\n");
      j = k;
    }
    return localStringBuilder.toString();
  }

  private static String a(HttpResponse paramHttpResponse)
  {
    InputStream localInputStream = paramHttpResponse.getEntity().getContent();
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    Header localHeader = paramHttpResponse.getFirstHeader("Content-Encoding");
    if ((localHeader != null) && (localHeader.getValue().toLowerCase().indexOf("gzip") > -1));
    for (Object localObject = new GZIPInputStream(localInputStream); ; localObject = localInputStream)
    {
      byte[] arrayOfByte = new byte[512];
      while (true)
      {
        int i = ((InputStream)localObject).read(arrayOfByte);
        if (i == -1)
          break;
        localByteArrayOutputStream.write(arrayOfByte, 0, i);
      }
      return new String(localByteArrayOutputStream.toByteArray());
    }
  }

  // ERROR //
  public static HttpClient a(Context paramContext, String paramString1, String paramString2)
  {
    // Byte code:
    //   0: new 380	com/tencent/open/MySSLSocketFactory
    //   3: dup
    //   4: invokespecial 381	com/tencent/open/MySSLSocketFactory:<init>	()V
    //   7: astore_3
    //   8: aload_3
    //   9: getstatic 387	org/apache/http/conn/ssl/SSLSocketFactory:ALLOW_ALL_HOSTNAME_VERIFIER	Lorg/apache/http/conn/ssl/X509HostnameVerifier;
    //   12: invokevirtual 391	org/apache/http/conn/ssl/SSLSocketFactory:setHostnameVerifier	(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V
    //   15: new 393	org/apache/http/params/BasicHttpParams
    //   18: dup
    //   19: invokespecial 394	org/apache/http/params/BasicHttpParams:<init>	()V
    //   22: astore 5
    //   24: aload_0
    //   25: aload_1
    //   26: invokestatic 399	com/tencent/open/OpenConfig:a	(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/open/OpenConfig;
    //   29: ldc_w 401
    //   32: invokevirtual 403	com/tencent/open/OpenConfig:a	(Ljava/lang/String;)I
    //   35: istore 6
    //   37: ldc_w 405
    //   40: new 122	java/lang/StringBuilder
    //   43: dup
    //   44: invokespecial 123	java/lang/StringBuilder:<init>	()V
    //   47: ldc_w 407
    //   50: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   53: iload 6
    //   55: invokevirtual 281	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   58: ldc_w 409
    //   61: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   64: aload_1
    //   65: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   68: ldc_w 411
    //   71: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   74: aload_2
    //   75: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   78: invokevirtual 131	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   81: invokestatic 417	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   84: pop
    //   85: iload 6
    //   87: ifne +8 -> 95
    //   90: sipush 15000
    //   93: istore 6
    //   95: ldc_w 405
    //   98: new 122	java/lang/StringBuilder
    //   101: dup
    //   102: invokespecial 123	java/lang/StringBuilder:<init>	()V
    //   105: ldc_w 419
    //   108: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   111: iload 6
    //   113: invokevirtual 281	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   116: ldc_w 409
    //   119: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   122: aload_1
    //   123: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   126: ldc_w 411
    //   129: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   132: aload_2
    //   133: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   136: invokevirtual 131	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   139: invokestatic 417	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   142: pop
    //   143: aload 5
    //   145: iload 6
    //   147: invokestatic 425	org/apache/http/params/HttpConnectionParams:setConnectionTimeout	(Lorg/apache/http/params/HttpParams;I)V
    //   150: aload_0
    //   151: aload_1
    //   152: invokestatic 399	com/tencent/open/OpenConfig:a	(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/open/OpenConfig;
    //   155: ldc_w 427
    //   158: invokevirtual 403	com/tencent/open/OpenConfig:a	(Ljava/lang/String;)I
    //   161: istore 9
    //   163: ldc_w 405
    //   166: new 122	java/lang/StringBuilder
    //   169: dup
    //   170: invokespecial 123	java/lang/StringBuilder:<init>	()V
    //   173: ldc_w 429
    //   176: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   179: iload 9
    //   181: invokevirtual 281	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   184: ldc_w 409
    //   187: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   190: aload_1
    //   191: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   194: ldc_w 411
    //   197: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   200: aload_2
    //   201: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   204: invokevirtual 131	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   207: invokestatic 417	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   210: pop
    //   211: iload 9
    //   213: ifne +8 -> 221
    //   216: sipush 30000
    //   219: istore 9
    //   221: ldc_w 405
    //   224: new 122	java/lang/StringBuilder
    //   227: dup
    //   228: invokespecial 123	java/lang/StringBuilder:<init>	()V
    //   231: ldc_w 431
    //   234: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   237: iload 9
    //   239: invokevirtual 281	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   242: ldc_w 409
    //   245: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   248: aload_1
    //   249: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   252: ldc_w 411
    //   255: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   258: aload_2
    //   259: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   262: invokevirtual 131	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   265: invokestatic 417	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   268: pop
    //   269: aload 5
    //   271: iload 9
    //   273: invokestatic 434	org/apache/http/params/HttpConnectionParams:setSoTimeout	(Lorg/apache/http/params/HttpParams;I)V
    //   276: aload 5
    //   278: getstatic 440	org/apache/http/HttpVersion:HTTP_1_1	Lorg/apache/http/HttpVersion;
    //   281: invokestatic 446	org/apache/http/params/HttpProtocolParams:setVersion	(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V
    //   284: aload 5
    //   286: ldc_w 448
    //   289: invokestatic 452	org/apache/http/params/HttpProtocolParams:setContentCharset	(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V
    //   292: aload 5
    //   294: new 122	java/lang/StringBuilder
    //   297: dup
    //   298: invokespecial 123	java/lang/StringBuilder:<init>	()V
    //   301: ldc_w 454
    //   304: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   307: getstatic 460	android/os/Build$VERSION:SDK	Ljava/lang/String;
    //   310: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   313: ldc_w 462
    //   316: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   319: getstatic 467	android/os/Build:DEVICE	Ljava/lang/String;
    //   322: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   325: ldc_w 462
    //   328: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   331: getstatic 470	android/os/Build$VERSION:RELEASE	Ljava/lang/String;
    //   334: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   337: invokevirtual 131	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   340: invokestatic 473	org/apache/http/params/HttpProtocolParams:setUserAgent	(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V
    //   343: new 475	org/apache/http/conn/scheme/SchemeRegistry
    //   346: dup
    //   347: invokespecial 476	org/apache/http/conn/scheme/SchemeRegistry:<init>	()V
    //   350: astore 12
    //   352: aload 12
    //   354: new 478	org/apache/http/conn/scheme/Scheme
    //   357: dup
    //   358: ldc_w 480
    //   361: invokestatic 486	org/apache/http/conn/scheme/PlainSocketFactory:getSocketFactory	()Lorg/apache/http/conn/scheme/PlainSocketFactory;
    //   364: bipush 80
    //   366: invokespecial 489	org/apache/http/conn/scheme/Scheme:<init>	(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V
    //   369: invokevirtual 493	org/apache/http/conn/scheme/SchemeRegistry:register	(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
    //   372: pop
    //   373: aload 12
    //   375: new 478	org/apache/http/conn/scheme/Scheme
    //   378: dup
    //   379: ldc_w 495
    //   382: aload_3
    //   383: sipush 443
    //   386: invokespecial 489	org/apache/http/conn/scheme/Scheme:<init>	(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V
    //   389: invokevirtual 493	org/apache/http/conn/scheme/SchemeRegistry:register	(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
    //   392: pop
    //   393: new 497	org/apache/http/impl/client/DefaultHttpClient
    //   396: dup
    //   397: new 499	org/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager
    //   400: dup
    //   401: aload 5
    //   403: aload 12
    //   405: invokespecial 502	org/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager:<init>	(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V
    //   408: aload 5
    //   410: invokespecial 505	org/apache/http/impl/client/DefaultHttpClient:<init>	(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    //   413: astore 15
    //   415: aload_0
    //   416: invokestatic 507	com/tencent/open/Util:a	(Landroid/content/Context;)Lcom/tencent/open/Util$NetworkProxy;
    //   419: astore 16
    //   421: aload 16
    //   423: ifnull +40 -> 463
    //   426: new 509	org/apache/http/HttpHost
    //   429: dup
    //   430: aload 16
    //   432: getfield 511	com/tencent/open/Util$NetworkProxy:a	Ljava/lang/String;
    //   435: aload 16
    //   437: getfield 514	com/tencent/open/Util$NetworkProxy:b	I
    //   440: invokespecial 515	org/apache/http/HttpHost:<init>	(Ljava/lang/String;I)V
    //   443: astore 17
    //   445: aload 15
    //   447: invokeinterface 519 1 0
    //   452: ldc_w 521
    //   455: aload 17
    //   457: invokeinterface 527 3 0
    //   462: pop
    //   463: aload 15
    //   465: areturn
    //   466: astore 25
    //   468: aconst_null
    //   469: astore_3
    //   470: aload 25
    //   472: astore 4
    //   474: aload 4
    //   476: invokevirtual 530	java/security/KeyManagementException:printStackTrace	()V
    //   479: goto -464 -> 15
    //   482: astore 24
    //   484: aconst_null
    //   485: astore_3
    //   486: aload 24
    //   488: astore 19
    //   490: aload 19
    //   492: invokevirtual 531	java/security/NoSuchAlgorithmException:printStackTrace	()V
    //   495: goto -480 -> 15
    //   498: astore 23
    //   500: aconst_null
    //   501: astore_3
    //   502: aload 23
    //   504: astore 20
    //   506: aload 20
    //   508: invokevirtual 532	java/security/KeyStoreException:printStackTrace	()V
    //   511: goto -496 -> 15
    //   514: astore 22
    //   516: aconst_null
    //   517: astore_3
    //   518: aload 22
    //   520: astore 21
    //   522: aload 21
    //   524: invokevirtual 533	java/security/UnrecoverableKeyException:printStackTrace	()V
    //   527: goto -512 -> 15
    //   530: astore 21
    //   532: goto -10 -> 522
    //   535: astore 20
    //   537: goto -31 -> 506
    //   540: astore 19
    //   542: goto -52 -> 490
    //   545: astore 4
    //   547: goto -73 -> 474
    //
    // Exception table:
    //   from	to	target	type
    //   0	8	466	java/security/KeyManagementException
    //   0	8	482	java/security/NoSuchAlgorithmException
    //   0	8	498	java/security/KeyStoreException
    //   0	8	514	java/security/UnrecoverableKeyException
    //   8	15	530	java/security/UnrecoverableKeyException
    //   8	15	535	java/security/KeyStoreException
    //   8	15	540	java/security/NoSuchAlgorithmException
    //   8	15	545	java/security/KeyManagementException
  }

  public static JSONObject a(JSONObject paramJSONObject, String paramString)
  {
    if (paramJSONObject == null)
      paramJSONObject = new JSONObject();
    if (paramString != null)
    {
      String[] arrayOfString1 = paramString.split("&");
      int i = arrayOfString1.length;
      int j = 0;
      while (true)
        if (j < i)
        {
          String[] arrayOfString2 = arrayOfString1[j].split("=");
          if (arrayOfString2.length == 2);
          try
          {
            paramJSONObject.put(URLDecoder.decode(arrayOfString2[0]), URLDecoder.decode(arrayOfString2[1]));
            j++;
          }
          catch (JSONException localJSONException)
          {
            while (true)
              localJSONException.printStackTrace();
          }
        }
    }
    return paramJSONObject;
  }

  public static void a(Context paramContext, String paramString1, long paramLong, String paramString2)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("appid_for_getting_config", paramString2);
    localBundle.putString("strValue", paramString2);
    localBundle.putString("nValue", paramString1);
    localBundle.putString("qver", "1.5");
    if (paramLong != 0L)
      localBundle.putLong("elt", paramLong);
    new f(paramContext, localBundle).start();
  }

  private static void a(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    Intent localIntent = new Intent();
    localIntent.setComponent(new ComponentName(paramString1, paramString2));
    localIntent.setAction("android.intent.action.VIEW");
    localIntent.addFlags(1073741824);
    localIntent.addFlags(268435456);
    localIntent.setData(Uri.parse(paramString3));
    paramContext.startActivity(localIntent);
  }

  public static void a(String paramString1, String paramString2)
  {
    if (a)
      Log.d(paramString1, paramString2);
  }

  public static boolean a(Context paramContext, String paramString)
  {
    try
    {
      a(paramContext, "com.android.browser", "com.android.browser.BrowserActivity", paramString);
      return true;
    }
    catch (Exception localException1)
    {
      try
      {
        a(paramContext, "com.google.android.browser", "com.android.browser.BrowserActivity", paramString);
      }
      catch (Exception localException2)
      {
        try
        {
          a(paramContext, "com.android.chrome", "com.google.android.apps.chrome.Main", paramString);
        }
        catch (Exception localException3)
        {
        }
      }
    }
    return false;
  }

  public static Bundle b(String paramString)
  {
    String str = paramString.replace("auth://", "http://");
    try
    {
      URL localURL = new URL(str);
      Bundle localBundle = a(localURL.getQuery());
      localBundle.putAll(a(localURL.getRef()));
      return localBundle;
    }
    catch (MalformedURLException localMalformedURLException)
    {
    }
    return new Bundle();
  }

  private static String b(Context paramContext)
  {
    if (Build.VERSION.SDK_INT < 11)
    {
      if (paramContext != null)
      {
        String str = Proxy.getHost(paramContext);
        if (f(str))
          str = Proxy.getDefaultHost();
        return str;
      }
      return Proxy.getDefaultHost();
    }
    return System.getProperty("http.proxyHost");
  }

  private static int c(Context paramContext)
  {
    int i = -1;
    if (Build.VERSION.SDK_INT < 11)
      if (paramContext != null)
      {
        i = Proxy.getPort(paramContext);
        if (i < 0)
          i = Proxy.getDefaultPort();
      }
    String str;
    do
    {
      return i;
      return Proxy.getDefaultPort();
      str = System.getProperty("http.proxyPort");
    }
    while (f(str));
    try
    {
      int j = Integer.parseInt(str);
      return j;
    }
    catch (NumberFormatException localNumberFormatException)
    {
    }
    return i;
  }

  public static JSONObject c(String paramString)
  {
    String str = paramString.replace("auth://", "http://");
    try
    {
      URL localURL = new URL(str);
      JSONObject localJSONObject = a(null, localURL.getQuery());
      a(localJSONObject, localURL.getRef());
      return localJSONObject;
    }
    catch (MalformedURLException localMalformedURLException)
    {
    }
    return new JSONObject();
  }

  public static JSONObject d(String paramString)
  {
    if (paramString.equals("false"))
      paramString = "{value : false}";
    if (paramString.equals("true"))
      paramString = "{value : true}";
    if (paramString.contains("allback("))
      paramString = paramString.replaceFirst("[\\s\\S]*allback\\(([\\s\\S]*)\\);[^\\)]*\\z", "$1").trim();
    return new JSONObject(paramString);
  }

  public static String e(String paramString)
  {
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      localMessageDigest.update(paramString.getBytes());
      byte[] arrayOfByte = localMessageDigest.digest();
      if (arrayOfByte != null)
      {
        StringBuilder localStringBuilder = new StringBuilder();
        int i = arrayOfByte.length;
        for (int j = 0; j < i; j++)
        {
          int k = arrayOfByte[j];
          localStringBuilder.append(a(k >>> 4));
          localStringBuilder.append(a(k));
        }
        String str = localStringBuilder.toString();
        paramString = str;
      }
      return paramString;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      localNoSuchAlgorithmException.printStackTrace();
    }
    return paramString;
  }

  private static boolean f(String paramString)
  {
    return (paramString == null) || (paramString.length() == 0);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.tencent.open.Util
 * JD-Core Version:    0.6.0
 */