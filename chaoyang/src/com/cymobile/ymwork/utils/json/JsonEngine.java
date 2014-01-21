package com.cymobile.ymwork.utils.json;

import android.util.Log;
import com.cymobile.ymwork.utils.DeviceInfoUtils;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.MalformedURLException;
import java.net.Proxy.Type;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.net.UnknownHostException;
import java.util.zip.GZIPInputStream;

public class JsonEngine
{
  private static final String ENC_JSON = "utf-8";
  private static final int HTTP_PORT = 80;
  private static final String TAG = "JsonEngine";
  private static final int TIME_OUT = 15000;

  public static InputStream getHttpStream(String paramString)
    throws SocketTimeoutException, MalformedURLException, UnknownHostException, IOException
  {
    URL localURL = new URL(paramString);
    String str1 = getProxyUrl();
    Log.i("JsonEngine", "XMLDataNetwork getHttpStream() spce=" + paramString);
    Log.i("JsonEngine", "XMLDataNetwork getHttpStream() str1=" + str1);
    InetSocketAddress localInetSocketAddress;
    if ((str1 != null) && (str1.trim().length() > 0))
      localInetSocketAddress = new InetSocketAddress(str1, 80);
    for (HttpURLConnection localHttpURLConnection = (HttpURLConnection)localURL.openConnection(new java.net.Proxy(Proxy.Type.HTTP, localInetSocketAddress)); ; localHttpURLConnection = (HttpURLConnection)localURL.openConnection())
    {
      localHttpURLConnection.setConnectTimeout(15000);
      localHttpURLConnection.setReadTimeout(15000);
      localHttpURLConnection.setRequestProperty("Accept-Encoding", "gzip");
      String str2 = localHttpURLConnection.getHeaderField("content-encoding");
      if ((str2 != null) && (str2.equals("gzip")))
        break;
      return localHttpURLConnection.getInputStream();
    }
    return getUnzippedStream(localHttpURLConnection.getInputStream());
  }

  // ERROR //
  public static String getJson(String paramString)
  {
    // Byte code:
    //   0: ldc 14
    //   2: new 41	java/lang/StringBuilder
    //   5: dup
    //   6: ldc 131
    //   8: invokespecial 44	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   11: aload_0
    //   12: invokevirtual 48	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   15: invokevirtual 51	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   18: invokestatic 57	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   21: pop
    //   22: new 133	java/lang/StringBuffer
    //   25: dup
    //   26: invokespecial 134	java/lang/StringBuffer:<init>	()V
    //   29: astore_2
    //   30: aconst_null
    //   31: astore_3
    //   32: aload_0
    //   33: invokestatic 136	com/cymobile/ymwork/utils/json/JsonEngine:getHttpStream	(Ljava/lang/String;)Ljava/io/InputStream;
    //   36: astore_3
    //   37: new 138	java/io/BufferedReader
    //   40: dup
    //   41: new 140	java/io/InputStreamReader
    //   44: dup
    //   45: aload_3
    //   46: invokespecial 143	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   49: invokespecial 146	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   52: astore 8
    //   54: aload 8
    //   56: invokevirtual 149	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   59: astore 9
    //   61: aload 9
    //   63: ifnonnull +16 -> 79
    //   66: aload_3
    //   67: ifnull +7 -> 74
    //   70: aload_3
    //   71: invokevirtual 154	java/io/InputStream:close	()V
    //   74: aload_2
    //   75: invokevirtual 155	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   78: areturn
    //   79: ldc 14
    //   81: new 41	java/lang/StringBuilder
    //   84: dup
    //   85: ldc 157
    //   87: invokespecial 44	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   90: aload 9
    //   92: invokevirtual 48	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   95: invokevirtual 51	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   98: invokestatic 57	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   101: pop
    //   102: aload_2
    //   103: aload 9
    //   105: invokevirtual 160	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   108: pop
    //   109: goto -55 -> 54
    //   112: astore 6
    //   114: aload 6
    //   116: invokevirtual 163	java/lang/Exception:printStackTrace	()V
    //   119: aload_3
    //   120: ifnull -46 -> 74
    //   123: aload_3
    //   124: invokevirtual 154	java/io/InputStream:close	()V
    //   127: goto -53 -> 74
    //   130: astore 7
    //   132: aload 7
    //   134: invokevirtual 164	java/io/IOException:printStackTrace	()V
    //   137: goto -63 -> 74
    //   140: astore 4
    //   142: aload_3
    //   143: ifnull +7 -> 150
    //   146: aload_3
    //   147: invokevirtual 154	java/io/InputStream:close	()V
    //   150: aload 4
    //   152: athrow
    //   153: astore 5
    //   155: aload 5
    //   157: invokevirtual 164	java/io/IOException:printStackTrace	()V
    //   160: goto -10 -> 150
    //   163: astore 12
    //   165: aload 12
    //   167: invokevirtual 164	java/io/IOException:printStackTrace	()V
    //   170: goto -96 -> 74
    //
    // Exception table:
    //   from	to	target	type
    //   32	54	112	java/lang/Exception
    //   54	61	112	java/lang/Exception
    //   79	109	112	java/lang/Exception
    //   123	127	130	java/io/IOException
    //   32	54	140	finally
    //   54	61	140	finally
    //   79	109	140	finally
    //   114	119	140	finally
    //   146	150	153	java/io/IOException
    //   70	74	163	java/io/IOException
  }

