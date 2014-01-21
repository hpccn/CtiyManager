package com.autonavi.aps.api;

import android.content.Context;
import android.content.IntentFilter;
import android.location.LocationListener;
import android.location.LocationManager;
import android.net.ConnectivityManager;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.telephony.CellLocation;
import android.telephony.NeighboringCellInfo;
import android.telephony.PhoneStateListener;
import android.telephony.TelephonyManager;
import android.telephony.cdma.CdmaCellLocation;
import android.telephony.gsm.GsmCellLocation;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class APSYUNPINGTAI
  implements IAPS
{
  private static long A;
  private static boolean B;
  private static boolean C;
  private static boolean D;
  private static String a = null;
  private static String b = null;
  private static String c = null;
  private static String d = null;
  private static APSYUNPINGTAI e = null;
  private static Context f = null;
  private static TelephoneBean g = null;
  private static int h = 0;
  private static ConnectivityManager i = null;
  private static WifiManager j = null;
  private static TelephonyManager k = null;
  private static LocationManager l = null;
  private static LocationListener m = null;
  private static LocationListener n = null;
  private static android.location.Location o = null;
  private static android.location.Location p = null;
  private static ArrayList q = new ArrayList();
  private static ArrayList r = new ArrayList();
  private static List s = new ArrayList();
  private static Des t = new Des("autonavi00spas$#@!666666");
  private static PhoneStateListener u = null;
  private static int v = 10;
  private static f w = null;
  private static WifiInfo x = null;
  private static String y = null;
  private static Location z = null;
  private int[] E;
  private String[] F;

  static
  {
    A = 0L;
    B = false;
    C = false;
    D = true;
  }

  private Location a(String paramString)
  {
    monitorenter;
    try
    {
      String str1 = NetManagerApache.getInstance(f).doPostXmlAsString("http://aps.amap.com/APS/r", paramString);
      Location localLocation;
      if ((str1 != null) && (str1.length() > 0))
      {
        String str2 = t.decrypt(new ParserResponse().ParserSapsXml(str1), "GBK");
        Utils.writeLogCat("response:" + str2);
        if ((str2 != null) && (str2.length() > 0))
        {
          localLocation = new ParserResponse().ParserApsXml(str2);
          if (localLocation != null)
          {
            double d1 = localLocation.getCenx();
            if (d1 <= 0.0D);
          }
        }
      }
      while (true)
      {
        return localLocation;
        localLocation = null;
      }
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  private String b(List paramList)
  {
    int i1 = 0;
    if (paramList == null)
      return null;
    this.E = new int[paramList.size()];
    this.F = new String[paramList.size()];
    int i2 = 0;
    int[] arrayOfInt1;
    String[] arrayOfString1;
    int[] arrayOfInt2;
    String[] arrayOfString2;
    int i3;
    int i6;
    label101: int[] arrayOfInt3;
    String[] arrayOfString3;
    StringBuffer localStringBuffer;
    if (i2 >= paramList.size())
    {
      arrayOfInt1 = this.E;
      arrayOfString1 = this.F;
      arrayOfInt2 = new int[10];
      arrayOfString2 = new String[10];
      i3 = 0;
      if (i3 < arrayOfInt1.length)
        break label198;
      if ((this.E != null) && (this.E.length > 10))
      {
        i6 = 0;
        if (i6 < 10)
          break label297;
        this.E = arrayOfInt2;
        this.F = arrayOfString2;
      }
      arrayOfInt3 = this.E;
      arrayOfString3 = this.F;
      localStringBuffer = new StringBuffer();
    }
    while (true)
    {
      if (i1 >= arrayOfInt3.length)
      {
        return localStringBuffer.toString();
        this.E[i2] = ((ScanResult)paramList.get(i2)).level;
        this.F[i2] = ((ScanResult)paramList.get(i2)).BSSID;
        i2++;
        break;
        label198: for (int i4 = 0; ; i4++)
        {
          if (i4 >= -1 + (arrayOfInt1.length - i3))
          {
            i3++;
            break;
          }
          if (arrayOfInt1[i4] >= arrayOfInt1[(i4 + 1)])
            continue;
          int i5 = arrayOfInt1[i4];
          arrayOfInt1[i4] = arrayOfInt1[(i4 + 1)];
          arrayOfInt1[(i4 + 1)] = i5;
          String str = arrayOfString1[i4];
          arrayOfString1[i4] = arrayOfString1[(i4 + 1)];
          arrayOfString1[(i4 + 1)] = str;
        }
        label297: arrayOfInt2[i6] = arrayOfInt1[i6];
        arrayOfString2[i6] = arrayOfString1[i6];
        i6++;
        break label101;
      }
      if (i1 > 0)
        localStringBuffer.append("*");
      localStringBuffer.append(arrayOfString3[i1]).append(",").append(arrayOfInt3[i1]);
      i1++;
    }
  }

  private static void b(CellLocation paramCellLocation, List paramList)
  {
    monitorenter;
    if (paramCellLocation != null);
    while (true)
    {
      String str;
      try
      {
        str = k.getNetworkOperator();
        Utils.writeLogCat("network operator is " + str);
        if ((paramCellLocation instanceof GsmCellLocation))
        {
          Utils.writeLogCat("celllocation is gsmcelllocation");
          h = 1;
          q.clear();
          if ((str == null) || (str.length() <= 4))
            continue;
          GsmCellBean localGsmCellBean1 = new GsmCellBean();
          localGsmCellBean1.setLac(((GsmCellLocation)paramCellLocation).getLac());
          localGsmCellBean1.setCellid(((GsmCellLocation)paramCellLocation).getCid());
          localGsmCellBean1.setSignal(v);
          localGsmCellBean1.setMcc(str.substring(0, 3));
          localGsmCellBean1.setMnc(str.substring(3, 5));
          q.add(localGsmCellBean1);
          if (paramList == null)
            continue;
          int i1 = paramList.size();
          int i2 = 0;
          if (i1 <= 0)
            continue;
          int i3 = paramList.size();
          if (i2 >= i3)
            return;
          NeighboringCellInfo localNeighboringCellInfo = (NeighboringCellInfo)paramList.get(i2);
          GsmCellBean localGsmCellBean2 = new GsmCellBean();
          localGsmCellBean2.setSignal(-133 + 2 * localNeighboringCellInfo.getRssi());
          localGsmCellBean2.setLac(localNeighboringCellInfo.getLac());
          localGsmCellBean2.setCellid(localNeighboringCellInfo.getCid());
          localGsmCellBean2.setMcc(str.substring(0, 3));
          localGsmCellBean2.setMnc(str.substring(3, 5));
          q.add(localGsmCellBean2);
          i2++;
          continue;
          Utils.writeLogCat("network operator: " + str);
          continue;
        }
      }
      finally
      {
        monitorexit;
      }
      try
      {
        Class.forName("android.telephony.cdma.CdmaCellLocation");
        Utils.writeLogCat("celllocation is cdmacelllocation");
        h = 2;
        r.clear();
        if ((str == null) || (str.length() <= 4))
          break label454;
        CdmaCellBean localCdmaCellBean = new CdmaCellBean();
        CdmaCellLocation localCdmaCellLocation = (CdmaCellLocation)paramCellLocation;
        localCdmaCellBean.setLat(localCdmaCellLocation.getBaseStationLatitude());
        localCdmaCellBean.setLon(localCdmaCellLocation.getBaseStationLongitude());
        localCdmaCellBean.setSid(localCdmaCellLocation.getSystemId());
        localCdmaCellBean.setNid(localCdmaCellLocation.getNetworkId());
        localCdmaCellBean.setBid(localCdmaCellLocation.getBaseStationId());
        localCdmaCellBean.setSignal(v);
        localCdmaCellBean.setMcc(str.substring(0, 3));
        localCdmaCellBean.setMnc(str.substring(3, 5));
        r.add(localCdmaCellBean);
      }
      catch (Exception localException)
      {
        Utils.printException(localException);
      }
      continue;
      label454: Utils.writeLogCat("network operator: " + str);
    }
  }

  public static String getCurrenttime()
  {
    return new SimpleDateFormat("yyyy-MM-dd-HH-mm-ss").format(new Date());
  }

  public static APSYUNPINGTAI getInstance(Context paramContext)
  {
    if (e == null)
    {
      e = new APSYUNPINGTAI();
      f = paramContext;
      j = (WifiManager)paramContext.getSystemService("wifi");
      APSYUNPINGTAI localAPSYUNPINGTAI = e;
      localAPSYUNPINGTAI.getClass();
      w = new f(localAPSYUNPINGTAI);
      if (j.getWifiState() == 3)
      {
        x = j.getConnectionInfo();
        new d().start();
      }
      f.registerReceiver(w, new IntentFilter("android.net.wifi.SCAN_RESULTS"));
      i = (ConnectivityManager)f.getSystemService("connectivity");
      k = (TelephonyManager)f.getSystemService("phone");
      CellLocation.requestLocationUpdate();
      g = TelephoneBean.getInstance(k, f, null);
      u = new e();
      k.listen(u, 272);
      i();
    }
    Utils.writeLogCat("public in debug, only for test use");
    Utils.doToast(f, "public in debug, only for test use");
    return e;
  }

  // ERROR //
  private static void h()
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: new 169	java/lang/StringBuilder
    //   6: dup
    //   7: ldc_w 439
    //   10: invokespecial 172	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   13: astore_0
    //   14: getstatic 130	com/autonavi/aps/api/APSYUNPINGTAI:B	Z
    //   17: ifne +71 -> 88
    //   20: ldc_w 441
    //   23: astore_2
    //   24: aload_0
    //   25: aload_2
    //   26: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   29: ldc_w 443
    //   32: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   35: invokevirtual 180	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   38: invokestatic 185	com/autonavi/aps/api/Utils:writeLogCat	(Ljava/lang/String;)V
    //   41: getstatic 130	com/autonavi/aps/api/APSYUNPINGTAI:B	Z
    //   44: ifne +51 -> 95
    //   47: new 445	com/autonavi/aps/api/a
    //   50: dup
    //   51: invokespecial 446	com/autonavi/aps/api/a:<init>	()V
    //   54: putstatic 90	com/autonavi/aps/api/APSYUNPINGTAI:n	Landroid/location/LocationListener;
    //   57: getstatic 86	com/autonavi/aps/api/APSYUNPINGTAI:l	Landroid/location/LocationManager;
    //   60: ldc_w 448
    //   63: ldc2_w 449
    //   66: fconst_0
    //   67: getstatic 90	com/autonavi/aps/api/APSYUNPINGTAI:n	Landroid/location/LocationListener;
    //   70: invokestatic 456	android/os/Looper:getMainLooper	()Landroid/os/Looper;
    //   73: invokevirtual 462	android/location/LocationManager:requestLocationUpdates	(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
    //   76: iconst_0
    //   77: putstatic 132	com/autonavi/aps/api/APSYUNPINGTAI:C	Z
    //   80: iconst_1
    //   81: putstatic 130	com/autonavi/aps/api/APSYUNPINGTAI:B	Z
    //   84: ldc 2
    //   86: monitorexit
    //   87: return
    //   88: ldc_w 464
    //   91: astore_2
    //   92: goto -68 -> 24
    //   95: getstatic 90	com/autonavi/aps/api/APSYUNPINGTAI:n	Landroid/location/LocationListener;
    //   98: ifnull +12 -> 110
    //   101: getstatic 86	com/autonavi/aps/api/APSYUNPINGTAI:l	Landroid/location/LocationManager;
    //   104: getstatic 90	com/autonavi/aps/api/APSYUNPINGTAI:n	Landroid/location/LocationListener;
    //   107: invokevirtual 468	android/location/LocationManager:removeUpdates	(Landroid/location/LocationListener;)V
    //   110: aconst_null
    //   111: putstatic 90	com/autonavi/aps/api/APSYUNPINGTAI:n	Landroid/location/LocationListener;
    //   114: aconst_null
    //   115: putstatic 92	com/autonavi/aps/api/APSYUNPINGTAI:o	Landroid/location/Location;
    //   118: iconst_0
    //   119: putstatic 132	com/autonavi/aps/api/APSYUNPINGTAI:C	Z
    //   122: iconst_0
    //   123: putstatic 130	com/autonavi/aps/api/APSYUNPINGTAI:B	Z
    //   126: goto -42 -> 84
    //   129: astore_1
    //   130: ldc 2
    //   132: monitorexit
    //   133: aload_1
    //   134: athrow
    //   135: astore_3
    //   136: aload_3
    //   137: invokestatic 348	com/autonavi/aps/api/Utils:printException	(Ljava/lang/Exception;)V
    //   140: goto -30 -> 110
    //
    // Exception table:
    //   from	to	target	type
    //   3	20	129	finally
    //   24	84	129	finally
    //   95	110	129	finally
    //   110	126	129	finally
    //   136	140	129	finally
    //   95	110	135	java/lang/Exception
  }

  private static void i()
  {
    if (D)
    {
      Utils.writeLogCat("start system network listener");
      l = (LocationManager)f.getSystemService("location");
      m = new b();
    }
  }

  // ERROR //
  private String j()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: aload_0
    //   3: monitorenter
    //   4: getstatic 64	com/autonavi/aps/api/APSYUNPINGTAI:a	Ljava/lang/String;
    //   7: ifnull +10 -> 17
    //   10: aload_0
    //   11: invokevirtual 480	com/autonavi/aps/api/APSYUNPINGTAI:getProductName	()Ljava/lang/String;
    //   14: ifnonnull +9 -> 23
    //   17: ldc_w 482
    //   20: invokestatic 185	com/autonavi/aps/api/Utils:writeLogCat	(Ljava/lang/String;)V
    //   23: aload_0
    //   24: invokevirtual 485	com/autonavi/aps/api/APSYUNPINGTAI:getKey	()Ljava/lang/String;
    //   27: ifnull +10 -> 37
    //   30: aload_0
    //   31: invokevirtual 488	com/autonavi/aps/api/APSYUNPINGTAI:getPackageName	()Ljava/lang/String;
    //   34: ifnonnull +13 -> 47
    //   37: ldc_w 490
    //   40: invokestatic 185	com/autonavi/aps/api/Utils:writeLogCat	(Ljava/lang/String;)V
    //   43: aload_0
    //   44: monitorexit
    //   45: aload_1
    //   46: areturn
    //   47: getstatic 82	com/autonavi/aps/api/APSYUNPINGTAI:j	Landroid/net/wifi/WifiManager;
    //   50: invokevirtual 387	android/net/wifi/WifiManager:getWifiState	()I
    //   53: iconst_3
    //   54: if_icmpne +14 -> 68
    //   57: new 492	com/autonavi/aps/api/c
    //   60: dup
    //   61: aload_0
    //   62: invokespecial 493	com/autonavi/aps/api/c:<init>	(Lcom/autonavi/aps/api/APSYUNPINGTAI;)V
    //   65: invokevirtual 494	com/autonavi/aps/api/c:start	()V
    //   68: getstatic 84	com/autonavi/aps/api/APSYUNPINGTAI:k	Landroid/telephony/TelephonyManager;
    //   71: astore_3
    //   72: aconst_null
    //   73: astore 4
    //   75: aload_3
    //   76: ifnull +11 -> 87
    //   79: getstatic 84	com/autonavi/aps/api/APSYUNPINGTAI:k	Landroid/telephony/TelephonyManager;
    //   82: invokevirtual 498	android/telephony/TelephonyManager:getCellLocation	()Landroid/telephony/CellLocation;
    //   85: astore 4
    //   87: getstatic 116	com/autonavi/aps/api/APSYUNPINGTAI:u	Landroid/telephony/PhoneStateListener;
    //   90: ifnull +11 -> 101
    //   93: getstatic 116	com/autonavi/aps/api/APSYUNPINGTAI:u	Landroid/telephony/PhoneStateListener;
    //   96: aload 4
    //   98: invokevirtual 504	android/telephony/PhoneStateListener:onCellLocationChanged	(Landroid/telephony/CellLocation;)V
    //   101: new 169	java/lang/StringBuilder
    //   104: dup
    //   105: invokespecial 505	java/lang/StringBuilder:<init>	()V
    //   108: astore 5
    //   110: aload 5
    //   112: ldc_w 507
    //   115: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   118: pop
    //   119: aload 5
    //   121: ldc_w 509
    //   124: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   127: pop
    //   128: aload 5
    //   130: ldc_w 511
    //   133: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   136: getstatic 64	com/autonavi/aps/api/APSYUNPINGTAI:a	Ljava/lang/String;
    //   139: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   142: ldc_w 513
    //   145: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   148: pop
    //   149: aload 5
    //   151: ldc_w 515
    //   154: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   157: aload_0
    //   158: invokevirtual 480	com/autonavi/aps/api/APSYUNPINGTAI:getProductName	()Ljava/lang/String;
    //   161: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   164: ldc_w 517
    //   167: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   170: pop
    //   171: aload 5
    //   173: ldc_w 519
    //   176: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   179: aload_0
    //   180: invokevirtual 485	com/autonavi/aps/api/APSYUNPINGTAI:getKey	()Ljava/lang/String;
    //   183: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   186: ldc_w 521
    //   189: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   192: pop
    //   193: aload 5
    //   195: ldc_w 523
    //   198: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   201: aload_0
    //   202: invokevirtual 488	com/autonavi/aps/api/APSYUNPINGTAI:getPackageName	()Ljava/lang/String;
    //   205: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   208: ldc_w 525
    //   211: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   214: pop
    //   215: aload 5
    //   217: ldc_w 527
    //   220: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   223: getstatic 76	com/autonavi/aps/api/APSYUNPINGTAI:g	Lcom/autonavi/aps/api/TelephoneBean;
    //   226: invokevirtual 530	com/autonavi/aps/api/TelephoneBean:getDeviceId	()Ljava/lang/String;
    //   229: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   232: ldc_w 532
    //   235: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   238: pop
    //   239: getstatic 80	com/autonavi/aps/api/APSYUNPINGTAI:i	Landroid/net/ConnectivityManager;
    //   242: invokevirtual 536	android/net/ConnectivityManager:getActiveNetworkInfo	()Landroid/net/NetworkInfo;
    //   245: astore 13
    //   247: aload 5
    //   249: ldc_w 538
    //   252: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   255: pop
    //   256: aload 13
    //   258: ifnull +213 -> 471
    //   261: aload 13
    //   263: invokevirtual 544	android/net/NetworkInfo:isAvailable	()Z
    //   266: ifeq +205 -> 471
    //   269: aload 13
    //   271: invokevirtual 547	android/net/NetworkInfo:isConnected	()Z
    //   274: ifeq +197 -> 471
    //   277: aload 5
    //   279: aload 13
    //   281: invokevirtual 548	android/net/NetworkInfo:toString	()Ljava/lang/String;
    //   284: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   287: pop
    //   288: getstatic 84	com/autonavi/aps/api/APSYUNPINGTAI:k	Landroid/telephony/TelephonyManager;
    //   291: ifnull +51 -> 342
    //   294: aload 5
    //   296: ldc_w 550
    //   299: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   302: getstatic 84	com/autonavi/aps/api/APSYUNPINGTAI:k	Landroid/telephony/TelephonyManager;
    //   305: invokevirtual 553	android/telephony/TelephonyManager:getNetworkCountryIso	()Ljava/lang/String;
    //   308: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   311: ldc_w 555
    //   314: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   317: getstatic 84	com/autonavi/aps/api/APSYUNPINGTAI:k	Landroid/telephony/TelephonyManager;
    //   320: invokevirtual 558	android/telephony/TelephonyManager:getNetworkOperatorName	()Ljava/lang/String;
    //   323: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   326: ldc_w 560
    //   329: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   332: getstatic 84	com/autonavi/aps/api/APSYUNPINGTAI:k	Landroid/telephony/TelephonyManager;
    //   335: invokevirtual 563	android/telephony/TelephonyManager:getLine1Number	()Ljava/lang/String;
    //   338: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   341: pop
    //   342: getstatic 82	com/autonavi/aps/api/APSYUNPINGTAI:j	Landroid/net/wifi/WifiManager;
    //   345: invokevirtual 387	android/net/wifi/WifiManager:getWifiState	()I
    //   348: iconst_3
    //   349: if_icmpne +122 -> 471
    //   352: getstatic 82	com/autonavi/aps/api/APSYUNPINGTAI:j	Landroid/net/wifi/WifiManager;
    //   355: invokevirtual 567	android/net/wifi/WifiManager:getDhcpInfo	()Landroid/net/DhcpInfo;
    //   358: astore 79
    //   360: aload 5
    //   362: new 169	java/lang/StringBuilder
    //   365: dup
    //   366: ldc_w 569
    //   369: invokespecial 172	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   372: aload 79
    //   374: getfield 574	android/net/DhcpInfo:dns1	I
    //   377: invokestatic 578	com/autonavi/aps/api/NetManagerApache:intToIpAddr	(I)Ljava/lang/String;
    //   380: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   383: invokevirtual 180	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   386: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   389: new 169	java/lang/StringBuilder
    //   392: dup
    //   393: ldc_w 580
    //   396: invokespecial 172	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   399: aload 79
    //   401: getfield 583	android/net/DhcpInfo:dns2	I
    //   404: invokestatic 578	com/autonavi/aps/api/NetManagerApache:intToIpAddr	(I)Ljava/lang/String;
    //   407: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   410: invokevirtual 180	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   413: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   416: new 169	java/lang/StringBuilder
    //   419: dup
    //   420: ldc_w 585
    //   423: invokespecial 172	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   426: aload 79
    //   428: getfield 588	android/net/DhcpInfo:gateway	I
    //   431: invokestatic 578	com/autonavi/aps/api/NetManagerApache:intToIpAddr	(I)Ljava/lang/String;
    //   434: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   437: invokevirtual 180	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   440: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   443: new 169	java/lang/StringBuilder
    //   446: dup
    //   447: ldc_w 590
    //   450: invokespecial 172	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   453: aload 79
    //   455: getfield 593	android/net/DhcpInfo:ipAddress	I
    //   458: invokestatic 578	com/autonavi/aps/api/NetManagerApache:intToIpAddr	(I)Ljava/lang/String;
    //   461: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   464: invokevirtual 180	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   467: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   470: pop
    //   471: aload 5
    //   473: ldc_w 595
    //   476: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   479: pop
    //   480: getstatic 78	com/autonavi/aps/api/APSYUNPINGTAI:h	I
    //   483: iconst_1
    //   484: if_icmpne +849 -> 1333
    //   487: aload 5
    //   489: ldc_w 597
    //   492: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   495: pop
    //   496: getstatic 101	com/autonavi/aps/api/APSYUNPINGTAI:q	Ljava/util/ArrayList;
    //   499: invokevirtual 598	java/util/ArrayList:size	()I
    //   502: ifle +186 -> 688
    //   505: getstatic 101	com/autonavi/aps/api/APSYUNPINGTAI:q	Ljava/util/ArrayList;
    //   508: iconst_0
    //   509: invokevirtual 599	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   512: checkcast 257	com/autonavi/aps/api/GsmCellBean
    //   515: astore 66
    //   517: aload 5
    //   519: ldc_w 601
    //   522: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   525: aload 66
    //   527: invokevirtual 604	com/autonavi/aps/api/GsmCellBean:getMcc	()Ljava/lang/String;
    //   530: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   533: ldc_w 606
    //   536: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   539: pop
    //   540: aload 5
    //   542: ldc_w 608
    //   545: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   548: aload 66
    //   550: invokevirtual 611	com/autonavi/aps/api/GsmCellBean:getMnc	()Ljava/lang/String;
    //   553: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   556: ldc_w 613
    //   559: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   562: pop
    //   563: aload 5
    //   565: ldc_w 615
    //   568: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   571: aload 66
    //   573: invokevirtual 616	com/autonavi/aps/api/GsmCellBean:getLac	()I
    //   576: invokevirtual 619	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   579: ldc_w 621
    //   582: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   585: pop
    //   586: aload 5
    //   588: ldc_w 623
    //   591: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   594: aload 66
    //   596: invokevirtual 626	com/autonavi/aps/api/GsmCellBean:getCellid	()I
    //   599: invokevirtual 619	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   602: ldc_w 628
    //   605: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   608: pop
    //   609: aload 5
    //   611: ldc_w 630
    //   614: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   617: aload 66
    //   619: invokevirtual 633	com/autonavi/aps/api/GsmCellBean:getSignal	()I
    //   622: invokevirtual 619	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   625: ldc_w 635
    //   628: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   631: pop
    //   632: getstatic 101	com/autonavi/aps/api/APSYUNPINGTAI:q	Ljava/util/ArrayList;
    //   635: invokevirtual 598	java/util/ArrayList:size	()I
    //   638: iconst_1
    //   639: if_icmple +49 -> 688
    //   642: new 214	java/lang/StringBuffer
    //   645: dup
    //   646: invokespecial 215	java/lang/StringBuffer:<init>	()V
    //   649: astore 72
    //   651: iconst_1
    //   652: istore 73
    //   654: iload 73
    //   656: getstatic 101	com/autonavi/aps/api/APSYUNPINGTAI:q	Ljava/util/ArrayList;
    //   659: invokevirtual 598	java/util/ArrayList:size	()I
    //   662: if_icmplt +588 -> 1250
    //   665: aload 5
    //   667: ldc_w 637
    //   670: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   673: aload 72
    //   675: invokevirtual 216	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   678: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   681: ldc_w 639
    //   684: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   687: pop
    //   688: getstatic 86	com/autonavi/aps/api/APSYUNPINGTAI:l	Landroid/location/LocationManager;
    //   691: ifnull +997 -> 1688
    //   694: getstatic 86	com/autonavi/aps/api/APSYUNPINGTAI:l	Landroid/location/LocationManager;
    //   697: ldc_w 448
    //   700: invokevirtual 643	android/location/LocationManager:isProviderEnabled	(Ljava/lang/String;)Z
    //   703: ifeq +985 -> 1688
    //   706: getstatic 92	com/autonavi/aps/api/APSYUNPINGTAI:o	Landroid/location/Location;
    //   709: ifnull +114 -> 823
    //   712: getstatic 92	com/autonavi/aps/api/APSYUNPINGTAI:o	Landroid/location/Location;
    //   715: invokevirtual 648	android/location/Location:getLatitude	()D
    //   718: dstore 57
    //   720: getstatic 92	com/autonavi/aps/api/APSYUNPINGTAI:o	Landroid/location/Location;
    //   723: invokevirtual 651	android/location/Location:getLongitude	()D
    //   726: dstore 59
    //   728: dload 57
    //   730: ldc2_w 652
    //   733: dcmpl
    //   734: ifle +85 -> 819
    //   737: dload 59
    //   739: ldc2_w 654
    //   742: dcmpl
    //   743: ifle +76 -> 819
    //   746: aload 5
    //   748: ldc_w 657
    //   751: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   754: pop
    //   755: aload 5
    //   757: ldc_w 659
    //   760: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   763: dload 59
    //   765: invokevirtual 662	java/lang/StringBuilder:append	(D)Ljava/lang/StringBuilder;
    //   768: ldc_w 664
    //   771: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   774: pop
    //   775: aload 5
    //   777: ldc_w 666
    //   780: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   783: dload 57
    //   785: invokevirtual 662	java/lang/StringBuilder:append	(D)Ljava/lang/StringBuilder;
    //   788: ldc_w 668
    //   791: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   794: pop
    //   795: aload 5
    //   797: ldc_w 670
    //   800: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   803: getstatic 92	com/autonavi/aps/api/APSYUNPINGTAI:o	Landroid/location/Location;
    //   806: invokevirtual 674	android/location/Location:getAccuracy	()F
    //   809: invokevirtual 677	java/lang/StringBuilder:append	(F)Ljava/lang/StringBuilder;
    //   812: ldc_w 679
    //   815: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   818: pop
    //   819: aconst_null
    //   820: putstatic 92	com/autonavi/aps/api/APSYUNPINGTAI:o	Landroid/location/Location;
    //   823: getstatic 82	com/autonavi/aps/api/APSYUNPINGTAI:j	Landroid/net/wifi/WifiManager;
    //   826: invokevirtual 387	android/net/wifi/WifiManager:getWifiState	()I
    //   829: iconst_3
    //   830: if_icmpne +180 -> 1010
    //   833: getstatic 105	com/autonavi/aps/api/APSYUNPINGTAI:s	Ljava/util/List;
    //   836: invokeinterface 208 1 0
    //   841: ifle +45 -> 886
    //   844: aload_0
    //   845: getstatic 105	com/autonavi/aps/api/APSYUNPINGTAI:s	Ljava/util/List;
    //   848: invokespecial 681	com/autonavi/aps/api/APSYUNPINGTAI:b	(Ljava/util/List;)Ljava/lang/String;
    //   851: astore 48
    //   853: aload 48
    //   855: ifnull +31 -> 886
    //   858: aload 48
    //   860: invokevirtual 155	java/lang/String:length	()I
    //   863: ifle +23 -> 886
    //   866: aload 5
    //   868: ldc_w 683
    //   871: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   874: aload 48
    //   876: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   879: ldc_w 685
    //   882: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   885: pop
    //   886: getstatic 82	com/autonavi/aps/api/APSYUNPINGTAI:j	Landroid/net/wifi/WifiManager;
    //   889: invokevirtual 391	android/net/wifi/WifiManager:getConnectionInfo	()Landroid/net/wifi/WifiInfo;
    //   892: astore 45
    //   894: aload 45
    //   896: putstatic 122	com/autonavi/aps/api/APSYUNPINGTAI:x	Landroid/net/wifi/WifiInfo;
    //   899: aload 45
    //   901: ifnull +969 -> 1870
    //   904: getstatic 122	com/autonavi/aps/api/APSYUNPINGTAI:x	Landroid/net/wifi/WifiInfo;
    //   907: invokevirtual 690	android/net/wifi/WifiInfo:getBSSID	()Ljava/lang/String;
    //   910: ifnull +960 -> 1870
    //   913: getstatic 105	com/autonavi/aps/api/APSYUNPINGTAI:s	Ljava/util/List;
    //   916: invokeinterface 208 1 0
    //   921: ifgt +46 -> 967
    //   924: aload 5
    //   926: ldc_w 683
    //   929: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   932: getstatic 122	com/autonavi/aps/api/APSYUNPINGTAI:x	Landroid/net/wifi/WifiInfo;
    //   935: invokevirtual 690	android/net/wifi/WifiInfo:getBSSID	()Ljava/lang/String;
    //   938: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   941: ldc 235
    //   943: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   946: getstatic 122	com/autonavi/aps/api/APSYUNPINGTAI:x	Landroid/net/wifi/WifiInfo;
    //   949: invokevirtual 691	android/net/wifi/WifiInfo:getRssi	()I
    //   952: invokevirtual 619	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   955: ldc 230
    //   957: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   960: ldc_w 685
    //   963: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   966: pop
    //   967: aload 5
    //   969: ldc_w 693
    //   972: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   975: getstatic 122	com/autonavi/aps/api/APSYUNPINGTAI:x	Landroid/net/wifi/WifiInfo;
    //   978: invokevirtual 690	android/net/wifi/WifiInfo:getBSSID	()Ljava/lang/String;
    //   981: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   984: ldc 235
    //   986: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   989: getstatic 122	com/autonavi/aps/api/APSYUNPINGTAI:x	Landroid/net/wifi/WifiInfo;
    //   992: invokevirtual 691	android/net/wifi/WifiInfo:getRssi	()I
    //   995: invokevirtual 619	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   998: ldc 230
    //   1000: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1003: ldc_w 695
    //   1006: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1009: pop
    //   1010: aload 5
    //   1012: ldc_w 697
    //   1015: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1018: invokestatic 699	com/autonavi/aps/api/APSYUNPINGTAI:getCurrenttime	()Ljava/lang/String;
    //   1021: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1024: ldc_w 701
    //   1027: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1030: pop
    //   1031: aload 5
    //   1033: ldc_w 703
    //   1036: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1039: pop
    //   1040: new 705	com/autonavi/aps/api/ApsRequest
    //   1043: dup
    //   1044: invokespecial 706	com/autonavi/aps/api/ApsRequest:<init>	()V
    //   1047: aload 5
    //   1049: invokevirtual 180	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1052: invokevirtual 709	com/autonavi/aps/api/ApsRequest:convertApsRequestXml	(Ljava/lang/String;)Ljava/lang/String;
    //   1055: astore 34
    //   1057: aload 5
    //   1059: iconst_0
    //   1060: aload 5
    //   1062: invokevirtual 710	java/lang/StringBuilder:length	()I
    //   1065: invokevirtual 714	java/lang/StringBuilder:delete	(II)Ljava/lang/StringBuilder;
    //   1068: pop
    //   1069: aload 5
    //   1071: aload 34
    //   1073: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1076: pop
    //   1077: new 169	java/lang/StringBuilder
    //   1080: dup
    //   1081: ldc_w 716
    //   1084: invokespecial 172	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1087: aload 5
    //   1089: invokevirtual 180	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1092: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1095: invokevirtual 180	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1098: invokestatic 185	com/autonavi/aps/api/Utils:writeLogCat	(Ljava/lang/String;)V
    //   1101: ldc_w 718
    //   1104: invokestatic 185	com/autonavi/aps/api/Utils:writeLogCat	(Ljava/lang/String;)V
    //   1107: invokestatic 723	com/autonavi/aps/api/Storage:getInstance	()Lcom/autonavi/aps/api/Storage;
    //   1110: aload 5
    //   1112: invokevirtual 180	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1115: invokevirtual 726	com/autonavi/aps/api/Storage:writeLog	(Ljava/lang/String;)V
    //   1118: new 169	java/lang/StringBuilder
    //   1121: dup
    //   1122: invokespecial 505	java/lang/StringBuilder:<init>	()V
    //   1125: astore 37
    //   1127: aload 37
    //   1129: ldc_w 507
    //   1132: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1135: pop
    //   1136: aload 37
    //   1138: ldc_w 728
    //   1141: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1144: pop
    //   1145: aload 37
    //   1147: ldc_w 515
    //   1150: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1153: aload_0
    //   1154: invokevirtual 480	com/autonavi/aps/api/APSYUNPINGTAI:getProductName	()Ljava/lang/String;
    //   1157: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1160: ldc_w 517
    //   1163: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1166: pop
    //   1167: aload 37
    //   1169: ldc_w 730
    //   1172: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1175: getstatic 114	com/autonavi/aps/api/APSYUNPINGTAI:t	Lcom/autonavi/aps/api/Des;
    //   1178: aload 5
    //   1180: invokevirtual 180	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1183: invokevirtual 733	com/autonavi/aps/api/Des:encrypt	(Ljava/lang/String;)Ljava/lang/String;
    //   1186: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1189: ldc_w 735
    //   1192: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1195: pop
    //   1196: aload 37
    //   1198: ldc_w 737
    //   1201: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1204: pop
    //   1205: aload 5
    //   1207: iconst_0
    //   1208: aload 5
    //   1210: invokevirtual 710	java/lang/StringBuilder:length	()I
    //   1213: invokevirtual 714	java/lang/StringBuilder:delete	(II)Ljava/lang/StringBuilder;
    //   1216: pop
    //   1217: new 169	java/lang/StringBuilder
    //   1220: dup
    //   1221: ldc_w 739
    //   1224: invokespecial 172	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1227: aload 37
    //   1229: invokevirtual 180	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1232: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1235: invokevirtual 180	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1238: invokestatic 185	com/autonavi/aps/api/Utils:writeLogCat	(Ljava/lang/String;)V
    //   1241: aload 37
    //   1243: invokevirtual 180	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1246: astore_1
    //   1247: goto -1204 -> 43
    //   1250: iload 73
    //   1252: iconst_1
    //   1253: if_icmple +11 -> 1264
    //   1256: aload 72
    //   1258: ldc 230
    //   1260: invokevirtual 233	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   1263: pop
    //   1264: getstatic 101	com/autonavi/aps/api/APSYUNPINGTAI:q	Ljava/util/ArrayList;
    //   1267: iload 73
    //   1269: invokevirtual 599	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   1272: checkcast 257	com/autonavi/aps/api/GsmCellBean
    //   1275: astore 75
    //   1277: aload 72
    //   1279: aload 75
    //   1281: invokevirtual 611	com/autonavi/aps/api/GsmCellBean:getMnc	()Ljava/lang/String;
    //   1284: invokevirtual 233	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   1287: ldc 235
    //   1289: invokevirtual 233	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   1292: aload 75
    //   1294: invokevirtual 616	com/autonavi/aps/api/GsmCellBean:getLac	()I
    //   1297: invokevirtual 238	java/lang/StringBuffer:append	(I)Ljava/lang/StringBuffer;
    //   1300: ldc 235
    //   1302: invokevirtual 233	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   1305: aload 75
    //   1307: invokevirtual 626	com/autonavi/aps/api/GsmCellBean:getCellid	()I
    //   1310: invokevirtual 238	java/lang/StringBuffer:append	(I)Ljava/lang/StringBuffer;
    //   1313: ldc 235
    //   1315: invokevirtual 233	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   1318: aload 75
    //   1320: invokevirtual 633	com/autonavi/aps/api/GsmCellBean:getSignal	()I
    //   1323: invokevirtual 238	java/lang/StringBuffer:append	(I)Ljava/lang/StringBuffer;
    //   1326: pop
    //   1327: iinc 73 1
    //   1330: goto -676 -> 654
    //   1333: getstatic 78	com/autonavi/aps/api/APSYUNPINGTAI:h	I
    //   1336: iconst_2
    //   1337: if_icmpne -649 -> 688
    //   1340: aload 5
    //   1342: ldc_w 741
    //   1345: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1348: pop
    //   1349: getstatic 103	com/autonavi/aps/api/APSYUNPINGTAI:r	Ljava/util/ArrayList;
    //   1352: invokevirtual 598	java/util/ArrayList:size	()I
    //   1355: ifle -667 -> 688
    //   1358: getstatic 103	com/autonavi/aps/api/APSYUNPINGTAI:r	Ljava/util/ArrayList;
    //   1361: iconst_0
    //   1362: invokevirtual 599	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   1365: checkcast 308	com/autonavi/aps/api/CdmaCellBean
    //   1368: astore 17
    //   1370: aload 5
    //   1372: ldc_w 601
    //   1375: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1378: aload 17
    //   1380: invokevirtual 742	com/autonavi/aps/api/CdmaCellBean:getMcc	()Ljava/lang/String;
    //   1383: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1386: ldc_w 606
    //   1389: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1392: pop
    //   1393: aload 5
    //   1395: ldc_w 744
    //   1398: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1401: aload 17
    //   1403: invokevirtual 747	com/autonavi/aps/api/CdmaCellBean:getSid	()I
    //   1406: invokevirtual 619	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1409: ldc_w 749
    //   1412: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1415: pop
    //   1416: aload 5
    //   1418: ldc_w 751
    //   1421: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1424: aload 17
    //   1426: invokevirtual 754	com/autonavi/aps/api/CdmaCellBean:getNid	()I
    //   1429: invokevirtual 619	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1432: ldc_w 756
    //   1435: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1438: pop
    //   1439: aload 5
    //   1441: ldc_w 758
    //   1444: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1447: aload 17
    //   1449: invokevirtual 761	com/autonavi/aps/api/CdmaCellBean:getBid	()I
    //   1452: invokevirtual 619	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1455: ldc_w 763
    //   1458: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1461: pop
    //   1462: aload 5
    //   1464: ldc_w 765
    //   1467: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1470: aload 17
    //   1472: invokevirtual 768	com/autonavi/aps/api/CdmaCellBean:getLon	()I
    //   1475: invokevirtual 619	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1478: ldc_w 770
    //   1481: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1484: pop
    //   1485: aload 5
    //   1487: ldc_w 772
    //   1490: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1493: aload 17
    //   1495: invokevirtual 775	com/autonavi/aps/api/CdmaCellBean:getLat	()I
    //   1498: invokevirtual 619	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1501: ldc_w 777
    //   1504: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1507: pop
    //   1508: aload 5
    //   1510: ldc_w 630
    //   1513: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1516: aload 17
    //   1518: invokevirtual 778	com/autonavi/aps/api/CdmaCellBean:getSignal	()I
    //   1521: invokevirtual 619	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1524: ldc_w 635
    //   1527: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1530: pop
    //   1531: getstatic 103	com/autonavi/aps/api/APSYUNPINGTAI:r	Ljava/util/ArrayList;
    //   1534: invokevirtual 598	java/util/ArrayList:size	()I
    //   1537: iconst_1
    //   1538: if_icmple -850 -> 688
    //   1541: new 214	java/lang/StringBuffer
    //   1544: dup
    //   1545: invokespecial 215	java/lang/StringBuffer:<init>	()V
    //   1548: astore 25
    //   1550: iconst_1
    //   1551: istore 26
    //   1553: iload 26
    //   1555: getstatic 103	com/autonavi/aps/api/APSYUNPINGTAI:r	Ljava/util/ArrayList;
    //   1558: invokevirtual 598	java/util/ArrayList:size	()I
    //   1561: if_icmplt +44 -> 1605
    //   1564: aload 5
    //   1566: new 169	java/lang/StringBuilder
    //   1569: dup
    //   1570: ldc_w 637
    //   1573: invokespecial 172	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1576: aload 25
    //   1578: invokevirtual 216	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   1581: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1584: ldc_w 639
    //   1587: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1590: invokevirtual 180	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1593: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1596: pop
    //   1597: goto -909 -> 688
    //   1600: astore_2
    //   1601: aload_0
    //   1602: monitorexit
    //   1603: aload_2
    //   1604: athrow
    //   1605: iload 26
    //   1607: iconst_1
    //   1608: if_icmple +11 -> 1619
    //   1611: aload 25
    //   1613: ldc 230
    //   1615: invokevirtual 233	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   1618: pop
    //   1619: getstatic 103	com/autonavi/aps/api/APSYUNPINGTAI:r	Ljava/util/ArrayList;
    //   1622: iload 26
    //   1624: invokevirtual 599	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   1627: checkcast 308	com/autonavi/aps/api/CdmaCellBean
    //   1630: astore 27
    //   1632: aload 25
    //   1634: aload 27
    //   1636: invokevirtual 747	com/autonavi/aps/api/CdmaCellBean:getSid	()I
    //   1639: invokevirtual 238	java/lang/StringBuffer:append	(I)Ljava/lang/StringBuffer;
    //   1642: ldc 235
    //   1644: invokevirtual 233	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   1647: aload 27
    //   1649: invokevirtual 754	com/autonavi/aps/api/CdmaCellBean:getNid	()I
    //   1652: invokevirtual 238	java/lang/StringBuffer:append	(I)Ljava/lang/StringBuffer;
    //   1655: ldc 235
    //   1657: invokevirtual 233	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   1660: aload 27
    //   1662: invokevirtual 761	com/autonavi/aps/api/CdmaCellBean:getBid	()I
    //   1665: invokevirtual 238	java/lang/StringBuffer:append	(I)Ljava/lang/StringBuffer;
    //   1668: ldc 235
    //   1670: invokevirtual 233	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   1673: aload 27
    //   1675: invokevirtual 778	com/autonavi/aps/api/CdmaCellBean:getSignal	()I
    //   1678: invokevirtual 238	java/lang/StringBuffer:append	(I)Ljava/lang/StringBuffer;
    //   1681: pop
    //   1682: iinc 26 1
    //   1685: goto -132 -> 1553
    //   1688: getstatic 86	com/autonavi/aps/api/APSYUNPINGTAI:l	Landroid/location/LocationManager;
    //   1691: ifnull -868 -> 823
    //   1694: getstatic 86	com/autonavi/aps/api/APSYUNPINGTAI:l	Landroid/location/LocationManager;
    //   1697: ldc_w 780
    //   1700: invokevirtual 643	android/location/LocationManager:isProviderEnabled	(Ljava/lang/String;)Z
    //   1703: ifeq -880 -> 823
    //   1706: getstatic 88	com/autonavi/aps/api/APSYUNPINGTAI:m	Landroid/location/LocationListener;
    //   1709: ifnull -886 -> 823
    //   1712: ldc_w 782
    //   1715: invokestatic 185	com/autonavi/aps/api/Utils:writeLogCat	(Ljava/lang/String;)V
    //   1718: getstatic 86	com/autonavi/aps/api/APSYUNPINGTAI:l	Landroid/location/LocationManager;
    //   1721: ldc_w 780
    //   1724: ldc2_w 783
    //   1727: fconst_0
    //   1728: getstatic 88	com/autonavi/aps/api/APSYUNPINGTAI:m	Landroid/location/LocationListener;
    //   1731: invokestatic 456	android/os/Looper:getMainLooper	()Landroid/os/Looper;
    //   1734: invokevirtual 462	android/location/LocationManager:requestLocationUpdates	(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
    //   1737: ldc_w 786
    //   1740: invokestatic 185	com/autonavi/aps/api/Utils:writeLogCat	(Ljava/lang/String;)V
    //   1743: ldc2_w 787
    //   1746: invokestatic 793	java/lang/Thread:sleep	(J)V
    //   1749: getstatic 94	com/autonavi/aps/api/APSYUNPINGTAI:p	Landroid/location/Location;
    //   1752: ifnull +86 -> 1838
    //   1755: getstatic 94	com/autonavi/aps/api/APSYUNPINGTAI:p	Landroid/location/Location;
    //   1758: invokevirtual 648	android/location/Location:getLatitude	()D
    //   1761: dstore 50
    //   1763: getstatic 94	com/autonavi/aps/api/APSYUNPINGTAI:p	Landroid/location/Location;
    //   1766: invokevirtual 651	android/location/Location:getLongitude	()D
    //   1769: dstore 52
    //   1771: dload 50
    //   1773: ldc2_w 652
    //   1776: dcmpl
    //   1777: ifle +61 -> 1838
    //   1780: dload 52
    //   1782: ldc2_w 654
    //   1785: dcmpl
    //   1786: ifle +52 -> 1838
    //   1789: aload 5
    //   1791: ldc_w 795
    //   1794: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1797: pop
    //   1798: aload 5
    //   1800: ldc_w 659
    //   1803: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1806: dload 52
    //   1808: invokevirtual 662	java/lang/StringBuilder:append	(D)Ljava/lang/StringBuilder;
    //   1811: ldc_w 664
    //   1814: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1817: pop
    //   1818: aload 5
    //   1820: ldc_w 666
    //   1823: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1826: dload 50
    //   1828: invokevirtual 662	java/lang/StringBuilder:append	(D)Ljava/lang/StringBuilder;
    //   1831: ldc_w 668
    //   1834: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1837: pop
    //   1838: ldc_w 797
    //   1841: invokestatic 185	com/autonavi/aps/api/Utils:writeLogCat	(Ljava/lang/String;)V
    //   1844: aconst_null
    //   1845: putstatic 94	com/autonavi/aps/api/APSYUNPINGTAI:p	Landroid/location/Location;
    //   1848: getstatic 86	com/autonavi/aps/api/APSYUNPINGTAI:l	Landroid/location/LocationManager;
    //   1851: getstatic 88	com/autonavi/aps/api/APSYUNPINGTAI:m	Landroid/location/LocationListener;
    //   1854: invokevirtual 468	android/location/LocationManager:removeUpdates	(Landroid/location/LocationListener;)V
    //   1857: goto -1034 -> 823
    //   1860: astore 31
    //   1862: aload 31
    //   1864: invokestatic 348	com/autonavi/aps/api/Utils:printException	(Ljava/lang/Exception;)V
    //   1867: goto -118 -> 1749
    //   1870: getstatic 122	com/autonavi/aps/api/APSYUNPINGTAI:x	Landroid/net/wifi/WifiInfo;
    //   1873: ifnull -863 -> 1010
    //   1876: getstatic 122	com/autonavi/aps/api/APSYUNPINGTAI:x	Landroid/net/wifi/WifiInfo;
    //   1879: invokevirtual 690	android/net/wifi/WifiInfo:getBSSID	()Ljava/lang/String;
    //   1882: ifnonnull -872 -> 1010
    //   1885: ldc_w 799
    //   1888: invokestatic 185	com/autonavi/aps/api/Utils:writeLogCat	(Ljava/lang/String;)V
    //   1891: goto -881 -> 1010
    //   1894: astore 41
    //   1896: aload 41
    //   1898: invokestatic 348	com/autonavi/aps/api/Utils:printException	(Ljava/lang/Exception;)V
    //   1901: goto -705 -> 1196
    //
    // Exception table:
    //   from	to	target	type
    //   4	17	1600	finally
    //   17	23	1600	finally
    //   23	37	1600	finally
    //   37	43	1600	finally
    //   47	68	1600	finally
    //   68	72	1600	finally
    //   79	87	1600	finally
    //   87	101	1600	finally
    //   101	256	1600	finally
    //   261	342	1600	finally
    //   342	471	1600	finally
    //   471	651	1600	finally
    //   654	688	1600	finally
    //   688	728	1600	finally
    //   746	819	1600	finally
    //   819	823	1600	finally
    //   823	853	1600	finally
    //   858	886	1600	finally
    //   886	899	1600	finally
    //   904	967	1600	finally
    //   967	1010	1600	finally
    //   1010	1167	1600	finally
    //   1167	1196	1600	finally
    //   1196	1247	1600	finally
    //   1256	1264	1600	finally
    //   1264	1327	1600	finally
    //   1333	1550	1600	finally
    //   1553	1597	1600	finally
    //   1611	1619	1600	finally
    //   1619	1682	1600	finally
    //   1688	1737	1600	finally
    //   1737	1749	1600	finally
    //   1749	1771	1600	finally
    //   1789	1838	1600	finally
    //   1838	1857	1600	finally
    //   1862	1867	1600	finally
    //   1870	1891	1600	finally
    //   1896	1901	1600	finally
    //   1737	1749	1860	java/lang/InterruptedException
    //   1167	1196	1894	java/lang/Exception
  }

  protected void finalize()
  {
    try
    {
      super.finalize();
      return;
    }
    catch (Exception localException)
    {
      Utils.printException(localException);
      return;
    }
    catch (Throwable localThrowable)
    {
      Utils.printThrowable(localThrowable);
    }
  }

  public Location getCurrentLocation(android.location.Location paramLocation)
  {
    long l1 = System.currentTimeMillis() - A;
    if (l1 < 2000L)
    {
      Utils.writeLogCat("block frequent request, return last location, duration is " + String.valueOf(l1) + " milliseconds");
      return z;
    }
    StringBuilder localStringBuilder = new StringBuilder("start new request, duration is ");
    if (A < Double.parseDouble("1.0"));
    String str2;
    for (String str1 = "0 (the very first request)"; ; str1 = String.valueOf(l1))
    {
      Utils.writeLogCat(str1 + " milliseconds");
      if (!B)
        o = paramLocation;
      str2 = j();
      if ((!str2.equalsIgnoreCase(y)) || (z == null))
        break;
      Utils.writeLogCat("same request, direct return");
      return z;
    }
    y = str2;
    Location localLocation = a(y);
    z = localLocation;
    double d1;
    double d2;
    if ((localLocation != null) && (o != null))
    {
      d1 = o.getLatitude();
      d2 = o.getLongitude();
      z.setRawx(d2);
      z.setRawy(d1);
    }
    try
    {
      float[] arrayOfFloat = new float[1];
      android.location.Location.distanceBetween(d1, d2, z.getCeny(), z.getCenx(), arrayOfFloat);
      z.setRawd(arrayOfFloat[0]);
      A = System.currentTimeMillis();
      if (z != null)
        Storage.getInstance().writeLog(z.toString().replace("\n", "#"));
      return z;
    }
    catch (Exception localException)
    {
      while (true)
        Utils.printException(localException);
    }
  }

  public String getKey()
  {
    return c;
  }

  public String getPackageName()
  {
    return d;
  }

  public String getProductName()
  {
    return b;
  }

  public String getVersion()
  {
    return "1.0.201301061713";
  }

  public void onDestroy()
  {
    Utils.writeLogCat("ondestroy");
    try
    {
      if ((f != null) && (w != null))
        f.unregisterReceiver(w);
    }
    catch (Exception localException3)
    {
      try
      {
        if (m != null)
          l.removeUpdates(m);
        m = null;
      }
      catch (Exception localException3)
      {
        try
        {
          if (n != null)
            l.removeUpdates(n);
          n = null;
        }
        catch (Exception localException3)
        {
          try
          {
            while (true)
            {
              if (k != null)
                k.listen(u, 0);
              u = null;
              q.clear();
              r.clear();
              s.clear();
              x = null;
              k = null;
              if (e != null)
                e.finalize();
              A = 0L;
              y = null;
              z = null;
              C = false;
              o = null;
              p = null;
              e = null;
              System.gc();
              return;
              localException1 = localException1;
              Utils.printException(localException1);
              continue;
              localException2 = localException2;
              Utils.printException(localException2);
            }
            localException3 = localException3;
            Utils.printException(localException3);
          }
          catch (Exception localException4)
          {
            while (true)
              Utils.printException(localException4);
          }
        }
      }
    }
  }

  public void setKey(String paramString)
  {
    c = paramString;
  }

  public void setLicence(String paramString)
  {
    a = paramString;
  }

  public void setOpenGps(boolean paramBoolean)
  {
    if (paramBoolean != B)
    {
      if (C)
      {
        Utils.writeLogCat("gps status change command is pending");
        return;
      }
      C = true;
      h();
      return;
    }
    if (C)
    {
      Utils.writeLogCat("gps status change command is pending");
      return;
    }
    Utils.writeLogCat("block same gps status change command");
  }

  public void setOpenSystemNetworkLocation(boolean paramBoolean)
  {
    if (D != paramBoolean)
    {
      D = paramBoolean;
      if (paramBoolean)
        i();
    }
    else
    {
      return;
    }
    Utils.writeLogCat("close system network listener");
    try
    {
      if (m != null)
        l.removeUpdates(m);
      Utils.writeLogCat("start system network listener");
      m = null;
      return;
    }
    catch (Exception localException)
    {
      while (true)
        Utils.printException(localException);
    }
  }

  public void setPackageName(String paramString)
  {
    d = paramString;
  }

  public void setProductName(String paramString)
  {
    b = paramString;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.autonavi.aps.api.APSYUNPINGTAI
 * JD-Core Version:    0.6.0
 */