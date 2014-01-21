package org.achartengine;

import android.content.Context;
import android.content.Intent;
import org.achartengine.chart.BarChart;
import org.achartengine.chart.BarChart.Type;
import org.achartengine.chart.BubbleChart;
import org.achartengine.chart.CombinedXYChart;
import org.achartengine.chart.CubicLineChart;
import org.achartengine.chart.DialChart;
import org.achartengine.chart.DoughnutChart;
import org.achartengine.chart.LineChart;
import org.achartengine.chart.PieChart;
import org.achartengine.chart.RangeBarChart;
import org.achartengine.chart.ScatterChart;
import org.achartengine.chart.TimeChart;
import org.achartengine.model.CategorySeries;
import org.achartengine.model.MultipleCategorySeries;
import org.achartengine.model.XYMultipleSeriesDataset;
import org.achartengine.renderer.DefaultRenderer;
import org.achartengine.renderer.DialRenderer;
import org.achartengine.renderer.XYMultipleSeriesRenderer;

public class ChartFactory
{
  public static final String CHART = "chart";
  public static final String TITLE = "title";

  private static boolean checkMultipleSeriesItems(MultipleCategorySeries paramMultipleCategorySeries, int paramInt)
  {
    int i = paramMultipleCategorySeries.getCategoriesCount();
    int j = 1;
    int k = 0;
    if ((k < i) && (j != 0))
    {
      if (paramMultipleCategorySeries.getValues(k).length == paramMultipleCategorySeries.getTitles(k).length);
      for (j = 1; ; j = 0)
      {
        k++;
        break;
      }
    }
    return j;
  }

  private static void checkParameters(CategorySeries paramCategorySeries, DefaultRenderer paramDefaultRenderer)
  {
    if ((paramCategorySeries == null) || (paramDefaultRenderer == null) || (paramCategorySeries.getItemCount() != paramDefaultRenderer.getSeriesRendererCount()))
      throw new IllegalArgumentException("Dataset and renderer should be not null and the dataset number of items should be equal to the number of series renderers");
  }

  private static void checkParameters(MultipleCategorySeries paramMultipleCategorySeries, DefaultRenderer paramDefaultRenderer)
  {
    if ((paramMultipleCategorySeries == null) || (paramDefaultRenderer == null) || (!checkMultipleSeriesItems(paramMultipleCategorySeries, paramDefaultRenderer.getSeriesRendererCount())))
      throw new IllegalArgumentException("Titles and values should be not null and the dataset number of items should be equal to the number of series renderers");
  }

  private static void checkParameters(XYMultipleSeriesDataset paramXYMultipleSeriesDataset, XYMultipleSeriesRenderer paramXYMultipleSeriesRenderer)
  {
    if ((paramXYMultipleSeriesDataset == null) || (paramXYMultipleSeriesRenderer == null) || (paramXYMultipleSeriesDataset.getSeriesCount() != paramXYMultipleSeriesRenderer.getSeriesRendererCount()))
      throw new IllegalArgumentException("Dataset and renderer should be not null and should have the same number of series");
  }

  public static final Intent getBarChartIntent(Context paramContext, XYMultipleSeriesDataset paramXYMultipleSeriesDataset, XYMultipleSeriesRenderer paramXYMultipleSeriesRenderer, BarChart.Type paramType)
  {
    return getBarChartIntent(paramContext, paramXYMultipleSeriesDataset, paramXYMultipleSeriesRenderer, paramType, "");
  }

  public static final Intent getBarChartIntent(Context paramContext, XYMultipleSeriesDataset paramXYMultipleSeriesDataset, XYMultipleSeriesRenderer paramXYMultipleSeriesRenderer, BarChart.Type paramType, String paramString)
  {
    checkParameters(paramXYMultipleSeriesDataset, paramXYMultipleSeriesRenderer);
    Intent localIntent = new Intent(paramContext, GraphicalActivity.class);
    localIntent.putExtra("chart", new BarChart(paramXYMultipleSeriesDataset, paramXYMultipleSeriesRenderer, paramType));
    localIntent.putExtra("title", paramString);
    return localIntent;
  }

  public static final GraphicalView getBarChartView(Context paramContext, XYMultipleSeriesDataset paramXYMultipleSeriesDataset, XYMultipleSeriesRenderer paramXYMultipleSeriesRenderer, BarChart.Type paramType)
  {
    checkParameters(paramXYMultipleSeriesDataset, paramXYMultipleSeriesRenderer);
    return new GraphicalView(paramContext, new BarChart(paramXYMultipleSeriesDataset, paramXYMultipleSeriesRenderer, paramType));
  }

