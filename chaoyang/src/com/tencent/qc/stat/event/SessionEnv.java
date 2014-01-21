package com.tencent.qc.stat.event;

import android.content.Context;
import com.tencent.qc.stat.common.Env;
import com.tencent.qc.stat.common.User;
import org.json.JSONObject;

public class SessionEnv extends Event
{
  private Env a;
  private JSONObject g = null;

  public SessionEnv(Context paramContext, int paramInt, JSONObject paramJSONObject)
  {
    super(paramContext, paramInt);
    this.a = new Env(paramContext);
    this.g = paramJSONObject;
  }

  public EventType a()
  {
    return EventType.b;
  }

  public boolean a(JSONObject paramJSONObject)
  {
    paramJSONObject.put("ut", this.e.c());
    if (this.g != null)
      paramJSONObject.put("cfg", this.g);
    this.a.a(paramJSONObject);
    return true;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.tencent.qc.stat.event.SessionEnv
 * JD-Core Version:    0.6.0
 */