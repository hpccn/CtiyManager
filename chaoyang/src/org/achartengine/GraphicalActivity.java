package org.achartengine;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import org.achartengine.chart.AbstractChart;

public class GraphicalActivity extends Activity
{
  private AbstractChart mChart;
  private GraphicalView mView;

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    Bundle localBundle = getIntent().getExtras();
    this.mChart = ((AbstractChart)localBundle.getSerializable("chart"));
    this.mView = new GraphicalView(this, this.mChart);
    String str = localBundle.getString("title");
    if (str == null)
      requestWindowFeature(1);
    while (true)
    {
      setContentView(this.mView);
      return;
      if (str.length() <= 0)
        continue;
      setTitle(str);
    }
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     org.achartengine.GraphicalActivity
 * JD-Core Version:    0.6.0
 */