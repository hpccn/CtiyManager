package com.amap.api.a;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.ViewConfiguration;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;

public class g
{
  private static float J;
  private static final float[] K;
  private static final float[] L;
  private static float P;
  private static float Q;
  private float A;
  private float B;
  private boolean C = true;
  private Interpolator D;
  private boolean E;
  private float F;
  private float G;
  private int H;
  private float I = ViewConfiguration.getScrollFriction();
  private float M;
  private final float N;
  private float O;
  private int a;
  private int b;
  private int c;
  private float d;
  private float e;
  private float f;
  private int g;
  private int h;
  private float i;
  private float j;
  private float k;
  private int l;
  private int m;
  private int n;
  private int o;
  private int p;
  private int q;
  private float r;
  private float s;
  private float t;
  private long u;
  private long v;
  private float w;
  private float x;
  private float y;
  private float z;

  static
  {
    float f1 = 0.0F;
    J = (float)(Math.log(0.78D) / Math.log(0.9D));
    K = new float[101];
    L = new float[101];
    int i1 = 0;
    float f2 = 0.0F;
    if (i1 < 100)
    {
      float f3 = i1 / 100.0F;
      float f4 = 1.0F;
      float f5 = f2;
      label56: float f6 = f5 + (f4 - f5) / 2.0F;
      float f7 = 3.0F * f6 * (1.0F - f6);
      float f8 = f7 * (0.175F * (1.0F - f6) + 0.35F * f6) + f6 * (f6 * f6);
      float f9;
      if (Math.abs(f8 - f3) < 1.E-05D)
      {
        K[i1] = (f7 * (f6 + 0.5F * (1.0F - f6)) + f6 * (f6 * f6));
        f9 = 1.0F;
      }
      while (true)
      {
        float f10 = f1 + (f9 - f1) / 2.0F;
        float f11 = 3.0F * f10 * (1.0F - f10);
        float f12 = f11 * (f10 + 0.5F * (1.0F - f10)) + f10 * (f10 * f10);
        if (Math.abs(f12 - f3) < 1.E-05D)
        {
          L[i1] = (f11 * (0.175F * (1.0F - f10) + 0.35F * f10) + f10 * (f10 * f10));
          i1++;
          f2 = f5;
          break;
          if (f8 > f3)
          {
            f4 = f6;
            break label56;
          }
          f5 = f6;
          break label56;
        }
        if (f12 > f3)
        {
          f9 = f10;
          continue;
        }
        f1 = f10;
      }
    }
    float[] arrayOfFloat = K;
    L[100] = 1.0F;
    arrayOfFloat[100] = 1.0F;
    P = 8.0F;
    Q = 1.0F;
    Q = 1.0F / a(1.0F);
  }

  public g(Context paramContext, Interpolator paramInterpolator)
  {
  }

  public g(Context paramContext, Interpolator paramInterpolator, boolean paramBoolean)
  {
    this.D = paramInterpolator;
    this.N = (160.0F * paramContext.getResources().getDisplayMetrics().density);
    this.M = b(ViewConfiguration.getScrollFriction());
    this.E = paramBoolean;
    this.O = b(0.84F);
  }

  static float a(float paramFloat)
  {
    float f1 = paramFloat * P;
    float f2;
    if (f1 < 1.0F)
      f2 = f1 - (1.0F - (float)Math.exp(-f1));
    while (true)
    {
      return f2 * Q;
      f2 = 0.3678795F + (1.0F - (float)Math.exp(1.0F - f1)) * (1.0F - 0.3678795F);
    }
  }

  private float b(float paramFloat)
  {
    return paramFloat * (386.0878F * this.N);
  }

  private double c(float paramFloat)
  {
    return Math.log(0.35F * Math.abs(paramFloat) / (this.I * this.O));
  }

  private int d(float paramFloat)
  {
    return (int)(1000.0D * Math.exp(c(paramFloat) / (J - 1.0D)));
  }

  private double e(float paramFloat)
  {
    double d1 = c(paramFloat);
    double d2 = J - 1.0D;
    return this.I * this.O * Math.exp(d1 * (J / d2));
  }

  public void a(int paramInt1, int paramInt2, float paramFloat1, float paramFloat2, float paramFloat3, int paramInt3, int paramInt4, float paramFloat4, float paramFloat5, float paramFloat6, long paramLong)
  {
    this.a = 3;
    this.C = false;
    this.v = paramLong;
    this.u = AnimationUtils.currentAnimationTimeMillis();
    this.b = paramInt1;
    this.c = paramInt2;
    this.d = paramFloat1;
    this.e = paramFloat2;
    this.f = paramFloat3;
    this.g = (paramInt1 + paramInt3);
    this.h = (paramInt2 + paramInt4);
    this.i = (paramFloat1 + paramFloat4);
    this.j = (paramFloat2 + paramFloat5);
    this.k = (paramFloat3 + paramFloat6);
    this.x = paramInt3;
    this.y = paramInt4;
    this.z = paramFloat4;
    this.A = paramFloat5;
    this.B = paramFloat6;
    this.w = (1.0F / (float)this.v);
  }

