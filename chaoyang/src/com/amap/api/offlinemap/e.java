package com.amap.api.offlinemap;

import android.content.Context;
import com.amap.api.a.b.a;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintStream;
import java.net.HttpURLConnection;
import java.net.URL;

public class e extends Thread
{
  f a = null;
  long[] b;
  long[] c;
  b[] d;
  long e;
  boolean f = true;
  boolean g = false;
  File h;
  DataOutputStream i;
  c j;
  g k;
  private Context l;

  public e(f paramf, c paramc, g paramg, Context paramContext)
    throws IOException
  {
    this.a = paramf;
    this.h = new File(paramf.b() + File.separator + paramf.c() + ".info");
    if (this.h.exists())
    {
      this.f = false;
      e();
    }
    while (true)
    {
      this.j = paramc;
      this.k = paramg;
      this.l = paramContext;
      return;
      this.b = new long[paramf.d()];
      this.c = new long[paramf.d()];
    }
  }

  private void a(int paramInt)
  {
    System.err.println("Error Code : " + paramInt);
  }

  private void c()
    throws a
  {
    if (com.amap.api.a.f.a == -1);
    for (int m = 0; ; m++)
      if ((m >= 3) || (com.amap.api.a.f.a(this.l)))
        return;
  }

  private void d()
  {
    try
    {
      this.i = new DataOutputStream(new FileOutputStream(this.h));
      this.i.writeLong(this.e);
      this.i.writeInt(this.b.length);
      int m = 0;
      long l1 = 0L;
      if (m < this.b.length)
      {
        if (m == 0)
          l1 += this.d[m].b;
        while (true)
        {
          this.i.writeLong(this.d[m].b);
          this.i.writeLong(this.d[m].c);
          m++;
          break;
          l1 += this.d[m].b - this.d[(m - 1)].c;
        }
      }
      this.i.close();
      if (this.e > 0L)
      {
        long l2 = l1 * 100L / this.e;
        this.j.a(this.k, 0, (int)l2);
        if (l2 >= 100L)
          this.g = true;
      }
      return;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  private void e()
  {
    try
    {
      DataInputStream localDataInputStream = new DataInputStream(new FileInputStream(this.h));
      this.e = localDataInputStream.readLong();
      int m = localDataInputStream.readInt();
      this.b = new long[m];
      this.c = new long[m];
      for (int n = 0; n < this.b.length; n++)
      {
        this.b[n] = localDataInputStream.readLong();
        this.c[n] = localDataInputStream.readLong();
      }
      localDataInputStream.close();
      return;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  public long a()
  {
    int m = -1;
    try
    {
      HttpURLConnection localHttpURLConnection = (HttpURLConnection)new URL(this.a.a()).openConnection();
      int n = localHttpURLConnection.getResponseCode();
      if (n >= 400)
      {
        a(n);
        return -2L;
        while (true)
        {
          String str = localHttpURLConnection.getHeaderFieldKey(i1);
          if (str == null)
            break;
          if (str.equals("Content-Length"))
          {
            int i2 = Integer.parseInt(localHttpURLConnection.getHeaderField(str));
            i3 = i2;
            m = i3;
            h.b(m);
            return m;
          }
          i1++;
        }
      }
    }
    catch (IOException localIOException)
    {
      while (true)
        localIOException.printStackTrace();
    }
    catch (Exception localException)
    {
      while (true)
      {
        localException.printStackTrace();
        continue;
        int i3 = m;
        continue;
        int i1 = 1;
      }
    }
  }

  public void b()
  {
    this.g = true;
    for (int m = 0; m < this.b.length; m++)
    {
      if ((this.d == null) || (this.d[m] == null))
        continue;
      this.d[m].a();
    }
  }

  public void run()
  {
    label210: int i3;
    try
    {
      if (com.amap.api.a.b.g.c(this.l))
        c();
      if (com.amap.api.a.f.a != 1)
        return;
      if (this.f)
      {
        this.e = a();
        if (this.e != -1L)
          break label210;
        h.a("File Length is not known!");
      }
      while (true)
      {
        this.d = new b[this.b.length];
        for (int m = 0; m < this.b.length; m++)
        {
          this.d[m] = new b(this.a.a(), this.a.b() + File.separator + this.a.c(), this.b[m], this.c[m], m);
          h.a("Thread " + m + " , nStartPos = " + this.b[m] + ", nEndPos = " + this.c[m]);
          this.d[m].start();
        }
        if (this.e != -2L)
          break;
        h.a("File is not access!");
      }
    }
    catch (a locala)
    {
      while (true)
      {
        locala.printStackTrace();
        return;
        for (int i2 = 0; i2 < this.b.length; i2++)
          this.b[i2] = (i2 * (this.e / this.b.length));
        while (i3 < -1 + this.c.length)
        {
          this.c[i3] = this.b[(i3 + 1)];
          i3++;
        }
        this.c[(-1 + this.c.length)] = this.e;
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      return;
    }
    label335: int n;
    label355: int i1;
    if (!this.g)
    {
      d();
      h.a(500);
      n = 0;
      if (n >= this.b.length)
        break label409;
      if (this.d[n].e)
        break label403;
      i1 = 0;
      break label422;
    }
    while (true)
    {
      if (!this.g)
      {
        this.j.b(this.k);
        return;
        label403: n++;
        break label355;
        label409: i1 = 1;
      }
      else
      {
        return;
        i3 = 0;
        break;
      }
      label422: if (i1 == 0)
        break label335;
    }
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.offlinemap.e
 * JD-Core Version:    0.6.0
 */