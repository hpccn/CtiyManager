.class public Lcom/cymobile/ymwork/act/MapDetailFragment;
.super Landroid/support/v4/app/Fragment;
.source "MapDetailFragment.java"

# interfaces
.implements Lcom/amap/api/maps/AMap$OnMarkerClickListener;
.implements Lcom/amap/api/maps/AMap$OnMapLoadedListener;
.implements Lcom/amap/api/maps/AMap$OnInfoWindowClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cymobile/ymwork/act/MapDetailFragment$CustomInfoWindowAdapter;,
        Lcom/cymobile/ymwork/act/MapDetailFragment$ShopImageFetcher;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MapDetailFragment"


# instance fields
.field public AreaName:Ljava/lang/String;

.field public Bianjie:Ljava/lang/String;

.field public Bounds:Ljava/lang/String;

.field public CenterPoint:Ljava/lang/String;

.field private aMap:Lcom/amap/api/maps/AMap;

.field private defaultMarker:Lcom/amap/api/maps/model/Marker;

.field public final i:I

.field private mOptions:Lcom/amap/api/maps/model/MarkerOptions;

.field mRrm:Lcom/cymobile/ymwork/server/RemoteResourceManager;

.field private markShops:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/amap/api/maps/model/Marker;",
            "Lcom/cymobile/ymwork/types/Building;",
            ">;"
        }
    .end annotation
.end field

.field public shops:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cymobile/ymwork/types/Building;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 174
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lcom/cymobile/ymwork/act/MapDetailFragment;->Bianjie:Ljava/lang/String;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/cymobile/ymwork/act/MapDetailFragment;->CenterPoint:Ljava/lang/String;

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/cymobile/ymwork/act/MapDetailFragment;->Bounds:Ljava/lang/String;

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lcom/cymobile/ymwork/act/MapDetailFragment;->AreaName:Ljava/lang/String;

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/cymobile/ymwork/act/MapDetailFragment;->i:I

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/MapDetailFragment;->shops:Ljava/util/List;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/MapDetailFragment;->markShops:Ljava/util/HashMap;

    .line 176
    return-void
.end method

.method static synthetic access$0(Lcom/cymobile/ymwork/act/MapDetailFragment;)Ljava/util/HashMap;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MapDetailFragment;->markShops:Ljava/util/HashMap;

    return-object v0
.end method

