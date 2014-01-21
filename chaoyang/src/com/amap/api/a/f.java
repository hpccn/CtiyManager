package com.amap.api.a;

import android.util.Log;
import com.amap.api.a.b.a;
import com.amap.api.a.b.c;
import java.io.IOException;
import java.io.InputStream;
import java.io.PushbackInputStream;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.UnknownHostException;
import java.net.UnknownServiceException;
import java.util.zip.GZIPInputStream;
import org.json.JSONObject;

public class f
{
  public static int a = -1;
  static String b = "";
  public static HttpURLConnection d = null;
  int c = 0;

  protected static InputStream a(HttpURLConnection paramHttpURLConnection)
    throws a
  {
    try
    {
      PushbackInputStream localPushbackInputStream = new PushbackInputStream(paramHttpURLConnection.getInputStream(), 2);
      byte[] arrayOfByte = new byte[2];
      localPushbackInputStream.read(arrayOfByte);
      localPushbackInputStream.unread(arrayOfByte);
      if ((arrayOfByte[0] == 31) && (arrayOfByte[1] == -117))
      {
        GZIPInputStream localGZIPInputStream = new GZIPInputStream(localPushbackInputStream);
        return localGZIPInputStream;
      }
      return localPushbackInputStream;
    }
    catch (ProtocolException localProtocolException)
    {
      throw new a("协议解析错误 - ProtocolException");
    }
    catch (UnknownHostException localUnknownHostException)
    {
      throw new a("未知主机 - UnKnowHostException");
    }
    catch (UnknownServiceException localUnknownServiceException)
    {
      throw new a("服务器连接失败 - UnknownServiceException");
    }
    catch (IOException localIOException)
    {
    }
    throw new a("IO 操作异常 - IOException");
  }

  private static String a()
  {
    return "http://restapi.amap.com/log/init";
  }

