package com.tencent.qc.stat.common;

import android.util.Log;
import com.tencent.qc.stat.StatConfig;

public final class StatLogger
{
  private String a = "default";
  private boolean b = true;
  private int c = 2;

  public StatLogger()
  {
  }

  public StatLogger(String paramString)
  {
    this.a = paramString;
  }

  private String b()
  {
    StackTraceElement[] arrayOfStackTraceElement = Thread.currentThread().getStackTrace();
    if (arrayOfStackTraceElement == null)
      return null;
    int i = arrayOfStackTraceElement.length;
    int j = 0;
    label18: StackTraceElement localStackTraceElement;
    if (j < i)
    {
      localStackTraceElement = arrayOfStackTraceElement[j];
      if (!localStackTraceElement.isNativeMethod())
        break label42;
    }
    label42: 
    do
    {
      j++;
      break label18;
      break;
    }
    while ((localStackTraceElement.getClassName().equals(Thread.class.getName())) || (localStackTraceElement.getClassName().equals(getClass().getName())));
    return "[" + Thread.currentThread().getName() + "(" + Thread.currentThread().getId() + "): " + localStackTraceElement.getFileName() + ":" + localStackTraceElement.getLineNumber() + "]";
  }

  public void a(Exception paramException)
  {
    if (this.c <= 6)
    {
      StringBuffer localStringBuffer = new StringBuffer();
      String str = b();
      StackTraceElement[] arrayOfStackTraceElement = paramException.getStackTrace();
      if (str != null)
        localStringBuffer.append(str + " - " + paramException + "\r\n");
      while ((arrayOfStackTraceElement != null) && (arrayOfStackTraceElement.length > 0))
      {
        int i = arrayOfStackTraceElement.length;
        for (int j = 0; j < i; j++)
        {
          StackTraceElement localStackTraceElement = arrayOfStackTraceElement[j];
          if (localStackTraceElement == null)
            continue;
          localStringBuffer.append("[ " + localStackTraceElement.getFileName() + ":" + localStackTraceElement.getLineNumber() + " ]\r\n");
        }
        localStringBuffer.append(paramException + "\r\n");
      }
      Log.e(this.a, localStringBuffer.toString());
    }
  }

  public void a(Object paramObject)
  {
    String str1;
    if (this.c <= 4)
    {
      str1 = b();
      if (str1 != null)
        break label32;
    }
    label32: for (String str2 = paramObject.toString(); ; str2 = str1 + " - " + paramObject)
    {
      Log.i(this.a, str2);
      return;
    }
  }

  public void a(boolean paramBoolean)
  {
    this.b = paramBoolean;
  }

  public boolean a()
  {
    return this.b;
  }

  public void b(Exception paramException)
  {
    if (StatConfig.b())
      a(paramException);
  }

  public void b(Object paramObject)
  {
    if (a())
      a(paramObject);
  }

  public void c(Object paramObject)
  {
    String str1;
    if (this.c <= 5)
    {
      str1 = b();
      if (str1 != null)
        break label32;
    }
    label32: for (String str2 = paramObject.toString(); ; str2 = str1 + " - " + paramObject)
    {
      Log.w(this.a, str2);
      return;
    }
  }

  public void d(Object paramObject)
  {
    if (a())
      c(paramObject);
  }

  public void e(Object paramObject)
  {
    String str1;
    if (this.c <= 6)
    {
      str1 = b();
      if (str1 != null)
        break label33;
    }
    label33: for (String str2 = paramObject.toString(); ; str2 = str1 + " - " + paramObject)
    {
      Log.e(this.a, str2);
      return;
    }
  }

  public void f(Object paramObject)
  {
    if (a())
      e(paramObject);
  }

  public void g(Object paramObject)
  {
    String str1;
    if (this.c <= 3)
    {
      str1 = b();
      if (str1 != null)
        break label32;
    }
    label32: for (String str2 = paramObject.toString(); ; str2 = str1 + " - " + paramObject)
    {
      Log.d(this.a, str2);
      return;
    }
  }

  public void h(Object paramObject)
  {
    if (a())
      g(paramObject);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.tencent.qc.stat.common.StatLogger
 * JD-Core Version:    0.6.0
 */