  public void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8)
  {
    float f1 = 1.0F;
    if ((this.E) && (!this.C))
    {
      float f4 = g();
      float f5 = this.g - this.b;
      float f6 = this.h - this.c;
      float f7 = (float)Math.sqrt(f5 * f5 + f6 * f6);
      float f8 = f5 / f7;
      float f9 = f6 / f7;
      float f10 = f8 * f4;
      float f11 = f4 * f9;
      if ((Math.signum(paramInt3) == Math.signum(f10)) && (Math.signum(paramInt4) == Math.signum(f11)))
      {
        paramInt3 = (int)(f10 + paramInt3);
        paramInt4 = (int)(f11 + paramInt4);
      }
    }
    this.a = 1;
    this.C = false;
    float f2 = (float)Math.sqrt(paramInt3 * paramInt3 + paramInt4 * paramInt4);
    this.F = f2;
    this.v = d(f2);
    this.u = AnimationUtils.currentAnimationTimeMillis();
    this.b = paramInt1;
    this.c = paramInt2;
    float f3;
    if (f2 == 0.0F)
    {
      f3 = f1;
      if (f2 != 0.0F)
        break label365;
    }
    while (true)
    {
      double d1 = e(f2);
      this.H = (int)(d1 * Math.signum(f2));
      this.l = paramInt5;
      this.m = paramInt6;
      this.n = paramInt7;
      this.o = paramInt8;
      this.g = (paramInt1 + (int)Math.round(d1 * f3));
      this.g = Math.min(this.g, this.m);
      this.g = Math.max(this.g, this.l);
      this.h = (paramInt2 + (int)Math.round(d1 * f1));
      this.h = Math.min(this.h, this.o);
      this.h = Math.max(this.h, this.n);
      return;
      f3 = paramInt3 / f2;
      break;
      label365: f1 = paramInt4 / f2;
    }
  }

  public final void a(boolean paramBoolean)
  {
    this.C = paramBoolean;
  }

  public final boolean a()
  {
    return this.C;
  }

  public final int b()
  {
    return this.p;
  }

  public final int c()
  {
    return this.q;
  }

  public final float d()
  {
    return this.r;
  }

  public final float e()
  {
    return this.s;
  }

  public final float f()
  {
    return this.t;
  }

  public float g()
  {
    if (this.a == 1)
      return this.G;
    return this.F - this.M * i() / 2000.0F;
  }

  public boolean h()
  {
    if (this.C)
      return false;
    int i1 = (int)(AnimationUtils.currentAnimationTimeMillis() - this.u);
    if (i1 < this.v)
      switch (this.a)
      {
      default:
      case 0:
      case 1:
      case 2:
      case 3:
      }
    while (true)
    {
      return true;
      float f11 = i1 * this.w;
      float f12;
      if (this.D == null)
        f12 = a(f11);
      while (true)
      {
        this.p = (this.b + Math.round(f12 * this.x));
        this.q = (this.c + Math.round(f12 * this.y));
        break;
        f12 = this.D.getInterpolation(f11);
      }
      float f5 = i1 / (float)this.v;
      int i2 = (int)(100.0F * f5);
      float f6 = 1.0F;
      float f7 = 0.0F;
      if (i2 < 100)
      {
        float f8 = i2 / 100.0F;
        float f9 = (i2 + 1) / 100.0F;
        float f10 = K[i2];
        f7 = (K[(i2 + 1)] - f10) / (f9 - f8);
        f6 = f10 + f7 * (f5 - f8);
      }
      this.G = (1000.0F * (f7 * this.H / (float)this.v));
      this.p = (this.b + Math.round(f6 * (this.g - this.b)));
      this.p = Math.min(this.p, this.m);
      this.p = Math.max(this.p, this.l);
      this.q = (this.c + Math.round(f6 * (this.h - this.c)));
      this.q = Math.min(this.q, this.o);
      this.q = Math.max(this.q, this.n);
      if ((this.p != this.g) || (this.q != this.h))
        continue;
      this.C = true;
      continue;
      float f3 = i1 * this.w;
      float f4;
      if (this.D == null)
        f4 = a(f3);
      while (true)
      {
        this.r = (this.d + f4 * this.z);
        break;
        f4 = this.D.getInterpolation(f3);
      }
      float f1 = i1 * this.w;
      float f2;
      if (this.D == null)
        f2 = a(f1);
      while (true)
      {
        this.p = (this.b + Math.round(f2 * this.x));
        this.q = (this.c + Math.round(f2 * this.y));
        this.r = (this.d + f2 * this.z);
        this.s = (this.e + f2 * this.A);
        this.t = (this.f + f2 * this.B);
        break;
        f2 = this.D.getInterpolation(f1);
      }
      this.p = this.g;
      this.q = this.h;
      this.r = this.i;
      this.s = this.j;
      this.t = this.k;
      this.C = true;
    }
  }

  public int i()
  {
    return (int)(AnimationUtils.currentAnimationTimeMillis() - this.u);
  }

  public final int j()
  {
    return this.a;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.a.g
 * JD-Core Version:    0.6.0
 */