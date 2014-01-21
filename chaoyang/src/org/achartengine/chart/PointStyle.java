package org.achartengine.chart;

public enum PointStyle
{
  private String mName;

  static
  {
    CIRCLE = new PointStyle("CIRCLE", 1, "circle");
    TRIANGLE = new PointStyle("TRIANGLE", 2, "triangle");
    SQUARE = new PointStyle("SQUARE", 3, "square");
    DIAMOND = new PointStyle("DIAMOND", 4, "diamond");
    POINT = new PointStyle("POINT", 5, "point");
    PointStyle[] arrayOfPointStyle = new PointStyle[6];
    arrayOfPointStyle[0] = X;
    arrayOfPointStyle[1] = CIRCLE;
    arrayOfPointStyle[2] = TRIANGLE;
    arrayOfPointStyle[3] = SQUARE;
    arrayOfPointStyle[4] = DIAMOND;
    arrayOfPointStyle[5] = POINT;
    $VALUES = arrayOfPointStyle;
  }

  private PointStyle(String paramString)
  {
    this.mName = paramString;
  }

  public static int getIndexForName(String paramString)
  {
    int i = -1;
    PointStyle[] arrayOfPointStyle = values();
    int j = arrayOfPointStyle.length;
    for (int k = 0; (k < j) && (i < 0); k++)
    {
      if (!arrayOfPointStyle[k].mName.equals(paramString))
        continue;
      i = k;
    }
    return Math.max(0, i);
  }

  public static PointStyle getPointStyleForName(String paramString)
  {
    Object localObject = null;
    PointStyle[] arrayOfPointStyle = values();
    int i = arrayOfPointStyle.length;
    for (int j = 0; (j < i) && (localObject == null); j++)
    {
      if (!arrayOfPointStyle[j].mName.equals(paramString))
        continue;
      localObject = arrayOfPointStyle[j];
    }
    return localObject;
  }

  public String getName()
  {
    return this.mName;
  }

  public String toString()
  {
    return getName();
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     org.achartengine.chart.PointStyle
 * JD-Core Version:    0.6.0
 */