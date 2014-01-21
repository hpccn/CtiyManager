package com.tencent.open;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.Display;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.Window;
import android.view.WindowManager;
import android.widget.RelativeLayout;

public class KeyboardDetectorRelativeLayout extends RelativeLayout
{
  private static final String a = KeyboardDetectorRelativeLayout.class.getName();
  private Rect b = null;
  private boolean c = false;
  private KeyboardDetectorRelativeLayout.IKeyboardChanged d = null;

  public KeyboardDetectorRelativeLayout(Context paramContext)
  {
    super(paramContext);
    if (this.b == null)
      this.b = new Rect();
  }

  public KeyboardDetectorRelativeLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    if (this.b == null)
      this.b = new Rect();
  }

  public void a(KeyboardDetectorRelativeLayout.IKeyboardChanged paramIKeyboardChanged)
  {
    this.d = paramIKeyboardChanged;
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i = View.MeasureSpec.getSize(paramInt2);
    Activity localActivity = (Activity)getContext();
    localActivity.getWindow().getDecorView().getWindowVisibleDisplayFrame(this.b);
    int j = this.b.top;
    int k = localActivity.getWindowManager().getDefaultDisplay().getHeight() - j - i;
    if ((this.d != null) && (i != 0))
    {
      if (k <= 100)
        break label112;
      this.d.onKeyboardShown(Math.abs(this.b.height()) - getPaddingBottom() - getPaddingTop());
    }
    while (true)
    {
      super.onMeasure(paramInt1, paramInt2);
      return;
      label112: this.d.onKeyboardHidden();
    }
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.tencent.open.KeyboardDetectorRelativeLayout
 * JD-Core Version:    0.6.0
 */