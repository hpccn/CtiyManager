package com.amap.api.location.core;

import java.io.IOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.net.UnknownHostException;

public class h
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
      if ((paramProxy != null) && (!e.n))
      {
        localHttpURLConnection = (HttpURLConnection)localURL.openConnection(paramProxy);
        localHttpURLConnection.setRequestMethod("POST");
        localHttpURLConnection.setInstanceFollowRedirects(true);
        localHttpURLConnection.setConnectTimeout(30000);
        localHttpURLConnection.setReadTimeout(50000);
        localHttpURLConnection.setDoInput(true);
        localHttpURLConnection.setDoOutput(true);
        localHttpURLConnection.setUseCaches(false);
        localHttpURLConnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
        localHttpURLConnection.setRequestProperty("Content-Length", String.valueOf(paramArrayOfByte.length));
        localHttpURLConnection.setRequestProperty("Accept-Encoding", "gzip");
        localHttpURLConnection.setRequestProperty("Connection", "Keep-Alive");
        localHttpURLConnection.setRequestProperty("X-MapAPI", d.a(null).b());
        localHttpURLConnection.setRequestProperty("ia", "1");
        localHttpURLConnection.setRequestProperty("key", d.a);
        localHttpURLConnection.connect();
        OutputStream localOutputStream = localHttpURLConnection.getOutputStream();
        localOutputStream.write(paramArrayOfByte);
        localOutputStream.flush();
        localOutputStream.close();
        if (localHttpURLConnection.getResponseCode() == 200)
          break label282;
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
    label282: return localHttpURLConnection;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.location.core.h
 * JD-Core Version:    0.6.0
 */