  // ERROR //
  public static String getJsonStrFromFile(InputStream paramInputStream)
  {
    // Byte code:
    //   0: ldc 14
    //   2: new 41	java/lang/StringBuilder
    //   5: dup
    //   6: ldc 170
    //   8: invokespecial 44	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   11: aload_0
    //   12: invokevirtual 173	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   15: invokevirtual 51	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   18: invokestatic 57	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   21: pop
    //   22: new 133	java/lang/StringBuffer
    //   25: dup
    //   26: invokespecial 134	java/lang/StringBuffer:<init>	()V
    //   29: astore_2
    //   30: aconst_null
    //   31: astore_3
    //   32: new 140	java/io/InputStreamReader
    //   35: dup
    //   36: aload_0
    //   37: ldc 8
    //   39: invokespecial 176	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;Ljava/lang/String;)V
    //   42: astore 4
    //   44: new 138	java/io/BufferedReader
    //   47: dup
    //   48: aload 4
    //   50: invokespecial 146	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   53: astore 5
    //   55: aload 5
    //   57: invokevirtual 149	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   60: astore 12
    //   62: aload 12
    //   64: ifnonnull +18 -> 82
    //   67: aload 4
    //   69: ifnull +112 -> 181
    //   72: aload 4
    //   74: invokevirtual 177	java/io/InputStreamReader:close	()V
    //   77: aload_2
    //   78: invokevirtual 155	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   81: areturn
    //   82: aload_2
    //   83: aload 12
    //   85: invokevirtual 160	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   88: pop
    //   89: goto -34 -> 55
    //   92: astore 10
    //   94: aload 4
    //   96: astore_3
    //   97: aload 10
    //   99: invokevirtual 178	java/io/UnsupportedEncodingException:printStackTrace	()V
    //   102: aload_3
    //   103: ifnull -26 -> 77
    //   106: aload_3
    //   107: invokevirtual 177	java/io/InputStreamReader:close	()V
    //   110: goto -33 -> 77
    //   113: astore 11
    //   115: aload 11
    //   117: invokevirtual 164	java/io/IOException:printStackTrace	()V
    //   120: goto -43 -> 77
    //   123: astore 6
    //   125: aload 6
    //   127: invokevirtual 164	java/io/IOException:printStackTrace	()V
    //   130: aload_3
    //   131: ifnull -54 -> 77
    //   134: aload_3
    //   135: invokevirtual 177	java/io/InputStreamReader:close	()V
    //   138: goto -61 -> 77
    //   141: astore 9
    //   143: aload 9
    //   145: invokevirtual 164	java/io/IOException:printStackTrace	()V
    //   148: goto -71 -> 77
    //   151: astore 7
    //   153: aload_3
    //   154: ifnull +7 -> 161
    //   157: aload_3
    //   158: invokevirtual 177	java/io/InputStreamReader:close	()V
    //   161: aload 7
    //   163: athrow
    //   164: astore 8
    //   166: aload 8
    //   168: invokevirtual 164	java/io/IOException:printStackTrace	()V
    //   171: goto -10 -> 161
    //   174: astore 14
    //   176: aload 14
    //   178: invokevirtual 164	java/io/IOException:printStackTrace	()V
    //   181: goto -104 -> 77
    //   184: astore 7
    //   186: aload 4
    //   188: astore_3
    //   189: goto -36 -> 153
    //   192: astore 6
    //   194: aload 4
    //   196: astore_3
    //   197: goto -72 -> 125
    //   200: astore 10
    //   202: aconst_null
    //   203: astore_3
    //   204: goto -107 -> 97
    //
    // Exception table:
    //   from	to	target	type
    //   44	55	92	java/io/UnsupportedEncodingException
    //   55	62	92	java/io/UnsupportedEncodingException
    //   82	89	92	java/io/UnsupportedEncodingException
    //   106	110	113	java/io/IOException
    //   32	44	123	java/io/IOException
    //   134	138	141	java/io/IOException
    //   32	44	151	finally
    //   97	102	151	finally
    //   125	130	151	finally
    //   157	161	164	java/io/IOException
    //   72	77	174	java/io/IOException
    //   44	55	184	finally
    //   55	62	184	finally
    //   82	89	184	finally
    //   44	55	192	java/io/IOException
    //   55	62	192	java/io/IOException
    //   82	89	192	java/io/IOException
    //   32	44	200	java/io/UnsupportedEncodingException
  }

  public static String getProxyUrl()
  {
    boolean bool = DeviceInfoUtils.isWifi();
    String str = null;
    if (!bool)
    {
      Log.i("JsonEngine", "XMLDataNetwork getProxyUrl() isWifi");
      str = android.net.Proxy.getDefaultHost();
    }
    return str;
  }

  public static InputStream getUnzippedStream(InputStream paramInputStream)
  {
    Log.i("JsonEngine", "XMLDataNetwork getUnzippedStream()");
    try
    {
      BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(new GZIPInputStream(paramInputStream)));
      StringBuffer localStringBuffer = new StringBuffer();
      while (true)
      {
        String str = localBufferedReader.readLine();
        if (str == null)
          return new ByteArrayInputStream(localStringBuffer.toString().getBytes());
        localStringBuffer.append(str);
        Log.i("JsonEngine", str);
      }
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
    return null;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.utils.json.JsonEngine
 * JD-Core Version:    0.6.0
 */