package com.autonavi.amap.mapcore;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.zip.GZIPInputStream;

public class MapLoader
{
  long createtime;
  int datasource = 0;
  boolean inRequest = false;
  boolean mCanceled = false;
  BaseMapCallImplement mMapCallback;
  MapCore mMapCore;
  int mapLevel;
  public ArrayList<MapSourceGridData> mapTiles = new ArrayList();
  int nextImgDataLength = 0;
  byte[] recievedDataBuffer;
  int recievedDataSize = 0;
  boolean recievedHeader = false;

  public MapLoader(BaseMapCallImplement paramBaseMapCallImplement, MapCore paramMapCore, int paramInt)
  {
    this.mMapCallback = paramBaseMapCallImplement;
    this.datasource = paramInt;
    this.mMapCore = paramMapCore;
    this.createtime = System.currentTimeMillis();
  }

  private void processRecivedData()
  {
    if (this.nextImgDataLength == 0)
      if (this.recievedDataSize >= 8)
      {
        this.nextImgDataLength = (8 + Convert.getInt(this.recievedDataBuffer, 0));
        processRecivedData();
      }
    do
      return;
    while (this.recievedDataSize < this.nextImgDataLength);
    int i = Convert.getInt(this.recievedDataBuffer, 0);
    int j = Convert.getInt(this.recievedDataBuffer, 4);
    if (j == 0)
      if (this.datasource == 2)
        processRecivedTileDataBmp(this.recievedDataBuffer, 8, i + 8);
    while (true)
    {
      Convert.moveArray(this.recievedDataBuffer, this.nextImgDataLength, this.recievedDataBuffer, 0, this.recievedDataSize - this.nextImgDataLength);
      this.recievedDataSize -= this.nextImgDataLength;
      this.nextImgDataLength = 0;
      processRecivedData();
      return;
      if (this.datasource == 4)
      {
        processRecivedTileDataVTmc(this.recievedDataBuffer, 8, i + 8);
        continue;
      }
      if (this.datasource == 6)
      {
        processRecivedModels(this.recievedDataBuffer, 8, i + 8);
        continue;
      }
      processRecivedTileData(this.recievedDataBuffer, 8, i + 8);
      continue;
      ByteArrayOutputStream localByteArrayOutputStream;
      try
      {
        GZIPInputStream localGZIPInputStream = new GZIPInputStream(new ByteArrayInputStream(this.recievedDataBuffer, 8, i));
        localByteArrayOutputStream = new ByteArrayOutputStream();
        byte[] arrayOfByte = new byte[''];
        while (true)
        {
          int k = localGZIPInputStream.read(arrayOfByte);
          if (k <= -1)
            break;
          localByteArrayOutputStream.write(arrayOfByte, 0, k);
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
      continue;
      processRecivedTileData(localByteArrayOutputStream.toByteArray(), 0, j);
    }
  }

  public void OnException(int paramInt)
  {
    if ((this.datasource != 4) && (this.datasource != 1))
      this.mMapCallback.OnMapLoaderError(paramInt);
  }

  public void addReuqestTiles(MapSourceGridData paramMapSourceGridData)
  {
    this.mapTiles.add(paramMapSourceGridData);
  }

  public void destory()
  {
    this.mapTiles.clear();
    this.mapTiles = null;
    this.recievedDataBuffer = null;
    VTMCDataCache.vtmcHs.clear();
    VTMCDataCache.vtmcList.clear();
  }

  // ERROR //
  public void doRequest()
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_1
    //   2: aload_0
    //   3: iconst_1
    //   4: putfield 44	com/autonavi/amap/mapcore/MapLoader:inRequest	Z
    //   7: aload_0
    //   8: invokevirtual 150	com/autonavi/amap/mapcore/MapLoader:isRequestValid	()Z
    //   11: ifne +9 -> 20
    //   14: aload_0
    //   15: aload_0
    //   16: invokevirtual 154	com/autonavi/amap/mapcore/MapLoader:onConnectionOver	(Lcom/autonavi/amap/mapcore/MapLoader;)V
    //   19: return
    //   20: aload_0
    //   21: getfield 48	com/autonavi/amap/mapcore/MapLoader:mMapCallback	Lcom/autonavi/amap/mapcore/BaseMapCallImplement;
    //   24: invokevirtual 158	com/autonavi/amap/mapcore/BaseMapCallImplement:getContext	()Landroid/content/Context;
    //   27: ldc 160
    //   29: invokevirtual 166	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   32: checkcast 168	android/net/ConnectivityManager
    //   35: invokevirtual 172	android/net/ConnectivityManager:getActiveNetworkInfo	()Landroid/net/NetworkInfo;
    //   38: astore_2
    //   39: aload_2
    //   40: ifnull +534 -> 574
    //   43: aload_2
    //   44: invokevirtual 178	android/net/NetworkInfo:getType	()I
    //   47: iconst_1
    //   48: if_icmpne +300 -> 348
    //   51: aload_0
    //   52: getfield 48	com/autonavi/amap/mapcore/MapLoader:mMapCallback	Lcom/autonavi/amap/mapcore/BaseMapCallImplement;
    //   55: invokevirtual 158	com/autonavi/amap/mapcore/BaseMapCallImplement:getContext	()Landroid/content/Context;
    //   58: invokestatic 184	android/net/Proxy:getHost	(Landroid/content/Context;)Ljava/lang/String;
    //   61: astore 29
    //   63: aload_0
    //   64: getfield 48	com/autonavi/amap/mapcore/MapLoader:mMapCallback	Lcom/autonavi/amap/mapcore/BaseMapCallImplement;
    //   67: invokevirtual 158	com/autonavi/amap/mapcore/BaseMapCallImplement:getContext	()Landroid/content/Context;
    //   70: invokestatic 188	android/net/Proxy:getPort	(Landroid/content/Context;)I
    //   73: istore 30
    //   75: aload 29
    //   77: astore 5
    //   79: iload 30
    //   81: istore 4
    //   83: aconst_null
    //   84: astore_3
    //   85: new 190	org/apache/http/params/BasicHttpParams
    //   88: dup
    //   89: invokespecial 191	org/apache/http/params/BasicHttpParams:<init>	()V
    //   92: astore 6
    //   94: aload 6
    //   96: sipush 10000
    //   99: invokestatic 197	org/apache/http/params/HttpConnectionParams:setConnectionTimeout	(Lorg/apache/http/params/HttpParams;I)V
    //   102: aload 6
    //   104: ldc 198
    //   106: invokestatic 201	org/apache/http/params/HttpConnectionParams:setSoTimeout	(Lorg/apache/http/params/HttpParams;I)V
    //   109: new 203	org/apache/http/impl/client/DefaultHttpClient
    //   112: dup
    //   113: aload 6
    //   115: invokespecial 206	org/apache/http/impl/client/DefaultHttpClient:<init>	(Lorg/apache/http/params/HttpParams;)V
    //   118: astore 16
    //   120: aload_3
    //   121: ifnull +33 -> 154
    //   124: new 208	org/apache/http/HttpHost
    //   127: dup
    //   128: aload 5
    //   130: iload 4
    //   132: invokespecial 211	org/apache/http/HttpHost:<init>	(Ljava/lang/String;I)V
    //   135: astore 17
    //   137: aload 16
    //   139: invokeinterface 217 1 0
    //   144: ldc 219
    //   146: aload 17
    //   148: invokeinterface 225 3 0
    //   153: pop
    //   154: new 227	java/lang/StringBuilder
    //   157: dup
    //   158: invokespecial 228	java/lang/StringBuilder:<init>	()V
    //   161: ldc 230
    //   163: invokevirtual 234	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   166: aload_0
    //   167: invokevirtual 238	com/autonavi/amap/mapcore/MapLoader:getGridParma	()Ljava/lang/String;
    //   170: invokevirtual 234	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   173: invokevirtual 241	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   176: astore 19
    //   178: new 243	org/apache/http/client/methods/HttpGet
    //   181: dup
    //   182: new 227	java/lang/StringBuilder
    //   185: dup
    //   186: invokespecial 228	java/lang/StringBuilder:<init>	()V
    //   189: aload_0
    //   190: getfield 48	com/autonavi/amap/mapcore/MapLoader:mMapCallback	Lcom/autonavi/amap/mapcore/BaseMapCallImplement;
    //   193: invokevirtual 246	com/autonavi/amap/mapcore/BaseMapCallImplement:getMapSvrAddress	()Ljava/lang/String;
    //   196: invokevirtual 234	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   199: ldc 248
    //   201: invokevirtual 234	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   204: aload 19
    //   206: invokevirtual 234	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   209: invokevirtual 241	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   212: invokespecial 251	org/apache/http/client/methods/HttpGet:<init>	(Ljava/lang/String;)V
    //   215: astore 20
    //   217: aload 16
    //   219: ifnull +240 -> 459
    //   222: aload 16
    //   224: aload 20
    //   226: invokeinterface 255 2 0
    //   231: astore 21
    //   233: sipush 200
    //   236: aload 21
    //   238: invokeinterface 261 1 0
    //   243: invokeinterface 266 1 0
    //   248: if_icmpne +201 -> 449
    //   251: aload 21
    //   253: invokeinterface 270 1 0
    //   258: invokeinterface 276 1 0
    //   263: astore 24
    //   265: aload 24
    //   267: astore 12
    //   269: aload_0
    //   270: aload_0
    //   271: invokevirtual 279	com/autonavi/amap/mapcore/MapLoader:onConnectionOpened	(Lcom/autonavi/amap/mapcore/MapLoader;)V
    //   274: sipush 2048
    //   277: newarray byte
    //   279: astore 26
    //   281: aload 12
    //   283: aload 26
    //   285: invokevirtual 282	java/io/InputStream:read	([B)I
    //   288: istore 27
    //   290: iload 27
    //   292: iconst_m1
    //   293: if_icmple +21 -> 314
    //   296: aload_0
    //   297: invokevirtual 150	com/autonavi/amap/mapcore/MapLoader:isRequestValid	()Z
    //   300: ifeq +14 -> 314
    //   303: aload_0
    //   304: getfield 36	com/autonavi/amap/mapcore/MapLoader:mCanceled	Z
    //   307: istore 28
    //   309: iload 28
    //   311: ifeq +77 -> 388
    //   314: aload_0
    //   315: aload_0
    //   316: invokevirtual 154	com/autonavi/amap/mapcore/MapLoader:onConnectionOver	(Lcom/autonavi/amap/mapcore/MapLoader;)V
    //   319: iconst_0
    //   320: ifeq +7 -> 327
    //   323: aconst_null
    //   324: invokevirtual 287	java/io/OutputStream:close	()V
    //   327: aload 12
    //   329: ifnull -310 -> 19
    //   332: aload 12
    //   334: invokevirtual 288	java/io/InputStream:close	()V
    //   337: return
    //   338: astore 22
    //   340: aload_0
    //   341: sipush 1002
    //   344: invokevirtual 290	com/autonavi/amap/mapcore/MapLoader:OnException	(I)V
    //   347: return
    //   348: invokestatic 293	android/net/Proxy:getDefaultHost	()Ljava/lang/String;
    //   351: astore 5
    //   353: invokestatic 296	android/net/Proxy:getDefaultPort	()I
    //   356: istore 4
    //   358: aload 5
    //   360: ifnull +209 -> 569
    //   363: new 298	java/net/Proxy
    //   366: dup
    //   367: getstatic 304	java/net/Proxy$Type:HTTP	Ljava/net/Proxy$Type;
    //   370: new 306	java/net/InetSocketAddress
    //   373: dup
    //   374: aload 5
    //   376: iload 4
    //   378: invokespecial 307	java/net/InetSocketAddress:<init>	(Ljava/lang/String;I)V
    //   381: invokespecial 310	java/net/Proxy:<init>	(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V
    //   384: astore_3
    //   385: goto -300 -> 85
    //   388: iload_1
    //   389: iload 27
    //   391: iadd
    //   392: istore_1
    //   393: aload_0
    //   394: aload_0
    //   395: iconst_0
    //   396: aload 26
    //   398: iload 27
    //   400: invokevirtual 314	com/autonavi/amap/mapcore/MapLoader:onConnectionRecieveData	(Lcom/autonavi/amap/mapcore/MapLoader;I[BI)V
    //   403: goto -122 -> 281
    //   406: astore 25
    //   408: aload_0
    //   409: sipush 1002
    //   412: invokevirtual 290	com/autonavi/amap/mapcore/MapLoader:OnException	(I)V
    //   415: aload_0
    //   416: aload_0
    //   417: invokevirtual 154	com/autonavi/amap/mapcore/MapLoader:onConnectionOver	(Lcom/autonavi/amap/mapcore/MapLoader;)V
    //   420: iconst_0
    //   421: ifeq +7 -> 428
    //   424: aconst_null
    //   425: invokevirtual 287	java/io/OutputStream:close	()V
    //   428: aload 12
    //   430: ifnull -411 -> 19
    //   433: aload 12
    //   435: invokevirtual 288	java/io/InputStream:close	()V
    //   438: return
    //   439: astore 14
    //   441: aload_0
    //   442: sipush 1002
    //   445: invokevirtual 290	com/autonavi/amap/mapcore/MapLoader:OnException	(I)V
    //   448: return
    //   449: aload_0
    //   450: sipush 1002
    //   453: invokevirtual 290	com/autonavi/amap/mapcore/MapLoader:OnException	(I)V
    //   456: goto +129 -> 585
    //   459: aload_0
    //   460: sipush 1002
    //   463: invokevirtual 290	com/autonavi/amap/mapcore/MapLoader:OnException	(I)V
    //   466: goto +119 -> 585
    //   469: astore 11
    //   471: aconst_null
    //   472: astore 12
    //   474: goto -66 -> 408
    //   477: astore 23
    //   479: aload_0
    //   480: sipush 1002
    //   483: invokevirtual 290	com/autonavi/amap/mapcore/MapLoader:OnException	(I)V
    //   486: goto -159 -> 327
    //   489: astore 15
    //   491: aload_0
    //   492: sipush 1002
    //   495: invokevirtual 290	com/autonavi/amap/mapcore/MapLoader:OnException	(I)V
    //   498: goto -70 -> 428
    //   501: astore 7
    //   503: aconst_null
    //   504: astore 8
    //   506: aload_0
    //   507: aload_0
    //   508: invokevirtual 154	com/autonavi/amap/mapcore/MapLoader:onConnectionOver	(Lcom/autonavi/amap/mapcore/MapLoader;)V
    //   511: iconst_0
    //   512: ifeq +7 -> 519
    //   515: aconst_null
    //   516: invokevirtual 287	java/io/OutputStream:close	()V
    //   519: aload 8
    //   521: ifnull +8 -> 529
    //   524: aload 8
    //   526: invokevirtual 288	java/io/InputStream:close	()V
    //   529: aload 7
    //   531: athrow
    //   532: astore 10
    //   534: aload_0
    //   535: sipush 1002
    //   538: invokevirtual 290	com/autonavi/amap/mapcore/MapLoader:OnException	(I)V
    //   541: goto -22 -> 519
    //   544: astore 9
    //   546: aload_0
    //   547: sipush 1002
    //   550: invokevirtual 290	com/autonavi/amap/mapcore/MapLoader:OnException	(I)V
    //   553: goto -24 -> 529
    //   556: astore 13
    //   558: aload 12
    //   560: astore 8
    //   562: aload 13
    //   564: astore 7
    //   566: goto -60 -> 506
    //   569: aconst_null
    //   570: astore_3
    //   571: goto -486 -> 85
    //   574: aconst_null
    //   575: astore_3
    //   576: iconst_0
    //   577: istore 4
    //   579: aconst_null
    //   580: astore 5
    //   582: goto -497 -> 85
    //   585: aconst_null
    //   586: astore 12
    //   588: goto -274 -> 314
    //
    // Exception table:
    //   from	to	target	type
    //   332	337	338	java/io/IOException
    //   269	281	406	java/io/IOException
    //   281	290	406	java/io/IOException
    //   296	309	406	java/io/IOException
    //   393	403	406	java/io/IOException
    //   433	438	439	java/io/IOException
    //   85	120	469	java/io/IOException
    //   124	154	469	java/io/IOException
    //   154	217	469	java/io/IOException
    //   222	265	469	java/io/IOException
    //   449	456	469	java/io/IOException
    //   459	466	469	java/io/IOException
    //   323	327	477	java/io/IOException
    //   424	428	489	java/io/IOException
    //   85	120	501	finally
    //   124	154	501	finally
    //   154	217	501	finally
    //   222	265	501	finally
    //   449	456	501	finally
    //   459	466	501	finally
    //   515	519	532	java/io/IOException
    //   524	529	544	java/io/IOException
    //   269	281	556	finally
    //   281	290	556	finally
    //   296	309	556	finally
    //   393	403	556	finally
    //   408	415	556	finally
  }

  public String getGridParma()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    for (int i = 0; i < this.mapTiles.size(); i++)
    {
      String str = ((MapSourceGridData)this.mapTiles.get(i)).getGridName();
      localStringBuffer.append(str + ";");
    }
    if (localStringBuffer.length() > 0)
    {
      localStringBuffer.deleteCharAt(-1 + localStringBuffer.length());
      if (this.datasource == 0)
        return "t=VMMV3&cp=1&mesh=" + localStringBuffer.toString();
    }
    else
    {
      return null;
    }
    if (this.datasource == 1)
      return "t=VMMBLDV3&cp=1&mesh=" + localStringBuffer.toString();
    if (this.datasource == 2)
      return "t=BMPBM&mesh=" + localStringBuffer.toString();
    if (this.datasource == 3)
      return "t=BMTI&mesh=" + localStringBuffer.toString();
    if (this.datasource == 4)
      return "t=TMCV&mesh=" + localStringBuffer.toString();
    if (this.datasource == 6)
      return "t=VMMV3&type=mod&cp=0&mid=" + localStringBuffer.toString();
    return null;
  }

