package com.amap.api.offlinemap;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import org.json.JSONException;
import org.json.JSONObject;

public class g
{
  public int a = 3;
  public String b = null;
  public String c = "";
  public String d = "";
  long e = 0L;
  long f = 0L;
  long g = 0L;
  private String h = null;
  private String i = null;
  private String j = null;
  private String k = null;
  private String l = null;
  private int m;

  public g()
  {
  }

  public g(DownCity paramDownCity)
  {
    this.k = paramDownCity.getPinyin();
    this.b = paramDownCity.getJianpin();
    this.h = paramDownCity.getCity();
    this.j = paramDownCity.getCode();
    this.i = paramDownCity.getDurl();
    this.f = paramDownCity.getSize();
    String str = c.a();
    this.l = (str + this.j + ".zip" + ".tmp");
    try
    {
      if ((!new File(str + this.j).exists()) && (!new File(str + this.j + ".zip" + ".tmp").exists()))
        new File(this.l).createNewFile();
      this.c = paramDownCity.getVersion();
      return;
    }
    catch (IOException localIOException)
    {
      while (true)
        localIOException.printStackTrace();
    }
  }

  public String a()
  {
    return this.l;
  }

  public void a(int paramInt)
  {
    this.m = paramInt;
  }

  public String b()
  {
    return this.j;
  }

  public String c()
  {
    return this.i;
  }

  public int d()
  {
    return this.m;
  }

  public void e()
  {
    JSONObject localJSONObject1 = new JSONObject();
    try
    {
      JSONObject localJSONObject2 = new JSONObject();
      localJSONObject2.put("title", this.h);
      localJSONObject2.put("code", this.j);
      localJSONObject2.put("url", this.i);
      localJSONObject2.put("pinyin", this.k);
      localJSONObject2.put("jianpin", this.b);
      localJSONObject2.put("fileName", this.l);
      localJSONObject2.put("lLocalLength", this.e);
      localJSONObject2.put("lRemoteLength", this.f);
      localJSONObject2.put("mState", this.a);
      localJSONObject2.put("Schedule", this.g);
      localJSONObject2.put("version", this.c);
      localJSONObject1.put("file", localJSONObject2);
      File localFile = new File(this.l + ".dt");
      localFile.delete();
      try
      {
        FileWriter localFileWriter = new FileWriter(localFile, true);
        localFileWriter.write(localJSONObject1.toString());
        localFileWriter.close();
        return;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        return;
      }
    }
    catch (JSONException localJSONException)
    {
      localJSONException.printStackTrace();
    }
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.offlinemap.g
 * JD-Core Version:    0.6.0
 */