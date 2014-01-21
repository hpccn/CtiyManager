package com.tencent.open;

import java.security.cert.X509Certificate;
import javax.net.ssl.X509TrustManager;

final class e
  implements X509TrustManager
{
  public void checkClientTrusted(X509Certificate[] paramArrayOfX509Certificate, String paramString)
  {
    Util.a("", paramString);
  }

  public void checkServerTrusted(X509Certificate[] paramArrayOfX509Certificate, String paramString)
  {
    Util.a("", paramString);
  }

  public X509Certificate[] getAcceptedIssuers()
  {
    Util.a("", "");
    return null;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.tencent.open.e
 * JD-Core Version:    0.6.0
 */