package com.amap.api.a;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.ListView;
import com.amap.api.maps.model.LatLng;
import com.autonavi.amap.mapcore.IPoint;

class ac extends ViewGroup
{
  private n a;

  public ac(Context paramContext, n paramn)
  {
    super(paramContext);
    this.a = paramn;
  }

  private void a(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    if ((paramView instanceof ListView))
    {
      View localView = (View)paramView.getParent();
      if (localView != null)
      {
        paramInt1 = localView.getWidth();
        paramInt2 = localView.getHeight();
      }
    }
    paramView.measure(paramInt1, paramInt2);
    label61: int i;
    int j;
    if (paramInt1 == -2)
    {
      paramInt1 = paramView.getMeasuredWidth();
      if (paramInt2 != -2)
        break label130;
      paramInt2 = paramView.getMeasuredHeight();
      i = paramInt5 & 0x7;
      j = paramInt5 & 0x70;
      if (i != 5)
        break label143;
      paramInt3 -= paramInt1;
      label87: if (j != 80)
        break label160;
      paramInt4 -= paramInt2;
    }
    while (true)
    {
      paramView.layout(paramInt3, paramInt4, paramInt3 + paramInt1, paramInt4 + paramInt2);
      return;
      if (paramInt1 != -1)
        break;
      paramInt1 = getMeasuredWidth();
      break;
      label130: if (paramInt2 != -1)
        break label61;
      paramInt2 = getMeasuredHeight();
      break label61;
      label143: if (i != 1)
        break label87;
      paramInt3 -= paramInt1 / 2;
      break label87;
      label160: if (j != 16)
        continue;
      paramInt4 -= paramInt2 / 2;
    }
  }

  private void a(View paramView, a parama)
  {
    a(paramView, parama.width, parama.height, parama.c, parama.d, parama.e);
  }

  private void b(View paramView, a parama)
  {
    if ((paramView instanceof am))
      a(paramView, parama.width, parama.height, 15 + (getWidth() - paramView.getWidth()), getHeight(), parama.e);
    do
    {
      return;
      if ((paramView instanceof x))
      {
        a(paramView, parama.width, parama.height, 15 + (getWidth() - paramView.getWidth()), 15 + paramView.getHeight(), parama.e);
        return;
      }
      if (!(paramView instanceof j))
        continue;
      a(paramView, parama.width, parama.height, 0, 0, parama.e);
      return;
    }
    while (parama.b == null);
    IPoint localIPoint = new IPoint();
    this.a.b(parama.b.latitude, parama.b.longitude, localIPoint);
    localIPoint.x += parama.c;
    localIPoint.y += parama.d;
    a(paramView, parama.width, parama.height, localIPoint.x, localIPoint.y, parama.e);
  }

  public void a()
  {
    onLayout(false, 0, 0, 0, 0);
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = getChildCount();
    int j = 0;
    if (j < i)
    {
      View localView = getChildAt(j);
      if (localView == null);
      while (true)
      {
        j++;
        break;
        if ((localView.getLayoutParams() instanceof a))
        {
          b(localView, (a)localView.getLayoutParams());
          continue;
        }
        a(localView, new a(localView.getLayoutParams()));
      }
    }
  }

  public static class a extends ViewGroup.LayoutParams
  {
    public int a = 1;
    public LatLng b = null;
    public int c = 0;
    public int d = 0;
    public int e = 51;

    public a(int paramInt1, int paramInt2, LatLng paramLatLng, int paramInt3, int paramInt4, int paramInt5)
    {
      super(paramInt2);
      this.a = 0;
      this.b = paramLatLng;
      this.c = paramInt3;
      this.d = paramInt4;
      this.e = paramInt5;
    }

    public a(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
    }

    public a(ViewGroup.LayoutParams paramLayoutParams)
    {
      super();
    }
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.a.ac
 * JD-Core Version:    0.6.0
 */