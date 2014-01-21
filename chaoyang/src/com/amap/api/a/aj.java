package com.amap.api.a;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Rect;
import android.view.View;

class aj extends View
{
  private String a = "";
  private int b = 0;
  private b c;
  private Paint d;
  private Paint e;
  private Rect f;

  public aj(Context paramContext, b paramb)
  {
    super(paramContext);
    this.c = paramb;
    this.d = new Paint();
    this.f = new Rect();
    this.d.setAntiAlias(true);
    this.d.setColor(-16777216);
    this.d.setStrokeWidth(2.0F);
    this.d.setStyle(Paint.Style.STROKE);
    this.e = new Paint();
    this.e.setAntiAlias(true);
    this.e.setColor(-16777216);
    this.e.setTextSize(20.0F);
  }

  public void a()
  {
    this.d = null;
    this.e = null;
    this.f = null;
    this.a = null;
  }

  public void a(int paramInt)
  {
    this.b = paramInt;
  }

  public void a(String paramString)
  {
    this.a = paramString;
  }

  protected void onDraw(Canvas paramCanvas)
  {
    if ((this.a.equals("")) || (this.b == 0))
      return;
    this.e.getTextBounds(this.a, 0, this.a.length(), this.f);
    int i = 10 + (this.b - this.f.width()) / 2;
    int j = -10 + (this.c.y() - this.f.height());
    paramCanvas.drawText(this.a, i, j, this.e);
    int k = j + this.f.height();
    paramCanvas.drawLine(10, k - 2, 10, k + 2, this.d);
    paramCanvas.drawLine(10, k, 10 + this.b, k, this.d);
    paramCanvas.drawLine(10 + this.b, k - 2, 10 + this.b, k + 2, this.d);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.a.aj
 * JD-Core Version:    0.6.0
 */