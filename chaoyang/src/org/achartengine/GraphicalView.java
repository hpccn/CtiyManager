package org.achartengine;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build.VERSION;
import android.os.Handler;
import android.view.MotionEvent;
import android.view.View;
import org.achartengine.chart.AbstractChart;
import org.achartengine.chart.RoundChart;
import org.achartengine.chart.XYChart;
import org.achartengine.model.Point;
import org.achartengine.model.SeriesSelection;
import org.achartengine.renderer.DefaultRenderer;
import org.achartengine.renderer.XYMultipleSeriesRenderer;
import org.achartengine.tools.FitZoom;
import org.achartengine.tools.PanListener;
import org.achartengine.tools.Zoom;
import org.achartengine.tools.ZoomListener;

public class GraphicalView extends View
{
  private static final int ZOOM_BUTTONS_COLOR = Color.argb(175, 150, 150, 150);
  private Bitmap fitZoomImage;
  private AbstractChart mChart;
  private boolean mDrawn;
  private FitZoom mFitZoom;
  private Handler mHandler;
  private Paint mPaint = new Paint();
  private Rect mRect = new Rect();
  private DefaultRenderer mRenderer;
  private ITouchHandler mTouchHandler;
  private Zoom mZoomIn;
  private Zoom mZoomOut;
  private RectF mZoomR = new RectF();
  private float oldX;
  private float oldY;
  private Bitmap zoomInImage;
  private Bitmap zoomOutImage;
  private int zoomSize = 50;

  public GraphicalView(Context paramContext, AbstractChart paramAbstractChart)
  {
    super(paramContext);
    this.mChart = paramAbstractChart;
    this.mHandler = new Handler();
    if ((this.mChart instanceof XYChart))
      this.mRenderer = ((XYChart)this.mChart).getRenderer();
    while (true)
    {
      if (this.mRenderer.isZoomButtonsVisible())
      {
        this.zoomInImage = BitmapFactory.decodeStream(GraphicalView.class.getResourceAsStream("image/zoom_in.png"));
        this.zoomOutImage = BitmapFactory.decodeStream(GraphicalView.class.getResourceAsStream("image/zoom_out.png"));
        this.fitZoomImage = BitmapFactory.decodeStream(GraphicalView.class.getResourceAsStream("image/zoom-1.png"));
      }
      if (((this.mRenderer instanceof XYMultipleSeriesRenderer)) && (((XYMultipleSeriesRenderer)this.mRenderer).getMarginsColor() == 0))
        ((XYMultipleSeriesRenderer)this.mRenderer).setMarginsColor(this.mPaint.getColor());
      if (((this.mRenderer.isZoomEnabled()) && (this.mRenderer.isZoomButtonsVisible())) || (this.mRenderer.isExternalZoomEnabled()))
      {
        this.mZoomIn = new Zoom(this.mChart, true, this.mRenderer.getZoomRate());
        this.mZoomOut = new Zoom(this.mChart, false, this.mRenderer.getZoomRate());
        this.mFitZoom = new FitZoom(this.mChart);
      }
      int i = 7;
      try
      {
        int j = Integer.valueOf(Build.VERSION.SDK).intValue();
        i = j;
        label284: if (i < 7)
        {
          this.mTouchHandler = new TouchHandlerOld(this, this.mChart);
          return;
          this.mRenderer = ((RoundChart)this.mChart).getRenderer();
          continue;
        }
        this.mTouchHandler = new TouchHandler(this, this.mChart);
        return;
      }
      catch (Exception localException)
      {
        break label284;
      }
    }
  }

  public void addPanListener(PanListener paramPanListener)
  {
    this.mTouchHandler.addPanListener(paramPanListener);
  }

  public void addZoomListener(ZoomListener paramZoomListener, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (paramBoolean1)
    {
      if (this.mZoomIn != null)
      {
        this.mZoomIn.addZoomListener(paramZoomListener);
        this.mZoomOut.addZoomListener(paramZoomListener);
      }
      if (paramBoolean2)
        this.mTouchHandler.addZoomListener(paramZoomListener);
    }
  }

  public SeriesSelection getCurrentSeriesAndPoint()
  {
    return this.mChart.getSeriesAndPointForScreenCoordinate(new Point(this.oldX, this.oldY));
  }