  public static final Intent getBubbleChartIntent(Context paramContext, XYMultipleSeriesDataset paramXYMultipleSeriesDataset, XYMultipleSeriesRenderer paramXYMultipleSeriesRenderer)
  {
    return getBubbleChartIntent(paramContext, paramXYMultipleSeriesDataset, paramXYMultipleSeriesRenderer, "");
  }

  public static final Intent getBubbleChartIntent(Context paramContext, XYMultipleSeriesDataset paramXYMultipleSeriesDataset, XYMultipleSeriesRenderer paramXYMultipleSeriesRenderer, String paramString)
  {
    checkParameters(paramXYMultipleSeriesDataset, paramXYMultipleSeriesRenderer);
    Intent localIntent = new Intent(paramContext, GraphicalActivity.class);
    localIntent.putExtra("chart", new BubbleChart(paramXYMultipleSeriesDataset, paramXYMultipleSeriesRenderer));
    localIntent.putExtra("title", paramString);
    return localIntent;
  }

  public static final GraphicalView getBubbleChartView(Context paramContext, XYMultipleSeriesDataset paramXYMultipleSeriesDataset, XYMultipleSeriesRenderer paramXYMultipleSeriesRenderer)
  {
    checkParameters(paramXYMultipleSeriesDataset, paramXYMultipleSeriesRenderer);
    return new GraphicalView(paramContext, new BubbleChart(paramXYMultipleSeriesDataset, paramXYMultipleSeriesRenderer));
  }

  public static final Intent getCombinedXYChartIntent(Context paramContext, XYMultipleSeriesDataset paramXYMultipleSeriesDataset, XYMultipleSeriesRenderer paramXYMultipleSeriesRenderer, String[] paramArrayOfString, String paramString)
  {
    if ((paramXYMultipleSeriesDataset == null) || (paramXYMultipleSeriesRenderer == null) || (paramArrayOfString == null) || (paramXYMultipleSeriesDataset.getSeriesCount() != paramArrayOfString.length))
      throw new IllegalArgumentException("Datasets, renderers and types should be not null and the datasets series count should be equal to the types length");
    checkParameters(paramXYMultipleSeriesDataset, paramXYMultipleSeriesRenderer);
    Intent localIntent = new Intent(paramContext, GraphicalActivity.class);
    localIntent.putExtra("chart", new CombinedXYChart(paramXYMultipleSeriesDataset, paramXYMultipleSeriesRenderer, paramArrayOfString));
    localIntent.putExtra("title", paramString);
    return localIntent;
  }

  public static final GraphicalView getCombinedXYChartView(Context paramContext, XYMultipleSeriesDataset paramXYMultipleSeriesDataset, XYMultipleSeriesRenderer paramXYMultipleSeriesRenderer, String[] paramArrayOfString)
  {
    if ((paramXYMultipleSeriesDataset == null) || (paramXYMultipleSeriesRenderer == null) || (paramArrayOfString == null) || (paramXYMultipleSeriesDataset.getSeriesCount() != paramArrayOfString.length))
      throw new IllegalArgumentException("Dataset, renderer and types should be not null and the datasets series count should be equal to the types length");
    checkParameters(paramXYMultipleSeriesDataset, paramXYMultipleSeriesRenderer);
    return new GraphicalView(paramContext, new CombinedXYChart(paramXYMultipleSeriesDataset, paramXYMultipleSeriesRenderer, paramArrayOfString));
  }

  public static final GraphicalView getCubeLineChartView(Context paramContext, XYMultipleSeriesDataset paramXYMultipleSeriesDataset, XYMultipleSeriesRenderer paramXYMultipleSeriesRenderer, float paramFloat)
  {
    checkParameters(paramXYMultipleSeriesDataset, paramXYMultipleSeriesRenderer);
    return new GraphicalView(paramContext, new CubicLineChart(paramXYMultipleSeriesDataset, paramXYMultipleSeriesRenderer, paramFloat));
  }

  public static final Intent getCubicLineChartIntent(Context paramContext, XYMultipleSeriesDataset paramXYMultipleSeriesDataset, XYMultipleSeriesRenderer paramXYMultipleSeriesRenderer, float paramFloat)
  {
    return getCubicLineChartIntent(paramContext, paramXYMultipleSeriesDataset, paramXYMultipleSeriesRenderer, paramFloat, "");
  }

