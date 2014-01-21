package org.achartengine.renderer;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class DialRenderer extends DefaultRenderer
{
  private double mAngleMax = 30.0D;
  private double mAngleMin = 330.0D;
  private double mMajorTickSpacing = 1.7976931348623157E+308D;
  private double mMaxValue = -1.797693134862316E+308D;
  private double mMinValue = 1.7976931348623157E+308D;
  private double mMinorTickSpacing = 1.7976931348623157E+308D;
  private List<Type> mVisualTypes = new ArrayList();

  public double getAngleMax()
  {
    return this.mAngleMax;
  }

  public double getAngleMin()
  {
    return this.mAngleMin;
  }

  public double getMajorTicksSpacing()
  {
    return this.mMajorTickSpacing;
  }

  public double getMaxValue()
  {
    return this.mMaxValue;
  }

  public double getMinValue()
  {
    return this.mMinValue;
  }

  public double getMinorTicksSpacing()
  {
    return this.mMinorTickSpacing;
  }

  public Type getVisualTypeForIndex(int paramInt)
  {
    if (paramInt < this.mVisualTypes.size())
      return (Type)this.mVisualTypes.get(paramInt);
    return Type.NEEDLE;
  }

  public boolean isMaxValueSet()
  {
    return this.mMaxValue != -1.797693134862316E+308D;
  }

  public boolean isMinValueSet()
  {
    return this.mMinValue != 1.7976931348623157E+308D;
  }

  public void setAngleMax(double paramDouble)
  {
    this.mAngleMax = paramDouble;
  }

  public void setAngleMin(double paramDouble)
  {
    this.mAngleMin = paramDouble;
  }

  public void setMajorTicksSpacing(double paramDouble)
  {
    this.mMajorTickSpacing = paramDouble;
  }

  public void setMaxValue(double paramDouble)
  {
    this.mMaxValue = paramDouble;
  }

  public void setMinValue(double paramDouble)
  {
    this.mMinValue = paramDouble;
  }

  public void setMinorTicksSpacing(double paramDouble)
  {
    this.mMinorTickSpacing = paramDouble;
  }

  public void setVisualTypes(Type[] paramArrayOfType)
  {
    this.mVisualTypes.clear();
    this.mVisualTypes.addAll(Arrays.asList(paramArrayOfType));
  }

  public static enum Type
  {
    static
    {
      ARROW = new Type("ARROW", 1);
      Type[] arrayOfType = new Type[2];
      arrayOfType[0] = NEEDLE;
      arrayOfType[1] = ARROW;
      $VALUES = arrayOfType;
    }
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     org.achartengine.renderer.DialRenderer
 * JD-Core Version:    0.6.0
 */