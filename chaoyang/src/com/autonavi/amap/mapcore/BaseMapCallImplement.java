package com.autonavi.amap.mapcore;

import java.util.ArrayList;

public abstract class BaseMapCallImplement
  implements IBaseMapCallback, IMapCallback
{
  private ArrayList<MapSourceGridData> baseMapGrids = new ArrayList();
  private ArrayList<MapSourceGridData> bldMapGrids = new ArrayList();
  private ArrayList<MapSourceGridData> bmpbmMapGirds = new ArrayList();
  private ConnectionManager connectionManager = null;
  private ArrayList<MapSourceGridData> mapModels = new ArrayList();
  private ArrayList<MapSourceGridData> screenGirds = new ArrayList();
  private ArrayList<MapSourceGridData> stiMapGirds = new ArrayList();
  d tileProcessCtrl = null;
  private ArrayList<MapSourceGridData> vectmcMapGirds = new ArrayList();

  private void destory()
  {
    this.baseMapGrids.clear();
    this.bldMapGrids.clear();
    this.bmpbmMapGirds.clear();
    this.vectmcMapGirds.clear();
    this.stiMapGirds.clear();
    this.mapModels.clear();
    this.screenGirds.clear();
  }

  private void proccessRequiredData(MapCore paramMapCore, ArrayList<MapSourceGridData> paramArrayList, int paramInt)
  {
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    if (i < paramArrayList.size())
    {
      MapSourceGridData localMapSourceGridData = (MapSourceGridData)paramArrayList.get(i);
      if (this.tileProcessCtrl.b(localMapSourceGridData.getKeyGridName()));
      while (true)
      {
        i++;
        break;
        localArrayList.add(localMapSourceGridData);
      }
    }
    if (localArrayList.size() > 0)
      sendMapDataRequest(paramMapCore, localArrayList, paramInt);
  }

  private void sendMapDataRequest(MapCore paramMapCore, ArrayList paramArrayList, int paramInt)
  {
    if (paramArrayList.size() == 0)
      return;
    MapLoader localMapLoader = new MapLoader(this, paramMapCore, paramInt);
    int i = 0;
    if (i < paramArrayList.size())
    {
      MapSourceGridData localMapSourceGridData = (MapSourceGridData)paramArrayList.get(i);
      if (this.tileProcessCtrl.b(localMapSourceGridData.getKeyGridName()));
      while (true)
      {
        i++;
        break;
        this.tileProcessCtrl.c(localMapSourceGridData.getKeyGridName());
        localMapLoader.addReuqestTiles(localMapSourceGridData);
      }
    }
    this.connectionManager.insertConntionTask(localMapLoader);
  }

  public void OnMapDataRequired(MapCore paramMapCore, int paramInt, String[] paramArrayOfString)
  {
    ArrayList localArrayList;
    switch (paramInt)
    {
    default:
      localArrayList = null;
    case 0:
    case 1:
    case 2:
    case 4:
    case 5:
    case 3:
    case 6:
    }
    while (localArrayList != null)
    {
      localArrayList.clear();
      int i = 0;
      while (true)
        if (i < paramArrayOfString.length)
        {
          localArrayList.add(new MapSourceGridData(paramArrayOfString[i], paramInt));
          i++;
          continue;
          localArrayList = this.baseMapGrids;
          break;
          localArrayList = this.bldMapGrids;
          break;
          localArrayList = this.bmpbmMapGirds;
          break;
          localArrayList = this.vectmcMapGirds;
          break;
          localArrayList = this.screenGirds;
          break;
          localArrayList = this.stiMapGirds;
          break;
          localArrayList = this.mapModels;
          break;
        }
      if (5 == paramInt)
        break;
      proccessRequiredData(paramMapCore, localArrayList, paramInt);
    }
  }

  public void OnMapDestory(MapCore paramMapCore)
  {
    destory();
    if (this.tileProcessCtrl != null)
    {
      this.tileProcessCtrl.c = false;
      this.tileProcessCtrl = null;
    }
    if (this.connectionManager != null)
      this.connectionManager.threadFlag = false;
    try
    {
      this.connectionManager.connectionPool.clear();
      this.connectionManager.interrupt();
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public void OnMapLabelsRequired(MapCore paramMapCore, int[] paramArrayOfInt, int paramInt)
  {
    for (int i = 0; i < paramInt; i++)
    {
      int j = paramArrayOfInt[i];
      byte[] arrayOfByte = new TextTextureGenerator().getTextPixelBuffer(j);
      if (arrayOfByte == null)
        continue;
      paramMapCore.putCharbitmap(j, arrayOfByte);
    }
  }

  public void OnMapSurfaceCreate(MapCore paramMapCore)
  {
    if (this.connectionManager == null)
    {
      this.connectionManager = new ConnectionManager();
      this.connectionManager.start();
    }
    this.tileProcessCtrl = new d();
  }

  public ArrayList<MapSourceGridData> getScreenGridList(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return null;
    case 0:
      return this.baseMapGrids;
    case 1:
      return this.bldMapGrids;
    case 2:
      return this.bmpbmMapGirds;
    case 4:
      return this.vectmcMapGirds;
    case 5:
      return this.screenGirds;
    case 3:
      return this.stiMapGirds;
    case 6:
    }
    return this.mapModels;
  }

  public boolean isGridInList(MapSourceGridData paramMapSourceGridData, ArrayList<MapSourceGridData> paramArrayList)
  {
    for (int i = 0; ; i++)
    {
      int j = paramArrayList.size();
      int k = 0;
      if (i < j)
      {
        if (!((MapSourceGridData)paramArrayList.get(i)).getGridName().equals(paramMapSourceGridData.getGridName()))
          continue;
        k = 1;
      }
      return k;
    }
  }

  public boolean isGridsInScreen(ArrayList<MapSourceGridData> paramArrayList, int paramInt)
  {
    try
    {
      if (paramArrayList.size() == 0)
        return false;
      if (!isMapEngineValid())
        return false;
      ArrayList localArrayList = getScreenGridList(paramInt);
      for (int i = 0; i < paramArrayList.size(); i++)
      {
        boolean bool = isGridInList((MapSourceGridData)paramArrayList.get(i), localArrayList);
        if (bool)
          return true;
      }
      return false;
    }
    catch (Exception localException)
    {
    }
    return true;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.autonavi.amap.mapcore.BaseMapCallImplement
 * JD-Core Version:    0.6.0
 */