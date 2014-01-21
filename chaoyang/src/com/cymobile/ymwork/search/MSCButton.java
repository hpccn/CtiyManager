package com.cymobile.ymwork.search;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageButton;

public class MSCButton extends ImageButton
{
  private static final String TAG = "MSCButton";

  public MSCButton(Context paramContext)
  {
    super(paramContext);
  }

  public MSCButton(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public MSCButton(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  private void setupListener()
  {
    setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramView)
      {
        Log.i("MSCButton", "click...");
      }
    });
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.search.MSCButton
 * JD-Core Version:    0.6.0
 */