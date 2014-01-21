package org.achartengine;

import android.graphics.RectF;
import android.view.MotionEvent;
import org.achartengine.chart.AbstractChart;
import org.achartengine.chart.RoundChart;
import org.achartengine.chart.XYChart;
import org.achartengine.renderer.DefaultRenderer;
import org.achartengine.tools.Pan;
import org.achartengine.tools.PanListener;
import org.achartengine.tools.Zoom;
import org.achartengine.tools.ZoomListener;

public class TouchHandler
  implements ITouchHandler
{
  private GraphicalView graphicalView;
  private Pan mPan;
  private Zoom mPinchZoom;
  private DefaultRenderer mRenderer;
  private float oldX;
  private float oldX2;
  private float oldY;
  private float oldY2;
  private RectF zoomR = new RectF();

  public TouchHandler(GraphicalView paramGraphicalView, AbstractChart paramAbstractChart)
  {
    this.graphicalView = paramGraphicalView;
    this.zoomR = this.graphicalView.getZoomRectangle();
    if ((paramAbstractChart instanceof XYChart));
    for (this.mRenderer = ((XYChart)paramAbstractChart).getRenderer(); ; this.mRenderer = ((RoundChart)paramAbstractChart).getRenderer())
    {
      if (this.mRenderer.isPanEnabled())
        this.mPan = new Pan(paramAbstractChart);
      if (this.mRenderer.isZoomEnabled())
        this.mPinchZoom = new Zoom(paramAbstractChart, true, 1.0F);
      return;
    }
  }

  private void applyZoom(float paramFloat, int paramInt)
  {
    float f = Math.min(Math.max(paramFloat, 0.9F), 1.1F);
    if ((f > 0.9D) && (f < 1.1D))
    {
      this.mPinchZoom.setZoomRate(f);
      this.mPinchZoom.apply(paramInt);
    }
  }

  public void addPanListener(PanListener paramPanListener)
  {
    if (this.mPan != null)
      this.mPan.addPanListener(paramPanListener);
  }

  public void addZoomListener(ZoomListener paramZoomListener)
  {
    if (this.mPinchZoom != null)
      this.mPinchZoom.addZoomListener(paramZoomListener);
  }

  public boolean handleTouch(MotionEvent paramMotionEvent)
  {
    int i = paramMotionEvent.getAction();
    if ((this.mRenderer != null) && (i == 2))
    {
      if ((this.oldX >= 0.0F) || (this.oldY >= 0.0F))
      {
        float f1 = paramMotionEvent.getX(0);
        float f2 = paramMotionEvent.getY(0);
        float f5;
        float f6;
        float f7;
        float f8;
        float f9;
        float f10;
        if ((paramMotionEvent.getPointerCount() > 1) && ((this.oldX2 >= 0.0F) || (this.oldY2 >= 0.0F)) && (this.mRenderer.isZoomEnabled()))
        {
          float f3 = paramMotionEvent.getX(1);
          float f4 = paramMotionEvent.getY(1);
          f5 = Math.abs(f1 - f3);
          f6 = Math.abs(f2 - f4);
          f7 = Math.abs(this.oldX - this.oldX2);
          f8 = Math.abs(this.oldY - this.oldY2);
          f9 = Math.abs(f2 - this.oldY) / Math.abs(f1 - this.oldX);
          f10 = Math.abs(f4 - this.oldY2) / Math.abs(f3 - this.oldX2);
          if ((f9 <= 0.25D) && (f10 <= 0.25D))
          {
            applyZoom(f5 / f7, 1);
            this.oldX2 = f3;
            this.oldY2 = f4;
          }
        }
        while (true)
        {
          this.oldX = f1;
          this.oldY = f2;
          this.graphicalView.repaint();
          return true;
          if ((f9 >= 3.73D) && (f10 >= 3.73D))
          {
            applyZoom(f6 / f8, 2);
            break;
          }
          float f11;
          if (Math.abs(f1 - this.oldX) >= Math.abs(f2 - this.oldY))
            f11 = f5 / f7;
          while (true)
          {
            applyZoom(f11, 0);
            break;
            f11 = f6 / f8;
          }
          if (!this.mRenderer.isPanEnabled())
            continue;
          this.mPan.apply(this.oldX, this.oldY, f1, f2);
          this.oldX2 = 0.0F;
          this.oldY2 = 0.0F;
        }
      }
    }
    else if (i == 0)
    {
      this.oldX = paramMotionEvent.getX(0);
      this.oldY = paramMotionEvent.getY(0);
      if ((this.mRenderer != null) && (this.mRenderer.isZoomEnabled()) && (this.zoomR.contains(this.oldX, this.oldY)))
      {
        if (this.oldX < this.zoomR.left + this.zoomR.width() / 3.0F)
          this.graphicalView.zoomIn();
        while (true)
        {
          return true;
          if (this.oldX < this.zoomR.left + 2.0F * this.zoomR.width() / 3.0F)
          {
            this.graphicalView.zoomOut();
            continue;
          }
          this.graphicalView.zoomReset();
        }
      }
    }
    else if ((i == 1) || (i == 6))
    {
      this.oldX = 0.0F;
      this.oldY = 0.0F;
      this.oldX2 = 0.0F;
      this.oldY2 = 0.0F;
      if (i == 6)
      {
        this.oldX = -1.0F;
        this.oldY = -1.0F;
      }
    }
    return !this.mRenderer.isClickEnabled();
  }

  public void removePanListener(PanListener paramPanListener)
  {
    if (this.mPan != null)
      this.mPan.removePanListener(paramPanListener);
  }

  public void removeZoomListener(ZoomListener paramZoomListener)
  {
    if (this.mPinchZoom != null)
      this.mPinchZoom.removeZoomListener(paramZoomListener);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     org.achartengine.TouchHandler
 * JD-Core Version:    0.6.0
 */