  public boolean isRequestValid()
  {
    return this.mMapCallback.isGridsInScreen(this.mapTiles, this.datasource);
  }

  public void onConnectionError(MapLoader paramMapLoader, int paramInt, String paramString)
  {
  }

  public void onConnectionOpened(MapLoader paramMapLoader)
  {
    this.recievedDataBuffer = new byte[262144];
    this.nextImgDataLength = 0;
    this.recievedDataSize = 0;
    this.recievedHeader = false;
  }

  public void onConnectionOver(MapLoader paramMapLoader)
  {
    this.recievedDataBuffer = null;
    this.nextImgDataLength = 0;
    this.recievedDataSize = 0;
    if ((this.mMapCallback == null) || (this.mMapCallback.tileProcessCtrl == null) || (paramMapLoader == null) || (paramMapLoader.mapTiles == null));
    while (true)
    {
      return;
      for (int i = 0; i < paramMapLoader.mapTiles.size(); i++)
      {
        if ((MapSourceGridData)paramMapLoader.mapTiles.get(i) == null)
          continue;
        this.mMapCallback.tileProcessCtrl.a(((MapSourceGridData)paramMapLoader.mapTiles.get(i)).getKeyGridName());
      }
    }
  }

  public void onConnectionRecieveData(MapLoader paramMapLoader, int paramInt1, byte[] paramArrayOfByte, int paramInt2)
  {
    if ((paramMapLoader == null) || (paramArrayOfByte == null));
    while (true)
    {
      return;
      System.arraycopy(paramArrayOfByte, 0, this.recievedDataBuffer, this.recievedDataSize, paramInt2);
      this.recievedDataSize = (paramInt2 + this.recievedDataSize);
      if (this.recievedHeader)
        break;
      if (this.recievedDataSize <= 7)
        continue;
      if (Convert.getInt(this.recievedDataBuffer, 0) != 0)
      {
        paramMapLoader.mCanceled = true;
        return;
      }
      Convert.getInt(this.recievedDataBuffer, 4);
      Convert.moveArray(this.recievedDataBuffer, 8, this.recievedDataBuffer, 0, paramInt2 - 8);
      this.recievedDataSize = (-8 + this.recievedDataSize);
      this.nextImgDataLength = 0;
      this.recievedHeader = true;
      processRecivedData();
    }
    processRecivedData();
  }

