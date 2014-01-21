package com.tencent.open;

import android.os.Bundle;
import org.json.JSONObject;

class c extends Thread
{
  c(OpenConfig paramOpenConfig, Bundle paramBundle)
  {
  }

  public void run()
  {
    try
    {
      JSONObject localJSONObject = Util.d(Util.a(OpenConfig.a(this.b), "http://cgi.connect.qq.com/qqconnectopen/openapi/policy_conf", "GET", this.a).a);
      OpenConfig.a(this.b, localJSONObject);
      OpenConfig.a(this.b, 0);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.tencent.open.c
 * JD-Core Version:    0.6.0
 */