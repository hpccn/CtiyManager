package com.tencent.plus;

import android.os.Handler;
import com.tencent.open.HttpStatusException;
import com.tencent.open.NetworkUnavailableException;
import com.tencent.tauth.IRequestListener;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.SocketTimeoutException;
import org.apache.http.conn.ConnectTimeoutException;
import org.json.JSONException;
import org.json.JSONObject;

class g
  implements IRequestListener
{
  g(ImageActivity paramImageActivity)
  {
  }

  private void a(int paramInt)
  {
    if (ImageActivity.m(this.a) < 2)
      ImageActivity.n(this.a);
  }

  public void onComplete(JSONObject paramJSONObject, Object paramObject)
  {
    int i = -1;
    try
    {
      i = paramJSONObject.getInt("ret");
      if (i == 0)
      {
        String str = paramJSONObject.getString("nickname");
        ImageActivity.k(this.a).post(new a(this, str));
        this.a.a("10659", 0L);
      }
      while (true)
      {
        if (i != 0)
          a(i);
        return;
        this.a.a("10661", 0L);
      }
    }
    catch (JSONException localJSONException)
    {
      while (true)
        localJSONException.printStackTrace();
    }
  }

  public void onConnectTimeoutException(ConnectTimeoutException paramConnectTimeoutException, Object paramObject)
  {
    a(0);
  }

  public void onHttpStatusException(HttpStatusException paramHttpStatusException, Object paramObject)
  {
    a(0);
  }

  public void onIOException(IOException paramIOException, Object paramObject)
  {
    a(0);
  }

  public void onJSONException(JSONException paramJSONException, Object paramObject)
  {
    a(0);
  }

  public void onMalformedURLException(MalformedURLException paramMalformedURLException, Object paramObject)
  {
    a(0);
  }

  public void onNetworkUnavailableException(NetworkUnavailableException paramNetworkUnavailableException, Object paramObject)
  {
    a(0);
  }

  public void onSocketTimeoutException(SocketTimeoutException paramSocketTimeoutException, Object paramObject)
  {
    a(0);
  }

  public void onUnknowException(Exception paramException, Object paramObject)
  {
    a(0);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.tencent.plus.g
 * JD-Core Version:    0.6.0
 */