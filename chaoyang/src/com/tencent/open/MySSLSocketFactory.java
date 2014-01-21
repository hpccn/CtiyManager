package com.tencent.open;

import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.security.SecureRandom;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.TrustManager;
import org.apache.http.conn.scheme.HostNameResolver;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;

public class MySSLSocketFactory extends org.apache.http.conn.ssl.SSLSocketFactory
{
  private final SSLContext a = SSLContext.getInstance("TLS");
  private final javax.net.ssl.SSLSocketFactory b;
  private final HostNameResolver c;

  public MySSLSocketFactory()
  {
    super("TLS", null, null, null, null, null);
    SSLContext localSSLContext = this.a;
    TrustManager[] arrayOfTrustManager = new TrustManager[1];
    arrayOfTrustManager[0] = new i(this);
    localSSLContext.init(null, arrayOfTrustManager, new SecureRandom());
    this.b = this.a.getSocketFactory();
    this.c = null;
  }

  public Socket connectSocket(Socket paramSocket, String paramString, int paramInt1, InetAddress paramInetAddress, int paramInt2, HttpParams paramHttpParams)
  {
    if (paramString == null)
      throw new IllegalArgumentException("Target host may not be null.");
    if (paramHttpParams == null)
      throw new IllegalArgumentException("Parameters may not be null.");
    Socket localSocket;
    SSLSocket localSSLSocket;
    int i;
    int j;
    if (paramSocket != null)
    {
      localSocket = paramSocket;
      localSSLSocket = (SSLSocket)localSocket;
      if ((paramInetAddress != null) || (paramInt2 > 0))
      {
        if (paramInt2 < 0)
          paramInt2 = 0;
        localSSLSocket.bind(new InetSocketAddress(paramInetAddress, paramInt2));
      }
      i = HttpConnectionParams.getConnectionTimeout(paramHttpParams);
      j = HttpConnectionParams.getSoTimeout(paramHttpParams);
      if (this.c == null)
        break label146;
    }
    label146: for (InetSocketAddress localInetSocketAddress = new InetSocketAddress(this.c.resolve(paramString), paramInt1); ; localInetSocketAddress = new InetSocketAddress(paramString, paramInt1))
    {
      localSSLSocket.connect(localInetSocketAddress, i);
      localSSLSocket.setSoTimeout(j);
      return localSSLSocket;
      localSocket = createSocket();
      break;
    }
  }

  public Socket createSocket()
  {
    return (SSLSocket)this.b.createSocket();
  }

  public Socket createSocket(Socket paramSocket, String paramString, int paramInt, boolean paramBoolean)
  {
    if (paramInt == -1)
      return (SSLSocket)this.b.createSocket(paramSocket, paramString, 443, paramBoolean);
    return (SSLSocket)this.b.createSocket(paramSocket, paramString, paramInt, paramBoolean);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.tencent.open.MySSLSocketFactory
 * JD-Core Version:    0.6.0
 */