  // ERROR //
  public static boolean a(android.content.Context paramContext)
    throws a
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: invokestatic 79	com/amap/api/a/f:b	()[B
    //   6: astore_2
    //   7: invokestatic 81	com/amap/api/a/f:a	()Ljava/lang/String;
    //   10: aload_2
    //   11: aload_0
    //   12: invokestatic 86	com/amap/api/a/b/c:c	(Landroid/content/Context;)Ljava/net/Proxy;
    //   15: invokestatic 91	com/amap/api/a/b/d:a	(Ljava/lang/String;[BLjava/net/Proxy;)Ljava/net/HttpURLConnection;
    //   18: putstatic 21	com/amap/api/a/f:d	Ljava/net/HttpURLConnection;
    //   21: getstatic 21	com/amap/api/a/f:d	Ljava/net/HttpURLConnection;
    //   24: invokestatic 93	com/amap/api/a/f:a	(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    //   27: astore 9
    //   29: aload 9
    //   31: astore 4
    //   33: aload 4
    //   35: invokestatic 96	com/amap/api/a/f:a	(Ljava/io/InputStream;)Z
    //   38: istore 10
    //   40: aload 4
    //   42: ifnull +8 -> 50
    //   45: aload 4
    //   47: invokevirtual 101	java/io/InputStream:close	()V
    //   50: iconst_0
    //   51: ifeq +7 -> 58
    //   54: aconst_null
    //   55: invokevirtual 104	java/io/OutputStream:close	()V
    //   58: getstatic 21	com/amap/api/a/f:d	Ljava/net/HttpURLConnection;
    //   61: ifnull +13 -> 74
    //   64: getstatic 21	com/amap/api/a/f:d	Ljava/net/HttpURLConnection;
    //   67: invokevirtual 107	java/net/HttpURLConnection:disconnect	()V
    //   70: aconst_null
    //   71: putstatic 21	com/amap/api/a/f:d	Ljava/net/HttpURLConnection;
    //   74: ldc 2
    //   76: monitorexit
    //   77: iload 10
    //   79: ireturn
    //   80: astore 12
    //   82: new 29	com/amap/api/a/b/a
    //   85: dup
    //   86: ldc 72
    //   88: invokespecial 66	com/amap/api/a/b/a:<init>	(Ljava/lang/String;)V
    //   91: athrow
    //   92: astore_1
    //   93: ldc 2
    //   95: monitorexit
    //   96: aload_1
    //   97: athrow
    //   98: astore 11
    //   100: new 29	com/amap/api/a/b/a
    //   103: dup
    //   104: ldc 72
    //   106: invokespecial 66	com/amap/api/a/b/a:<init>	(Ljava/lang/String;)V
    //   109: athrow
    //   110: astore 7
    //   112: aconst_null
    //   113: astore 4
    //   115: ldc 109
    //   117: aload 7
    //   119: invokevirtual 110	com/amap/api/a/b/a:a	()Ljava/lang/String;
    //   122: invokestatic 116	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   125: pop
    //   126: aload 7
    //   128: invokevirtual 119	com/amap/api/a/b/a:printStackTrace	()V
    //   131: new 29	com/amap/api/a/b/a
    //   134: dup
    //   135: aload 7
    //   137: invokevirtual 110	com/amap/api/a/b/a:a	()Ljava/lang/String;
    //   140: invokespecial 66	com/amap/api/a/b/a:<init>	(Ljava/lang/String;)V
    //   143: athrow
    //   144: astore_3
    //   145: aload 4
    //   147: ifnull +8 -> 155
    //   150: aload 4
    //   152: invokevirtual 101	java/io/InputStream:close	()V
    //   155: iconst_0
    //   156: ifeq +7 -> 163
    //   159: aconst_null
    //   160: invokevirtual 104	java/io/OutputStream:close	()V
    //   163: getstatic 21	com/amap/api/a/f:d	Ljava/net/HttpURLConnection;
    //   166: ifnull +13 -> 179
    //   169: getstatic 21	com/amap/api/a/f:d	Ljava/net/HttpURLConnection;
    //   172: invokevirtual 107	java/net/HttpURLConnection:disconnect	()V
    //   175: aconst_null
    //   176: putstatic 21	com/amap/api/a/f:d	Ljava/net/HttpURLConnection;
    //   179: aload_3
    //   180: athrow
    //   181: astore 6
    //   183: new 29	com/amap/api/a/b/a
    //   186: dup
    //   187: ldc 72
    //   189: invokespecial 66	com/amap/api/a/b/a:<init>	(Ljava/lang/String;)V
    //   192: athrow
    //   193: astore 5
    //   195: new 29	com/amap/api/a/b/a
    //   198: dup
    //   199: ldc 72
    //   201: invokespecial 66	com/amap/api/a/b/a:<init>	(Ljava/lang/String;)V
    //   204: athrow
    //   205: astore_3
    //   206: aconst_null
    //   207: astore 4
    //   209: goto -64 -> 145
    //   212: astore 7
    //   214: goto -99 -> 115
    //
    // Exception table:
    //   from	to	target	type
    //   45	50	80	java/io/IOException
    //   3	7	92	finally
    //   45	50	92	finally
    //   54	58	92	finally
    //   58	74	92	finally
    //   82	92	92	finally
    //   100	110	92	finally
    //   150	155	92	finally
    //   159	163	92	finally
    //   163	179	92	finally
    //   179	181	92	finally
    //   183	193	92	finally
    //   195	205	92	finally
    //   54	58	98	java/io/IOException
    //   7	29	110	com/amap/api/a/b/a
    //   33	40	144	finally
    //   115	144	144	finally
    //   150	155	181	java/io/IOException
    //   159	163	193	java/io/IOException
    //   7	29	205	finally
    //   33	40	212	com/amap/api/a/b/a
  }

  private static boolean a(InputStream paramInputStream)
    throws a
  {
    do
      try
      {
        JSONObject localJSONObject = new JSONObject(new String(c.a(paramInputStream)));
        if (localJSONObject.has("status"))
        {
          i = localJSONObject.getInt("status");
          if (i == 1)
            a = 1;
        }
        else
        {
          if (localJSONObject.has("info"))
            b = localJSONObject.getString("info");
          if (a != 0)
            continue;
          Log.i("AuthFailure", b);
          throw new a("key鉴权失败");
        }
      }
      catch (Exception localException)
      {
        while (true)
        {
          int i;
          localException.printStackTrace();
          if (a != 1)
            break;
          return true;
          if (i != 0)
            continue;
          a = 0;
        }
      }
      finally
      {
        while (a == 1);
        return false;
      }
    while (a == 1);
    return false;
    return false;
  }

  private static byte[] b()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("resType=json&encode=UTF-8");
    return localStringBuffer.toString().getBytes();
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.a.f
 * JD-Core Version:    0.6.0
 */