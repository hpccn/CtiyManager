package com.cymobile.ymwork.act;

import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import com.amap.api.maps.AMap;
import com.amap.api.maps.AMap.InfoWindowAdapter;
import com.amap.api.maps.AMap.OnInfoWindowClickListener;
import com.amap.api.maps.AMap.OnMapLoadedListener;
import com.amap.api.maps.AMap.OnMarkerClickListener;
import com.amap.api.maps.CameraUpdate;
import com.amap.api.maps.CameraUpdateFactory;
import com.amap.api.maps.SupportMapFragment;
import com.amap.api.maps.UiSettings;
import com.amap.api.maps.model.LatLng;
import com.amap.api.maps.model.LatLngBounds;
import com.amap.api.maps.model.LatLngBounds.Builder;
import com.amap.api.maps.model.Marker;
import com.amap.api.maps.model.MarkerOptions;
import com.amap.api.maps.model.PolylineOptions;
import com.cymobile.ymwork.HomeApplication;
import com.cymobile.ymwork.server.RemoteResourceManager;
import com.cymobile.ymwork.server.RemoteResourceManager.ResourceRequestObserver;
import com.cymobile.ymwork.types.Building;
import com.cymobile.ymwork.types.Group;
import com.cymobile.ymwork.utils.AMapUtil;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Observable;
import java.util.Random;
import java.util.Set;

