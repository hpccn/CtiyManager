package com.tencent.qc.stat.event;

import android.content.Context;
import org.json.JSONArray;
import org.json.JSONObject;

public class CustomEvent extends Event
{
  protected CustomEvent.Key a = new CustomEvent.Key();
  private long g = -1L;

  public CustomEvent(Context paramContext, int paramInt, String paramString)
  {
    super(paramContext, paramInt);
    this.a.a = paramString;
  }

  public EventType a()
  {
    return EventType.d;
  }

  public void a(String[] paramArrayOfString)
  {
    this.a.b = paramArrayOfString;
  }

  public boolean a(JSONObject paramJSONObject)
  {
    paramJSONObject.put("ei", this.a.a);
    if (this.g > 0L)
      paramJSONObject.put("du", this.g);
    if (this.a.b != null)
    {
      JSONArray localJSONArray = new JSONArray();
      String[] arrayOfString = this.a.b;
      int i = arrayOfString.length;
      for (int j = 0; j < i; j++)
        localJSONArray.put(arrayOfString[j]);
      paramJSONObject.put("ar", localJSONArray);
    }
    if (this.a.c != null)
      paramJSONObject.put("kv", new JSONObject(this.a.c));
    return true;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.tencent.qc.stat.event.CustomEvent
 * JD-Core Version:    0.6.0
 */