  public static final Intent getCubicLineChartIntent(Context paramContext, XYMultipleSeriesDataset paramXYMultipleSeriesDataset, XYMultipleSeriesRenderer paramXYMultipleSeriesRenderer, float paramFloat, String paramString)
  {
    checkParameters(paramXYMultipleSeriesDataset, paramXYMultipleSeriesRenderer);
    Intent localIntent = new Intent(paramContext, GraphicalActivity.class);
    localIntent.putExtra("chart", new CubicLineChart(paramXYMultipleSeriesDataset, paramXYMultipleSeriesRenderer, paramFloat));
    localIntent.putExtra("title", paramString);
    return localIntent;
  }

  public static final Intent getDialChartIntent(Context paramContext, CategorySeries paramCategorySeries, DialRenderer paramDialRenderer, String paramString)
  {
    checkParameters(paramCategorySeries, paramDialRenderer);
    Intent localIntent = new Intent(paramContext, GraphicalActivity.class);
    localIntent.putExtra("chart", new DialChart(paramCategorySeries, paramDialRenderer));
    localIntent.putExtra("title", paramString);
    return localIntent;
  }

  public static final GraphicalView getDialChartView(Context paramContext, CategorySeries paramCategorySeries, DialRenderer paramDialRenderer)
  {
    checkParameters(paramCategorySeries, paramDialRenderer);
    return new GraphicalView(paramContext, new DialChart(paramCategorySeries, paramDialRenderer));
  }

  public static final Intent getDoughnutChartIntent(Context paramContext, MultipleCategorySeries paramMultipleCategorySeries, DefaultRenderer paramDefaultRenderer, String paramString)
  {
    checkParameters(paramMultipleCategorySeries, paramDefaultRenderer);
    Intent localIntent = new Intent(paramContext, GraphicalActivity.class);
    localIntent.putExtra("chart", new DoughnutChart(paramMultipleCategorySeries, paramDefaultRenderer));
    localIntent.putExtra("title", paramString);
    return localIntent;
  }

  public static final GraphicalView getDoughnutChartView(Context paramContext, MultipleCategorySeries paramMultipleCategorySeries, DefaultRenderer paramDefaultRenderer)
  {
    checkParameters(paramMultipleCategorySeries, paramDefaultRenderer);
    return new GraphicalView(paramContext, new DoughnutChart(paramMultipleCategorySeries, paramDefaultRenderer));
  }

  public static final Intent getLineChartIntent(Context paramContext, XYMultipleSeriesDataset paramXYMultipleSeriesDataset, XYMultipleSeriesRenderer paramXYMultipleSeriesRenderer)
  {
    return getLineChartIntent(paramContext, paramXYMultipleSeriesDataset, paramXYMultipleSeriesRenderer, "");
  }

  public static final Intent getLineChartIntent(Context paramContext, XYMultipleSeriesDataset paramXYMultipleSeriesDataset, XYMultipleSeriesRenderer paramXYMultipleSeriesRenderer, String paramString)
  {
    checkParameters(paramXYMultipleSeriesDataset, paramXYMultipleSeriesRenderer);
    Intent localIntent = new Intent(paramContext, GraphicalActivity.class);
    localIntent.putExtra("chart", new LineChart(paramXYMultipleSeriesDataset, paramXYMultipleSeriesRenderer));
    localIntent.putExtra("title", paramString);
    return localIntent;
  }

  public static final GraphicalView getLineChartView(Context paramContext, XYMultipleSeriesDataset paramXYMultipleSeriesDataset, XYMultipleSeriesRenderer paramXYMultipleSeriesRenderer)
  {
    checkParameters(paramXYMultipleSeriesDataset, paramXYMultipleSeriesRenderer);
    return new GraphicalView(paramContext, new LineChart(paramXYMultipleSeriesDataset, paramXYMultipleSeriesRenderer));
  }

  public static final Intent getPieChartIntent(Context paramContext, CategorySeries paramCategorySeries, DefaultRenderer paramDefaultRenderer, String paramString)
  {
    checkParameters(paramCategorySeries, paramDefaultRenderer);
    Intent localIntent = new Intent(paramContext, GraphicalActivity.class);
    localIntent.putExtra("chart", new PieChart(paramCategorySeries, paramDefaultRenderer));
    localIntent.putExtra("title", paramString);
    return localIntent;
  }

  public static final GraphicalView getPieChartView(Context paramContext, CategorySeries paramCategorySeries, DefaultRenderer paramDefaultRenderer)
  {
    checkParameters(paramCategorySeries, paramDefaultRenderer);
    return new GraphicalView(paramContext, new PieChart(paramCategorySeries, paramDefaultRenderer));
  }