.method private addMarkersToMap(Lcom/cymobile/ymwork/types/Building;)V
    .locals 13
    .parameter "shop"

    .prologue
    .line 275
    :try_start_0
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MapDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    check-cast v4, Lcom/cymobile/ymwork/act/MapFragmentActivity;

    .line 276
    .local v4, mapFragmentActivity:Lcom/cymobile/ymwork/act/MapFragmentActivity;
    invoke-virtual {v4}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->getClassId()I

    move-result v1

    .line 277
    .local v1, classid:I
    const-string v6, "\u65b0\u589e\u5efa\u7b51"

    .line 278
    .local v6, title:Ljava/lang/String;
    const/4 v7, 0x1

    if-ne v1, v7, :cond_0

    .line 279
    const-string v6, "\u7591\u4f3c\u65b0\u589e\u5efa\u7b51"

    .line 281
    :cond_0
    const/4 v7, 0x2

    if-ne v1, v7, :cond_1

    .line 282
    const-string v6, "\u516c\u4f17\u4e3e\u62a5\u8fdd\u5efa"

    .line 284
    :cond_1
    invoke-virtual {p1}, Lcom/cymobile/ymwork/types/Building;->getAffectArea()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 286
    .local v0, affected:Ljava/lang/String;
    :try_start_1
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 287
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "\u5e73\u7c73"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v0

    .line 290
    :goto_0
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/act/MapDetailFragment;->hasSameMarker(Lcom/cymobile/ymwork/types/Building;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v7

    if-eqz v7, :cond_2

    .line 292
    :try_start_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/cymobile/ymwork/types/Building;->getGeoX()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MapDetailFragment;->randomDouble()D

    move-result-wide v10

    add-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/cymobile/ymwork/types/Building;->setGeoX(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 297
    :goto_1
    :try_start_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/cymobile/ymwork/types/Building;->getGeoY()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MapDetailFragment;->randomDouble()D

    move-result-wide v10

    add-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/cymobile/ymwork/types/Building;->setGeoY(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 302
    :cond_2
    :goto_2
    :try_start_5
    new-instance v7, Lcom/amap/api/maps/model/MarkerOptions;

    invoke-direct {v7}, Lcom/amap/api/maps/model/MarkerOptions;-><init>()V

    .line 304
    new-instance v8, Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {p1}, Lcom/cymobile/ymwork/types/Building;->getGeoY()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    .line 305
    invoke-virtual {p1}, Lcom/cymobile/ymwork/types/Building;->getGeoX()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11

    .line 304
    invoke-direct {v8, v9, v10, v11, v12}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    .line 303
    invoke-virtual {v7, v8}, Lcom/amap/api/maps/model/MarkerOptions;->position(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v7

    .line 306
    invoke-virtual {v7, v6}, Lcom/amap/api/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/amap/api/maps/model/MarkerOptions;->snippet(Ljava/lang/String;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v7

    .line 307
    invoke-static {}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->defaultMarker()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/amap/api/maps/model/MarkerOptions;->icon(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v5

    .line 308
    .local v5, option:Lcom/amap/api/maps/model/MarkerOptions;
    iget-object v7, p0, Lcom/cymobile/ymwork/act/MapDetailFragment;->aMap:Lcom/amap/api/maps/AMap;

    invoke-virtual {v7, v5}, Lcom/amap/api/maps/AMap;->addMarker(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;

    move-result-object v7

    iput-object v7, p0, Lcom/cymobile/ymwork/act/MapDetailFragment;->defaultMarker:Lcom/amap/api/maps/model/Marker;

    .line 309
    iget-object v7, p0, Lcom/cymobile/ymwork/act/MapDetailFragment;->markShops:Ljava/util/HashMap;

    iget-object v8, p0, Lcom/cymobile/ymwork/act/MapDetailFragment;->defaultMarker:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v7, v8, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    iget-object v7, p0, Lcom/cymobile/ymwork/act/MapDetailFragment;->defaultMarker:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v7}, Lcom/amap/api/maps/model/Marker;->showInfoWindow()V

    .line 316
    .end local v0           #affected:Ljava/lang/String;
    .end local v1           #classid:I
    .end local v4           #mapFragmentActivity:Lcom/cymobile/ymwork/act/MapFragmentActivity;
    .end local v5           #option:Lcom/amap/api/maps/model/MarkerOptions;
    .end local v6           #title:Ljava/lang/String;
    :goto_3
    return-void

    .line 293
    .restart local v0       #affected:Ljava/lang/String;
    .restart local v1       #classid:I
    .restart local v4       #mapFragmentActivity:Lcom/cymobile/ymwork/act/MapFragmentActivity;
    .restart local v6       #title:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 294
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 311
    .end local v0           #affected:Ljava/lang/String;
    .end local v1           #classid:I
    .end local v2           #e:Ljava/lang/Exception;
    .end local v4           #mapFragmentActivity:Lcom/cymobile/ymwork/act/MapFragmentActivity;
    .end local v6           #title:Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 312
    .local v3, ee:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 298
    .end local v3           #ee:Ljava/lang/Exception;
    .restart local v0       #affected:Ljava/lang/String;
    .restart local v1       #classid:I
    .restart local v4       #mapFragmentActivity:Lcom/cymobile/ymwork/act/MapFragmentActivity;
    .restart local v6       #title:Ljava/lang/String;
    :catch_2
    move-exception v2

    .line 299
    .restart local v2       #e:Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 288
    .end local v2           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v7

    goto/16 :goto_0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MapDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/cymobile/ymwork/HomeApplication;

    .line 196
    invoke-virtual {v0}, Lcom/cymobile/ymwork/HomeApplication;->getRemoteResourceManager()Lcom/cymobile/ymwork/server/RemoteResourceManager;

    move-result-object v0

    .line 195
    iput-object v0, p0, Lcom/cymobile/ymwork/act/MapDetailFragment;->mRrm:Lcom/cymobile/ymwork/server/RemoteResourceManager;

    .line 198
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MapDetailFragment;->aMap:Lcom/amap/api/maps/AMap;

    if-nez v0, :cond_0

    .line 199
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MapDetailFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 200
    const v1, 0x7f080011

    .line 199
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/SupportMapFragment;

    .line 200
    invoke-virtual {v0}, Lcom/amap/api/maps/SupportMapFragment;->getMap()Lcom/amap/api/maps/AMap;

    move-result-object v0

    .line 199
    iput-object v0, p0, Lcom/cymobile/ymwork/act/MapDetailFragment;->aMap:Lcom/amap/api/maps/AMap;

    .line 201
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MapDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapDetailFragment;->aMap:Lcom/amap/api/maps/AMap;

    invoke-static {v0, v1}, Lcom/cymobile/ymwork/utils/AMapUtil;->checkReady(Landroid/content/Context;Lcom/amap/api/maps/AMap;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MapDetailFragment;->aMap:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0}, Lcom/amap/api/maps/AMap;->getUiSettings()Lcom/amap/api/maps/UiSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/UiSettings;->setZoomControlsEnabled(Z)V

    .line 206
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MapDetailFragment;->aMap:Lcom/amap/api/maps/AMap;

    new-instance v1, Lcom/cymobile/ymwork/act/MapDetailFragment$CustomInfoWindowAdapter;

    invoke-direct {v1, p0, p0}, Lcom/cymobile/ymwork/act/MapDetailFragment$CustomInfoWindowAdapter;-><init>(Lcom/cymobile/ymwork/act/MapDetailFragment;Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->setInfoWindowAdapter(Lcom/amap/api/maps/AMap$InfoWindowAdapter;)V

    .line 209
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MapDetailFragment;->aMap:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0, p0}, Lcom/amap/api/maps/AMap;->setOnMarkerClickListener(Lcom/amap/api/maps/AMap$OnMarkerClickListener;)V

    .line 210
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MapDetailFragment;->aMap:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0, p0}, Lcom/amap/api/maps/AMap;->setOnInfoWindowClickListener(Lcom/amap/api/maps/AMap$OnInfoWindowClickListener;)V

    .line 211
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MapDetailFragment;->aMap:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0, p0}, Lcom/amap/api/maps/AMap;->setOnMapLoadedListener(Lcom/amap/api/maps/AMap$OnMapLoadedListener;)V

    .line 213
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MapDetailFragment;->setUpMap()V

    .line 216
    :cond_0
    return-void
.end method


# virtual methods
.method public getMap()Lcom/amap/api/maps/AMap;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MapDetailFragment;->aMap:Lcom/amap/api/maps/AMap;

    return-object v0
.end method

.method hasSameMarker(Lcom/cymobile/ymwork/types/Building;)Z
    .locals 5
    .parameter "shop"

    .prologue
    const/4 v2, 0x0

    .line 318
    iget-object v3, p0, Lcom/cymobile/ymwork/act/MapDetailFragment;->markShops:Ljava/util/HashMap;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/cymobile/ymwork/act/MapDetailFragment;->markShops:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 337
    :cond_0
    :goto_0
    return v2

    .line 321
    :cond_1
    invoke-virtual {p1}, Lcom/cymobile/ymwork/types/Building;->getIsWange()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 324
    iget-object v3, p0, Lcom/cymobile/ymwork/act/MapDetailFragment;->markShops:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 325
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/amap/api/maps/model/Marker;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 326
    iget-object v3, p0, Lcom/cymobile/ymwork/act/MapDetailFragment;->markShops:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cymobile/ymwork/types/Building;

    .line 330
    .local v0, ashop:Lcom/cymobile/ymwork/types/Building;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/cymobile/ymwork/types/Building;->getIsWange()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 331
    invoke-virtual {v0}, Lcom/cymobile/ymwork/types/Building;->getGrid()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/cymobile/ymwork/types/Building;->getGrid()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/cymobile/ymwork/types/Building;->getGrid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/cymobile/ymwork/types/Building;->getGrid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 332
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onClearMap(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 354
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MapDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapDetailFragment;->aMap:Lcom/amap/api/maps/AMap;

    invoke-static {v0, v1}, Lcom/cymobile/ymwork/utils/AMapUtil;->checkReady(Landroid/content/Context;Lcom/amap/api/maps/AMap;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MapDetailFragment;->aMap:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0}, Lcom/amap/api/maps/AMap;->clear()V

    .line 357
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 180
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 182
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MapDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/cymobile/ymwork/act/MapFragmentActivity;

    .line 184
    .local v0, mapFragmentActivity:Lcom/cymobile/ymwork/act/MapFragmentActivity;
    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->getBianjie()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cymobile/ymwork/act/MapDetailFragment;->Bianjie:Ljava/lang/String;

    .line 185
    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->getCenterPoint()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cymobile/ymwork/act/MapDetailFragment;->CenterPoint:Ljava/lang/String;

    .line 186
    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->getBounds()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cymobile/ymwork/act/MapDetailFragment;->Bounds:Ljava/lang/String;

    .line 187
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/MapDetailFragment;->init()V

    .line 188
    return-void
.end method

.method public onInfoWindowClick(Lcom/amap/api/maps/model/Marker;)V
    .locals 6
    .parameter "marker"

    .prologue
    .line 393
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MapDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/cymobile/ymwork/act/ShopDetailsActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 394
    .local v2, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/cymobile/ymwork/act/MapDetailFragment;->markShops:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cymobile/ymwork/types/Building;

    .line 396
    .local v0, building:Lcom/cymobile/ymwork/types/Building;
    if-eqz v0, :cond_0

    .line 397
    :try_start_0
    const-string v3, "caseid"

    .line 398
    invoke-virtual {v0}, Lcom/cymobile/ymwork/types/Building;->getCaseId()Ljava/lang/String;

    move-result-object v4

    .line 397
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 399
    const-string v3, "classid"

    .line 400
    invoke-virtual {v0}, Lcom/cymobile/ymwork/types/Building;->getclassid()I

    move-result v4

    .line 399
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 401
    invoke-virtual {p0, v2}, Lcom/cymobile/ymwork/act/MapDetailFragment;->startActivity(Landroid/content/Intent;)V

    .line 410
    :goto_0
    return-void

    .line 403
    :cond_0
    const-string v3, "MapDetailFragment"

    const-string v4, "Error, not case id"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 405
    :catch_0
    move-exception v1

    .line 406
    .local v1, ee:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 407
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MapDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f090083

    .line 408
    const/4 v5, 0x0

    .line 407
    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    .line 408
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onMapLoaded()V
    .locals 0

    .prologue
    .line 388
    return-void
.end method

.method public onMarkerClick(Lcom/amap/api/maps/model/Marker;)Z
    .locals 1
    .parameter "arg0"

    .prologue
    .line 381
    const/4 v0, 0x0

    return v0
.end method

.method public onResetMap(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MapDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/cymobile/ymwork/act/MapDetailFragment;->aMap:Lcom/amap/api/maps/AMap;

    invoke-static {v4, v5}, Lcom/cymobile/ymwork/utils/AMapUtil;->checkReady(Landroid/content/Context;Lcom/amap/api/maps/AMap;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 364
    iget-object v4, p0, Lcom/cymobile/ymwork/act/MapDetailFragment;->aMap:Lcom/amap/api/maps/AMap;

    invoke-virtual {v4}, Lcom/amap/api/maps/AMap;->clear()V

    .line 366
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MapDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/act/MapFragmentActivity;

    .line 367
    .local v1, mapFragmentActivity:Lcom/cymobile/ymwork/act/MapFragmentActivity;
    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->getBuildings()Lcom/cymobile/ymwork/types/Group;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 368
    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->getBuildings()Lcom/cymobile/ymwork/types/Group;

    move-result-object v3

    .line 369
    .local v3, shops:Ljava/util/List;,"Ljava/util/List<Lcom/cymobile/ymwork/types/Building;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lt v0, v4, :cond_1

    .line 375
    .end local v0           #i:I
    .end local v1           #mapFragmentActivity:Lcom/cymobile/ymwork/act/MapFragmentActivity;
    .end local v3           #shops:Ljava/util/List;,"Ljava/util/List<Lcom/cymobile/ymwork/types/Building;>;"
    :cond_0
    return-void

    .line 370
    .restart local v0       #i:I
    .restart local v1       #mapFragmentActivity:Lcom/cymobile/ymwork/act/MapFragmentActivity;
    .restart local v3       #shops:Ljava/util/List;,"Ljava/util/List<Lcom/cymobile/ymwork/types/Building;>;"
    :cond_1
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cymobile/ymwork/types/Building;

    .line 371
    .local v2, shop:Lcom/cymobile/ymwork/types/Building;
    invoke-direct {p0, v2}, Lcom/cymobile/ymwork/act/MapDetailFragment;->addMarkersToMap(Lcom/cymobile/ymwork/types/Building;)V

    .line 369
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method randomDouble()D
    .locals 10

    .prologue
    .line 341
    const-wide v6, 0x3f50624dd2f1a9fcL

    .line 342
    .local v6, start:D
    const-wide v0, 0x3f847ae147ae147bL

    .line 343
    .local v0, end:D
    new-instance v8, Ljava/util/Random;

    invoke-direct {v8}, Ljava/util/Random;-><init>()V

    invoke-virtual {v8}, Ljava/util/Random;->nextDouble()D

    move-result-wide v2

    .line 344
    .local v2, random:D
    sub-double v8, v0, v6

    mul-double/2addr v8, v2

    add-double v4, v6, v8

    .line 345
    .local v4, result:D
    return-wide v4
.end method

.method sameDistance(DDDD)Z
    .locals 6
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"

    .prologue
    .line 348
    sub-double v0, p1, p5

    sub-double v2, p1, p5

    mul-double/2addr v0, v2

    sub-double v2, p3, p7

    sub-double v4, p3, p7

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    const-wide v2, 0x3eb0c6f7a0b5ed8dL

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setUpMap()V
    .locals 27

    .prologue
    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/MapDetailFragment;->aMap:Lcom/amap/api/maps/AMap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/amap/api/maps/AMap;->clear()V

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/MapDetailFragment;->Bianjie:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    if-lez v23, :cond_0

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/MapDetailFragment;->Bianjie:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 224
    .local v18, tmpLatLngs:Ljava/lang/String;
    const-string v23, ";"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 226
    .local v8, ll:[Ljava/lang/String;
    new-instance v12, Lcom/amap/api/maps/model/PolylineOptions;

    invoke-direct {v12}, Lcom/amap/api/maps/model/PolylineOptions;-><init>()V

    .line 227
    .local v12, options:Lcom/amap/api/maps/model/PolylineOptions;
    invoke-virtual/range {p0 .. p0}, Lcom/cymobile/ymwork/act/MapDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    .line 228
    const v24, 0x7f060029

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getColor(I)I

    move-result v23

    .line 227
    move/from16 v0, v23

    invoke-virtual {v12, v0}, Lcom/amap/api/maps/model/PolylineOptions;->color(I)Lcom/amap/api/maps/model/PolylineOptions;

    .line 230
    array-length v0, v8

    move/from16 v24, v0

    const/16 v23, 0x0

    :goto_0
    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_2

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/MapDetailFragment;->aMap:Lcom/amap/api/maps/AMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Lcom/amap/api/maps/AMap;->addPolyline(Lcom/amap/api/maps/model/PolylineOptions;)Lcom/amap/api/maps/model/Polyline;

    .line 249
    .end local v8           #ll:[Ljava/lang/String;
    .end local v12           #options:Lcom/amap/api/maps/model/PolylineOptions;
    .end local v18           #tmpLatLngs:Ljava/lang/String;
    :cond_0
    new-instance v5, Lcom/amap/api/maps/model/LatLngBounds$Builder;

    invoke-direct {v5}, Lcom/amap/api/maps/model/LatLngBounds$Builder;-><init>()V

    .line 250
    .local v5, builder:Lcom/amap/api/maps/model/LatLngBounds$Builder;
    new-instance v9, Lcom/amap/api/maps/model/LatLng;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/MapDetailFragment;->Bounds:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v24, ","

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    aget-object v23, v23, v24

    .line 251
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v23

    .line 250
    invoke-static/range {v23 .. v23}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v23

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/MapDetailFragment;->Bounds:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string v26, ","

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x1

    aget-object v25, v25, v26

    .line 252
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v25

    .line 251
    invoke-static/range {v25 .. v25}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v25

    .line 250
    move-wide/from16 v0, v23

    move-wide/from16 v2, v25

    invoke-direct {v9, v0, v1, v2, v3}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    .line 254
    .local v9, llBounds:Lcom/amap/api/maps/model/LatLng;
    new-instance v10, Lcom/amap/api/maps/model/LatLng;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/MapDetailFragment;->Bounds:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v24, ","

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x2

    aget-object v23, v23, v24

    .line 255
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v23

    .line 254
    invoke-static/range {v23 .. v23}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v23

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/MapDetailFragment;->Bounds:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string v26, ","

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x3

    aget-object v25, v25, v26

    .line 256
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v25

    .line 255
    invoke-static/range {v25 .. v25}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v25

    .line 254
    move-wide/from16 v0, v23

    move-wide/from16 v2, v25

    invoke-direct {v10, v0, v1, v2, v3}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    .line 257
    .local v10, llBounds2:Lcom/amap/api/maps/model/LatLng;
    invoke-static {}, Lcom/amap/api/maps/model/LatLngBounds;->builder()Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-result-object v23

    .line 258
    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->build()Lcom/amap/api/maps/model/LatLngBounds;

    move-result-object v4

    .line 260
    .local v4, bounds:Lcom/amap/api/maps/model/LatLngBounds;
    const/16 v23, 0x1

    .line 259
    move/from16 v0, v23

    invoke-static {v4, v0}, Lcom/amap/api/maps/CameraUpdateFactory;->newLatLngBounds(Lcom/amap/api/maps/model/LatLngBounds;I)Lcom/amap/api/maps/CameraUpdate;

    move-result-object v6

    .line 261
    .local v6, cameraUpdate:Lcom/amap/api/maps/CameraUpdate;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/MapDetailFragment;->aMap:Lcom/amap/api/maps/AMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Lcom/amap/api/maps/AMap;->moveCamera(Lcom/amap/api/maps/CameraUpdate;)V

    .line 263
    invoke-virtual/range {p0 .. p0}, Lcom/cymobile/ymwork/act/MapDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    check-cast v11, Lcom/cymobile/ymwork/act/MapFragmentActivity;

    .line 264
    .local v11, mapFragmentActivity:Lcom/cymobile/ymwork/act/MapFragmentActivity;
    invoke-virtual {v11}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->getBuildings()Lcom/cymobile/ymwork/types/Group;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v23

    if-lez v23, :cond_1

    .line 265
    invoke-virtual {v11}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->getBuildings()Lcom/cymobile/ymwork/types/Group;

    move-result-object v14

    .line 266
    .local v14, shops:Ljava/util/List;,"Ljava/util/List<Lcom/cymobile/ymwork/types/Building;>;"
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v23

    if-lt v7, v0, :cond_3

    .line 271
    .end local v7           #i:I
    .end local v14           #shops:Ljava/util/List;,"Ljava/util/List<Lcom/cymobile/ymwork/types/Building;>;"
    :cond_1
    return-void

    .line 230
    .end local v4           #bounds:Lcom/amap/api/maps/model/LatLngBounds;
    .end local v5           #builder:Lcom/amap/api/maps/model/LatLngBounds$Builder;
    .end local v6           #cameraUpdate:Lcom/amap/api/maps/CameraUpdate;
    .end local v9           #llBounds:Lcom/amap/api/maps/model/LatLng;
    .end local v10           #llBounds2:Lcom/amap/api/maps/model/LatLng;
    .end local v11           #mapFragmentActivity:Lcom/cymobile/ymwork/act/MapFragmentActivity;
    .restart local v8       #ll:[Ljava/lang/String;
    .restart local v12       #options:Lcom/amap/api/maps/model/PolylineOptions;
    .restart local v18       #tmpLatLngs:Ljava/lang/String;
    :cond_2
    aget-object v17, v8, v23

    .line 231
    .local v17, tmp:Ljava/lang/String;
    const-string v25, ","

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 232
    .local v16, tlls:[Ljava/lang/String;
    const-wide/16 v21, 0x0

    .line 233
    .local v21, tmplng:D
    const-wide/16 v19, 0x0

    .line 235
    .local v19, tmplat:D
    const/16 v25, 0x0

    aget-object v25, v16, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v21

    .line 236
    const/16 v25, 0x1

    aget-object v25, v16, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v19

    .line 238
    new-instance v15, Lcom/amap/api/maps/model/LatLng;

    move-wide/from16 v0, v19

    move-wide/from16 v2, v21

    invoke-direct {v15, v0, v1, v2, v3}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    .line 240
    .local v15, tll:Lcom/amap/api/maps/model/LatLng;
    invoke-virtual {v12, v15}, Lcom/amap/api/maps/model/PolylineOptions;->add(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/PolylineOptions;

    .line 230
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_0

    .line 267
    .end local v8           #ll:[Ljava/lang/String;
    .end local v12           #options:Lcom/amap/api/maps/model/PolylineOptions;
    .end local v15           #tll:Lcom/amap/api/maps/model/LatLng;
    .end local v16           #tlls:[Ljava/lang/String;
    .end local v17           #tmp:Ljava/lang/String;
    .end local v18           #tmpLatLngs:Ljava/lang/String;
    .end local v19           #tmplat:D
    .end local v21           #tmplng:D
    .restart local v4       #bounds:Lcom/amap/api/maps/model/LatLngBounds;
    .restart local v5       #builder:Lcom/amap/api/maps/model/LatLngBounds$Builder;
    .restart local v6       #cameraUpdate:Lcom/amap/api/maps/CameraUpdate;
    .restart local v7       #i:I
    .restart local v9       #llBounds:Lcom/amap/api/maps/model/LatLng;
    .restart local v10       #llBounds2:Lcom/amap/api/maps/model/LatLng;
    .restart local v11       #mapFragmentActivity:Lcom/cymobile/ymwork/act/MapFragmentActivity;
    .restart local v14       #shops:Ljava/util/List;,"Ljava/util/List<Lcom/cymobile/ymwork/types/Building;>;"
    :cond_3
    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/cymobile/ymwork/types/Building;

    .line 268
    .local v13, shop:Lcom/cymobile/ymwork/types/Building;
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/cymobile/ymwork/act/MapDetailFragment;->addMarkersToMap(Lcom/cymobile/ymwork/types/Building;)V

    .line 266
    add-int/lit8 v7, v7, 0x1

    goto :goto_1
.end method
