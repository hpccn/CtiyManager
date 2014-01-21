package org.achartengine.renderer;

import android.graphics.Color;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import org.achartengine.chart.PointStyle;

public class XYSeriesRenderer extends SimpleSeriesRenderer
{
  private List<FillOutsideLine> mFillBelowLine = new ArrayList();
  private boolean mFillPoints = false;
  private float mLineWidth = 1.0F;
  private float mPointStrokeWidth = 1.0F;
  private PointStyle mPointStyle = PointStyle.POINT;

  public void addFillOutsideLine(FillOutsideLine paramFillOutsideLine)
  {
    this.mFillBelowLine.add(paramFillOutsideLine);
  }

  public FillOutsideLine[] getFillOutsideLine()
  {
    return (FillOutsideLine[])this.mFillBelowLine.toArray(new FillOutsideLine[0]);
  }

  public float getLineWidth()
  {
    return this.mLineWidth;
  }

  public float getPointStrokeWidth()
  {
    return this.mPointStrokeWidth;
  }

  public PointStyle getPointStyle()
  {
    return this.mPointStyle;
  }

  @Deprecated
  public boolean isFillBelowLine()
  {
    return this.mFillBelowLine.size() > 0;
  }

  public boolean isFillPoints()
  {
    return this.mFillPoints;
  }

  @Deprecated
  public void setFillBelowLine(boolean paramBoolean)
  {
    this.mFillBelowLine.clear();
    if (paramBoolean)
    {
      this.mFillBelowLine.add(new FillOutsideLine(XYSeriesRenderer.FillOutsideLine.Type.BOUNDS_ALL));
      return;
    }
    this.mFillBelowLine.add(new FillOutsideLine(XYSeriesRenderer.FillOutsideLine.Type.NONE));
  }

  @Deprecated
  public void setFillBelowLineColor(int paramInt)
  {
    if (this.mFillBelowLine.size() > 0)
      ((FillOutsideLine)this.mFillBelowLine.get(0)).setColor(paramInt);
  }

  public void setFillPoints(boolean paramBoolean)
  {
    this.mFillPoints = paramBoolean;
  }

  public void setLineWidth(float paramFloat)
  {
    this.mLineWidth = paramFloat;
  }

  public void setPointStrokeWidth(float paramFloat)
  {
    this.mPointStrokeWidth = paramFloat;
  }

  public void setPointStyle(PointStyle paramPointStyle)
  {
    this.mPointStyle = paramPointStyle;
  }

  public static class FillOutsideLine
    implements Serializable
  {
    private int mColor = Color.argb(125, 0, 0, 200);
    private int[] mFillRange;
    private final Type mType;

    public FillOutsideLine(Type paramType)
    {
      this.mType = paramType;
    }

    public int getColor()
    {
      return this.mColor;
    }

    public int[] getFillRange()
    {
      return this.mFillRange;
    }

    public Type getType()
    {
      return this.mType;
    }

    public void setColor(int paramInt)
    {
      this.mColor = paramInt;
    }

    public void setFillRange(int[] paramArrayOfInt)
    {
      this.mFillRange = paramArrayOfInt;
    }

    public static enum Type
    {
      static
      {
        BOUNDS_ALL = new Type("BOUNDS_ALL", 1);
        BOUNDS_BELOW = new Type("BOUNDS_BELOW", 2);
        BOUNDS_ABOVE = new Type("BOUNDS_ABOVE", 3);
        BELOW = new Type("BELOW", 4);
        ABOVE = new Type("ABOVE", 5);
        Type[] arrayOfType = new Type[6];
        arrayOfType[0] = NONE;
        arrayOfType[1] = BOUNDS_ALL;
        arrayOfType[2] = BOUNDS_BELOW;
        arrayOfType[3] = BOUNDS_ABOVE;
        arrayOfType[4] = BELOW;
        arrayOfType[5] = ABOVE;
        $VALUES = arrayOfType;
      }
    }
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     org.achartengine.renderer.XYSeriesRenderer
 * JD-Core Version:    0.6.0
 */