package com.tencent.qc.stat.common;

import android.content.Context;
import org.json.JSONObject;

public class Env
{
  static c a;
  private static JSONObject d = null;
  Integer b = null;
  String c = null;

  public Env(Context paramContext)
  {
    a(paramContext);
    this.b = StatCommonHelper.o(paramContext.getApplicationContext());
    this.c = StatCommonHelper.n(paramContext);
  }

  static c a(Context paramContext)
  {
    if (a == null)
      a = new c(paramContext.getApplicationContext(), null);
    return a;
  }

  public void a(JSONObject paramJSONObject)
  {
    JSONObject localJSONObject = new JSONObject();
    if (a != null)
      a.a(localJSONObject);
    StatCommonHelper.a(localJSONObject, "cn", this.c);
    if (this.b != null)
      localJSONObject.put("tn", this.b);
    paramJSONObject.put("ev", localJSONObject);
    if ((d != null) && (d.length() > 0))
      paramJSONObject.put("eva", d);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.tencent.qc.stat.common.Env
 * JD-Core Version:    0.6.0
 */