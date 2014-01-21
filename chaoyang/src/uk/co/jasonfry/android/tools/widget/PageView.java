package uk.co.jasonfry.android.tools.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Adapter;
import android.widget.BaseAdapter;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import uk.co.jasonfry.android.tools.ui.SwipeView.OnPageChangedListener;

public class PageView extends BounceSwipeView
{
  private Adapter mAdapter;
  private boolean mCarouselMode = false;
  private int mCurrentPage;
  private int mOffset;
  private SwipeView.OnPageChangedListener mOnPageChangedListener;

  public PageView(Context paramContext)
  {
    super(paramContext);
    initView();
  }

  public PageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    initView();
  }

  public PageView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    initView();
  }

  private void backwardsMove()
  {
    if (this.mCurrentPage > 0);
    for (this.mCurrentPage = (-1 + this.mCurrentPage); this.mCurrentPage > 0; this.mCurrentPage = (-1 + getAdapterPageCount()))
    {
      backwardsRearrange(-1 + this.mCurrentPage);
      return;
    }
    backwardsRearrange(-1 + getAdapterPageCount());
  }

  private void backwardsRearrange(int paramInt)
  {
    View localView = getChildContainer().getChildAt(2);
    getChildContainer().removeViewAt(2);
    loadPage(paramInt, 0, localView);
    resetMargins();
  }

  private void emptyCarousel()
  {
    getChildContainer().removeAllViews();
  }

  private void fillCarousel(int paramInt)
  {
    emptyCarousel();
    if (this.mAdapter.getCount() == 1)
      loadPage(0, 0, null);
    do
    {
      return;
      if (this.mAdapter.getCount() != 2)
        continue;
      if (!this.mCarouselMode)
      {
        loadPage(0, 0, null);
        loadPage(1, 1, null);
        return;
      }
      if (paramInt == 0)
      {
        loadPage(1, 0, null);
        loadPage(0, 1, null);
        loadPage(1, 2, null);
        return;
      }
      loadPage(0, 0, null);
      loadPage(1, 1, null);
      loadPage(0, 2, null);
      return;
    }
    while (this.mAdapter.getCount() <= 2);
    if ((paramInt == 0) && (this.mCarouselMode))
    {
      loadPage(-1 + this.mAdapter.getCount(), 0, null);
      loadPage(0, 1, null);
      loadPage(1, 2, null);
    }
    while (true)
    {
      resetMargins();
      return;
      if ((paramInt == 0) && (!this.mCarouselMode))
      {
        loadPage(0, 0, null);
        loadPage(1, 1, null);
        loadPage(2, 2, null);
        continue;
      }
      if ((paramInt == -1 + this.mAdapter.getCount()) && (this.mCarouselMode))
      {
        loadPage(paramInt - 1, 0, null);
        loadPage(-1 + this.mAdapter.getCount(), 1, null);
        loadPage(0, 2, null);
        continue;
      }
      if ((paramInt == -1 + this.mAdapter.getCount()) && (!this.mCarouselMode))
      {
        loadPage(-3 + this.mAdapter.getCount(), 0, null);
        loadPage(-2 + this.mAdapter.getCount(), 1, null);
        loadPage(-1 + this.mAdapter.getCount(), 2, null);
        continue;
      }
      loadPage(paramInt - 1, 0, null);
      loadPage(paramInt, 1, null);
      loadPage(paramInt + 1, 2, null);
    }
  }

  private void forwardsMove()
  {
    if (this.mCurrentPage < -1 + getAdapterPageCount());
    for (this.mCurrentPage = (1 + this.mCurrentPage); this.mCurrentPage < -1 + getAdapterPageCount(); this.mCurrentPage = 0)
    {
      forwardsRearrange(1 + this.mCurrentPage);
      return;
    }
    forwardsRearrange(0);
  }

  private void forwardsRearrange(int paramInt)
  {
    View localView = getChildContainer().getChildAt(0);
    getChildContainer().removeViewAt(0);
    loadPage(paramInt, 2, localView);
    resetMargins();
  }

  private int getAdapterPageCount()
  {
    if (this.mAdapter != null)
    {
      if ((this.mAdapter.getCount() == 2) && (this.mCarouselMode))
        return 4;
      return this.mAdapter.getCount();
    }
    return -1;
  }

  private void initView()
  {
    setBounceEnabled(false);
  }

  private void loadPage(int paramInt1, int paramInt2, View paramView)
  {
    if ((this.mAdapter.getCount() == 2) && (paramInt1 > 1))
      paramInt1 -= 2;
    super.addView(this.mAdapter.getView(paramInt1, paramView, getChildContainer()), paramInt2);
  }

  private void notifiyAssignedOnPageChangedListener(int paramInt)
  {
    if (this.mOnPageChangedListener != null)
    {
      if ((this.mCarouselMode) && (this.mCurrentPage == 0) && (paramInt == 2))
        this.mOnPageChangedListener.onPageChanged(-1 + this.mAdapter.getCount(), this.mCurrentPage);
    }
    else
      return;
    if ((this.mCarouselMode) && (this.mCurrentPage == -1 + this.mAdapter.getCount()) && (paramInt == 0))
    {
      this.mOnPageChangedListener.onPageChanged(0, this.mCurrentPage);
      return;
    }
    if ((!this.mCarouselMode) && (this.mCurrentPage == 1) && (paramInt == 1))
    {
      this.mOnPageChangedListener.onPageChanged(0, 1);
      return;
    }
    if ((!this.mCarouselMode) && (this.mCurrentPage == -1 + this.mAdapter.getCount()) && (paramInt == -1 + this.mAdapter.getCount()))
    {
      this.mOnPageChangedListener.onPageChanged(this.mCurrentPage, -2 + this.mAdapter.getCount());
      return;
    }
    if (paramInt == 2)
    {
      this.mOnPageChangedListener.onPageChanged(-1 + this.mCurrentPage, this.mCurrentPage);
      return;
    }
    this.mOnPageChangedListener.onPageChanged(1 + this.mCurrentPage, this.mCurrentPage);
  }

  private void rearrangePages(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    int i;
    if (getAdapterPageCount() > 1)
    {
      if (paramInt2 < paramInt1 + 1)
        break label120;
      if ((!this.mCarouselMode) && ((this.mCurrentPage >= -2 + getAdapterPageCount()) || (this.mCurrentPage <= 0)))
        break label86;
      this.mCallScrollToPageInOnLayout = false;
      scrollTo(getScrollX() - getPageWidth(), 0);
      forwardsMove();
      i = 1;
    }
    while (true)
    {
      post(new Runnable(paramBoolean, i)
      {
        public void run()
        {
          if (this.val$smooth)
          {
            PageView.this.smoothScrollToPage(this.val$pageToScrollTo);
            return;
          }
          PageView.this.scrollToPage(this.val$pageToScrollTo);
        }
      });
      return;
      label86: if (this.mCurrentPage <= 0)
      {
        this.mCurrentPage = 1;
        i = 1;
        continue;
      }
      this.mCurrentPage = (-1 + getAdapterPageCount());
      i = 2;
      continue;
      label120: if (paramInt2 <= paramInt1 - 1)
      {
        if ((this.mCarouselMode) || ((this.mCurrentPage > 1) && (this.mCurrentPage < -1 + getAdapterPageCount())))
        {
          this.mCallScrollToPageInOnLayout = false;
          scrollTo(getScrollX() + getPageWidth(), 0);
          backwardsMove();
          i = 1;
          continue;
        }
        if (this.mCurrentPage >= -1 + getAdapterPageCount())
        {
          this.mCurrentPage = (-2 + getAdapterPageCount());
          i = 1;
          continue;
        }
        this.mCurrentPage = 0;
        i = 0;
        continue;
      }
      i = 1;
    }
  }

  private void refill(int paramInt)
  {
    if (this.mCurrentPage == 0)
      if ((paramInt == -1 + getAdapterPageCount()) || (paramInt <= 1 + this.mCurrentPage))
        fillCarousel(this.mCurrentPage);
    do
      while (true)
      {
        return;
        if (this.mCurrentPage != -1 + getAdapterPageCount())
          break;
        if ((paramInt < this.mCurrentPage) && (paramInt != 0))
          continue;
        fillCarousel(this.mCurrentPage);
        return;
      }
    while ((paramInt < -1 + this.mCurrentPage) || (paramInt > 1 + this.mCurrentPage));
    fillCarousel(this.mCurrentPage);
  }

  private void resetMargins()
  {
    if (this.mOffset > 0)
    {
      ((LinearLayout.LayoutParams)getChildContainer().getChildAt(0).getLayoutParams()).leftMargin = this.mOffset;
      ((LinearLayout.LayoutParams)getChildContainer().getChildAt(0).getLayoutParams()).rightMargin = 0;
      ((LinearLayout.LayoutParams)getChildContainer().getChildAt(1).getLayoutParams()).leftMargin = 0;
      ((LinearLayout.LayoutParams)getChildContainer().getChildAt(1).getLayoutParams()).rightMargin = 0;
      ((LinearLayout.LayoutParams)getChildContainer().getChildAt(2).getLayoutParams()).leftMargin = 0;
      ((LinearLayout.LayoutParams)getChildContainer().getChildAt(2).getLayoutParams()).rightMargin = this.mOffset;
    }
  }

  private void scrollToPage(int paramInt, boolean paramBoolean)
  {
    if (((!this.mCarouselMode) && (getCurrentPage() == -1 + getPageCount()) && (paramInt >= getCurrentPage())) || ((!this.mCarouselMode) && (getCurrentPage() == 0) && (paramInt <= 0)))
      doAtEdgeAnimation();
    do
      return;
    while (getCurrentPage() == paramInt);
    rearrangePages(getCurrentPage(), paramInt, paramBoolean);
    notifiyAssignedOnPageChangedListener(paramInt);
  }

  public Adapter getAdapter()
  {
    return this.mAdapter;
  }

  public boolean getCarouselEnabled()
  {
    return this.mCarouselMode;
  }

  public SwipeView.OnPageChangedListener getOnPageChangedListener()
  {
    return this.mOnPageChangedListener;
  }

  public int getRealCurrentPage()
  {
    return this.mCurrentPage;
  }

  public void itemAddedToAdapter(int paramInt)
  {
    if (paramInt <= this.mCurrentPage)
      this.mCurrentPage = (1 + this.mCurrentPage);
    if (this.mAdapter.getCount() > 1)
      setBounceEnabled(false);
    refill(paramInt);
  }

  public void itemRemovedFromAdapter(int paramInt)
  {
    if ((paramInt <= this.mCurrentPage) && (this.mCurrentPage != 0))
      this.mCurrentPage = (-1 + this.mCurrentPage);
    refill(paramInt);
  }

  public void scrollToPage(int paramInt)
  {
    scrollToPage(paramInt, false);
  }

  public void setAdapter(BaseAdapter paramBaseAdapter)
  {
    setAdapter(paramBaseAdapter, 0);
  }

  public void setAdapter(BaseAdapter paramBaseAdapter, int paramInt)
  {
    this.mAdapter = paramBaseAdapter;
    if (this.mAdapter != null)
    {
      this.mCurrentPage = paramInt;
      fillCarousel(paramInt);
      post(new Runnable(paramInt)
      {
        public void run()
        {
          if ((!PageView.this.mCarouselMode) && (this.val$startPosition == 0))
          {
            PageView.this.scrollToPage(0);
            return;
          }
          if ((!PageView.this.mCarouselMode) && (this.val$startPosition == -1 + PageView.this.mAdapter.getCount()))
          {
            PageView.this.scrollToPage(2);
            return;
          }
          PageView.this.scrollToPage(1);
        }
      });
      if (this.mAdapter.getCount() <= 1)
        setBounceEnabled(true);
    }
  }

  public void setCarouselEnabled(boolean paramBoolean)
  {
    this.mCarouselMode = paramBoolean;
    if (paramBoolean);
    for (boolean bool = false; ; bool = true)
    {
      setBounceEnabled(bool);
      return;
    }
  }

  public void setOnPageChangedListener(SwipeView.OnPageChangedListener paramOnPageChangedListener)
  {
    this.mOnPageChangedListener = paramOnPageChangedListener;
  }

  public int setPageWidth(int paramInt)
  {
    this.mOffset = super.setPageWidth(paramInt);
    return this.mOffset;
  }

  public void smoothScrollToPage(int paramInt)
  {
    scrollToPage(paramInt, true);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     uk.co.jasonfry.android.tools.widget.PageView
 * JD-Core Version:    0.6.0
 */