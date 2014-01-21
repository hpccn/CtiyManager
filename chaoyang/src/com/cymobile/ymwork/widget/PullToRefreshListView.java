package com.cymobile.ymwork.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import java.io.PrintStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class PullToRefreshListView extends ListView
  implements AbsListView.OnScrollListener
{
  private static final int ADDMOREing = 14;
  private static final int PULL_TO_ADDMORE = 12;
  private static final int PULL_TO_REFRESH = 2;
  private static final int REFRESHING = 4;
  private static final int RELEASE_TO_ADDMORE = 13;
  private static final int RELEASE_TO_REFRESH = 3;
  private static final String TAG = "PullToRefreshListView";
  private static final int TAP_TO_ADDMORE = 11;
  private static final int TAP_TO_REFRESH = 1;
  private int mAddMoreState;
  private boolean mBounceHack;
  private boolean mBounceHackFooter;
  private int mCurrentScrollState;
  private RotateAnimation mFlipAnimation;
  private LayoutInflater mInflater;
  private int mLastMotionY;
  private OnAddMoreListener mOnAddMoreListener;
  private OnRefreshListener mOnRefreshListener;
  private AbsListView.OnScrollListener mOnScrollListener;
  private int mRefreshOriginalTopPadding;
  private int mRefreshOriginalTopPaddingFooter;
  private int mRefreshState;
  private RelativeLayout mRefreshView;
  private RelativeLayout mRefreshViewFooter;
  private int mRefreshViewHeight;
  private int mRefreshViewHeightFooter;
  private ImageView mRefreshViewImage;
  private ImageView mRefreshViewImageFooter;
  private TextView mRefreshViewLastUpdated;
  private ProgressBar mRefreshViewProgress;
  private ProgressBar mRefreshViewProgressFooter;
  private TextView mRefreshViewText;
  private TextView mRefreshViewTextFooter;
  private RotateAnimation mReverseFlipAnimation;

  public PullToRefreshListView(Context paramContext)
  {
    super(paramContext);
    init(paramContext);
  }

  public PullToRefreshListView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    init(paramContext);
  }

  public PullToRefreshListView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    init(paramContext);
  }

  private void applyFooterPadding(MotionEvent paramMotionEvent)
  {
    int i = paramMotionEvent.getHistorySize();
    int j = 1;
    int k;
    int m;
    try
    {
      int i3 = ((Integer)MotionEvent.class.getMethod("getPointerCount", new Class[0]).invoke(paramMotionEvent, new Object[0])).intValue();
      j = i3;
      k = 0;
      if (k >= i)
        return;
    }
    catch (NoSuchMethodException localNoSuchMethodException2)
    {
      while (true)
        j = 1;
    }
    catch (IllegalArgumentException localIllegalArgumentException2)
    {
      throw localIllegalArgumentException2;
    }
    catch (IllegalAccessException localIllegalAccessException2)
    {
      while (true)
        System.err.println("unexpected " + localIllegalAccessException2);
    }
    catch (InvocationTargetException localInvocationTargetException1)
    {
      while (true)
        System.err.println("unexpected " + localInvocationTargetException1);
      m = 0;
    }
    while (true)
    {
      if (m >= j)
      {
        k++;
        break;
      }
      if (this.mAddMoreState == 13)
        if (isVerticalFadingEdgeEnabled())
          setVerticalScrollBarEnabled(false);
      try
      {
        Class[] arrayOfClass = new Class[2];
        arrayOfClass[0] = Integer.TYPE;
        arrayOfClass[1] = Integer.TYPE;
        Method localMethod = MotionEvent.class.getMethod("getHistoricalY", arrayOfClass);
        Object[] arrayOfObject = new Object[2];
        arrayOfObject[0] = Integer.valueOf(m);
        arrayOfObject[1] = Integer.valueOf(k);
        int i2 = ((Float)localMethod.invoke(paramMotionEvent, arrayOfObject)).intValue();
        n = i2;
        int i1 = (int)((n + this.mLastMotionY + this.mRefreshViewHeightFooter) / 1.7D);
        Log.i("PullToRefreshListView", "mRefreshViewHeightFooter " + this.mRefreshViewHeightFooter + " topPadding " + i1);
        resetFooterPadding();
        m++;
      }
      catch (NoSuchMethodException localNoSuchMethodException1)
      {
        while (true)
          n = (int)paramMotionEvent.getHistoricalY(k);
      }
      catch (IllegalArgumentException localIllegalArgumentException1)
      {
        throw localIllegalArgumentException1;
      }
      catch (IllegalAccessException localIllegalAccessException1)
      {
        while (true)
        {
          System.err.println("unexpected " + localIllegalAccessException1);
          n = 0;
        }
      }
      catch (InvocationTargetException localInvocationTargetException2)
      {
        while (true)
        {
          System.err.println("unexpected " + localInvocationTargetException2);
          int n = 0;
        }
      }
    }
  }

  private void applyHeaderPadding(MotionEvent paramMotionEvent)
  {
    int i = paramMotionEvent.getHistorySize();
    for (int j = 0; ; j++)
    {
      if (j >= i)
        return;
      if (this.mRefreshState != 3)
        continue;
      if (isVerticalFadingEdgeEnabled())
        setVerticalScrollBarEnabled(false);
      int k = (int)(((int)paramMotionEvent.getHistoricalY(j) - this.mLastMotionY - this.mRefreshViewHeight) / 1.7D);
      this.mRefreshView.setPadding(this.mRefreshView.getPaddingLeft(), k, this.mRefreshView.getPaddingRight(), this.mRefreshView.getPaddingBottom());
    }
  }

  private void init(Context paramContext)
  {
    this.mFlipAnimation = new RotateAnimation(0.0F, -180.0F, 1, 0.5F, 1, 0.5F);
    this.mFlipAnimation.setInterpolator(new LinearInterpolator());
    this.mFlipAnimation.setDuration(250L);
    this.mFlipAnimation.setFillAfter(true);
    this.mReverseFlipAnimation = new RotateAnimation(-180.0F, 0.0F, 1, 0.5F, 1, 0.5F);
    this.mReverseFlipAnimation.setInterpolator(new LinearInterpolator());
    this.mReverseFlipAnimation.setDuration(250L);
    this.mReverseFlipAnimation.setFillAfter(true);
    this.mInflater = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
    this.mRefreshView = ((RelativeLayout)this.mInflater.inflate(2130903082, this, false));
    this.mRefreshViewText = ((TextView)this.mRefreshView.findViewById(2131230895));
    this.mRefreshViewImage = ((ImageView)this.mRefreshView.findViewById(2131230894));
    this.mRefreshViewProgress = ((ProgressBar)this.mRefreshView.findViewById(2131230893));
    this.mRefreshViewLastUpdated = ((TextView)this.mRefreshView.findViewById(2131230896));
    this.mRefreshViewImage.setMinimumHeight(50);
    this.mRefreshView.setOnClickListener(new OnClickRefreshListener(null));
    this.mRefreshOriginalTopPadding = this.mRefreshView.getPaddingTop();
    this.mRefreshState = 1;
    setAddMoreState(11);
    addHeaderView(this.mRefreshView);
    this.mRefreshViewFooter = ((RelativeLayout)this.mInflater.inflate(2130903081, this, false));
    this.mRefreshViewTextFooter = ((TextView)this.mRefreshViewFooter.findViewById(2131230891));
    this.mRefreshViewImageFooter = ((ImageView)this.mRefreshViewFooter.findViewById(2131230890));
    this.mRefreshViewProgressFooter = ((ProgressBar)this.mRefreshViewFooter.findViewById(2131230889));
    addFooterView(this.mRefreshViewFooter);
    this.mRefreshViewImageFooter.setMinimumHeight(50);
    this.mRefreshViewFooter.setOnClickListener(new OnClickAddMoreListener(null));
    this.mRefreshOriginalTopPaddingFooter = this.mRefreshViewFooter.getPaddingTop();
    super.setOnScrollListener(this);
    measureView(this.mRefreshView);
    this.mRefreshViewHeight = this.mRefreshView.getMeasuredHeight();
    this.mRefreshViewHeightFooter = this.mRefreshViewFooter.getMeasuredHeight();
  }

  private void measureView(View paramView)
  {
    ViewGroup.LayoutParams localLayoutParams = paramView.getLayoutParams();
    if (localLayoutParams == null)
      localLayoutParams = new ViewGroup.LayoutParams(-1, -2);
    int i = ViewGroup.getChildMeasureSpec(0, 0, localLayoutParams.width);
    int j = localLayoutParams.height;
    if (j > 0);
    for (int k = View.MeasureSpec.makeMeasureSpec(j, 1073741824); ; k = View.MeasureSpec.makeMeasureSpec(0, 0))
    {
      paramView.measure(i, k);
      Log.i("PullToRefreshListView", "child height " + paramView.getHeight());
      return;
    }
  }

  private void resetFooter()
  {
    if (this.mAddMoreState != 11)
    {
      setAddMoreState(11);
      resetFooterPadding();
      this.mRefreshViewTextFooter.setText(2131296302);
      this.mRefreshViewImageFooter.setImageResource(2130837581);
      this.mRefreshViewImageFooter.clearAnimation();
      this.mRefreshViewImageFooter.setVisibility(8);
      this.mRefreshViewProgressFooter.setVisibility(8);
    }
  }

  private void resetFooterPadding()
  {
    this.mRefreshViewFooter.setPadding(this.mRefreshViewFooter.getPaddingLeft(), this.mRefreshOriginalTopPaddingFooter, this.mRefreshViewFooter.getPaddingRight(), this.mRefreshViewFooter.getPaddingBottom());
  }

  private void resetHeader()
  {
    if (this.mRefreshState != 1)
    {
      this.mRefreshState = 1;
      resetHeaderPadding();
      this.mRefreshViewText.setText(2131296303);
      this.mRefreshViewImage.setImageResource(2130837581);
      this.mRefreshViewImage.clearAnimation();
      this.mRefreshViewImage.setVisibility(8);
      this.mRefreshViewProgress.setVisibility(8);
    }
  }

  private void resetHeaderPadding()
  {
    this.mRefreshView.setPadding(this.mRefreshView.getPaddingLeft(), this.mRefreshOriginalTopPadding, this.mRefreshView.getPaddingRight(), this.mRefreshView.getPaddingBottom());
  }

  private void setAddMoreState(int paramInt)
  {
    Log.i("PullToRefreshListView", "setAddMoreState " + paramInt);
    this.mAddMoreState = paramInt;
  }

  public void onAddMore()
  {
    Log.d("PullToRefreshListView", "onAddMore");
    if (this.mOnAddMoreListener != null)
      this.mOnAddMoreListener.onAddMore();
  }

  public void onAddMoreComplete()
  {
    Log.d("PullToRefreshListView", "onAddMoreComplete");
    resetFooter();
  }

  public void onAddMoreComplete(boolean paramBoolean)
  {
    onAddMoreComplete();
  }

  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    setSelection(1);
  }

  public void onLastRecordComplete()
  {
    Log.d("PullToRefreshListView", "onLastRecordComplete");
    this.mRefreshViewFooter.setVisibility(8);
  }

  public void onRefresh()
  {
    Log.d("PullToRefreshListView", "onRefresh");
    if (this.mOnRefreshListener != null)
      this.mOnRefreshListener.onRefresh();
  }

  public void onRefreshComplete(CharSequence paramCharSequence)
  {
    setLastUpdated(paramCharSequence);
    onRefreshComplete(false);
  }

  public void onRefreshComplete(boolean paramBoolean)
  {
    Log.d("PullToRefreshListView", "onRefreshComplete");
    resetHeader();
    if (this.mRefreshView.getBottom() > 0)
    {
      invalidateViews();
      setSelection(1);
    }
    resetFooter();
    if (paramBoolean)
    {
      this.mRefreshViewFooter.setVisibility(8);
      return;
    }
    this.mRefreshViewFooter.setVisibility(0);
  }

  public void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    if ((this.mCurrentScrollState == 1) && (this.mRefreshState != 4))
      if (paramInt1 == 0)
      {
        this.mRefreshViewImage.setVisibility(0);
        if (((this.mRefreshView.getBottom() >= 20 + this.mRefreshViewHeight) || (this.mRefreshView.getTop() >= 0)) && (this.mRefreshState != 3))
        {
          this.mRefreshViewText.setText(2131296304);
          this.mRefreshViewImage.clearAnimation();
          this.mRefreshViewImage.startAnimation(this.mFlipAnimation);
          this.mRefreshState = 3;
          if ((this.mCurrentScrollState != 1) || (this.mAddMoreState == 14))
            break label451;
          if (paramInt1 + paramInt2 != paramInt3)
            break label435;
          this.mRefreshViewImageFooter.setVisibility(0);
          if ((this.mRefreshViewFooter.getTop() > getMeasuredHeight() - this.mRefreshViewHeightFooter) || (this.mAddMoreState == 13))
            break label358;
          this.mRefreshViewTextFooter.setText(2131296486);
          this.mRefreshViewImageFooter.clearAnimation();
          this.mRefreshViewImageFooter.startAnimation(this.mFlipAnimation);
          setAddMoreState(13);
        }
      }
    while (true)
    {
      if (this.mOnScrollListener != null)
        this.mOnScrollListener.onScroll(paramAbsListView, paramInt1, paramInt2, paramInt3);
      return;
      if ((this.mRefreshView.getBottom() >= 20 + this.mRefreshViewHeight) || (this.mRefreshState == 2))
        break;
      this.mRefreshViewText.setText(2131296305);
      if (this.mRefreshState != 1)
      {
        this.mRefreshViewImage.clearAnimation();
        this.mRefreshViewImage.startAnimation(this.mReverseFlipAnimation);
      }
      this.mRefreshState = 2;
      break;
      this.mRefreshViewImage.setVisibility(8);
      resetHeader();
      break;
      if ((this.mCurrentScrollState == 2) && (paramInt2 > 0) && (paramInt1 == 0) && (this.mRefreshState != 4))
      {
        setSelection(1);
        this.mBounceHack = true;
        break;
      }
      if ((!this.mBounceHack) || (this.mCurrentScrollState != 2))
        break;
      setSelection(1);
      break;
      label358: if ((this.mRefreshViewFooter.getTop() <= -20 + getMeasuredHeight() - this.mRefreshViewHeightFooter) || (this.mAddMoreState == 12))
        continue;
      this.mRefreshViewTextFooter.setText(2131296487);
      if (this.mAddMoreState != 11)
      {
        this.mRefreshViewImageFooter.clearAnimation();
        this.mRefreshViewImageFooter.startAnimation(this.mReverseFlipAnimation);
      }
      setAddMoreState(12);
      continue;
      label435: this.mRefreshViewImageFooter.setVisibility(8);
      resetFooter();
      continue;
      label451: if ((this.mCurrentScrollState == 2) && (paramInt1 + paramInt2 == paramInt3) && (this.mAddMoreState != 14) && (!this.mBounceHackFooter))
      {
        this.mBounceHackFooter = true;
        continue;
      }
      if ((!this.mBounceHackFooter) || (this.mCurrentScrollState != 2))
        continue;
    }
  }

  public void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
    if ((this.mBounceHackFooter) && (paramInt == 0) && (this.mCurrentScrollState == 2))
      resetFooterPadding();
    this.mCurrentScrollState = paramInt;
    if (this.mCurrentScrollState == 0)
    {
      this.mBounceHack = false;
      this.mBounceHackFooter = false;
      Log.i("PullToRefreshListView", "onScrollStateChanged SCROLL_STATE_IDLE");
    }
    if (this.mOnScrollListener != null)
      this.mOnScrollListener.onScrollStateChanged(paramAbsListView, paramInt);
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int i = (int)paramMotionEvent.getY();
    this.mBounceHack = false;
    this.mBounceHackFooter = false;
    switch (paramMotionEvent.getAction())
    {
    default:
    case 1:
    case 0:
    case 2:
    }
    while (true)
    {
      return super.onTouchEvent(paramMotionEvent);
      if (!isVerticalScrollBarEnabled())
        setVerticalScrollBarEnabled(true);
      if ((getFirstVisiblePosition() == 0) && (this.mRefreshState != 4))
      {
        if (((this.mRefreshView.getBottom() < this.mRefreshViewHeight) && (this.mRefreshView.getTop() < 0)) || (this.mRefreshState != 3))
          break label334;
        this.mRefreshState = 4;
        prepareForRefresh();
        onRefresh();
      }
      while (true)
      {
        Log.i("onTouchEvent", "getLastVisiblePosition() " + getLastVisiblePosition() + " getCount() " + getAdapter().getCount() + " mAddMoreState " + this.mAddMoreState + " ADDMOREing " + 14);
        if ((getLastVisiblePosition() != -1 + getAdapter().getCount()) || (this.mAddMoreState == 14))
          break;
        Log.i("PullToRefreshListView", " mRefreshViewFooter.getTop() " + this.mRefreshViewFooter.getTop() + " getMeasuredHeight() " + getMeasuredHeight() + " mRefreshViewHeightFooter " + this.mRefreshViewHeightFooter);
        if ((-2 + this.mRefreshViewFooter.getTop() > getMeasuredHeight() - this.mRefreshViewHeightFooter) || (this.mAddMoreState != 13))
          break label370;
        setAddMoreState(14);
        Log.i("PullToRefreshListView", "onAddMore");
        prepareForAddMore();
        onAddMore();
        break;
        label334: if ((this.mRefreshView.getBottom() >= this.mRefreshViewHeight) && (this.mRefreshView.getTop() > 0))
          continue;
        resetHeader();
        setSelection(1);
      }
      label370: if (-2 + this.mRefreshViewFooter.getTop() <= getMeasuredHeight() - this.mRefreshViewHeightFooter)
        continue;
      Log.i("PullToRefreshListView", "resetFooter 111");
      resetFooter();
      setSelection(1);
      if (getFooterViewsCount() > 0)
        setSelectionFromTop(-1 + getAdapter().getCount(), getMeasuredHeight());
      if (this.mRefreshState == 3)
        continue;
      scrollTo(0, this.mRefreshView.getScrollY() - this.mRefreshViewHeight);
      continue;
      this.mLastMotionY = i;
      continue;
      applyHeaderPadding(paramMotionEvent);
    }
  }

  public void prepareForAddMore()
  {
    resetFooterPadding();
    this.mRefreshViewImageFooter.setVisibility(8);
    this.mRefreshViewImageFooter.setImageDrawable(null);
    this.mRefreshViewProgressFooter.setVisibility(0);
    this.mRefreshViewTextFooter.setText(2131296306);
    setAddMoreState(14);
  }

  public void prepareForRefresh()
  {
    resetHeaderPadding();
    this.mRefreshViewImage.setVisibility(8);
    this.mRefreshViewImage.setImageDrawable(null);
    this.mRefreshViewProgress.setVisibility(0);
    this.mRefreshViewText.setText(2131296488);
    this.mRefreshState = 4;
  }

  public void setAdapter(ListAdapter paramListAdapter)
  {
    super.setAdapter(paramListAdapter);
  }

  public void setLastUpdated(CharSequence paramCharSequence)
  {
    if (paramCharSequence != null)
    {
      this.mRefreshViewLastUpdated.setVisibility(0);
      this.mRefreshViewLastUpdated.setText(paramCharSequence);
      return;
    }
    this.mRefreshViewLastUpdated.setVisibility(8);
  }

  public void setOnAddMoreListener(OnAddMoreListener paramOnAddMoreListener)
  {
    this.mOnAddMoreListener = paramOnAddMoreListener;
  }

  public void setOnRefreshListener(OnRefreshListener paramOnRefreshListener)
  {
    this.mOnRefreshListener = paramOnRefreshListener;
  }

  public void setOnScrollListener(AbsListView.OnScrollListener paramOnScrollListener)
  {
    this.mOnScrollListener = paramOnScrollListener;
  }

  public static abstract interface OnAddMoreListener
  {
    public abstract void onAddMore();
  }

  private class OnClickAddMoreListener
    implements View.OnClickListener
  {
    private OnClickAddMoreListener()
    {
    }

    public void onClick(View paramView)
    {
      if ((paramView.getVisibility() == 0) && (PullToRefreshListView.this.mAddMoreState != 14))
      {
        PullToRefreshListView.this.prepareForAddMore();
        PullToRefreshListView.this.onAddMore();
      }
    }
  }

  private class OnClickRefreshListener
    implements View.OnClickListener
  {
    private OnClickRefreshListener()
    {
    }

    public void onClick(View paramView)
    {
      if (PullToRefreshListView.this.mRefreshState != 4)
      {
        PullToRefreshListView.this.prepareForRefresh();
        PullToRefreshListView.this.onRefresh();
      }
    }
  }

  public static abstract interface OnRefreshListener
  {
    public abstract void onRefresh();
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.widget.PullToRefreshListView
 * JD-Core Version:    0.6.0
 */