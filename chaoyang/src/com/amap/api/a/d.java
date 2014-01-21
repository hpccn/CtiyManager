package com.amap.api.a;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.widget.Toast;
import com.amap.api.maps.AMap.CancelableCallback;
import com.amap.api.maps.AMap.OnCameraChangeListener;
import com.amap.api.maps.model.CameraPosition;
import com.autonavi.amap.mapcore.FPoint;
import com.autonavi.amap.mapcore.IPoint;
import com.autonavi.amap.mapcore.MapProjection;

class d extends Handler
{
  d(b paramb)
  {
  }

  public void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 11:
    default:
    case 2:
    case 10:
    case 12:
    case 13:
    case 14:
      float f1;
      float f2;
      do
      {
        do
        {
          h localh;
          do
          {
            CameraPosition localCameraPosition;
            do
            {
              return;
              Context localContext = b.v(this.a);
              b.w(this.a);
              Toast.makeText(localContext, f.b, 0).show();
              return;
              localCameraPosition = (CameraPosition)paramMessage.obj;
            }
            while ((localCameraPosition == null) || (b.x(this.a) == null));
            b.x(this.a).onCameraChange(localCameraPosition);
            return;
            localh = (h)paramMessage.obj;
          }
          while (localh == null);
          this.a.a(localh.i, localh.k, localh.l, localh.j);
          return;
        }
        while (!b.g(this.a).h());
        switch (b.g(this.a).j())
        {
        default:
          int i = b.g(this.a).b() - b.j(this.a);
          int j = b.g(this.a).c() - b.k(this.a);
          b.b(this.a, b.g(this.a).b());
          b.c(this.a, b.g(this.a).c());
          FPoint localFPoint1 = new FPoint(i + this.a.getWidth() / 2, j + this.a.getHeight() / 2);
          FPoint localFPoint2 = new FPoint();
          b.e(this.a).win2Map((int)localFPoint1.x, (int)localFPoint1.y, localFPoint2);
          IPoint localIPoint = new IPoint();
          b.e(this.a).map2Geo(localFPoint2.x, localFPoint2.y, localIPoint);
          this.a.a.a(h.a(localIPoint));
        case 2:
        case 3:
        }
        while (b.g(this.a).a())
        {
          if (b.h(this.a) != null)
            b.h(this.a).onFinish();
          b.a(this.a, null);
          return;
          float f3 = b.g(this.a).d();
          this.a.a.a(h.a(f3));
          continue;
          this.a.a.a(h.a(new IPoint(b.g(this.a).b(), b.g(this.a).c()), b.g(this.a).d(), b.g(this.a).e(), b.g(this.a).f()));
        }
        f1 = b.e(this.a).getMapAngle();
        f2 = b.e(this.a).getCameraHeaderAngle();
        if ((b.a(this.a).getVisibility() != 0) && ((f1 != 0.0F) || (f2 != 0.0F)))
          b.a(this.a).setVisibility(0);
        b.a(this.a).b();
      }
      while ((f1 != 0.0F) || (f2 != 0.0F));
      this.a.a(500L);
      return;
    case 15:
    }
    this.a.f();
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.a.d
 * JD-Core Version:    0.6.0
 */