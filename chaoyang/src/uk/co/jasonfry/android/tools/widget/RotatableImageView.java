package uk.co.jasonfry.android.tools.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.widget.ImageView;

public class RotatableImageView extends ImageView
{
  private int mRotation = 0;
  private float mXPivot = 0.0F;
  private float mYPivot = 0.0F;

  public RotatableImageView(Context paramContext)
  {
    super(paramContext);
  }

  public RotatableImageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public int getRotation()
  {
    return this.mRotation;
  }

  public float getXPivot()
  {
    return this.mXPivot;
  }

  public float getYPivot()
  {
    return this.mYPivot;
  }

  protected void onDraw(Canvas paramCanvas)
  {
    paramCanvas.save();
    paramCanvas.rotate(this.mRotation, getWidth() * this.mXPivot, getHeight() * this.mYPivot);
    super.onDraw(paramCanvas);
    paramCanvas.restore();
  }

  public void setRotation(int paramInt)
  {
    setRotation(paramInt, 0.5F, 0.5F);
  }

  public void setRotation(int paramInt, float paramFloat1, float paramFloat2)
  {
    this.mRotation = paramInt;
    this.mXPivot = paramFloat1;
    this.mYPivot = paramFloat2;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     uk.co.jasonfry.android.tools.widget.RotatableImageView
 * JD-Core Version:    0.6.0
 */