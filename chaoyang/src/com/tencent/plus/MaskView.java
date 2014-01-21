package com.tencent.plus;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;

public class MaskView extends View
{
  private static String a = "MaskView";
  private Rect b;
  private Paint c;

  public MaskView(Context paramContext)
  {
    super(paramContext);
    b();
  }

  public MaskView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    b();
  }

  private void b()
  {
    this.c = new Paint();
  }

  public Rect a()
  {
    if (this.b == null)
    {
      this.b = new Rect();
      int i = getMeasuredWidth();
      int j = getMeasuredHeight();
      int k = Math.min(Math.min(-80 + (j - 60), i), 640);
      int m = (i - k) / 2;
      int n = (j - k) / 2;
      int i1 = m + k;
      int i2 = k + n;
      this.b.set(m, n, i1, i2);
    }
    return this.b;
  }

  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    Rect localRect = a();
    int i = getMeasuredWidth();
    int j = getMeasuredHeight();
    Log.d(a, "width:" + localRect.left);
    Log.d(a, "height:" + localRect.top);
    this.c.setStyle(Paint.Style.FILL);
    this.c.setColor(Color.argb(100, 0, 0, 0));
    paramCanvas.drawRect(0.0F, 0.0F, i, localRect.top, this.c);
    paramCanvas.drawRect(0.0F, localRect.bottom, i, j, this.c);
    paramCanvas.drawRect(0.0F, localRect.top, localRect.left, localRect.bottom, this.c);
    paramCanvas.drawRect(localRect.right, localRect.top, i, localRect.bottom, this.c);
    paramCanvas.drawColor(Color.argb(100, 0, 0, 0));
    this.c.setStyle(Paint.Style.STROKE);
    this.c.setColor(-1);
    paramCanvas.drawRect(localRect.left, localRect.top, -1 + localRect.right, localRect.bottom, this.c);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.tencent.plus.MaskView
 * JD-Core Version:    0.6.0
 */