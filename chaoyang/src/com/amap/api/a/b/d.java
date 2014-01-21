package com.amap.api.a.b;

import java.io.IOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.net.UnknownHostException;

public class d
{
  public static HttpURLConnection a(String paramString, byte[] paramArrayOfByte, Proxy paramProxy)
    throws a
  {
    if (paramString == null)
      throw new a("无效的参数 - IllegalArgumentException");
    HttpURLConnection localHttpURLConnection;
    try
    {
      localURL = new URL(paramString);
      if (paramProxy != null)
      {
        localHttpURLConnection = (HttpURLConnection)localURL.openConnection(paramProxy);
        localHttpURLConnection.setRequestMethod("POST");
        localHttpURLConnection.setInstanceFollowRedirects(true);
        localHttpURLConnection.setConnectTimeout(5000);
        localHttpURLConnection.setReadTimeout(50000);
        localHttpURLConnection.setDoInput(true);
        localHttpURLConnection.setDoOutput(true);
        localHttpURLConnection.setUseCaches(false);
        localHttpURLConnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
        localHttpURLConnection.setRequestProperty("Content-Length", String.valueOf(paramArrayOfByte.length));
        localHttpURLConnection.setRequestProperty("Accept-Encoding", "gzip");
        localHttpURLConnection.setRequestProperty("Connection", "Keep-Alive");
        localHttpURLConnection.setRequestProperty("X-MapAPI", c.a(null).a());
        localHttpURLConnection.setRequestProperty("ia", "1");
        localHttpURLConnection.setRequestProperty("key", c.a);
        localHttpURLConnection.connect();
        OutputStream localOutputStream = localHttpURLConnection.getOutputStream();
        localOutputStream.write(paramArrayOfByte);
        localOutputStream.flush();
        localOutputStream.close();
        if (localHttpURLConnection.getResponseCode() == 200)
          break label276;
        throw new a("http连接失败 - ConnectionException");
      }
    }
    catch (UnknownHostException localUnknownHostException)
    {
      while (true)
      {
        URL localURL;
        throw new a("未知主机 - UnKnowHostException");
        localHttpURLConnection = (HttpURLConnection)localURL.openConnection();
      }
    }
    catch (MalformedURLException localMalformedURLException)
    {
      throw new a("url异常 - MalformedURLException");
    }
    catch (ProtocolException localProtocolException)
    {
      throw new a("协议解析错误 - ProtocolException");
    }
    catch (SocketTimeoutException localSocketTimeoutException)
    {
      throw new a("socket 连接超时 - SocketTimeoutException");
    }
    catch (IOException localIOException)
    {
      throw new a("IO 操作异常 - IOException");
    }
    label276: return localHttpURLConnection;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.a.b.d
 * JD-Core Version:    0.6.0
 */