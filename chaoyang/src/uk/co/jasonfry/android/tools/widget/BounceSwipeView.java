package uk.co.jasonfry.android.tools.widget;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Message;
import android.preference.PreferenceManager;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import uk.co.jasonfry.android.tools.ui.SwipeView;
import uk.co.jasonfry.android.tools.util.AnimationUtil;

public class BounceSwipeView extends SwipeView
{
  private static final int ANIMATION_DURATION = 120;
  private static final boolean BOUNCING_ON_LEFT = true;
  private static final boolean BOUNCING_ON_RIGHT = false;
  private static final int FRAME_DURATION = 30;
  private static final int NUMBER_OF_FRAMES = 4;
  private boolean mAtEdge = false;
  private float mAtEdgePreviousPosition;
  private float mAtEdgeStartPosition;
  private boolean mBounceEnabled = true;
  private boolean mBouncingSide;
  private Context mContext;
  private int mCurrentAnimationFrame;
  Handler mEaseAnimationFrameHandler;
  private View.OnTouchListener mOnTouchListener;
  private int mPaddingChange;
  private int mPaddingLeft;
  private int mPaddingRight;
  private int mPaddingStartValue;
  private SharedPreferences mSharedPreferences;

  public BounceSwipeView(Context paramContext)
  {
    super(paramContext);
    this.mContext = paramContext;
    initBounceSwipeView();
  }

