package uk.co.jasonfry.android.tools.ui;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.graphics.drawable.shapes.Shape;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import java.util.ArrayList;

public class PageControl extends LinearLayout
{
  private Drawable activeDrawable;
  private Drawable inactiveDrawable;
  private ArrayList<ImageView> indicators;
  private Context mContext;
  private int mCurrentPage = 0;
  private int mIndicatorSize = 7;
  private OnPageControlClickListener mOnPageControlClickListener = null;
  private int mPageCount = 0;

  public PageControl(Context paramContext)
  {
    super(paramContext);
    this.mContext = paramContext;
    initPageControl();
  }

  public PageControl(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.mContext = paramContext;
  }

  private void initPageControl()
  {
    Log.i("uk.co.jasonfry.android.tools.ui.PageControl", "Initialising PageControl");
    this.indicators = new ArrayList();
    this.activeDrawable = new ShapeDrawable();
    this.inactiveDrawable = new ShapeDrawable();
    this.activeDrawable.setBounds(0, 0, this.mIndicatorSize, this.mIndicatorSize);
    this.inactiveDrawable.setBounds(0, 0, this.mIndicatorSize, this.mIndicatorSize);
    OvalShape localOvalShape1 = new OvalShape();
    localOvalShape1.resize(this.mIndicatorSize, this.mIndicatorSize);
    OvalShape localOvalShape2 = new OvalShape();
    localOvalShape2.resize(this.mIndicatorSize, this.mIndicatorSize);
    int[] arrayOfInt = { 16842808, 16842810 };
    TypedArray localTypedArray = this.mContext.getTheme().obtainStyledAttributes(arrayOfInt);
    ((ShapeDrawable)this.activeDrawable).getPaint().setColor(localTypedArray.getColor(0, -12303292));
    ((ShapeDrawable)this.inactiveDrawable).getPaint().setColor(localTypedArray.getColor(1, -3355444));
    ((ShapeDrawable)this.activeDrawable).setShape(localOvalShape1);
    ((ShapeDrawable)this.inactiveDrawable).setShape(localOvalShape2);
    this.mIndicatorSize = (int)(this.mIndicatorSize * getResources().getDisplayMetrics().density);
    setOnTouchListener(new View.OnTouchListener()
    {
      public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
      {
        if (PageControl.this.mOnPageControlClickListener != null);
        switch (paramMotionEvent.getAction())
        {
        default:
          return true;
        case 1:
        }
        if (PageControl.this.getOrientation() == 0)
          if (paramMotionEvent.getX() < PageControl.this.getWidth() / 2)
            if (PageControl.this.mCurrentPage > 0)
              PageControl.this.mOnPageControlClickListener.goBackwards();
        while (true)
        {
          return false;
          if (PageControl.this.mCurrentPage >= -1 + PageControl.this.mPageCount)
            continue;
          PageControl.this.mOnPageControlClickListener.goForwards();
          continue;
          if (paramMotionEvent.getY() < PageControl.this.getHeight() / 2)
          {
            if (PageControl.this.mCurrentPage <= 0)
              continue;
            PageControl.this.mOnPageControlClickListener.goBackwards();
            continue;
          }
          if (PageControl.this.mCurrentPage >= -1 + PageControl.this.mPageCount)
            continue;
          PageControl.this.mOnPageControlClickListener.goForwards();
        }
      }
    });
  }

  public Drawable getActiveDrawable()
  {
    return this.activeDrawable;
  }

  public int getCurrentPage()
  {
    return this.mCurrentPage;
  }

  public Drawable getInactiveDrawable()
  {
    return this.inactiveDrawable;
  }

  public int getIndicatorSize()
  {
    return this.mIndicatorSize;
  }

  public OnPageControlClickListener getOnPageControlClickListener()
  {
    return this.mOnPageControlClickListener;
  }

  public int getPageCount()
  {
    return this.mPageCount;
  }

  protected void onFinishInflate()
  {
    initPageControl();
  }

  public void setActiveDrawable(Drawable paramDrawable)
  {
    this.activeDrawable = paramDrawable;
    ((ImageView)this.indicators.get(this.mCurrentPage)).setBackgroundDrawable(this.activeDrawable);
  }

  public void setCurrentPage(int paramInt)
  {
    if (paramInt < this.mPageCount)
    {
      ((ImageView)this.indicators.get(this.mCurrentPage)).setBackgroundDrawable(this.inactiveDrawable);
      ((ImageView)this.indicators.get(paramInt)).setBackgroundDrawable(this.activeDrawable);
      this.mCurrentPage = paramInt;
    }
  }

  public void setInactiveDrawable(Drawable paramDrawable)
  {
    this.inactiveDrawable = paramDrawable;
    for (int i = 0; ; i++)
    {
      if (i >= this.mPageCount)
      {
        ((ImageView)this.indicators.get(this.mCurrentPage)).setBackgroundDrawable(this.activeDrawable);
        return;
      }
      ((ImageView)this.indicators.get(i)).setBackgroundDrawable(this.inactiveDrawable);
    }
  }

  public void setIndicatorSize(int paramInt)
  {
    this.mIndicatorSize = paramInt;
    for (int i = 0; ; i++)
    {
      if (i >= this.mPageCount)
        return;
      ((ImageView)this.indicators.get(i)).setLayoutParams(new LinearLayout.LayoutParams(this.mIndicatorSize, this.mIndicatorSize));
    }
  }

  public void setOnPageControlClickListener(OnPageControlClickListener paramOnPageControlClickListener)
  {
    this.mOnPageControlClickListener = paramOnPageControlClickListener;
  }

  public void setPageCount(int paramInt)
  {
    this.mPageCount = paramInt;
    for (int i = 0; ; i++)
    {
      if (i >= paramInt)
        return;
      ImageView localImageView = new ImageView(this.mContext);
      LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(this.mIndicatorSize, this.mIndicatorSize);
      localLayoutParams.setMargins(this.mIndicatorSize / 2, this.mIndicatorSize, this.mIndicatorSize / 2, this.mIndicatorSize);
      localImageView.setLayoutParams(localLayoutParams);
      localImageView.setBackgroundDrawable(this.inactiveDrawable);
      this.indicators.add(localImageView);
      addView(localImageView);
    }
  }

  public static abstract interface OnPageControlClickListener
  {
    public abstract void goBackwards();

    public abstract void goForwards();
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     uk.co.jasonfry.android.tools.ui.PageControl
 * JD-Core Version:    0.6.0
 */