  protected RectF getZoomRectangle()
  {
    return this.mZoomR;
  }

  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    paramCanvas.getClipBounds(this.mRect);
    int i = this.mRect.top;
    int j = this.mRect.left;
    int k = this.mRect.width();
    int m = this.mRect.height();
    if (this.mRenderer.isInScroll())
    {
      i = 0;
      j = 0;
      k = getMeasuredWidth();
      m = getMeasuredHeight();
    }
    this.mChart.draw(paramCanvas, j, i, k, m, this.mPaint);
    if ((this.mRenderer != null) && (this.mRenderer.isZoomEnabled()) && (this.mRenderer.isZoomButtonsVisible()))
    {
      this.mPaint.setColor(ZOOM_BUTTONS_COLOR);
      this.zoomSize = Math.max(this.zoomSize, Math.min(k, m) / 7);
      this.mZoomR.set(j + k - 3 * this.zoomSize, i + m - 0.775F * this.zoomSize, j + k, i + m);
      paramCanvas.drawRoundRect(this.mZoomR, this.zoomSize / 3, this.zoomSize / 3, this.mPaint);
      float f = i + m - 0.625F * this.zoomSize;
      paramCanvas.drawBitmap(this.zoomInImage, j + k - 2.75F * this.zoomSize, f, null);
      paramCanvas.drawBitmap(this.zoomOutImage, j + k - 1.75F * this.zoomSize, f, null);
      paramCanvas.drawBitmap(this.fitZoomImage, j + k - 0.75F * this.zoomSize, f, null);
    }
    this.mDrawn = true;
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (paramMotionEvent.getAction() == 0)
    {
      this.oldX = paramMotionEvent.getX();
      this.oldY = paramMotionEvent.getY();
    }
    if ((this.mRenderer != null) && (this.mDrawn) && ((this.mRenderer.isPanEnabled()) || (this.mRenderer.isZoomEnabled())) && (this.mTouchHandler.handleTouch(paramMotionEvent)))
      return true;
    return super.onTouchEvent(paramMotionEvent);
  }

  public void removePanListener(PanListener paramPanListener)
  {
    this.mTouchHandler.removePanListener(paramPanListener);
  }

  public void removeZoomListener(ZoomListener paramZoomListener)
  {
    monitorenter;
    try
    {
      if (this.mZoomIn != null)
      {
        this.mZoomIn.removeZoomListener(paramZoomListener);
        this.mZoomOut.removeZoomListener(paramZoomListener);
      }
      this.mTouchHandler.removeZoomListener(paramZoomListener);
      return;
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  public void repaint()
  {
    this.mHandler.post(new Runnable()
    {
      public void run()
      {
        GraphicalView.this.invalidate();
      }
    });
  }

  public void repaint(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.mHandler.post(new Runnable(paramInt1, paramInt2, paramInt3, paramInt4)
    {
      public void run()
      {
        GraphicalView.this.invalidate(this.val$left, this.val$top, this.val$right, this.val$bottom);
      }
    });
  }

  public void setZoomRate(float paramFloat)
  {
    if ((this.mZoomIn != null) && (this.mZoomOut != null))
    {
      this.mZoomIn.setZoomRate(paramFloat);
      this.mZoomOut.setZoomRate(paramFloat);
    }
  }

  public Bitmap toBitmap()
  {
    setDrawingCacheEnabled(false);
    if (!isDrawingCacheEnabled())
      setDrawingCacheEnabled(true);
    if (this.mRenderer.isApplyBackgroundColor())
      setDrawingCacheBackgroundColor(this.mRenderer.getBackgroundColor());
    setDrawingCacheQuality(1048576);
    return getDrawingCache(true);
  }

  public double[] toRealPoint(int paramInt)
  {
    if ((this.mChart instanceof XYChart))
      return ((XYChart)this.mChart).toRealPoint(this.oldX, this.oldY, paramInt);
    return null;
  }

  public void zoomIn()
  {
    if (this.mZoomIn != null)
    {
      this.mZoomIn.apply(0);
      repaint();
    }
  }

  public void zoomOut()
  {
    if (this.mZoomOut != null)
    {
      this.mZoomOut.apply(0);
      repaint();
    }
  }

  public void zoomReset()
  {
    if (this.mFitZoom != null)
    {
      this.mFitZoom.apply();
      this.mZoomIn.notifyZoomResetListeners();
      repaint();
    }
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     org.achartengine.GraphicalView
 * JD-Core Version:    0.6.0
 */