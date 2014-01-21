package org.achartengine.renderer;

import android.graphics.Paint.Cap;
import android.graphics.Paint.Join;
import java.io.Serializable;

public class BasicStroke
  implements Serializable
{
  public static final BasicStroke DASHED;
  public static final BasicStroke DOTTED;
  public static final BasicStroke SOLID = new BasicStroke(Paint.Cap.BUTT, Paint.Join.MITER, 4.0F, null, 0.0F);
  private Paint.Cap mCap;
  private float[] mIntervals;
  private Paint.Join mJoin;
  private float mMiter;
  private float mPhase;

  static
  {
    DASHED = new BasicStroke(Paint.Cap.ROUND, Paint.Join.BEVEL, 10.0F, new float[] { 10.0F, 10.0F }, 1.0F);
    DOTTED = new BasicStroke(Paint.Cap.ROUND, Paint.Join.BEVEL, 5.0F, new float[] { 2.0F, 10.0F }, 1.0F);
  }

  public BasicStroke(Paint.Cap paramCap, Paint.Join paramJoin, float paramFloat1, float[] paramArrayOfFloat, float paramFloat2)
  {
    this.mCap = paramCap;
    this.mJoin = paramJoin;
    this.mMiter = paramFloat1;
    this.mIntervals = paramArrayOfFloat;
  }

  public Paint.Cap getCap()
  {
    return this.mCap;
  }

  public float[] getIntervals()
  {
    return this.mIntervals;
  }

  public Paint.Join getJoin()
  {
    return this.mJoin;
  }

  public float getMiter()
  {
    return this.mMiter;
  }

  public float getPhase()
  {
    return this.mPhase;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     org.achartengine.renderer.BasicStroke
 * JD-Core Version:    0.6.0
 */