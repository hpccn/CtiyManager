package com.amap.api.offlinemap;

import android.content.Context;
import android.content.res.AssetManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Xml;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public class c
{
  private static String g = null;
  private static Context h = null;
  public ArrayList<g> a = new ArrayList();
  public ArrayList<g> b = new ArrayList();
  public ArrayList<DownCity> c = new ArrayList();
  public ArrayList<DownCity> d = new ArrayList();
  Handler e;
  e f;

  public c(Context paramContext, Handler paramHandler)
  {
    h = paramContext;
    this.e = paramHandler;
    g = com.amap.api.a.b.g.a(paramContext);
    com.amap.api.a.b.c.b(h);
  }

  public static String a()
  {
    return com.amap.api.a.b.g.b(h);
  }

  public void a(int paramInt)
  {
    g localg;
    String str3;
    if ((this.b != null) && (this.b.size() > 0))
    {
      localg = (g)this.b.get(paramInt);
      String str1 = localg.b();
      String str2 = str1 + ".zip";
      str3 = str2 + ".tmp";
    }
    try
    {
      this.f = new e(new f(localg.c(), a(), str3, 5), this, localg, h);
      this.f.start();
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  public void a(g paramg)
  {
    paramg.a = 3;
    String str1;
    String str2;
    synchronized (this.b)
    {
      this.b.remove(paramg);
      synchronized (this.a)
      {
        this.a.remove(paramg);
        b(paramg.d());
        str1 = paramg.a();
        str2 = str1 + ".dt";
        if ((str1 == null) || (str1.length() <= 0));
      }
    }
    try
    {
      new File(str1).delete();
      if ((str2 == null) || (str2.length() <= 0));
    }
    catch (Exception localException2)
    {
      try
      {
        new File(str2).delete();
        str3 = str1 + ".info";
        if ((str3 == null) || (str3.length() <= 0));
      }
      catch (Exception localException2)
      {
        try
        {
          while (true)
          {
            String str3;
            new File(str3).delete();
            return;
            localObject1 = finally;
            monitorexit;
            throw localObject1;
            localObject2 = finally;
            monitorexit;
            throw localObject2;
            localException3 = localException3;
            localException3.printStackTrace();
          }
          localException2 = localException2;
          localException2.printStackTrace();
        }
        catch (Exception localException1)
        {
          localException1.printStackTrace();
        }
      }
    }
  }

  public void a(g paramg, int paramInt1, int paramInt2)
  {
    Bundle localBundle = new Bundle();
    localBundle.putInt("status", paramInt1);
    localBundle.putInt("completepercent", paramInt2);
    Message localMessage = this.e.obtainMessage();
    localMessage.setData(localBundle);
    this.e.sendMessage(localMessage);
    paramg.a = paramInt1;
    paramg.e();
  }

  public void b()
  {
    if (this.f != null)
    {
      this.f.b();
      this.f.interrupt();
      Bundle localBundle = new Bundle();
      localBundle.putInt("status", 5);
      localBundle.putInt("completepercent", 100);
      Message localMessage = this.e.obtainMessage();
      localMessage.setData(localBundle);
      this.e.sendMessage(localMessage);
      this.b.clear();
      if (this.f != null)
        this.f.b();
    }
  }

  public void b(int paramInt)
  {
    if (this.f != null)
    {
      this.f.b();
      this.f.interrupt();
      Bundle localBundle = new Bundle();
      localBundle.putInt("status", 3);
      localBundle.putInt("completepercent", 100);
      Message localMessage = this.e.obtainMessage();
      localMessage.setData(localBundle);
      this.e.sendMessage(localMessage);
    }
  }

  public void b(g paramg)
  {
    String str1 = paramg.b();
    String str2 = a() + str1 + ".zip";
    String str3 = str2 + ".tmp";
    paramg.e();
    File localFile = new File(str2);
    new File(str3).renameTo(localFile);
    Bundle localBundle1 = new Bundle();
    localBundle1.putInt("status", 1);
    localBundle1.putInt("completepercent", 100);
    Message localMessage1 = this.e.obtainMessage();
    localMessage1.setData(localBundle1);
    this.e.sendMessage(localMessage1);
    paramg.a = 1;
    paramg.e();
    if (localFile.exists())
    {
      i.a(g + "vmap/", str2);
      new File(str2).delete();
      Bundle localBundle2 = new Bundle();
      localBundle2.putInt("status", 4);
      localBundle2.putInt("completepercent", 100);
      Message localMessage2 = this.e.obtainMessage();
      localMessage1.setData(localBundle2);
      this.e.sendMessage(localMessage2);
    }
    paramg.a = 4;
    synchronized (this.b)
    {
      this.b.remove(paramg);
      paramg.e();
      return;
    }
  }

  public void c()
  {
    this.c.clear();
    int i;
    while (true)
    {
      XmlPullParser localXmlPullParser;
      DownCity localDownCity;
      String str1;
      try
      {
        InputStream localInputStream = h.getAssets().open("1010.png");
        localXmlPullParser = Xml.newPullParser();
        localXmlPullParser.setInput(localInputStream, "utf-8");
        i = localXmlPullParser.getEventType();
        localDownCity = null;
        break;
        i = localXmlPullParser.next();
        break;
        str1 = localXmlPullParser.getName();
        if (!str1.equalsIgnoreCase("province"))
          continue;
        String str3 = localXmlPullParser.getAttributeValue(null, "code");
        if ((str3 != null) && (!str3.equals("")))
          continue;
        i = localXmlPullParser.next();
        break;
        localDownCity = new DownCity();
        localDownCity.setCode(str3);
        if (!str1.equalsIgnoreCase("city"))
          continue;
        localDownCity = new DownCity();
        localDownCity.setVersion("20130225");
        localDownCity.setCode(localXmlPullParser.getAttributeValue(null, "code"));
        if (localDownCity == null)
          continue;
        if (!str1.equalsIgnoreCase("name"))
          continue;
        localDownCity.setCity(localXmlPullParser.nextText());
        if ((localXmlPullParser.getName() == null) || (!localXmlPullParser.getName().equalsIgnoreCase("size")) || (localDownCity == null))
          continue;
        this.d.add(localDownCity);
        this.c.add(localDownCity);
        localDownCity = null;
        continue;
        if (!str1.equalsIgnoreCase("pinyin"))
          continue;
        String str2 = localXmlPullParser.nextText();
        localDownCity.setPinyin(str2);
        localDownCity.setInitial(str2.substring(0, 1));
        continue;
        continue;
      }
      catch (IOException localIOException)
      {
        localIOException.printStackTrace();
        return;
        if (str1.equalsIgnoreCase("durl"))
        {
          localDownCity.setDurl(localXmlPullParser.nextText());
          continue;
        }
      }
      catch (XmlPullParserException localXmlPullParserException)
      {
        localXmlPullParserException.printStackTrace();
        return;
      }
      if (!str1.equalsIgnoreCase("size"))
        continue;
      localDownCity.setSize(Long.parseLong(localXmlPullParser.nextText()));
    }
    do
    {
      Collections.sort(this.c);
      Collections.sort(this.d);
      return;
    }
    while (i == 1);
    switch (i)
    {
    default:
    case 2:
    case 3:
    }
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.offlinemap.c
 * JD-Core Version:    0.6.0
 */