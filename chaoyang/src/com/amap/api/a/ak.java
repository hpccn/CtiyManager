package com.amap.api.a;

import android.os.RemoteException;

class ak
  implements w
{
  private n a;
  private boolean b = true;
  private boolean c = true;
  private boolean d = true;
  private boolean e = false;
  private boolean f = true;
  private boolean g = true;
  private boolean h = true;
  private boolean i = false;

  ak(n paramn)
  {
    this.a = paramn;
  }

  public void a(boolean paramBoolean)
    throws RemoteException
  {
    this.i = paramBoolean;
    this.a.d(this.i);
  }

  public boolean a()
    throws RemoteException
  {
    return this.i;
  }

  public void b(boolean paramBoolean)
    throws RemoteException
  {
    this.g = paramBoolean;
    this.a.a(this.g);
  }

  public boolean b()
    throws RemoteException
  {
    return this.g;
  }

  public void c(boolean paramBoolean)
    throws RemoteException
  {
    this.h = paramBoolean;
    this.a.c(this.h);
  }

  public boolean c()
    throws RemoteException
  {
    return this.h;
  }

  public void d(boolean paramBoolean)
    throws RemoteException
  {
    this.e = paramBoolean;
    this.a.b(this.e);
  }

  public boolean d()
    throws RemoteException
  {
    return this.e;
  }

  public void e(boolean paramBoolean)
    throws RemoteException
  {
    this.c = paramBoolean;
  }

  public boolean e()
    throws RemoteException
  {
    return this.c;
  }

  public void f(boolean paramBoolean)
    throws RemoteException
  {
    this.f = paramBoolean;
  }

  public boolean f()
    throws RemoteException
  {
    return this.f;
  }

  public void g(boolean paramBoolean)
    throws RemoteException
  {
    this.d = paramBoolean;
  }

  public boolean g()
    throws RemoteException
  {
    return this.d;
  }

  public void h(boolean paramBoolean)
    throws RemoteException
  {
    this.b = paramBoolean;
  }

  public boolean h()
    throws RemoteException
  {
    return this.b;
  }

  public void i(boolean paramBoolean)
    throws RemoteException
  {
    h(paramBoolean);
    g(paramBoolean);
    f(paramBoolean);
    e(paramBoolean);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.a.ak
 * JD-Core Version:    0.6.0
 */