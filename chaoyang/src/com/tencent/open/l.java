package com.tencent.open;

import android.os.Handler;
import android.os.Message;
import com.tencent.tauth.IUiListener;
import com.tencent.tauth.UiError;
import org.json.JSONException;
import org.json.JSONObject;

class l extends Handler
{
  l(a parama)
  {
  }

  public void handleMessage(Message paramMessage)
  {
    if (paramMessage.what == 0)
      try
      {
        int j = Integer.parseInt(((JSONObject)paramMessage.obj).getString("ret"));
        i = j;
        if (i == 0)
        {
          a.b(this.a).onComplete((JSONObject)paramMessage.obj);
          return;
        }
      }
      catch (JSONException localJSONException)
      {
        while (true)
        {
          localJSONException.printStackTrace();
          a.a(this.a);
          int i = 0;
        }
        a.a(this.a);
        return;
      }
    a.b(this.a).onError(new UiError(paramMessage.what, (String)paramMessage.obj, null));
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.tencent.open.l
 * JD-Core Version:    0.6.0
 */