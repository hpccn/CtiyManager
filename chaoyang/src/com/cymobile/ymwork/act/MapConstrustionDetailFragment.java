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
import com.cymobile.ymwork.types.ConstrustionField;
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

public class MapConstrustionDetailFragment extends Fragment
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
  private HashMap<Marker, ConstrustionField> markShops = new HashMap();
  public List<ConstrustionField> shops = new ArrayList();

  // ERROR //
  private void addMarkersToMap(ConstrustionField paramConstrustionField)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 70	com/cymobile/ymwork/act/MapConstrustionDetailFragment:getActivity	()Landroid/support/v4/app/FragmentActivity;
    //   4: checkcast 72	com/cymobile/ymwork/act/MapConstrustionFragmentActivity
    //   7: invokevirtual 76	com/cymobile/ymwork/act/MapConstrustionFragmentActivity:getClassId	()I
    //   10: istore_3
    //   11: ldc 78
    //   13: astore 4
    //   15: iload_3
    //   16: iconst_1
    //   17: if_icmpne +366 -> 383
    //   20: ldc 80
    //   22: astore 4
    //   24: goto +359 -> 383
    //   27: iload_3
    //   28: iconst_3
    //   29: if_icmpne +366 -> 395
    //   32: aload_1
    //   33: invokevirtual 86	com/cymobile/ymwork/types/ConstrustionField:getCasedetail	()Ljava/lang/String;
    //   36: astore 5
    //   38: aload 5
    //   40: invokevirtual 91	java/lang/String:length	()I
    //   43: ifle +383 -> 426
    //   46: aload 5
    //   48: ldc 93
    //   50: invokevirtual 97	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   53: ifeq +366 -> 419
    //   56: aload 5
    //   58: iconst_1
    //   59: aload 5
    //   61: ldc 93
    //   63: invokevirtual 101	java/lang/String:lastIndexOf	(Ljava/lang/String;)I
    //   66: iadd
    //   67: invokevirtual 105	java/lang/String:substring	(I)Ljava/lang/String;
    //   70: astore 4
    //   72: goto +323 -> 395
    //   75: iload_3
    //   76: iconst_5
    //   77: if_icmpne +363 -> 440
    //   80: aload_1
    //   81: invokevirtual 108	com/cymobile/ymwork/types/ConstrustionField:getCaseType	()Ljava/lang/String;
    //   84: astore 6
    //   86: aload_1
    //   87: invokevirtual 111	com/cymobile/ymwork/types/ConstrustionField:getBigCategory	()Ljava/lang/String;
    //   90: astore 7
    //   92: aload_1
    //   93: invokevirtual 114	com/cymobile/ymwork/types/ConstrustionField:getSmallCategory	()Ljava/lang/String;
    //   96: astore 8
    //   98: aload_1
    //   99: invokevirtual 86	com/cymobile/ymwork/types/ConstrustionField:getCasedetail	()Ljava/lang/String;
    //   102: astore 9
    //   104: aload_1
    //   105: invokevirtual 86	com/cymobile/ymwork/types/ConstrustionField:getCasedetail	()Ljava/lang/String;
    //   108: ifnull +202 -> 310
    //   111: aload 9
    //   113: astore 4
    //   115: aload_1
    //   116: invokevirtual 117	com/cymobile/ymwork/types/ConstrustionField:getAffactearea	()Ljava/lang/String;
    //   119: astore 10
    //   121: aload 10
    //   123: astore 11
    //   125: aload 11
    //   127: invokestatic 123	java/lang/Float:parseFloat	(Ljava/lang/String;)F
    //   130: pop
    //   131: new 125	java/lang/StringBuilder
    //   134: dup
    //   135: aload 11
    //   137: invokestatic 129	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   140: invokespecial 132	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   143: ldc 134
    //   145: invokevirtual 138	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   148: invokevirtual 141	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   151: astore 19
    //   153: aload 19
    //   155: astore 11
    //   157: aload_0
    //   158: aload_1
    //   159: invokevirtual 145	com/cymobile/ymwork/act/MapConstrustionDetailFragment:hasSameMarker	(Lcom/cymobile/ymwork/types/ConstrustionField;)Z
    //   162: istore 13
    //   164: iload 13
    //   166: ifeq +61 -> 227
    //   169: aload_1
    //   170: new 125	java/lang/StringBuilder
    //   173: dup
    //   174: invokespecial 146	java/lang/StringBuilder:<init>	()V
    //   177: aload_1
    //   178: invokevirtual 149	com/cymobile/ymwork/types/ConstrustionField:getGeox	()Ljava/lang/String;
    //   181: invokestatic 155	java/lang/Double:parseDouble	(Ljava/lang/String;)D
    //   184: aload_0
    //   185: invokevirtual 159	com/cymobile/ymwork/act/MapConstrustionDetailFragment:randomDouble	()D
    //   188: dadd
    //   189: invokevirtual 162	java/lang/StringBuilder:append	(D)Ljava/lang/StringBuilder;
    //   192: invokevirtual 141	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   195: invokevirtual 165	com/cymobile/ymwork/types/ConstrustionField:setGeox	(Ljava/lang/String;)V
    //   198: aload_1
    //   199: new 125	java/lang/StringBuilder
    //   202: dup
    //   203: invokespecial 146	java/lang/StringBuilder:<init>	()V
    //   206: aload_1
    //   207: invokevirtual 168	com/cymobile/ymwork/types/ConstrustionField:getGeoy	()Ljava/lang/String;
    //   210: invokestatic 155	java/lang/Double:parseDouble	(Ljava/lang/String;)D
    //   213: aload_0
    //   214: invokevirtual 159	com/cymobile/ymwork/act/MapConstrustionDetailFragment:randomDouble	()D
    //   217: dadd
    //   218: invokevirtual 162	java/lang/StringBuilder:append	(D)Ljava/lang/StringBuilder;
    //   221: invokevirtual 141	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   224: invokevirtual 171	com/cymobile/ymwork/types/ConstrustionField:setGeoy	(Ljava/lang/String;)V
    //   227: new 173	com/amap/api/maps/model/MarkerOptions
    //   230: dup
    //   231: invokespecial 174	com/amap/api/maps/model/MarkerOptions:<init>	()V
    //   234: new 176	com/amap/api/maps/model/LatLng
    //   237: dup
    //   238: aload_1
    //   239: invokevirtual 168	com/cymobile/ymwork/types/ConstrustionField:getGeoy	()Ljava/lang/String;
    //   242: invokestatic 155	java/lang/Double:parseDouble	(Ljava/lang/String;)D
    //   245: aload_1
    //   246: invokevirtual 149	com/cymobile/ymwork/types/ConstrustionField:getGeox	()Ljava/lang/String;
    //   249: invokestatic 155	java/lang/Double:parseDouble	(Ljava/lang/String;)D
    //   252: invokespecial 179	com/amap/api/maps/model/LatLng:<init>	(DD)V
    //   255: invokevirtual 183	com/amap/api/maps/model/MarkerOptions:position	(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/MarkerOptions;
    //   258: aload 4
    //   260: invokevirtual 187	com/amap/api/maps/model/MarkerOptions:title	(Ljava/lang/String;)Lcom/amap/api/maps/model/MarkerOptions;
    //   263: aload 11
    //   265: invokevirtual 190	com/amap/api/maps/model/MarkerOptions:snippet	(Ljava/lang/String;)Lcom/amap/api/maps/model/MarkerOptions;
    //   268: invokestatic 195	com/amap/api/maps/model/BitmapDescriptorFactory:defaultMarker	()Lcom/amap/api/maps/model/BitmapDescriptor;
    //   271: invokevirtual 199	com/amap/api/maps/model/MarkerOptions:icon	(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/MarkerOptions;
    //   274: astore 14
    //   276: aload_0
    //   277: aload_0
    //   278: getfield 201	com/cymobile/ymwork/act/MapConstrustionDetailFragment:aMap	Lcom/amap/api/maps/AMap;
    //   281: aload 14
    //   283: invokevirtual 207	com/amap/api/maps/AMap:addMarker	(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;
    //   286: putfield 209	com/cymobile/ymwork/act/MapConstrustionDetailFragment:defaultMarker	Lcom/amap/api/maps/model/Marker;
    //   289: aload_0
    //   290: getfield 60	com/cymobile/ymwork/act/MapConstrustionDetailFragment:markShops	Ljava/util/HashMap;
    //   293: aload_0
    //   294: getfield 209	com/cymobile/ymwork/act/MapConstrustionDetailFragment:defaultMarker	Lcom/amap/api/maps/model/Marker;
    //   297: aload_1
    //   298: invokevirtual 213	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   301: pop
    //   302: aload_0
    //   303: getfield 209	com/cymobile/ymwork/act/MapConstrustionDetailFragment:defaultMarker	Lcom/amap/api/maps/model/Marker;
    //   306: invokevirtual 218	com/amap/api/maps/model/Marker:showInfoWindow	()V
    //   309: return
    //   310: aload_1
    //   311: invokevirtual 114	com/cymobile/ymwork/types/ConstrustionField:getSmallCategory	()Ljava/lang/String;
    //   314: ifnull +10 -> 324
    //   317: aload 8
    //   319: astore 4
    //   321: goto -206 -> 115
    //   324: aload_1
    //   325: invokevirtual 111	com/cymobile/ymwork/types/ConstrustionField:getBigCategory	()Ljava/lang/String;
    //   328: ifnull +10 -> 338
    //   331: aload 7
    //   333: astore 4
    //   335: goto -220 -> 115
    //   338: aload_1
    //   339: invokevirtual 108	com/cymobile/ymwork/types/ConstrustionField:getCaseType	()Ljava/lang/String;
    //   342: ifnull +91 -> 433
    //   345: aload 6
    //   347: astore 4
    //   349: goto -234 -> 115
    //   352: astore 16
    //   354: aload 16
    //   356: invokevirtual 221	java/lang/Exception:printStackTrace	()V
    //   359: goto -161 -> 198
    //   362: astore_2
    //   363: aload_2
    //   364: invokevirtual 221	java/lang/Exception:printStackTrace	()V
    //   367: return
    //   368: astore 17
    //   370: aload 17
    //   372: invokevirtual 221	java/lang/Exception:printStackTrace	()V
    //   375: goto -148 -> 227
    //   378: astore 12
    //   380: goto -223 -> 157
    //   383: iload_3
    //   384: iconst_2
    //   385: if_icmpne -358 -> 27
    //   388: ldc 223
    //   390: astore 4
    //   392: goto -365 -> 27
    //   395: iload_3
    //   396: iconst_4
    //   397: if_icmpeq +15 -> 412
    //   400: iload_3
    //   401: bipush 6
    //   403: if_icmpeq +9 -> 412
    //   406: iload_3
    //   407: bipush 7
    //   409: if_icmpne -334 -> 75
    //   412: ldc 225
    //   414: astore 4
    //   416: goto -341 -> 75
    //   419: ldc 227
    //   421: astore 4
    //   423: goto -28 -> 395
    //   426: ldc 227
    //   428: astore 4
    //   430: goto -35 -> 395
    //   433: ldc 229
    //   435: astore 4
    //   437: goto -322 -> 115
    //   440: iload_3
    //   441: bipush 8
    //   443: if_icmpne +10 -> 453
    //   446: ldc 231
    //   448: astore 4
    //   450: goto -335 -> 115
    //   453: iload_3
    //   454: bipush 9
    //   456: if_icmpne +10 -> 466
    //   459: ldc 233
    //   461: astore 4
    //   463: goto -348 -> 115
    //   466: iload_3
    //   467: bipush 10
    //   469: if_icmpne +10 -> 479
    //   472: ldc 235
    //   474: astore 4
    //   476: goto -361 -> 115
    //   479: iload_3
    //   480: bipush 11
    //   482: if_icmpne +10 -> 492
    //   485: ldc 237
    //   487: astore 4
    //   489: goto -374 -> 115
    //   492: iload_3
    //   493: bipush 12
    //   495: if_icmpne +10 -> 505
    //   498: ldc 239
    //   500: astore 4
    //   502: goto -387 -> 115
    //   505: iload_3
    //   506: bipush 13
    //   508: if_icmpne +10 -> 518
    //   511: ldc 241
    //   513: astore 4
    //   515: goto -400 -> 115
    //   518: iload_3
    //   519: bipush 14
    //   521: if_icmpne -406 -> 115
    //   524: ldc 243
    //   526: astore 4
    //   528: goto -413 -> 115
    //
    // Exception table:
    //   from	to	target	type
    //   169	198	352	java/lang/Exception
    //   0	11	362	java/lang/Exception
    //   32	72	362	java/lang/Exception
    //   80	111	362	java/lang/Exception
    //   115	121	362	java/lang/Exception
    //   157	164	362	java/lang/Exception
    //   227	309	362	java/lang/Exception
    //   310	317	362	java/lang/Exception
    //   324	331	362	java/lang/Exception
    //   338	345	362	java/lang/Exception
    //   354	359	362	java/lang/Exception
    //   370	375	362	java/lang/Exception
    //   198	227	368	java/lang/Exception
    //   125	153	378	java/lang/Exception
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

  boolean hasSameMarker(ConstrustionField paramConstrustionField)
  {
    if ((this.markShops == null) || (this.markShops.size() == 0));
    ConstrustionField localConstrustionField;
    do
    {
      Iterator localIterator;
      while (!localIterator.hasNext())
      {
        do
          return false;
        while (!paramConstrustionField.getIsWange());
        localIterator = this.markShops.keySet().iterator();
      }
      localConstrustionField = (ConstrustionField)this.markShops.get(localIterator.next());
    }
    while ((localConstrustionField == null) || (!localConstrustionField.getIsWange()) || (localConstrustionField.getGrid() == null) || (paramConstrustionField.getGrid() == null) || (!localConstrustionField.getGrid().equals(paramConstrustionField.getGrid())));
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
    MapConstrustionFragmentActivity localMapConstrustionFragmentActivity = (MapConstrustionFragmentActivity)getActivity();
    this.Bianjie = localMapConstrustionFragmentActivity.getBianjie();
    this.CenterPoint = localMapConstrustionFragmentActivity.getCenterPoint();
    this.Bounds = localMapConstrustionFragmentActivity.getBounds();
    init();
  }

  public void onInfoWindowClick(Marker paramMarker)
  {
    ConstrustionField localConstrustionField = (ConstrustionField)this.markShops.get(paramMarker);
    Intent localIntent;
    if (localConstrustionField.getClassids() == 3)
      localIntent = new Intent(getActivity(), ShopDetailsConstructionActivity.class);
    while (true)
    {
      if (localConstrustionField != null);
      try
      {
        localIntent.putExtra("caseid", localConstrustionField.getCaseid());
        localIntent.putExtra("classid", localConstrustionField.getClassids());
        startActivity(localIntent);
        return;
        if ((localConstrustionField.getClassids() == 4) || (localConstrustionField.getClassids() == 6) || (localConstrustionField.getClassids() == 8) || (localConstrustionField.getClassids() == 9) || (localConstrustionField.getClassids() == 10) || (localConstrustionField.getClassids() == 11) || (localConstrustionField.getClassids() == 12) || (localConstrustionField.getClassids() == 13) || (localConstrustionField.getClassids() == 14) || (localConstrustionField.getClassids() == 15))
        {
          localIntent = new Intent(getActivity(), ShopDetailsFireServiceActivity.class);
          continue;
        }
        int j = localConstrustionField.getClassids();
        localIntent = null;
        if (j != 5)
          continue;
        localIntent = new Intent(getActivity(), ShopDetailsPublicReportActivity.class);
        continue;
        Log.i("MapDetailFragment", "Error, not case id");
        return;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        Toast.makeText(getActivity(), 2131296387, 0).show();
      }
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
      MapConstrustionFragmentActivity localMapConstrustionFragmentActivity = (MapConstrustionFragmentActivity)getActivity();
      if (localMapConstrustionFragmentActivity.getBuildings().size() > 0)
        localGroup = localMapConstrustionFragmentActivity.getBuildings();
    }
    for (int j = 0; ; j++)
    {
      if (j >= localGroup.size())
        return;
      addMarkersToMap((ConstrustionField)localGroup.get(j));
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
      MapConstrustionFragmentActivity localMapConstrustionFragmentActivity = (MapConstrustionFragmentActivity)getActivity();
      if (localMapConstrustionFragmentActivity.getBuildings().size() > 0)
        localGroup = localMapConstrustionFragmentActivity.getBuildings();
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
      addMarkersToMap((ConstrustionField)localGroup.get(j));
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
      ConstrustionField localConstrustionField = (ConstrustionField)MapConstrustionDetailFragment.this.markShops.get(paramMarker);
      ImageView localImageView;
      Bitmap localBitmap;
      TextView localTextView1;
      if (localConstrustionField != null)
      {
        localImageView = (ImageView)paramView.findViewById(2131230776);
        if (localConstrustionField.getImgUrl() == null)
          break label238;
        Uri localUri = Uri.parse(localConstrustionField.getImgUrl());
        try
        {
          localBitmap = BitmapFactory.decodeStream(MapConstrustionDetailFragment.this.mRrm.getInputStream(localUri));
          if (localBitmap != null)
            break label215;
          throw new Exception("empty");
        }
        catch (Exception localException)
        {
          MapConstrustionDetailFragment.this.mRrm.addObserver(new MapConstrustionDetailFragment.ShopImageFetcher(MapConstrustionDetailFragment.this, localUri, localImageView));
          MapConstrustionDetailFragment.this.mRrm.request(localUri);
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
        Bitmap localBitmap = BitmapFactory.decodeStream(MapConstrustionDetailFragment.this.mRrm.getInputStream(paramUri));
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
 * Qualified Name:     com.cymobile.ymwork.act.MapConstrustionDetailFragment
 * JD-Core Version:    0.6.0
 */