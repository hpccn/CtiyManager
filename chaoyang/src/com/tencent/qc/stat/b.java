package com.tencent.qc.stat;

import com.tencent.qc.stat.common.StatLogger;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class b
  implements Runnable
{
  b(StatStore paramStatStore, int paramInt)
  {
  }

  public void run()
  {
    if (this.b.b == 0)
      return;
    StatStore.c().b("Load " + Integer.toString(this.b.b) + " unsent events");
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2 = new ArrayList();
    int i = this.a;
    if ((i == -1) || (i > StatConfig.g()));
    for (int j = StatConfig.g(); ; j = i)
    {
      StatStore localStatStore = this.b;
      localStatStore.b -= j;
      StatStore.b(this.b, localArrayList2, j);
      StatStore.c().b("Peek " + Integer.toString(localArrayList2.size()) + " unsent events.");
      if (localArrayList2.isEmpty())
        break;
      StatStore.a(this.b, localArrayList2, 2);
      Iterator localIterator = localArrayList2.iterator();
      while (localIterator.hasNext())
        localArrayList1.add(((r)localIterator.next()).b);
      l.b().b(localArrayList1, new m(this, localArrayList2, j));
      return;
    }
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.tencent.qc.stat.b
 * JD-Core Version:    0.6.0
 */