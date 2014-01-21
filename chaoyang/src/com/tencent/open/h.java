package com.tencent.open;

import android.content.Context;
import android.os.Bundle;
import com.tencent.tauth.IRequestListener;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.SocketTimeoutException;
import org.apache.http.conn.ConnectTimeoutException;
import org.json.JSONException;
import org.json.JSONObject;

class h extends Thread
{
  h(OpenApi paramOpenApi, Context paramContext, String paramString1, Bundle paramBundle, String paramString2, IRequestListener paramIRequestListener, Object paramObject)
  {
  }

  public void run()
  {
    try
    {
      JSONObject localJSONObject = this.g.a(this.a, this.b, this.c, this.d);
      if (this.e != null)
        this.e.onComplete(localJSONObject, this.f);
      return;
    }
    catch (MalformedURLException localMalformedURLException)
    {
      while (this.e == null);
      this.e.onMalformedURLException(localMalformedURLException, this.f);
      return;
    }
    catch (ConnectTimeoutException localConnectTimeoutException)
    {
      while (this.e == null);
      this.e.onConnectTimeoutException(localConnectTimeoutException, this.f);
      return;
    }
    catch (SocketTimeoutException localSocketTimeoutException)
    {
      while (this.e == null);
      this.e.onSocketTimeoutException(localSocketTimeoutException, this.f);
      return;
    }
    catch (NetworkUnavailableException localNetworkUnavailableException)
    {
      while (this.e == null);
      this.e.onNetworkUnavailableException(localNetworkUnavailableException, this.f);
      return;
    }
    catch (HttpStatusException localHttpStatusException)
    {
      while (this.e == null);
      this.e.onHttpStatusException(localHttpStatusException, this.f);
      return;
    }
    catch (IOException localIOException)
    {
      while (this.e == null);
      this.e.onIOException(localIOException, this.f);
      return;
    }
    catch (JSONException localJSONException)
    {
      while (this.e == null);
      this.e.onJSONException(localJSONException, this.f);
      return;
    }
    catch (Exception localException)
    {
      while (this.e == null);
      this.e.onUnknowException(localException, this.f);
    }
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.tencent.open.h
 * JD-Core Version:    0.6.0
 */