package org.achartengine.chart;

public class RangeStackedBarChart extends RangeBarChart
{
  public static final String TYPE = "RangeStackedBar";

  RangeStackedBarChart()
  {
    super(BarChart.Type.STACKED);
  }

  public String getChartType()
  {
    return "RangeStackedBar";
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     org.achartengine.chart.RangeStackedBarChart
 * JD-Core Version:    0.6.0
 */