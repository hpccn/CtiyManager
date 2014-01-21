package com.cymobile.ymwork.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.GradientDrawable.Orientation;
import android.graphics.drawable.StateListDrawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.cymobile.ymwork.R.styleable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class SegmentedButton extends LinearLayout
{
  private StateListDrawable mBgCenterOff;
  private StateListDrawable mBgCenterOn;
  private StateListDrawable mBgLeftOff;
  private StateListDrawable mBgLeftOn;
  private StateListDrawable mBgRightOff;
  private StateListDrawable mBgRightOn;
  private int mBtnPaddingBottom;
  private int mBtnPaddingLeft;
  private int mBtnPaddingRight;
  private int mBtnPaddingTop;
  private List<String> mButtonTitles = new ArrayList();
  private int mColorOffEnd;
  private int mColorOffStart;
  private int mColorOnEnd;
  private int mColorOnStart;
  private int mColorSelectedEnd;
  private int mColorSelectedStart;
  private int mColorStroke;
  private int mCornerRadius;
  private View.OnClickListener mOnClickListener = new View.OnClickListener()
  {
    public void onClick(View paramView)
    {
      int i = ((Integer)((Button)paramView).getTag()).intValue();
      SegmentedButton.this.handleStateChange(SegmentedButton.this.mSelectedButtonIndex, i);
      if (SegmentedButton.this.mOnClickListenerExternal != null)
        SegmentedButton.this.mOnClickListenerExternal.onClick(SegmentedButton.this.mSelectedButtonIndex);
    }
  };
  private OnClickListenerSegmentedButton mOnClickListenerExternal;
  private int mSelectedButtonIndex = 0;
  private int mStrokeWidth;
  private int mTextStyle;

  public SegmentedButton(Context paramContext)
  {
    super(paramContext);
  }

  public SegmentedButton(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.SegmentedButton, 0, 0);
    String str1 = localTypedArray.getString(0);
    String str2 = localTypedArray.getString(1);
    if (str1 != null)
      this.mButtonTitles.add(str1.toString());
    if (str2 != null)
      this.mButtonTitles.add(str2.toString());
    this.mColorOnStart = localTypedArray.getColor(4, 16711680);
    this.mColorOnEnd = localTypedArray.getColor(5, 16711680);
    this.mColorOffStart = localTypedArray.getColor(4, 16711680);
    this.mColorOffEnd = localTypedArray.getColor(5, 16711680);
    this.mColorStroke = localTypedArray.getColor(8, 16711680);
    this.mColorSelectedEnd = localTypedArray.getColor(7, 16711680);
    this.mColorSelectedStart = localTypedArray.getColor(6, 16711680);
    this.mStrokeWidth = localTypedArray.getDimensionPixelSize(9, 1);
    this.mCornerRadius = localTypedArray.getDimensionPixelSize(10, 4);
    this.mTextStyle = localTypedArray.getResourceId(11, -1);
    this.mBtnPaddingTop = localTypedArray.getDimensionPixelSize(12, 0);
    this.mBtnPaddingBottom = localTypedArray.getDimensionPixelSize(13, 0);
    this.mBtnPaddingLeft = localTypedArray.getDimensionPixelSize(14, 0);
    this.mBtnPaddingRight = localTypedArray.getDimensionPixelSize(15, 0);
    localTypedArray.recycle();
    buildDrawables(this.mColorOnStart, this.mColorOnEnd, this.mColorOffStart, this.mColorOffEnd, this.mColorSelectedStart, this.mColorSelectedEnd, this.mCornerRadius, this.mColorStroke, this.mStrokeWidth);
    if (this.mButtonTitles.size() > 0)
      _addButtons(true, false, new String[this.mButtonTitles.size()]);
  }

  private void _addButtons(boolean paramBoolean1, boolean paramBoolean2, String[] paramArrayOfString)
  {
    int i = 0;
    if (i >= paramArrayOfString.length);
    Object localObject;
    while (true)
    {
      return;
      if ((!paramBoolean2) || (i != 1))
        break;
      localObject = new TextView(getContext());
      label34: ((TextView)localObject).setGravity(17);
      ((TextView)localObject).setText(paramArrayOfString[i]);
      ((TextView)localObject).setTag(new Integer(i));
      ((TextView)localObject).setOnClickListener(this.mOnClickListener);
      if (this.mTextStyle != -1)
        ((TextView)localObject).setTextAppearance(getContext(), this.mTextStyle);
      if (paramArrayOfString.length == 1)
        continue;
      if (paramArrayOfString.length != 2)
        break label234;
      if (i != 0)
        break label212;
      ((TextView)localObject).setBackgroundDrawable(this.mBgLeftOff);
    }
    while (true)
    {
      LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-2, -2, 1.0F);
      float f = getContext().getResources().getDimension(2131165184);
      localLayoutParams.setMargins((int)f, 0, (int)f, 0);
      addView((View)localObject, localLayoutParams);
      ((TextView)localObject).setPadding(this.mBtnPaddingLeft, this.mBtnPaddingTop, this.mBtnPaddingRight, this.mBtnPaddingBottom);
      i++;
      break;
      localObject = new Button(getContext());
      break label34;
      label212: if ((paramBoolean2) && (i == 1))
        continue;
      ((TextView)localObject).setBackgroundDrawable(this.mBgRightOn);
      continue;
      label234: if (i == 0)
      {
        ((TextView)localObject).setBackgroundDrawable(this.mBgLeftOff);
        continue;
      }
      if ((paramBoolean2) && (i == 1))
        continue;
      if (i == -1 + paramArrayOfString.length)
      {
        ((TextView)localObject).setBackgroundDrawable(this.mBgRightOn);
        continue;
      }
      ((TextView)localObject).setBackgroundDrawable(this.mBgCenterOn);
    }
  }

  private void buildDrawables(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, float paramFloat, int paramInt7, int paramInt8)
  {
    float[] arrayOfFloat1 = { paramFloat, paramFloat, paramFloat, paramFloat, paramFloat, paramFloat, paramFloat, paramFloat };
    float[] arrayOfFloat2 = { paramFloat, paramFloat, paramFloat, paramFloat, paramFloat, paramFloat, paramFloat, paramFloat };
    float[] arrayOfFloat3 = { paramFloat, paramFloat, paramFloat, paramFloat, paramFloat, paramFloat, paramFloat, paramFloat };
    GradientDrawable localGradientDrawable1 = buildGradientDrawable(paramInt1, paramInt2, paramInt8, paramInt7);
    localGradientDrawable1.setCornerRadii(arrayOfFloat1);
    GradientDrawable localGradientDrawable2 = buildGradientDrawable(paramInt3, paramInt4, paramInt8, paramInt7);
    localGradientDrawable2.setCornerRadii(arrayOfFloat1);
    GradientDrawable localGradientDrawable3 = buildGradientDrawable(paramInt5, paramInt6, paramInt8, paramInt7);
    localGradientDrawable3.setCornerRadii(arrayOfFloat1);
    GradientDrawable localGradientDrawable4 = buildGradientDrawable(paramInt1, paramInt2, paramInt8, paramInt7);
    localGradientDrawable4.setCornerRadii(arrayOfFloat2);
    GradientDrawable localGradientDrawable5 = buildGradientDrawable(paramInt3, paramInt4, paramInt8, paramInt7);
    localGradientDrawable5.setCornerRadii(arrayOfFloat2);
    GradientDrawable localGradientDrawable6 = buildGradientDrawable(paramInt5, paramInt6, paramInt8, paramInt7);
    localGradientDrawable6.setCornerRadii(arrayOfFloat2);
    GradientDrawable localGradientDrawable7 = buildGradientDrawable(paramInt1, paramInt2, paramInt8, paramInt7);
    localGradientDrawable7.setCornerRadii(arrayOfFloat3);
    GradientDrawable localGradientDrawable8 = buildGradientDrawable(paramInt3, paramInt4, paramInt8, paramInt7);
    localGradientDrawable8.setCornerRadii(arrayOfFloat3);
    GradientDrawable localGradientDrawable9 = buildGradientDrawable(paramInt5, paramInt6, paramInt8, paramInt7);
    localGradientDrawable9.setCornerRadii(arrayOfFloat3);
    List localList1 = buildOnStates();
    List localList2 = buildOffStates();
    this.mBgLeftOn = new StateListDrawable();
    this.mBgRightOn = new StateListDrawable();
    this.mBgCenterOn = new StateListDrawable();
    this.mBgLeftOff = new StateListDrawable();
    this.mBgRightOff = new StateListDrawable();
    this.mBgCenterOff = new StateListDrawable();
    Iterator localIterator1 = localList1.iterator();
    Iterator localIterator2;
    if (!localIterator1.hasNext())
      localIterator2 = localList2.iterator();
    while (true)
    {
      if (!localIterator2.hasNext())
      {
        return;
        int[] arrayOfInt1 = (int[])localIterator1.next();
        this.mBgLeftOn.addState(arrayOfInt1, localGradientDrawable3);
        this.mBgRightOn.addState(arrayOfInt1, localGradientDrawable6);
        this.mBgCenterOn.addState(arrayOfInt1, localGradientDrawable9);
        this.mBgLeftOff.addState(arrayOfInt1, localGradientDrawable3);
        this.mBgRightOff.addState(arrayOfInt1, localGradientDrawable6);
        this.mBgCenterOff.addState(arrayOfInt1, localGradientDrawable9);
        break;
      }
      int[] arrayOfInt2 = (int[])localIterator2.next();
      this.mBgLeftOn.addState(arrayOfInt2, localGradientDrawable1);
      this.mBgRightOn.addState(arrayOfInt2, localGradientDrawable4);
      this.mBgCenterOn.addState(arrayOfInt2, localGradientDrawable7);
      this.mBgLeftOff.addState(arrayOfInt2, localGradientDrawable2);
      this.mBgRightOff.addState(arrayOfInt2, localGradientDrawable5);
      this.mBgCenterOff.addState(arrayOfInt2, localGradientDrawable8);
    }
  }

  private GradientDrawable buildGradientDrawable(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    GradientDrawable localGradientDrawable = new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, new int[] { paramInt1, paramInt2 });
    localGradientDrawable.setShape(0);
    localGradientDrawable.setStroke(paramInt3, paramInt4);
    return localGradientDrawable;
  }

  private List<int[]> buildOffStates()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new int[] { 16842910 });
    localArrayList.add(new int[] { 16842913, 16842910 });
    return localArrayList;
  }

  private List<int[]> buildOnStates()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new int[] { 16842908, 16842910 });
    localArrayList.add(new int[] { 16842908, 16842913, 16842910 });
    localArrayList.add(new int[] { 16842919 });
    return localArrayList;
  }

  private void handleStateChange(int paramInt1, int paramInt2)
  {
    int i = getChildCount();
    Button localButton1 = (Button)getChildAt(paramInt1);
    Button localButton2 = (Button)getChildAt(paramInt2);
    if (i < 3)
      if (paramInt1 == 0)
      {
        localButton1.setBackgroundDrawable(this.mBgLeftOn);
        if (paramInt2 != 0)
          break label116;
        localButton2.setBackgroundDrawable(this.mBgLeftOff);
      }
    while (true)
    {
      localButton1.setPadding(this.mBtnPaddingLeft, this.mBtnPaddingTop, this.mBtnPaddingRight, this.mBtnPaddingBottom);
      localButton2.setPadding(this.mBtnPaddingLeft, this.mBtnPaddingTop, this.mBtnPaddingRight, this.mBtnPaddingBottom);
      this.mSelectedButtonIndex = paramInt2;
      return;
      localButton1.setBackgroundDrawable(this.mBgRightOn);
      break;
      label116: localButton2.setBackgroundDrawable(this.mBgRightOff);
      continue;
      if (paramInt1 == 0)
        localButton1.setBackgroundDrawable(this.mBgLeftOn);
      while (true)
      {
        if (paramInt2 != 0)
          break label188;
        localButton2.setBackgroundDrawable(this.mBgLeftOff);
        break;
        if (paramInt1 == i - 1)
        {
          localButton1.setBackgroundDrawable(this.mBgRightOn);
          continue;
        }
        localButton1.setBackgroundDrawable(this.mBgCenterOn);
      }
      label188: if (paramInt2 == i - 1)
      {
        localButton2.setBackgroundDrawable(this.mBgRightOff);
        continue;
      }
      localButton2.setBackgroundDrawable(this.mBgCenterOff);
    }
  }

  public void addButtons(boolean paramBoolean1, boolean paramBoolean2, String[] paramArrayOfString)
  {
    _addButtons(paramBoolean1, paramBoolean2, paramArrayOfString);
  }

  public void clearButtons()
  {
    removeAllViews();
    forceLayout();
  }

  public int getSelectedButtonIndex()
  {
    return this.mSelectedButtonIndex;
  }

  public void setOnClickListener(OnClickListenerSegmentedButton paramOnClickListenerSegmentedButton)
  {
    this.mOnClickListenerExternal = paramOnClickListenerSegmentedButton;
  }

  public void setPushedButtonIndex(int paramInt)
  {
    handleStateChange(this.mSelectedButtonIndex, paramInt);
  }

  public static abstract interface OnClickListenerSegmentedButton
  {
    public abstract void onClick(int paramInt);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.widget.SegmentedButton
 * JD-Core Version:    0.6.0
 */