package com.tencent.qc.stat.event;

import android.content.Context;
import com.tencent.qc.stat.StatConfig;
import com.tencent.qc.stat.common.StatCommonHelper;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.json.JSONObject;

public class AdditionEvent extends Event
{
  Map a = null;

  public AdditionEvent(Context paramContext, int paramInt, Map paramMap)
  {
    super(paramContext, paramInt);
    this.a = paramMap;
  }

  public EventType a()
  {
    return EventType.e;
  }

  public boolean a(JSONObject paramJSONObject)
  {
    StatCommonHelper.a(paramJSONObject, "qq", StatConfig.k());
    if ((this.a != null) && (this.a.size() > 0))
    {
      Iterator localIterator = this.a.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        paramJSONObject.put((String)localEntry.getKey(), localEntry.getValue());
      }
    }
    return true;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.tencent.qc.stat.event.AdditionEvent
 * JD-Core Version:    0.6.0
 */