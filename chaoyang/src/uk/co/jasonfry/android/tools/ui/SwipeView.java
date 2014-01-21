package uk.co.jasonfry.android.tools.ui;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.widget.FrameLayout.LayoutParams;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;

public class SwipeView extends HorizontalScrollView
{
  private static int DEFAULT_SWIPE_THRESHOLD = 60;
  private int SCREEN_WIDTH;
  protected boolean mCallScrollToPageInOnLayout = false;
  private Context mContext;
  private int mCurrentPage = 0;
  private boolean mJustInterceptedAndIgnored = false;
  private LinearLayout mLinearLayout;
  private boolean mMostlyScrollingInX = false;
  private boolean mMostlyScrollingInY = false;
  private int mMotionStartX;
  private int mMotionStartY;
  private OnPageChangedListener mOnPageChangedListener = null;
  private View.OnTouchListener mOnTouchListener;
  private PageControl mPageControl = null;
  private int mPageWidth = 0;
  private SwipeOnTouchListener mSwipeOnTouchListener;

  public SwipeView(Context paramContext)
  {
    super(paramContext);
    this.mContext = paramContext;
    initSwipeView();
  }

  public SwipeView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.mContext = paramContext;
    initSwipeView();
  }

  public SwipeView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    this.mContext = paramContext;
    initSwipeView();
  }

  private void detectMostlyScrollingDirection(MotionEvent paramMotionEvent)
  {
    float f1;
    float f2;
    if ((!this.mMostlyScrollingInX) && (!this.mMostlyScrollingInY))
    {
      f1 = Math.abs(this.mMotionStartX - paramMotionEvent.getX());
      f2 = Math.abs(this.mMotionStartY - paramMotionEvent.getY());
      if (f2 <= f1 + 5.0F)
        break label57;
      this.mMostlyScrollingInY = true;
    }
    label57: 
    do
      return;
    while (f1 <= f2 + 5.0F);
    this.mMostlyScrollingInX = true;
  }

  private void initSwipeView()
  {
    Log.i("uk.co.jasonfry.android.tools.ui.SwipeView", "Initialising SwipeView");
    this.mLinearLayout = new LinearLayout(this.mContext);
    this.mLinearLayout.setOrientation(0);
    super.addView(this.mLinearLayout, -1, new FrameLayout.LayoutParams(-1, -1));
    setSmoothScrollingEnabled(true);
    setHorizontalFadingEdgeEnabled(false);
    setHorizontalScrollBarEnabled(false);
    this.SCREEN_WIDTH = (int)(187.0F * getResources().getDisplayMetrics().density);
    this.mPageWidth = this.SCREEN_WIDTH;
    this.mCurrentPage = 0;
    this.mSwipeOnTouchListener = new SwipeOnTouchListener(null);
    super.setOnTouchListener(this.mSwipeOnTouchListener);
  }

  private void scrollToPage(int paramInt, boolean paramBoolean)
  {
    int i = this.mCurrentPage;
    label38: boolean bool2;
    if ((paramInt >= getPageCount()) && (getPageCount() > 0))
    {
      paramInt--;
      if (!paramBoolean)
        break label116;
      smoothScrollTo(paramInt * this.mPageWidth, 0);
      this.mCurrentPage = paramInt;
      if ((this.mOnPageChangedListener != null) && (i != paramInt))
        this.mOnPageChangedListener.onPageChanged(i, paramInt);
      if ((this.mPageControl != null) && (i != paramInt))
        this.mPageControl.setCurrentPage(paramInt);
      boolean bool1 = this.mCallScrollToPageInOnLayout;
      bool2 = false;
      if (!bool1)
        break label130;
    }
    while (true)
    {
      this.mCallScrollToPageInOnLayout = bool2;
      return;
      if (paramInt >= 0)
        break;
      paramInt = 0;
      break;
      label116: scrollTo(paramInt * this.mPageWidth, 0);
      break label38;
      label130: bool2 = true;
    }
  }

  public void addView(View paramView)
  {
    addView(paramView, -1);
  }

  public void addView(View paramView, int paramInt)
  {
    Object localObject;
    if (paramView.getLayoutParams() == null)
      localObject = new FrameLayout.LayoutParams(this.mPageWidth, -1);
    while (true)
    {
      addView(paramView, paramInt, (ViewGroup.LayoutParams)localObject);
      return;
      localObject = paramView.getLayoutParams();
      ((ViewGroup.LayoutParams)localObject).width = this.mPageWidth;
    }
  }

  public void addView(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams)
  {
    requestLayout();
    invalidate();
    this.mLinearLayout.addView(paramView, paramInt, paramLayoutParams);
  }

  public void addView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    paramLayoutParams.width = this.mPageWidth;
    addView(paramView, -1, paramLayoutParams);
  }

  public int calculatePageSize(ViewGroup.MarginLayoutParams paramMarginLayoutParams)
  {
    return setPageWidth(paramMarginLayoutParams.leftMargin + paramMarginLayoutParams.width + paramMarginLayoutParams.rightMargin);
  }

  public LinearLayout getChildContainer()
  {
    return this.mLinearLayout;
  }

  public int getCurrentPage()
  {
    return this.mCurrentPage;
  }

  public OnPageChangedListener getOnPageChangedListener()
  {
    return this.mOnPageChangedListener;
  }

  public PageControl getPageControl()
  {
    return this.mPageControl;
  }

  public int getPageCount()
  {
    return this.mLinearLayout.getChildCount();
  }

  public int getPageWidth()
  {
    return this.mPageWidth;
  }

  public int getSwipeThreshold()
  {
    return DEFAULT_SWIPE_THRESHOLD;
  }

  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    boolean bool = super.onInterceptTouchEvent(paramMotionEvent);
    if (paramMotionEvent.getAction() == 0)
    {
      this.mMotionStartX = (int)paramMotionEvent.getX();
      this.mMotionStartY = (int)paramMotionEvent.getY();
      if (!this.mJustInterceptedAndIgnored)
      {
        this.mMostlyScrollingInX = false;
        this.mMostlyScrollingInY = false;
      }
      if (!this.mMostlyScrollingInY)
        break label75;
      bool = false;
    }
    label75: 
    do
    {
      return bool;
      if (paramMotionEvent.getAction() != 2)
        break;
      detectMostlyScrollingDirection(paramMotionEvent);
      break;
    }
    while (!this.mMostlyScrollingInX);
    this.mJustInterceptedAndIgnored = true;
    return true;
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    if (this.mCallScrollToPageInOnLayout)
    {
      scrollToPage(this.mCurrentPage);
      this.mCallScrollToPageInOnLayout = false;
    }
  }

  protected boolean onRequestFocusInDescendants(int paramInt, Rect paramRect)
  {
    return false;
  }

  public boolean onTrackballEvent(MotionEvent paramMotionEvent)
  {
    return true;
  }

  public void requestChildFocus(View paramView1, View paramView2)
  {
    requestFocus();
  }

  public void scrollToPage(int paramInt)
  {
    scrollToPage(paramInt, false);
  }

  public void setOnPageChangedListener(OnPageChangedListener paramOnPageChangedListener)
  {
    this.mOnPageChangedListener = paramOnPageChangedListener;
  }

  public void setOnTouchListener(View.OnTouchListener paramOnTouchListener)
  {
    this.mOnTouchListener = paramOnTouchListener;
  }

  public void setPageControl(PageControl paramPageControl)
  {
    this.mPageControl = paramPageControl;
    paramPageControl.setPageCount(getPageCount());
    paramPageControl.setCurrentPage(this.mCurrentPage);
    paramPageControl.setOnPageControlClickListener(new PageControl.OnPageControlClickListener()
    {
      public void goBackwards()
      {
        SwipeView.this.smoothScrollToPage(-1 + SwipeView.this.mCurrentPage);
      }

      public void goForwards()
      {
        SwipeView.this.smoothScrollToPage(1 + SwipeView.this.mCurrentPage);
      }
    });
  }

  public int setPageWidth(int paramInt)
  {
    this.mPageWidth = paramInt;
    return (this.SCREEN_WIDTH - this.mPageWidth) / 2;
  }

  public void setSwipeThreshold(int paramInt)
  {
    DEFAULT_SWIPE_THRESHOLD = paramInt;
  }

  public void smoothScrollToPage(int paramInt)
  {
    scrollToPage(paramInt, true);
  }

  public static abstract interface OnPageChangedListener
  {
    public abstract void onPageChanged(int paramInt1, int paramInt2);
  }

  private class SwipeOnTouchListener
    implements View.OnTouchListener
  {
    private int mDistanceX;
    private boolean mFirstMotionEvent = true;
    private int mPreviousDirection;
    private boolean mSendingDummyMotionEvent = false;

    private SwipeOnTouchListener()
    {
    }

    private boolean actionDown(MotionEvent paramMotionEvent)
    {
      SwipeView.this.mMotionStartX = (int)paramMotionEvent.getX();
      SwipeView.this.mMotionStartY = (int)paramMotionEvent.getY();
      this.mFirstMotionEvent = false;
      return false;
    }

    private boolean actionMove(MotionEvent paramMotionEvent)
    {
      int i = SwipeView.this.mMotionStartX - (int)paramMotionEvent.getX();
      int j;
      if (i < 0)
        if (4 + this.mDistanceX <= i)
        {
          j = 1;
          int k = this.mPreviousDirection;
          if ((j == k) || (this.mFirstMotionEvent))
            break label198;
          SwipeView.this.mMotionStartX = (int)paramMotionEvent.getX();
        }
      label198: for (this.mDistanceX = (SwipeView.this.mMotionStartX - (int)paramMotionEvent.getX()); ; this.mDistanceX = i)
      {
        this.mPreviousDirection = j;
        if (!SwipeView.this.mJustInterceptedAndIgnored)
          break label206;
        this.mSendingDummyMotionEvent = true;
        SwipeView.this.dispatchTouchEvent(MotionEvent.obtain(paramMotionEvent.getDownTime(), paramMotionEvent.getEventTime(), 0, SwipeView.this.mMotionStartX, SwipeView.this.mMotionStartY, paramMotionEvent.getPressure(), paramMotionEvent.getSize(), paramMotionEvent.getMetaState(), paramMotionEvent.getXPrecision(), paramMotionEvent.getYPrecision(), paramMotionEvent.getDeviceId(), paramMotionEvent.getEdgeFlags()));
        SwipeView.this.mJustInterceptedAndIgnored = false;
        return true;
        j = -1;
        break;
        if (-4 + this.mDistanceX <= i);
        for (j = 1; ; j = -1)
          break;
      }
      label206: return false;
    }

    private boolean actionUp(MotionEvent paramMotionEvent)
    {
      float f1 = SwipeView.this.getScrollX();
      float f2 = SwipeView.this.mLinearLayout.getMeasuredWidth() / SwipeView.this.mPageWidth;
      float f3 = f1 / SwipeView.this.mPageWidth;
      float f4;
      if (this.mPreviousDirection == 1)
        if (this.mDistanceX > SwipeView.DEFAULT_SWIPE_THRESHOLD)
          if (SwipeView.this.mCurrentPage < f2 - 1.0F)
            f4 = (int)(f3 + 1.0F) * SwipeView.this.mPageWidth;
      while (true)
      {
        SwipeView.this.smoothScrollToPage((int)f4 / SwipeView.this.mPageWidth);
        this.mFirstMotionEvent = true;
        this.mDistanceX = 0;
        SwipeView.this.mMostlyScrollingInX = false;
        SwipeView.this.mMostlyScrollingInY = false;
        return true;
        f4 = SwipeView.this.mCurrentPage * SwipeView.this.mPageWidth;
        continue;
        if (Math.round(f3) == f2 - 1.0F)
        {
          f4 = (int)(f3 + 1.0F) * SwipeView.this.mPageWidth;
          continue;
        }
        f4 = SwipeView.this.mCurrentPage * SwipeView.this.mPageWidth;
        continue;
        if (this.mDistanceX < -SwipeView.DEFAULT_SWIPE_THRESHOLD)
        {
          f4 = (int)f3 * SwipeView.this.mPageWidth;
          continue;
        }
        if (Math.round(f3) == 0)
        {
          f4 = (int)f3 * SwipeView.this.mPageWidth;
          continue;
        }
        f4 = SwipeView.this.mCurrentPage * SwipeView.this.mPageWidth;
      }
    }

    public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
    {
      if (((SwipeView.this.mOnTouchListener != null) && (!SwipeView.this.mJustInterceptedAndIgnored)) || ((SwipeView.this.mOnTouchListener != null) && (this.mSendingDummyMotionEvent) && (SwipeView.this.mOnTouchListener.onTouch(paramView, paramMotionEvent))))
      {
        if (paramMotionEvent.getAction() == 1)
          actionUp(paramMotionEvent);
        return true;
      }
      if (this.mSendingDummyMotionEvent)
      {
        this.mSendingDummyMotionEvent = false;
        return false;
      }
      switch (paramMotionEvent.getAction())
      {
      default:
        return false;
      case 0:
        return actionDown(paramMotionEvent);
      case 2:
        return actionMove(paramMotionEvent);
      case 1:
      }
      return actionUp(paramMotionEvent);
    }
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     uk.co.jasonfry.android.tools.ui.SwipeView
 * JD-Core Version:    0.6.0
 */