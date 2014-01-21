package com.cymobile.ymwork.utils;

import android.content.Context;
import android.text.Html;
import android.text.Spanned;
import android.widget.Toast;
import com.amap.api.maps.AMap;
import com.amap.api.maps.model.LatLng;
import com.amap.api.search.core.LatLonPoint;
import java.text.DecimalFormat;

public class AMapUtil
{
  public static final String HtmlBlack = "#000000";
  public static final String HtmlGray = "#808080";

  public static boolean IsEmptyOrNullString(String paramString)
  {
    return (paramString == null) || (paramString.trim().length() == 0);
  }

  public static boolean checkReady(Context paramContext, AMap paramAMap)
  {
    int i = 1;
    if (paramAMap == null)
    {
      Toast.makeText(paramContext, 2131296315, i).show();
      i = 0;
    }
    return i;
  }

  public static String colorFont(String paramString1, String paramString2)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("<font color=").append(paramString2).append(">").append(paramString1).append("</font>");
    return localStringBuffer.toString();
  }

  public static LatLonPoint convertToLatLonPoint(LatLng paramLatLng)
  {
    return new LatLonPoint(paramLatLng.latitude, paramLatLng.longitude);
  }

  public static String getFriendlyLength(int paramInt)
  {
    if (paramInt > 10000)
      return paramInt / 1000 + "公里";
    if (paramInt > 1000)
    {
      float f = paramInt / 1000.0F;
      return new DecimalFormat("##0.0").format(f) + "公里";
    }
    if (paramInt > 100)
      return 50 * (paramInt / 50) + "米";
    int i = 10 * (paramInt / 10);
    if (i == 0)
      i = 10;
    return i + "米";
  }

  public static String makeHtmlNewLine()
  {
    return "<br />";
  }

  public static String makeHtmlSpace(int paramInt)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    for (int i = 0; ; i++)
    {
      if (i >= paramInt)
        return localStringBuilder.toString();
      localStringBuilder.append("&nbsp;");
    }
  }

  public static Spanned stringToSpan(String paramString)
  {
    if (paramString == null)
      return null;
    return Html.fromHtml(paramString.replace("\n", "<br />"));
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.utils.AMapUtil
 * JD-Core Version:    0.6.0
 */