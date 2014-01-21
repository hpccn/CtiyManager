package com.tencent.qc.stat.event;

import android.content.Context;
import android.util.Log;
import com.tencent.qc.stat.StatConfig;
import com.tencent.qc.stat.StatStore;
import com.tencent.qc.stat.common.StatCommonHelper;
import com.tencent.qc.stat.common.User;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class Event
{
  protected String b;
  protected long c;
  protected int d;
  protected User e = null;
  protected Context f;

  Event(Context paramContext, int paramInt)
  {
    this.f = paramContext;
    this.b = StatConfig.a(paramContext);
    this.c = (System.currentTimeMillis() / 1000L);
    this.d = paramInt;
    this.e = StatStore.a(paramContext).b(paramContext);
  }

  public abstract EventType a();

  public abstract boolean a(JSONObject paramJSONObject);

  public long b()
  {
    return this.c;
  }

  public boolean b(JSONObject paramJSONObject)
  {
    try
    {
      StatCommonHelper.a(paramJSONObject, "ky", this.b);
      paramJSONObject.put("et", a().a());
      paramJSONObject.put("ui", this.e.a());
      StatCommonHelper.a(paramJSONObject, "mc", this.e.b());
      paramJSONObject.put("si", this.d);
      paramJSONObject.put("ts", this.c);
      boolean bool = a(paramJSONObject);
      return bool;
    }
    catch (JSONException localJSONException)
    {
      Log.e("Event", "Failed to encode", localJSONException);
    }
    return false;
  }

  public Context c()
  {
    return this.f;
  }

  public String d()
  {
    JSONObject localJSONObject = new JSONObject();
    b(localJSONObject);
    return localJSONObject.toString();
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.tencent.qc.stat.event.Event
 * JD-Core Version:    0.6.0
 */