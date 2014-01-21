package com.amap.api.search.core;

import java.io.IOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.net.UnknownHostException;

public class e
{
  public static HttpURLConnection a(String paramString, Proxy paramProxy)
    throws AMapException
  {
    if (paramString == null)
      throw new AMapException("无效的参数 - IllegalArgumentException");
    HttpURLConnection localHttpURLConnection;
    try
    {
      localURL = new URL(paramString);
      if (paramProxy != null)
      {
        localHttpURLConnection = (HttpURLConnection)localURL.openConnection(paramProxy);
        localHttpURLConnection.setRequestMethod("GET");
        localHttpURLConnection.setConnectTimeout(30000);
        localHttpURLConnection.setReadTimeout(50000);
        localHttpURLConnection.setRequestProperty("Accept-Encoding", "gzip");
        localHttpURLConnection.connect();
        if (localHttpURLConnection.getResponseCode() == 200)
          break label165;
        throw new AMapException("http连接失败 - ConnectionException");
      }
    }
    catch (UnknownHostException localUnknownHostException)
    {
      while (true)
      {
        URL localURL;
        throw new AMapException("未知主机 - UnKnowHostException");
        localHttpURLConnection = (HttpURLConnection)localURL.openConnection();
      }
    }
    catch (MalformedURLException localMalformedURLException)
    {
      throw new AMapException("url异常 - MalformedURLException");
    }
    catch (ProtocolException localProtocolException)
    {
      throw new AMapException("协议解析错误 - ProtocolException");
    }
    catch (SocketTimeoutException localSocketTimeoutException)
    {
      throw new AMapException("socket 连接超时 - SocketTimeoutException");
    }
    catch (IOException localIOException)
    {
      throw new AMapException("IO 操作异常 - IOException");
    }
    label165: return localHttpURLConnection;
  }

  public static HttpURLConnection a(String paramString, byte[] paramArrayOfByte, Proxy paramProxy)
    throws AMapException
  {
    if (paramString == null)
      throw new AMapException("无效的参数 - IllegalArgumentException");
    HttpURLConnection localHttpURLConnection;
    try
    {
      localURL = new URL(paramString);
      if (paramProxy != null)
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
        localHttpURLConnection.setRequestProperty("X-MapAPI", b.a(null).a());
        localHttpURLConnection.setRequestProperty("ia", "1");
        localHttpURLConnection.setRequestProperty("key", b.a);
        localHttpURLConnection.connect();
        OutputStream localOutputStream = localHttpURLConnection.getOutputStream();
        localOutputStream.write(paramArrayOfByte);
        localOutputStream.flush();
        localOutputStream.close();
        if (localHttpURLConnection.getResponseCode() == 200)
          break label276;
        throw new AMapException("http连接失败 - ConnectionException");
      }
    }
    catch (UnknownHostException localUnknownHostException)
    {
      while (true)
      {
        URL localURL;
        throw new AMapException("未知主机 - UnKnowHostException");
        localHttpURLConnection = (HttpURLConnection)localURL.openConnection();
      }
    }
    catch (MalformedURLException localMalformedURLException)
    {
      throw new AMapException("url异常 - MalformedURLException");
    }
    catch (ProtocolException localProtocolException)
    {
      throw new AMapException("协议解析错误 - ProtocolException");
    }
    catch (SocketTimeoutException localSocketTimeoutException)
    {
      throw new AMapException("socket 连接超时 - SocketTimeoutException");
    }
    catch (IOException localIOException)
    {
      throw new AMapException("IO 操作异常 - IOException");
    }
    label276: return localHttpURLConnection;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.search.core.e
 * JD-Core Version:    0.6.0
 */