  void processRecivedModels(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int i = paramInt1 + 1;
    int j = paramArrayOfByte[paramInt1];
    new String(paramArrayOfByte, i, j);
    (i + j);
    if (!this.mMapCallback.isMapEngineValid())
      return;
    System.arraycopy(paramArrayOfByte, paramInt1, new byte[paramInt2 - paramInt1], 0, paramInt2 - paramInt1);
    this.mMapCore.putMapData(paramArrayOfByte, paramInt1, paramInt2 - paramInt1, this.datasource);
  }

  void processRecivedTileData(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    Convert.getShort(this.recievedDataBuffer, paramInt1);
    int i = paramInt1 + 2;
    Convert.getShort(this.recievedDataBuffer, i);
    int j = i + 2;
    Convert.getInt(this.recievedDataBuffer, j);
    int k = j + 4;
    int m = k + 1;
    int n = paramArrayOfByte[k];
    new String(paramArrayOfByte, m, n);
    (n + m);
    if (!this.mMapCallback.isMapEngineValid())
      return;
    this.mMapCore.putMapData(paramArrayOfByte, paramInt1, paramInt2 - paramInt1, this.datasource);
  }

  void processRecivedTileDataBmp(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    Convert.getInt(this.recievedDataBuffer, paramInt1);
    int i = paramInt1 + 4;
    int j = i + 1;
    int k = paramArrayOfByte[i];
    new String(paramArrayOfByte, j, k);
    (k + j);
    if (!this.mMapCallback.isMapEngineValid())
      return;
    this.mMapCore.putMapData(paramArrayOfByte, paramInt1, paramInt2 - paramInt1, this.datasource);
  }

  void processRecivedTileDataVTmc(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    Convert.getInt(this.recievedDataBuffer, paramInt1);
    int i = paramInt1 + 4;
    int j = i + 1;
    int k = paramArrayOfByte[i];
    String str = new String(paramArrayOfByte, j, k);
    (k + j);
    if (!this.mMapCallback.isMapEngineValid())
      return;
    VTMCDataCache localVTMCDataCache = VTMCDataCache.getInstance();
    byte[] arrayOfByte = new byte[paramInt2 - paramInt1];
    System.arraycopy(paramArrayOfByte, paramInt1, arrayOfByte, 0, paramInt2 - paramInt1);
    localVTMCDataCache.putData(str, arrayOfByte);
    this.mMapCore.putMapData(paramArrayOfByte, paramInt1, paramInt2 - paramInt1, this.datasource);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.autonavi.amap.mapcore.MapLoader
 * JD-Core Version:    0.6.0
 */