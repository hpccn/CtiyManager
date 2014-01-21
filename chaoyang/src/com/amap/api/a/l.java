package com.amap.api.a;

import android.graphics.Color;
import java.nio.FloatBuffer;
import javax.microedition.khronos.opengles.GL10;

class l
{
  public static void a(GL10 paramGL10, int paramInt1, int paramInt2, FloatBuffer paramFloatBuffer, float paramFloat, int paramInt3)
  {
    b(paramGL10, 3, paramInt2, paramFloatBuffer, paramFloat, paramInt3);
  }

  public static void a(GL10 paramGL10, int paramInt1, int paramInt2, FloatBuffer paramFloatBuffer1, float paramFloat, FloatBuffer paramFloatBuffer2, int paramInt3, int paramInt4)
  {
    b(paramGL10, 4, paramInt1, paramFloatBuffer2, 1.0F, paramInt4);
    b(paramGL10, 2, paramInt2, paramFloatBuffer1, paramFloat, paramInt3);
  }

  private static void b(GL10 paramGL10, int paramInt1, int paramInt2, FloatBuffer paramFloatBuffer, float paramFloat, int paramInt3)
  {
    if (paramFloat == 0.0F)
      return;
    paramGL10.glPushMatrix();
    paramGL10.glColor4f(1.0F, 1.0F, 1.0F, 1.0F);
    paramGL10.glEnable(3042);
    paramGL10.glBlendFunc(770, 771);
    paramGL10.glEnableClientState(32884);
    float f1 = Color.alpha(paramInt2) / 255.0F;
    float f2 = Color.red(paramInt2) / 255.0F;
    float f3 = Color.green(paramInt2) / 255.0F;
    float f4 = Color.blue(paramInt2) / 255.0F;
    paramGL10.glEnable(32925);
    paramGL10.glVertexPointer(3, 5126, 0, paramFloatBuffer);
    paramGL10.glColor4f(f2, f3, f4, f1);
    paramGL10.glLineWidth(paramFloat);
    paramGL10.glDrawArrays(paramInt1, 0, paramInt3);
    paramGL10.glDisable(32925);
    paramGL10.glEnable(2832);
    paramGL10.glHint(3153, 4354);
    if (paramFloat >= 10.0F)
      paramFloat = 6.0F;
    while (true)
    {
      paramGL10.glColor4f(f2, f3, f4, f1 / 4.0F);
      paramGL10.glPointSize(paramFloat);
      paramGL10.glDrawArrays(0, 1, paramInt3 - 2);
      paramGL10.glDisable(2832);
      paramGL10.glDisableClientState(32884);
      paramGL10.glPopMatrix();
      return;
      if (paramFloat >= 5.0F)
      {
        paramFloat -= 2.0F;
        continue;
      }
      if (paramFloat < 2.0F)
        continue;
      paramFloat -= 1.0F;
    }
  }

  public static void b(GL10 paramGL10, int paramInt1, int paramInt2, FloatBuffer paramFloatBuffer1, float paramFloat, FloatBuffer paramFloatBuffer2, int paramInt3, int paramInt4)
  {
    a(paramGL10, paramInt1, paramInt2, paramFloatBuffer1, paramFloat, paramFloatBuffer2, paramInt3, paramInt4);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.a.l
 * JD-Core Version:    0.6.0
 */