  public static final Intent getRangeBarChartIntent(Context paramContext, XYMultipleSeriesDataset paramXYMultipleSeriesDataset, XYMultipleSeriesRenderer paramXYMultipleSeriesRenderer, BarChart.Type paramType, String paramString)
  {
    checkParameters(paramXYMultipleSeriesDataset, paramXYMultipleSeriesRenderer);
    Intent localIntent = new Intent(paramContext, GraphicalActivity.class);
    localIntent.putExtra("chart", new RangeBarChart(paramXYMultipleSeriesDataset, paramXYMultipleSeriesRenderer, paramType));
    localIntent.putExtra("title", paramString);
    return localIntent;
  }

  public static final GraphicalView getRangeBarChartView(Context paramContext, XYMultipleSeriesDataset paramXYMultipleSeriesDataset, XYMultipleSeriesRenderer paramXYMultipleSeriesRenderer, BarChart.Type paramType)
  {
    checkParameters(paramXYMultipleSeriesDataset, paramXYMultipleSeriesRenderer);
    return new GraphicalView(paramContext, new RangeBarChart(paramXYMultipleSeriesDataset, paramXYMultipleSeriesRenderer, paramType));
  }

  public static final Intent getScatterChartIntent(Context paramContext, XYMultipleSeriesDataset paramXYMultipleSeriesDataset, XYMultipleSeriesRenderer paramXYMultipleSeriesRenderer)
  {
    return getScatterChartIntent(paramContext, paramXYMultipleSeriesDataset, paramXYMultipleSeriesRenderer, "");
  }

  public static final Intent getScatterChartIntent(Context paramContext, XYMultipleSeriesDataset paramXYMultipleSeriesDataset, XYMultipleSeriesRenderer paramXYMultipleSeriesRenderer, String paramString)
  {
    checkParameters(paramXYMultipleSeriesDataset, paramXYMultipleSeriesRenderer);
    Intent localIntent = new Intent(paramContext, GraphicalActivity.class);
    localIntent.putExtra("chart", new ScatterChart(paramXYMultipleSeriesDataset, paramXYMultipleSeriesRenderer));
    localIntent.putExtra("title", paramString);
    return localIntent;
  }

  public static final GraphicalView getScatterChartView(Context paramContext, XYMultipleSeriesDataset paramXYMultipleSeriesDataset, XYMultipleSeriesRenderer paramXYMultipleSeriesRenderer)
  {
    checkParameters(paramXYMultipleSeriesDataset, paramXYMultipleSeriesRenderer);
    return new GraphicalView(paramContext, new ScatterChart(paramXYMultipleSeriesDataset, paramXYMultipleSeriesRenderer));
  }

  public static final Intent getTimeChartIntent(Context paramContext, XYMultipleSeriesDataset paramXYMultipleSeriesDataset, XYMultipleSeriesRenderer paramXYMultipleSeriesRenderer, String paramString)
  {
    return getTimeChartIntent(paramContext, paramXYMultipleSeriesDataset, paramXYMultipleSeriesRenderer, paramString, "");
  }

  public static final Intent getTimeChartIntent(Context paramContext, XYMultipleSeriesDataset paramXYMultipleSeriesDataset, XYMultipleSeriesRenderer paramXYMultipleSeriesRenderer, String paramString1, String paramString2)
  {
    checkParameters(paramXYMultipleSeriesDataset, paramXYMultipleSeriesRenderer);
    Intent localIntent = new Intent(paramContext, GraphicalActivity.class);
    TimeChart localTimeChart = new TimeChart(paramXYMultipleSeriesDataset, paramXYMultipleSeriesRenderer);
    localTimeChart.setDateFormat(paramString1);
    localIntent.putExtra("chart", localTimeChart);
    localIntent.putExtra("title", paramString2);
    return localIntent;
  }

  public static final GraphicalView getTimeChartView(Context paramContext, XYMultipleSeriesDataset paramXYMultipleSeriesDataset, XYMultipleSeriesRenderer paramXYMultipleSeriesRenderer, String paramString)
  {
    checkParameters(paramXYMultipleSeriesDataset, paramXYMultipleSeriesRenderer);
    TimeChart localTimeChart = new TimeChart(paramXYMultipleSeriesDataset, paramXYMultipleSeriesRenderer);
    localTimeChart.setDateFormat(paramString);
    return new GraphicalView(paramContext, localTimeChart);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     org.achartengine.ChartFactory
 * JD-Core Version:    0.6.0
 */