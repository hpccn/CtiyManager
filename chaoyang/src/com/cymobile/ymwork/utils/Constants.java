package com.cymobile.ymwork.utils;

import com.amap.api.maps.model.LatLng;

public class Constants
{
  public static final LatLng BEIJING = new LatLng(39.904029999999999D, 116.40752500000001D);
  public static final int BUSLINE_DETAIL_RESULT = 6001;
  public static final int BUSLINE_ERROR_RESULT = 6002;
  public static final int BUSLINE_RESULT = 6000;
  public static final LatLng CHENGDU;
  public static final int DIALOG_LAYER = 4000;
  public static final int ERROR = 1001;
  public static final LatLng FANGHENG;
  public static final int FIRST_LOCATION = 1002;
  public static final LatLng HAERBIN;
  public static final LatLng HUHEHAOTE;
  public static final int POISEARCH = 1000;
  public static final int POISEARCH_NEXT = 5000;
  public static final int REOCODER_RESULT = 3000;
  public static final int ROUTE_END_SEARCH = 2001;
  public static final int ROUTE_SEARCH_ERROR = 2004;
  public static final int ROUTE_SEARCH_RESULT = 2002;
  public static final int ROUTE_START_SEARCH = 2000;
  public static final LatLng SHANGHAI;
  public static final LatLng XIAN;
  public static final LatLng ZHENGZHOU;
  public static final LatLng ZHONGGUANCUN = new LatLng(39.983455999999997D, 116.315495D);

  static
  {
    SHANGHAI = new LatLng(31.239878999999998D, 121.499674D);
    FANGHENG = new LatLng(39.991014D, 116.48276300000001D);
    CHENGDU = new LatLng(29.339879D, 104.384855D);
    XIAN = new LatLng(34.341568000000002D, 108.940174D);
    ZHENGZHOU = new LatLng(34.746600000000001D, 113.625367D);
    HUHEHAOTE = new LatLng(40.842298999999997D, 111.749138D);
    HAERBIN = new LatLng(45.803773999999997D, 126.53496699999999D);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.utils.Constants
 * JD-Core Version:    0.6.0
 */