package com.tencent.open;

import android.os.Handler;
import android.os.Message;
import android.util.Log;
import com.tencent.tauth.IRequestListener;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.SocketTimeoutException;
import org.apache.http.conn.ConnectTimeoutException;
import org.json.JSONException;
import org.json.JSONObject;

class d
  implements IRequestListener
{
  public d(a parama)
  {
  }

  public void onComplete(JSONObject paramJSONObject, Object paramObject)
  {
    Log.d("toddtest", paramJSONObject.toString() + "");
    Message localMessage = new Message();
    localMessage.what = 0;
    localMessage.obj = paramJSONObject;
    a.c(this.a).sendMessage(localMessage);
  }

  public void onConnectTimeoutException(ConnectTimeoutException paramConnectTimeoutException, Object paramObject)
  {
    Log.d("toddtest", paramConnectTimeoutException.getMessage() + "");
    Message localMessage = new Message();
    localMessage.what = -7;
    localMessage.obj = (paramConnectTimeoutException.getMessage() + "");
    a.c(this.a).sendMessage(localMessage);
  }

  public void onHttpStatusException(HttpStatusException paramHttpStatusException, Object paramObject)
  {
    Log.d("toddtest", paramHttpStatusException.getMessage() + "");
    Message localMessage = new Message();
    localMessage.what = -9;
    localMessage.obj = (paramHttpStatusException.getMessage() + "");
    a.c(this.a).sendMessage(localMessage);
  }

  public void onIOException(IOException paramIOException, Object paramObject)
  {
    Log.d("toddtest", paramIOException.getMessage() + "");
    Message localMessage = new Message();
    localMessage.what = -2;
    localMessage.obj = (paramIOException.getMessage() + "");
    a.c(this.a).sendMessage(localMessage);
  }

  public void onJSONException(JSONException paramJSONException, Object paramObject)
  {
    Log.d("toddtest", paramJSONException.getMessage() + "");
    Message localMessage = new Message();
    localMessage.what = -4;
    localMessage.obj = (paramJSONException.getMessage() + "");
    a.c(this.a).sendMessage(localMessage);
  }

  public void onMalformedURLException(MalformedURLException paramMalformedURLException, Object paramObject)
  {
    Log.d("toddtest", paramMalformedURLException.getMessage() + "");
    Message localMessage = new Message();
    localMessage.what = -3;
    localMessage.obj = (paramMalformedURLException.getMessage() + "");
    a.c(this.a).sendMessage(localMessage);
  }

  public void onNetworkUnavailableException(NetworkUnavailableException paramNetworkUnavailableException, Object paramObject)
  {
    Log.d("toddtest", paramNetworkUnavailableException.getMessage() + "");
    Message localMessage = new Message();
    localMessage.what = -2;
    localMessage.obj = (paramNetworkUnavailableException.getMessage() + "");
    a.c(this.a).sendMessage(localMessage);
  }

  public void onSocketTimeoutException(SocketTimeoutException paramSocketTimeoutException, Object paramObject)
  {
    Log.d("toddtest", paramSocketTimeoutException.getMessage() + "");
    Message localMessage = new Message();
    localMessage.what = -8;
    localMessage.obj = (paramSocketTimeoutException.getMessage() + "");
    a.c(this.a).sendMessage(localMessage);
  }

  public void onUnknowException(Exception paramException, Object paramObject)
  {
    Log.d("toddtest", paramException.getMessage() + "");
    Message localMessage = new Message();
    localMessage.what = -6;
    localMessage.obj = (paramException.getMessage() + "");
    a.c(this.a).sendMessage(localMessage);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.tencent.open.d
 * JD-Core Version:    0.6.0
 */