  public BounceSwipeView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.mContext = paramContext;
    initBounceSwipeView();
  }

  public BounceSwipeView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    this.mContext = paramContext;
    initBounceSwipeView();
  }

  private void doBounceBackEaseAnimation()
  {
    if (this.mBouncingSide)
    {
      this.mPaddingChange = (getPaddingLeft() - this.mPaddingLeft);
      this.mPaddingStartValue = getPaddingLeft();
    }
    while (true)
    {
      this.mCurrentAnimationFrame = 0;
      this.mEaseAnimationFrameHandler.removeMessages(0);
      this.mEaseAnimationFrameHandler.sendEmptyMessage(0);
      return;
      if (this.mBouncingSide)
        continue;
      this.mPaddingChange = (getPaddingRight() - this.mPaddingRight);
      this.mPaddingStartValue = getPaddingRight();
    }
  }

  private void initBounceSwipeView()
  {
    super.setOnTouchListener(new BounceViewOnTouchListener(null));
    this.mSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this.mContext);
    this.mEaseAnimationFrameHandler = new Handler()
    {
      public void handleMessage(Message paramMessage)
      {
        int i = AnimationUtil.quadraticOutEase(BounceSwipeView.this.mCurrentAnimationFrame, BounceSwipeView.this.mPaddingStartValue, -BounceSwipeView.this.mPaddingChange, 4.0F);
        if (BounceSwipeView.this.mBouncingSide)
          BounceSwipeView.this.setPadding(i, BounceSwipeView.this.getPaddingTop(), BounceSwipeView.this.getPaddingRight(), BounceSwipeView.this.getPaddingBottom());
        while (true)
        {
          BounceSwipeView localBounceSwipeView = BounceSwipeView.this;
          localBounceSwipeView.mCurrentAnimationFrame = (1 + localBounceSwipeView.mCurrentAnimationFrame);
          if (BounceSwipeView.this.mCurrentAnimationFrame <= 4)
            BounceSwipeView.this.mEaseAnimationFrameHandler.sendEmptyMessageDelayed(0, 30L);
          return;
          if (BounceSwipeView.this.mBouncingSide)
            continue;
          BounceSwipeView.this.setPadding(BounceSwipeView.this.getPaddingLeft(), BounceSwipeView.this.getPaddingTop(), i, BounceSwipeView.this.getPaddingBottom());
        }
      }
    };
  }

  public void doAtEdgeAnimation()
  {
    if (getCurrentPage() == 0)
    {
      this.mBouncingSide = true;
      super.setPadding(50 + getPaddingLeft(), getPaddingTop(), getPaddingRight(), getPaddingBottom());
    }
    while (true)
    {
      doBounceBackEaseAnimation();
      return;
      if (getCurrentPage() != -1 + getPageCount())
        continue;
      this.mBouncingSide = false;
      super.setPadding(getPaddingLeft(), getPaddingTop(), 50 + getPaddingRight(), getPaddingBottom());
      scrollTo(50 + getScrollX(), getScrollY());
    }
  }

  public boolean getBounceEnabled()
  {
    return this.mBounceEnabled;
  }

  public void setBounceEnabled(boolean paramBoolean)
  {
    this.mBounceEnabled = paramBoolean;
  }

  public void setOnTouchListener(View.OnTouchListener paramOnTouchListener)
  {
    this.mOnTouchListener = paramOnTouchListener;
  }

  public void setPadding(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.mPaddingLeft = paramInt1;
    this.mPaddingRight = paramInt3;
    super.setPadding(paramInt1, paramInt2, paramInt3, paramInt4);
  }

  private class BounceViewOnTouchListener
    implements View.OnTouchListener
  {
    private BounceViewOnTouchListener()
    {
    }

    public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
    {
      if ((BounceSwipeView.this.mOnTouchListener != null) && (BounceSwipeView.this.mOnTouchListener.onTouch(paramView, paramMotionEvent)))
        return true;
      if (BounceSwipeView.this.mBounceEnabled)
        switch (paramMotionEvent.getAction())
        {
        default:
        case 2:
        case 1:
        }
      do
        while (true)
        {
          return false;
          int i = (-1 + BounceSwipeView.this.getPageCount()) * BounceSwipeView.this.getPageWidth() - BounceSwipeView.this.getPageWidth() % 2;
          if (((BounceSwipeView.this.getScrollX() == 0) && (!BounceSwipeView.this.mAtEdge)) || ((BounceSwipeView.this.getScrollX() == i) && (!BounceSwipeView.this.mAtEdge)))
          {
            BounceSwipeView.this.mAtEdge = true;
            BounceSwipeView.this.mAtEdgeStartPosition = paramMotionEvent.getX();
            BounceSwipeView.this.mAtEdgePreviousPosition = paramMotionEvent.getX();
            continue;
          }
          if (BounceSwipeView.this.getScrollX() == 0)
          {
            BounceSwipeView.this.mAtEdgePreviousPosition = paramMotionEvent.getX();
            BounceSwipeView.this.mBouncingSide = true;
            BounceSwipeView.this.setPadding((int)(BounceSwipeView.this.mAtEdgePreviousPosition - BounceSwipeView.this.mAtEdgeStartPosition) / 2, BounceSwipeView.this.getPaddingTop(), BounceSwipeView.this.getPaddingRight(), BounceSwipeView.this.getPaddingBottom());
            return true;
          }
          if (BounceSwipeView.this.getScrollX() >= i)
          {
            BounceSwipeView.this.mAtEdgePreviousPosition = paramMotionEvent.getX();
            BounceSwipeView.this.mBouncingSide = false;
            int j = (int)(BounceSwipeView.this.mAtEdgeStartPosition - BounceSwipeView.this.mAtEdgePreviousPosition) / 2;
            if (j >= BounceSwipeView.this.mPaddingRight)
              BounceSwipeView.this.setPadding(BounceSwipeView.this.getPaddingLeft(), BounceSwipeView.this.getPaddingTop(), j, BounceSwipeView.this.getPaddingBottom());
            while (true)
            {
              BounceSwipeView.this.scrollTo((int)(i + (BounceSwipeView.this.mAtEdgeStartPosition - BounceSwipeView.this.mAtEdgePreviousPosition) / 2.0F), BounceSwipeView.this.getScrollY());
              return true;
              BounceSwipeView.this.setPadding(BounceSwipeView.this.getPaddingLeft(), BounceSwipeView.this.getPaddingTop(), BounceSwipeView.this.mPaddingRight, BounceSwipeView.this.getPaddingBottom());
            }
          }
          BounceSwipeView.this.mAtEdge = false;
        }
      while (!BounceSwipeView.this.mAtEdge);
      BounceSwipeView.this.mAtEdge = false;
      BounceSwipeView.this.mAtEdgePreviousPosition = 0.0F;
      BounceSwipeView.this.mAtEdgeStartPosition = 0.0F;
      BounceSwipeView.this.doBounceBackEaseAnimation();
      return true;
    }
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     uk.co.jasonfry.android.tools.widget.BounceSwipeView
 * JD-Core Version:    0.6.0
 */