public class MapDetailFragment extends Fragment
  implements AMap.OnMarkerClickListener, AMap.OnMapLoadedListener, AMap.OnInfoWindowClickListener
{
  private static final String TAG = "MapDetailFragment";
  public String AreaName = "";
  public String Bianjie = "";
  public String Bounds = "";
  public String CenterPoint = "";
  private AMap aMap;
  private Marker defaultMarker;
  public final int i = 0;
  private MarkerOptions mOptions;
  RemoteResourceManager mRrm;
  private HashMap<Marker, Building> markShops = new HashMap();
  public List<Building> shops = new ArrayList();

  // ERROR //
  private void addMarkersToMap(Building paramBuilding)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 70	com/cymobile/ymwork/act/MapDetailFragment:getActivity	()Landroid/support/v4/app/FragmentActivity;
    //   4: checkcast 72	com/cymobile/ymwork/act/MapFragmentActivity
    //   7: invokevirtual 76	com/cymobile/ymwork/act/MapFragmentActivity:getClassId	()I
    //   10: istore_3
    //   11: ldc 78
    //   13: astore 4
    //   15: iload_3
    //   16: iconst_1
    //   17: if_icmpne +236 -> 253
    //   20: ldc 80
    //   22: astore 4
    //   24: goto +229 -> 253
    //   27: aload_1
    //   28: invokevirtual 86	com/cymobile/ymwork/types/Building:getAffectArea	()Ljava/lang/String;
    //   31: astore 5
    //   33: aload 5
    //   35: astore 6
    //   37: aload 6
    //   39: invokestatic 92	java/lang/Float:parseFloat	(Ljava/lang/String;)F
    //   42: pop
    //   43: new 94	java/lang/StringBuilder
    //   46: dup
    //   47: aload 6
    //   49: invokestatic 100	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   52: invokespecial 103	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   55: ldc 105
    //   57: invokevirtual 109	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   60: invokevirtual 112	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   63: astore 14
    //   65: aload 14
    //   67: astore 6
    //   69: aload_0
    //   70: aload_1
    //   71: invokevirtual 116	com/cymobile/ymwork/act/MapDetailFragment:hasSameMarker	(Lcom/cymobile/ymwork/types/Building;)Z
    //   74: istore 8
    //   76: iload 8
    //   78: ifeq +61 -> 139
    //   81: aload_1
    //   82: new 94	java/lang/StringBuilder
    //   85: dup
    //   86: invokespecial 117	java/lang/StringBuilder:<init>	()V
    //   89: aload_1
    //   90: invokevirtual 120	com/cymobile/ymwork/types/Building:getGeoX	()Ljava/lang/String;
    //   93: invokestatic 126	java/lang/Double:parseDouble	(Ljava/lang/String;)D
    //   96: aload_0
    //   97: invokevirtual 130	com/cymobile/ymwork/act/MapDetailFragment:randomDouble	()D
    //   100: dadd
    //   101: invokevirtual 133	java/lang/StringBuilder:append	(D)Ljava/lang/StringBuilder;
    //   104: invokevirtual 112	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   107: invokevirtual 136	com/cymobile/ymwork/types/Building:setGeoX	(Ljava/lang/String;)V
    //   110: aload_1
    //   111: new 94	java/lang/StringBuilder
    //   114: dup
    //   115: invokespecial 117	java/lang/StringBuilder:<init>	()V
    //   118: aload_1
    //   119: invokevirtual 139	com/cymobile/ymwork/types/Building:getGeoY	()Ljava/lang/String;
    //   122: invokestatic 126	java/lang/Double:parseDouble	(Ljava/lang/String;)D
    //   125: aload_0
    //   126: invokevirtual 130	com/cymobile/ymwork/act/MapDetailFragment:randomDouble	()D
    //   129: dadd
    //   130: invokevirtual 133	java/lang/StringBuilder:append	(D)Ljava/lang/StringBuilder;
    //   133: invokevirtual 112	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   136: invokevirtual 142	com/cymobile/ymwork/types/Building:setGeoY	(Ljava/lang/String;)V
    //   139: new 144	com/amap/api/maps/model/MarkerOptions
    //   142: dup
    //   143: invokespecial 145	com/amap/api/maps/model/MarkerOptions:<init>	()V
    //   146: new 147	com/amap/api/maps/model/LatLng
    //   149: dup
    //   150: aload_1
    //   151: invokevirtual 139	com/cymobile/ymwork/types/Building:getGeoY	()Ljava/lang/String;
    //   154: invokestatic 126	java/lang/Double:parseDouble	(Ljava/lang/String;)D
    //   157: aload_1
    //   158: invokevirtual 120	com/cymobile/ymwork/types/Building:getGeoX	()Ljava/lang/String;
    //   161: invokestatic 126	java/lang/Double:parseDouble	(Ljava/lang/String;)D
    //   164: invokespecial 150	com/amap/api/maps/model/LatLng:<init>	(DD)V
    //   167: invokevirtual 154	com/amap/api/maps/model/MarkerOptions:position	(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/MarkerOptions;
    //   170: aload 4
    //   172: invokevirtual 158	com/amap/api/maps/model/MarkerOptions:title	(Ljava/lang/String;)Lcom/amap/api/maps/model/MarkerOptions;
    //   175: aload 6
    //   177: invokevirtual 161	com/amap/api/maps/model/MarkerOptions:snippet	(Ljava/lang/String;)Lcom/amap/api/maps/model/MarkerOptions;
    //   180: invokestatic 166	com/amap/api/maps/model/BitmapDescriptorFactory:defaultMarker	()Lcom/amap/api/maps/model/BitmapDescriptor;
    //   183: invokevirtual 170	com/amap/api/maps/model/MarkerOptions:icon	(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/MarkerOptions;
    //   186: astore 9
    //   188: aload_0
    //   189: aload_0
    //   190: getfield 172	com/cymobile/ymwork/act/MapDetailFragment:aMap	Lcom/amap/api/maps/AMap;
    //   193: aload 9
    //   195: invokevirtual 178	com/amap/api/maps/AMap:addMarker	(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;
    //   198: putfield 180	com/cymobile/ymwork/act/MapDetailFragment:defaultMarker	Lcom/amap/api/maps/model/Marker;
    //   201: aload_0
    //   202: getfield 60	com/cymobile/ymwork/act/MapDetailFragment:markShops	Ljava/util/HashMap;
    //   205: aload_0
    //   206: getfield 180	com/cymobile/ymwork/act/MapDetailFragment:defaultMarker	Lcom/amap/api/maps/model/Marker;
    //   209: aload_1
    //   210: invokevirtual 184	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   213: pop
    //   214: aload_0
    //   215: getfield 180	com/cymobile/ymwork/act/MapDetailFragment:defaultMarker	Lcom/amap/api/maps/model/Marker;
    //   218: invokevirtual 189	com/amap/api/maps/model/Marker:showInfoWindow	()V
    //   221: return
    //   222: astore 11
    //   224: aload 11
    //   226: invokevirtual 192	java/lang/Exception:printStackTrace	()V
    //   229: goto -119 -> 110
    //   232: astore_2
    //   233: aload_2
    //   234: invokevirtual 192	java/lang/Exception:printStackTrace	()V
    //   237: return
    //   238: astore 12
    //   240: aload 12
    //   242: invokevirtual 192	java/lang/Exception:printStackTrace	()V
    //   245: goto -106 -> 139
    //   248: astore 7
    //   250: goto -181 -> 69
    //   253: iload_3
    //   254: iconst_2
    //   255: if_icmpne -228 -> 27
    //   258: ldc 194
    //   260: astore 4
    //   262: goto -235 -> 27
    //
    // Exception table:
    //   from	to	target	type
    //   81	110	222	java/lang/Exception
    //   0	11	232	java/lang/Exception
    //   27	33	232	java/lang/Exception
    //   69	76	232	java/lang/Exception
    //   139	221	232	java/lang/Exception
    //   224	229	232	java/lang/Exception
    //   240	245	232	java/lang/Exception
    //   110	139	238	java/lang/Exception
    //   37	65	248	java/lang/Exception
  }

  private void init()
  {
    this.mRrm = ((HomeApplication)getActivity().getApplication()).getRemoteResourceManager();
    if (this.aMap == null)
    {
      this.aMap = ((SupportMapFragment)getFragmentManager().findFragmentById(2131230737)).getMap();
      if (AMapUtil.checkReady(getActivity(), this.aMap))
      {
        this.aMap.getUiSettings().setZoomControlsEnabled(false);
        this.aMap.setInfoWindowAdapter(new CustomInfoWindowAdapter(this));
        this.aMap.setOnMarkerClickListener(this);
        this.aMap.setOnInfoWindowClickListener(this);
        this.aMap.setOnMapLoadedListener(this);
        setUpMap();
      }
    }
  }

  public AMap getMap()
  {
    return this.aMap;
  }

  boolean hasSameMarker(Building paramBuilding)
  {
    if ((this.markShops == null) || (this.markShops.size() == 0));
    Building localBuilding;
    do
    {
      Iterator localIterator;
      while (!localIterator.hasNext())
      {
        do
          return false;
        while (!paramBuilding.getIsWange());
        localIterator = this.markShops.keySet().iterator();
      }
      localBuilding = (Building)this.markShops.get(localIterator.next());
    }
    while ((localBuilding == null) || (!localBuilding.getIsWange()) || (localBuilding.getGrid() == null) || (paramBuilding.getGrid() == null) || (!localBuilding.getGrid().equals(paramBuilding.getGrid())));
    return true;
  }

  public void onClearMap(View paramView)
  {
    if (AMapUtil.checkReady(getActivity(), this.aMap))
      this.aMap.clear();
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    MapFragmentActivity localMapFragmentActivity = (MapFragmentActivity)getActivity();
    this.Bianjie = localMapFragmentActivity.getBianjie();
    this.CenterPoint = localMapFragmentActivity.getCenterPoint();
    this.Bounds = localMapFragmentActivity.getBounds();
    init();
  }

  public void onInfoWindowClick(Marker paramMarker)
  {
    Intent localIntent = new Intent(getActivity(), ShopDetailsActivity.class);
    Building localBuilding = (Building)this.markShops.get(paramMarker);
    if (localBuilding != null);
    try
    {
      localIntent.putExtra("caseid", localBuilding.getCaseId());
      localIntent.putExtra("classid", localBuilding.getclassid());
      startActivity(localIntent);
      return;
      Log.i("MapDetailFragment", "Error, not case id");
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      Toast.makeText(getActivity(), 2131296387, 0).show();
    }
  }

  public void onMapLoaded()
  {
  }

  public boolean onMarkerClick(Marker paramMarker)
  {
    return false;
  }

  public void onResetMap(View paramView)
  {
    Group localGroup;
    if (AMapUtil.checkReady(getActivity(), this.aMap))
    {
      this.aMap.clear();
      MapFragmentActivity localMapFragmentActivity = (MapFragmentActivity)getActivity();
      if (localMapFragmentActivity.getBuildings().size() > 0)
        localGroup = localMapFragmentActivity.getBuildings();
    }
    for (int j = 0; ; j++)
    {
      if (j >= localGroup.size())
        return;
      addMarkersToMap((Building)localGroup.get(j));
    }
  }

  double randomDouble()
  {
    return 0.001D + new Random().nextDouble() * (0.01D - 0.001D);
  }

  boolean sameDistance(double paramDouble1, double paramDouble2, double paramDouble3, double paramDouble4)
  {
    return (paramDouble1 - paramDouble3) * (paramDouble1 - paramDouble3) + (paramDouble2 - paramDouble4) * (paramDouble2 - paramDouble4) < 1.0E-06D;
  }

  public void setUpMap()
  {
    this.aMap.clear();
    String[] arrayOfString1;
    PolylineOptions localPolylineOptions;
    int m;
    Group localGroup;
    if (this.Bianjie.length() > 0)
    {
      arrayOfString1 = this.Bianjie.split(";");
      localPolylineOptions = new PolylineOptions();
      localPolylineOptions.color(getActivity().getResources().getColor(2131099689));
      int k = arrayOfString1.length;
      m = 0;
      if (m >= k)
        this.aMap.addPolyline(localPolylineOptions);
    }
    else
    {
      new LatLngBounds.Builder();
      LatLng localLatLng1 = new LatLng(Double.valueOf(this.Bounds.split(",")[0].toString()).doubleValue(), Double.valueOf(this.Bounds.split(",")[1].toString()).doubleValue());
      LatLng localLatLng2 = new LatLng(Double.valueOf(this.Bounds.split(",")[2].toString()).doubleValue(), Double.valueOf(this.Bounds.split(",")[3].toString()).doubleValue());
      CameraUpdate localCameraUpdate = CameraUpdateFactory.newLatLngBounds(LatLngBounds.builder().include(localLatLng1).include(localLatLng2).build(), 1);
      this.aMap.moveCamera(localCameraUpdate);
      MapFragmentActivity localMapFragmentActivity = (MapFragmentActivity)getActivity();
      if (localMapFragmentActivity.getBuildings().size() > 0)
        localGroup = localMapFragmentActivity.getBuildings();
    }
    for (int j = 0; ; j++)
    {
      if (j >= localGroup.size())
      {
        return;
        String[] arrayOfString2 = arrayOfString1[m].split(",");
        double d = Double.valueOf(arrayOfString2[0]).doubleValue();
        localPolylineOptions.add(new LatLng(Double.valueOf(arrayOfString2[1]).doubleValue(), d));
        m++;
        break;
      }
      addMarkersToMap((Building)localGroup.get(j));
    }
  }

  class CustomInfoWindowAdapter
    implements AMap.InfoWindowAdapter
  {
    private final View mContents;
    private final View mWindow;

    CustomInfoWindowAdapter(Fragment arg2)
    {
      Object localObject;
      this.mWindow = localObject.getActivity().getLayoutInflater().inflate(2130903053, null);
      this.mContents = localObject.getActivity().getLayoutInflater().inflate(2130903052, null);
    }

    private void render(Marker paramMarker, View paramView)
    {
      Building localBuilding = (Building)MapDetailFragment.this.markShops.get(paramMarker);
      ImageView localImageView;
      Bitmap localBitmap;
      TextView localTextView1;
      if (localBuilding != null)
      {
        localImageView = (ImageView)paramView.findViewById(2131230776);
        if (localBuilding.getImgUrl() == null)
          break label238;
        Uri localUri = Uri.parse(localBuilding.getImgUrl());
        try
        {
          localBitmap = BitmapFactory.decodeStream(MapDetailFragment.this.mRrm.getInputStream(localUri));
          if (localBitmap != null)
            break label215;
          throw new Exception("empty");
        }
        catch (Exception localException)
        {
          MapDetailFragment.this.mRrm.addObserver(new MapDetailFragment.ShopImageFetcher(MapDetailFragment.this, localUri, localImageView));
          MapDetailFragment.this.mRrm.request(localUri);
        }
      }
      else
      {
        String str1 = paramMarker.getTitle();
        localTextView1 = (TextView)paramView.findViewById(2131230777);
        if (str1 == null)
          break label248;
        SpannableString localSpannableString = new SpannableString(str1);
        localSpannableString.setSpan(new ForegroundColorSpan(-65536), 0, localSpannableString.length(), 0);
        localTextView1.setText(localSpannableString);
      }
      TextView localTextView2;
      while (true)
      {
        String str2 = paramMarker.getSnippet();
        localTextView2 = (TextView)paramView.findViewById(2131230778);
        if (str2 == null)
          break label258;
        localTextView2.setText(new SpannableString(str2));
        return;
        label215: localImageView.setImageBitmap(Bitmap.createScaledBitmap(localBitmap, 120, 120, false));
        localImageView.refreshDrawableState();
        break;
        label238: localImageView.setBackgroundResource(2130837733);
        break;
        label248: localTextView1.setText("");
      }
      label258: localTextView2.setText("");
    }

    public View getInfoContents(Marker paramMarker)
    {
      render(paramMarker, this.mContents);
      return this.mContents;
    }

    public View getInfoWindow(Marker paramMarker)
    {
      render(paramMarker, this.mWindow);
      return this.mWindow;
    }
  }

  class ShopImageFetcher extends RemoteResourceManager.ResourceRequestObserver
  {
    ImageView imageView;

    public ShopImageFetcher(Uri paramImageView, ImageView arg3)
    {
      super();
      Object localObject;
      this.imageView = localObject;
    }

    public void requestReceived(Observable paramObservable, Uri paramUri)
    {
      paramObservable.deleteObserver(this);
      try
      {
        Bitmap localBitmap = BitmapFactory.decodeStream(MapDetailFragment.this.mRrm.getInputStream(paramUri));
        this.imageView.setImageBitmap(Bitmap.createScaledBitmap(localBitmap, 120, 120, false));
        this.imageView.refreshDrawableState();
        return;
      }
      catch (IOException localIOException)
      {
        localIOException.printStackTrace();
      }
    }
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.act.MapDetailFragment
 * JD-Core Version:    0.6.0
 */