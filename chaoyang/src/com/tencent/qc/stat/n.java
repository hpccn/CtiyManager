package com.tencent.qc.stat;

import org.apache.http.HttpResponse;
import org.apache.http.impl.client.DefaultConnectionKeepAliveStrategy;
import org.apache.http.protocol.HttpContext;

class n extends DefaultConnectionKeepAliveStrategy
{
  n(l paraml)
  {
  }

  public long getKeepAliveDuration(HttpResponse paramHttpResponse, HttpContext paramHttpContext)
  {
    long l = super.getKeepAliveDuration(paramHttpResponse, paramHttpContext);
    if (l == -1L)
      l = 20000L;
    return l;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.tencent.qc.stat.n
 * JD-Core Version:    0.6.0
 */