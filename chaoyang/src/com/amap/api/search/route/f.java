package com.amap.api.search.route;

import com.amap.api.search.core.AMapException;
import com.amap.api.search.core.LatLonPoint;
import com.amap.api.search.core.a;
import com.amap.api.search.core.b;
import com.amap.api.search.core.d;
import java.io.IOException;
import java.io.InputStream;
import java.net.Proxy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class f extends c
{
  public List<LatLonPoint> i;

  public f(e parame, Proxy paramProxy, String paramString1, String paramString2)
  {
    super(parame, paramProxy, paramString1, paramString2);
  }

  protected ArrayList<Route> a(InputStream paramInputStream)
    throws AMapException
  {
    int j = 0;
    ArrayList localArrayList = new ArrayList();
    try
    {
      str1 = new String(a.a(paramInputStream));
      d.b(str1);
    }
    catch (Exception localException2)
    {
      try
      {
        while (true)
        {
          String str1;
          JSONObject localJSONObject1 = new JSONObject(str1);
          if (localJSONObject1.getInt("count") > 0)
          {
            JSONArray localJSONArray = localJSONObject1.getJSONArray("list");
            localRoute = new Route(((e)this.b).b);
            localLinkedList = new LinkedList();
            label86: if (j >= localJSONArray.length())
              break label437;
            JSONObject localJSONObject2 = localJSONArray.getJSONObject(j);
            WalkSegment localWalkSegment = new WalkSegment();
            String str2 = localJSONObject2.getString("roadLength");
            if (str2.contains("千米"))
            {
              String str4 = str2.substring(0, -2 + str2.length());
              str2 = (int)(1000.0D * Double.parseDouble(str4)) + "";
              label177: localWalkSegment.setLength(Integer.parseInt(str2));
              localWalkSegment.setRoadName(localJSONObject2.getString("roadName"));
              localWalkSegment.setActionDescription(localJSONObject2.getString("action"));
            }
            try
            {
              localWalkSegment.setShapes(a(localJSONObject2.getString("coor").split(",|;")));
              localWalkSegment.setConsumeTime(localJSONObject2.getString("driveTime"));
              localWalkSegment.setAccessorialInfo(localJSONObject2.getString("accessorialInfo"));
              localWalkSegment.setDirection(localJSONObject2.getString("direction"));
              localWalkSegment.setTextInfo(localJSONObject2.getString("textInfo"));
              if (localWalkSegment.getShapes().length != 0)
                localLinkedList.add(localWalkSegment);
              j++;
              break label86;
              localException2 = localException2;
              localException2.printStackTrace();
              str1 = null;
              continue;
              if (str2.contains("米"))
              {
                str2 = str2.substring(0, -1 + str2.length());
                break label177;
              }
              if (!str2.contains("公里"))
                break label177;
              String str3 = str2.substring(0, -2 + str2.length());
              str2 = (int)(1000.0D * Double.parseDouble(str3)) + "";
            }
            catch (Exception localException1)
            {
              while (true)
                localException1.printStackTrace();
            }
          }
        }
      }
      catch (JSONException localJSONException)
      {
        Route localRoute;
        LinkedList localLinkedList;
        localJSONException.printStackTrace();
        while (localArrayList.size() == 0)
        {
          throw new AMapException("IO 操作异常 - IOException");
          label437: if (localLinkedList.size() == 0)
            return null;
          localRoute.a(localLinkedList);
          a(localRoute);
          Iterator localIterator = localRoute.a().iterator();
          while (localIterator.hasNext())
            ((Segment)localIterator.next()).setRoute(localRoute);
          if (localRoute != null)
          {
            localRoute.setStartPlace(this.j);
            localRoute.setTargetPlace(this.k);
          }
          localArrayList.add(localRoute);
        }
        if (paramInputStream != null);
        try
        {
          paramInputStream.close();
          return localArrayList;
        }
        catch (IOException localIOException)
        {
        }
      }
    }
    throw new AMapException("IO 操作异常 - IOException");
  }

  protected void a(Route paramRoute)
  {
    for (int j = -1 + paramRoute.getStepCount(); j > 0; j--)
    {
      WalkSegment localWalkSegment2 = (WalkSegment)paramRoute.getStep(j);
      WalkSegment localWalkSegment3 = (WalkSegment)paramRoute.getStep(j - 1);
      localWalkSegment2.setActionCode(localWalkSegment3.getActionCode());
      localWalkSegment2.setActionDescription(localWalkSegment3.getActionDescription());
    }
    WalkSegment localWalkSegment1 = (WalkSegment)paramRoute.getStep(0);
    localWalkSegment1.setActionCode(-1);
    localWalkSegment1.setActionDescription("");
  }

  public void a(List<LatLonPoint> paramList)
  {
    this.i = paramList;
  }

  protected byte[] d()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("sid=8003");
    localStringBuilder.append("&encode=utf-8");
    localStringBuilder.append("&ia=1");
    localStringBuilder.append("&xys=" + ((e)this.b).a() + "," + ((e)this.b).c() + ";");
    localStringBuilder.append(((e)this.b).b() + "," + ((e)this.b).d());
    localStringBuilder.append("&resType=json");
    localStringBuilder.append("&RouteType=" + ((e)this.b).b);
    localStringBuilder.append("&per=");
    localStringBuilder.append(50);
    localStringBuilder.append("&key=");
    localStringBuilder.append(b.a);
    return localStringBuilder.toString().getBytes();
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.search.route.f
 * JD-Core Version:    0.6.0
 */