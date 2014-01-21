.class public Lcom/cymobile/ymwork/act/MapConstrustionDetailFragment;
.super Landroid/support/v4/app/Fragment;
.source "MapConstrustionDetailFragment.java"

# interfaces
.implements Lcom/amap/api/maps/AMap$OnMarkerClickListener;
.implements Lcom/amap/api/maps/AMap$OnMapLoadedListener;
.implements Lcom/amap/api/maps/AMap$OnInfoWindowClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cymobile/ymwork/act/MapConstrustionDetailFragment$CustomInfoWindowAdapter;,
        Lcom/cymobile/ymwork/act/MapConstrustionDetailFragment$ShopImageFetcher;
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
            "Lcom/cymobile/ymwork/types/ConstrustionField;",
            ">;"
        }
    .end annotation
.end field

.field public shops:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cymobile/ymwork/types/ConstrustionField;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 175
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/cymobile/ymwork/act/MapConstrustionDetailFragment;->Bianjie:Ljava/lang/String;

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/cymobile/ymwork/act/MapConstrustionDetailFragment;->CenterPoint:Ljava/lang/String;

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/cymobile/ymwork/act/MapConstrustionDetailFragment;->Bounds:Ljava/lang/String;

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/cymobile/ymwork/act/MapConstrustionDetailFragment;->AreaName:Ljava/lang/String;

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/cymobile/ymwork/act/MapConstrustionDetailFragment;->i:I

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/MapConstrustionDetailFragment;->shops:Ljava/util/List;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/MapConstrustionDetailFragment;->markShops:Ljava/util/HashMap;

    .line 177
    return-void
.end method

.method static synthetic access$0(Lcom/cymobile/ymwork/act/MapConstrustionDetailFragment;)Ljava/util/HashMap;
    .locals 1
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MapConstrustionDetailFragment;->markShops:Ljava/util/HashMap;

    return-object v0
.end method

.method private addMarkersToMap(Lcom/cymobile/ymwork/types/ConstrustionField;)V
    .locals 19
    .parameter "shop"

    .prologue
    .line 276
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/cymobile/ymwork/act/MapConstrustionDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    check-cast v8, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    .line 277
    .local v8, mapFragmentActivity:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;
    invoke-virtual {v8}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->getClassId()I

    move-result v5

    .line 278
    .local v5, classid:I
    const-string v11, "\u65b0\u589e\u5efa\u7b51"

    .line 279
    .local v11, title:Ljava/lang/String;
    const/4 v13, 0x1

    if-ne v5, v13, :cond_0

    .line 280
    const-string v11, "\u7591\u4f3c\u65b0\u589e\u5efa\u7b51"

    .line 282
    :cond_0
    const/4 v13, 0x2

    if-ne v5, v13, :cond_1

    .line 283
    const-string v11, "\u516c\u4f17\u4e3e\u62a5\u8fdd\u5efa"

    .line 285
    :cond_1
    const/4 v13, 0x3

    if-ne v5, v13, :cond_2

    .line 286
    invoke-virtual/range {p1 .. p1}, Lcom/cymobile/ymwork/types/ConstrustionField;->getCasedetail()Ljava/lang/String;

    move-result-object v12

    .line 287
    .local v12, titles:Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_8

    .line 288
    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 289
    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 297
    .end local v12           #titles:Ljava/lang/String;
    :cond_2
    :goto_0
    const/4 v13, 0x4

    if-eq v5, v13, :cond_3

    const/4 v13, 0x6

    if-eq v5, v13, :cond_3

    const/4 v13, 0x7

    if-ne v5, v13, :cond_4

    .line 311
    :cond_3
    const-string v11, "\u6d88\u9632\u5b89\u5168"

    .line 314
    :cond_4
    const/4 v13, 0x5

    if-ne v5, v13, :cond_d

    .line 315
    invoke-virtual/range {p1 .. p1}, Lcom/cymobile/ymwork/types/ConstrustionField;->getCaseType()Ljava/lang/String;

    move-result-object v4

    .line 316
    .local v4, caseType:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/cymobile/ymwork/types/ConstrustionField;->getBigCategory()Ljava/lang/String;

    move-result-object v3

    .line 317
    .local v3, bigCategory:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/cymobile/ymwork/types/ConstrustionField;->getSmallCategory()Ljava/lang/String;

    move-result-object v10

    .line 318
    .local v10, smallCategory:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/cymobile/ymwork/types/ConstrustionField;->getCasedetail()Ljava/lang/String;

    move-result-object v1

    .line 319
    .local v1, Casedetail:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/cymobile/ymwork/types/ConstrustionField;->getCasedetail()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_9

    .line 320
    move-object v11, v1

    .line 345
    .end local v1           #Casedetail:Ljava/lang/String;
    .end local v3           #bigCategory:Ljava/lang/String;
    .end local v4           #caseType:Ljava/lang/String;
    .end local v10           #smallCategory:Ljava/lang/String;
    :cond_5
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/cymobile/ymwork/types/ConstrustionField;->getAffactearea()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 347
    .local v2, affected:Ljava/lang/String;
    :try_start_1
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 348
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, "\u5e73\u7c73"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v2

    .line 351
    :goto_2
    :try_start_2
    invoke-virtual/range {p0 .. p1}, Lcom/cymobile/ymwork/act/MapConstrustionDetailFragment;->hasSameMarker(Lcom/cymobile/ymwork/types/ConstrustionField;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v13

    if-eqz v13, :cond_6

    .line 353
    :try_start_3
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/cymobile/ymwork/types/ConstrustionField;->getGeox()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    invoke-virtual/range {p0 .. p0}, Lcom/cymobile/ymwork/act/MapConstrustionDetailFragment;->randomDouble()D

    move-result-wide v16

    add-double v14, v14, v16

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/cymobile/ymwork/types/ConstrustionField;->setGeox(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 358
    :goto_3
    :try_start_4
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/cymobile/ymwork/types/ConstrustionField;->getGeoy()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    invoke-virtual/range {p0 .. p0}, Lcom/cymobile/ymwork/act/MapConstrustionDetailFragment;->randomDouble()D

    move-result-wide v16

    add-double v14, v14, v16

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/cymobile/ymwork/types/ConstrustionField;->setGeoy(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 363
    :cond_6
    :goto_4
    :try_start_5
    new-instance v13, Lcom/amap/api/maps/model/MarkerOptions;

    invoke-direct {v13}, Lcom/amap/api/maps/model/MarkerOptions;-><init>()V

    .line 365
    new-instance v14, Lcom/amap/api/maps/model/LatLng;

    invoke-virtual/range {p1 .. p1}, Lcom/cymobile/ymwork/types/ConstrustionField;->getGeoy()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v15

    .line 366
    invoke-virtual/range {p1 .. p1}, Lcom/cymobile/ymwork/types/ConstrustionField;->getGeox()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v17

    .line 365
    invoke-direct/range {v14 .. v18}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    .line 364
    invoke-virtual {v13, v14}, Lcom/amap/api/maps/model/MarkerOptions;->position(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v13

    .line 367
    invoke-virtual {v13, v11}, Lcom/amap/api/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v13

    invoke-virtual {v13, v2}, Lcom/amap/api/maps/model/MarkerOptions;->snippet(Ljava/lang/String;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v13

    .line 368
    invoke-static {}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->defaultMarker()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/amap/api/maps/model/MarkerOptions;->icon(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v9

    .line 369
    .local v9, option:Lcom/amap/api/maps/model/MarkerOptions;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cymobile/ymwork/act/MapConstrustionDetailFragment;->aMap:Lcom/amap/api/maps/AMap;

    invoke-virtual {v13, v9}, Lcom/amap/api/maps/AMap;->addMarker(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/cymobile/ymwork/act/MapConstrustionDetailFragment;->defaultMarker:Lcom/amap/api/maps/model/Marker;

    .line 370
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cymobile/ymwork/act/MapConstrustionDetailFragment;->markShops:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cymobile/ymwork/act/MapConstrustionDetailFragment;->defaultMarker:Lcom/amap/api/maps/model/Marker;

    move-object/from16 v0, p1

    invoke-virtual {v13, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cymobile/ymwork/act/MapConstrustionDetailFragment;->defaultMarker:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v13}, Lcom/amap/api/maps/model/Marker;->showInfoWindow()V

    .line 377
    .end local v2           #affected:Ljava/lang/String;
    .end local v5           #classid:I
    .end local v8           #mapFragmentActivity:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;
    .end local v9           #option:Lcom/amap/api/maps/model/MarkerOptions;
    .end local v11           #title:Ljava/lang/String;
    :goto_5
    return-void

    .line 291
    .restart local v5       #classid:I
    .restart local v8       #mapFragmentActivity:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;
    .restart local v11       #title:Ljava/lang/String;
    .restart local v12       #titles:Ljava/lang/String;
    :cond_7
    const-string v11, "\u571f\u65b9\u5de5\u5730"

    goto/16 :goto_0

    .line 294
    :cond_8
    const-string v11, "\u571f\u65b9\u5de5\u5730"

    goto/16 :goto_0

    .line 321
    .end local v12           #titles:Ljava/lang/String;
    .restart local v1       #Casedetail:Ljava/lang/String;
    .restart local v3       #bigCategory:Ljava/lang/String;
    .restart local v4       #caseType:Ljava/lang/String;
    .restart local v10       #smallCategory:Ljava/lang/String;
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/cymobile/ymwork/types/ConstrustionField;->getSmallCategory()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_a

    .line 322
    move-object v11, v10

    goto/16 :goto_1

    .line 323
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/cymobile/ymwork/types/ConstrustionField;->getBigCategory()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_b

    .line 324
    move-object v11, v3

    goto/16 :goto_1

    .line 325
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/cymobile/ymwork/types/ConstrustionField;->getCaseType()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_c

    .line 326
    move-object v11, v4

    goto/16 :goto_1

    .line 328
    :cond_c
    const-string v11, "\u516c\u4f17\u4e3e\u62a5\u6295\u8bc9"

    goto/16 :goto_1

    .line 330
    .end local v1           #Casedetail:Ljava/lang/String;
    .end local v3           #bigCategory:Ljava/lang/String;
    .end local v4           #caseType:Ljava/lang/String;
    .end local v10           #smallCategory:Ljava/lang/String;
    :cond_d
    const/16 v13, 0x8

    if-ne v5, v13, :cond_e

    .line 331
    const-string v11, "\u9884\u9632\u7164\u6c14\u4e2d\u6bd2\u5b89\u5168"

    goto/16 :goto_1

    .line 332
    :cond_e
    const/16 v13, 0x9

    if-ne v5, v13, :cond_f

    .line 333
    const-string v11, "\u8fdd\u6cd5\u5efa\u8bbe"

    goto/16 :goto_1

    .line 334
    :cond_f
    const/16 v13, 0xa

    if-ne v5, v13, :cond_10

    .line 335
    const-string v11, "\u51fa\u79df\u623f\u5c4b"

    goto/16 :goto_1

    .line 336
    :cond_10
    const/16 v13, 0xb

    if-ne v5, v13, :cond_11

    .line 337
    const-string v11, "\u4eba\u53e3\u7ba1\u7406"

    goto/16 :goto_1

    .line 338
    :cond_11
    const/16 v13, 0xc

    if-ne v5, v13, :cond_12

    .line 339
    const-string v11, "\u98df\u54c1\u5b89\u5168"

    goto/16 :goto_1

    .line 340
    :cond_12
    const/16 v13, 0xd

    if-ne v5, v13, :cond_13

    .line 341
    const-string v11, "\u8bc1\u7167\u8d44\u8d28"

    goto/16 :goto_1

    .line 342
    :cond_13
    const/16 v13, 0xe

    if-ne v5, v13, :cond_5

    .line 343
    const-string v11, "\u5176\u4ed6"

    goto/16 :goto_1

    .line 354
    .restart local v2       #affected:Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 355
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_3

    .line 372
    .end local v2           #affected:Ljava/lang/String;
    .end local v5           #classid:I
    .end local v6           #e:Ljava/lang/Exception;
    .end local v8           #mapFragmentActivity:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;
    .end local v11           #title:Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 373
    .local v7, ee:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 359
    .end local v7           #ee:Ljava/lang/Exception;
    .restart local v2       #affected:Ljava/lang/String;
    .restart local v5       #classid:I
    .restart local v8       #mapFragmentActivity:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;
    .restart local v11       #title:Ljava/lang/String;
    :catch_2
    move-exception v6

    .line 360
    .restart local v6       #e:Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_4

    .line 349
    .end local v6           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v13

    goto/16 :goto_2
.end method

.method private init()V
    .locals 2

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MapConstrustionDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/cymobile/ymwork/HomeApplication;

    .line 197
    invoke-virtual {v0}, Lcom/cymobile/ymwork/HomeApplication;->getRemoteResourceManager()Lcom/cymobile/ymwork/server/RemoteResourceManager;

    move-result-object v0

    .line 196
    iput-object v0, p0, Lcom/cymobile/ymwork/act/MapConstrustionDetailFragment;->mRrm:Lcom/cymobile/ymwork/server/RemoteResourceManager;

    .line 199
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MapConstrustionDetailFragment;->aMap:Lcom/amap/api/maps/AMap;

    if-nez v0, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MapConstrustionDetailFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 201
    const v1, 0x7f080011

    .line 200
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/SupportMapFragment;

    .line 201
    invoke-virtual {v0}, Lcom/amap/api/maps/SupportMapFragment;->getMap()Lcom/amap/api/maps/AMap;

    move-result-object v0

    .line 200
    iput-object v0, p0, Lcom/cymobile/ymwork/act/MapConstrustionDetailFragment;->aMap:Lcom/amap/api/maps/AMap;

    .line 202
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MapConstrustionDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionDetailFragment;->aMap:Lcom/amap/api/maps/AMap;

    invoke-static {v0, v1}, Lcom/cymobile/ymwork/utils/AMapUtil;->checkReady(Landroid/content/Context;Lcom/amap/api/maps/AMap;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MapConstrustionDetailFragment;->aMap:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0}, Lcom/amap/api/maps/AMap;->getUiSettings()Lcom/amap/api/maps/UiSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/UiSettings;->setZoomControlsEnabled(Z)V

    .line 207
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MapConstrustionDetailFragment;->aMap:Lcom/amap/api/maps/AMap;

    new-instance v1, Lcom/cymobile/ymwork/act/MapConstrustionDetailFragment$CustomInfoWindowAdapter;

    invoke-direct {v1, p0, p0}, Lcom/cymobile/ymwork/act/MapConstrustionDetailFragment$CustomInfoWindowAdapter;-><init>(Lcom/cymobile/ymwork/act/MapConstrustionDetailFragment;Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->setInfoWindowAdapter(Lcom/amap/api/maps/AMap$InfoWindowAdapter;)V

    .line 210
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MapConstrustionDetailFragment;->aMap:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0, p0}, Lcom/amap/api/maps/AMap;->setOnMarkerClickListener(Lcom/amap/api/maps/AMap$OnMarkerClickListener;)V

    .line 211
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MapConstrustionDetailFragment;->aMap:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0, p0}, Lcom/amap/api/maps/AMap;->setOnInfoWindowClickListener(Lcom/amap/api/maps/AMap$OnInfoWindowClickListener;)V

    .line 212
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MapConstrustionDetailFragment;->aMap:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0, p0}, Lcom/amap/api/maps/AMap;->setOnMapLoadedListener(Lcom/amap/api/maps/AMap$OnMapLoadedListener;)V

    .line 214
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MapConstrustionDetailFragment;->setUpMap()V

    .line 217
    :cond_0
    return-void
.end method


# virtual methods
.method public getMap()Lcom/amap/api/maps/AMap;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MapConstrustionDetailFragment;->aMap:Lcom/amap/api/maps/AMap;

    return-object v0
.end method

.method hasSameMarker(Lcom/cymobile/ymwork/types/ConstrustionField;)Z
    .locals 5
    .parameter "shop"

    .prologue
    const/4 v2, 0x0

    .line 379
    iget-object v3, p0, Lcom/cymobile/ymwork/act/MapConstrustionDetailFragment;->markShops:Ljava/util/HashMap;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/cymobile/ymwork/act/MapConstrustionDetailFragment;->markShops:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 398
    :cond_0
    :goto_0
    return v2

    .line 382
    :cond_1
    invoke-virtual {p1}, Lcom/cymobile/ymwork/types/ConstrustionField;->getIsWange()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 385
    iget-object v3, p0, Lcom/cymobile/ymwork/act/MapConstrustionDetailFragment;->markShops:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 386
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/amap/api/maps/model/Marker;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 387
    iget-object v3, p0, Lcom/cymobile/ymwork/act/MapConstrustionDetailFragment;->markShops:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cymobile/ymwork/types/ConstrustionField;

    .line 391
    .local v0, ashop:Lcom/cymobile/ymwork/types/ConstrustionField;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/cymobile/ymwork/types/ConstrustionField;->getIsWange()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 392
    invoke-virtual {v0}, Lcom/cymobile/ymwork/types/ConstrustionField;->getGrid()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/cymobile/ymwork/types/ConstrustionField;->getGrid()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/cymobile/ymwork/types/ConstrustionField;->getGrid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/cymobile/ymwork/types/ConstrustionField;->getGrid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 393
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onClearMap(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 415
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MapConstrustionDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionDetailFragment;->aMap:Lcom/amap/api/maps/AMap;

    invoke-static {v0, v1}, Lcom/cymobile/ymwork/utils/AMapUtil;->checkReady(Landroid/content/Context;Lcom/amap/api/maps/AMap;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MapConstrustionDetailFragment;->aMap:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0}, Lcom/amap/api/maps/AMap;->clear()V

    .line 418
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 181
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 183
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MapConstrustionDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    .line 185
    .local v0, mapFragmentActivity:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;
    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->getBianjie()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionDetailFragment;->Bianjie:Ljava/lang/String;

    .line 186
    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->getCenterPoint()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionDetailFragment;->CenterPoint:Ljava/lang/String;

    .line 187
    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->getBounds()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionDetailFragment;->Bounds:Ljava/lang/String;

    .line 188
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/MapConstrustionDetailFragment;->init()V

    .line 189
    return-void
.end method

.method public onInfoWindowClick(Lcom/amap/api/maps/model/Marker;)V
    .locals 6
    .parameter "marker"

    .prologue
    .line 454
    iget-object v3, p0, Lcom/cymobile/ymwork/act/MapConstrustionDetailFragment;->markShops:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cymobile/ymwork/types/ConstrustionField;

    .line 455
    .local v0, building:Lcom/cymobile/ymwork/types/ConstrustionField;
    const/4 v2, 0x0

    .line 456
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v0}, Lcom/cymobile/ymwork/types/ConstrustionField;->getClassids()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 457
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MapConstrustionDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 468
    .restart local v2       #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    if-eqz v0, :cond_4

    .line 469
    :try_start_0
    const-string v3, "caseid"

    invoke-virtual {v0}, Lcom/cymobile/ymwork/types/ConstrustionField;->getCaseid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 470
    const-string v3, "classid"

    invoke-virtual {v0}, Lcom/cymobile/ymwork/types/ConstrustionField;->getClassids()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 471
    invoke-virtual {p0, v2}, Lcom/cymobile/ymwork/act/MapConstrustionDetailFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 479
    :goto_1
    return-void

    .line 458
    :cond_1
    invoke-virtual {v0}, Lcom/cymobile/ymwork/types/ConstrustionField;->getClassids()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2

    invoke-virtual {v0}, Lcom/cymobile/ymwork/types/ConstrustionField;->getClassids()I

    move-result v3

    const/4 v4, 0x6

    if-eq v3, v4, :cond_2

    .line 459
    invoke-virtual {v0}, Lcom/cymobile/ymwork/types/ConstrustionField;->getClassids()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_2

    invoke-virtual {v0}, Lcom/cymobile/ymwork/types/ConstrustionField;->getClassids()I

    move-result v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_2

    .line 460
    invoke-virtual {v0}, Lcom/cymobile/ymwork/types/ConstrustionField;->getClassids()I

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_2

    invoke-virtual {v0}, Lcom/cymobile/ymwork/types/ConstrustionField;->getClassids()I

    move-result v3

    const/16 v4, 0xb

    if-eq v3, v4, :cond_2

    .line 461
    invoke-virtual {v0}, Lcom/cymobile/ymwork/types/ConstrustionField;->getClassids()I

    move-result v3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_2

    invoke-virtual {v0}, Lcom/cymobile/ymwork/types/ConstrustionField;->getClassids()I

    move-result v3

    const/16 v4, 0xd

    if-eq v3, v4, :cond_2

    .line 462
    invoke-virtual {v0}, Lcom/cymobile/ymwork/types/ConstrustionField;->getClassids()I

    move-result v3

    const/16 v4, 0xe

    if-eq v3, v4, :cond_2

    invoke-virtual {v0}, Lcom/cymobile/ymwork/types/ConstrustionField;->getClassids()I

    move-result v3

    const/16 v4, 0xf

    if-ne v3, v4, :cond_3

    .line 463
    :cond_2
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MapConstrustionDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v2       #intent:Landroid/content/Intent;
    goto :goto_0

    .line 464
    :cond_3
    invoke-virtual {v0}, Lcom/cymobile/ymwork/types/ConstrustionField;->getClassids()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    .line 465
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MapConstrustionDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v2       #intent:Landroid/content/Intent;
    goto/16 :goto_0

    .line 473
    :cond_4
    :try_start_1
    const-string v3, "MapDetailFragment"

    const-string v4, "Error, not case id"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 475
    :catch_0
    move-exception v1

    .line 476
    .local v1, ee:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 477
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MapConstrustionDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f090083

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1
.end method

.method public onMapLoaded()V
    .locals 0

    .prologue
    .line 449
    return-void
.end method

.method public onMarkerClick(Lcom/amap/api/maps/model/Marker;)Z
    .locals 1
    .parameter "arg0"

    .prologue
    .line 442
    const/4 v0, 0x0

    return v0
.end method

.method public onResetMap(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    .line 424
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MapConstrustionDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/cymobile/ymwork/act/MapConstrustionDetailFragment;->aMap:Lcom/amap/api/maps/AMap;

    invoke-static {v4, v5}, Lcom/cymobile/ymwork/utils/AMapUtil;->checkReady(Landroid/content/Context;Lcom/amap/api/maps/AMap;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 425
    iget-object v4, p0, Lcom/cymobile/ymwork/act/MapConstrustionDetailFragment;->aMap:Lcom/amap/api/maps/AMap;

    invoke-virtual {v4}, Lcom/amap/api/maps/AMap;->clear()V

    .line 427
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MapConstrustionDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    .line 428
    .local v1, mapFragmentActivity:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;
    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->getBuildings()Lcom/cymobile/ymwork/types/Group;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 429
    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->getBuildings()Lcom/cymobile/ymwork/types/Group;

    move-result-object v3

    .line 430
    .local v3, shops:Ljava/util/List;,"Ljava/util/List<Lcom/cymobile/ymwork/types/ConstrustionField;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lt v0, v4, :cond_1

    .line 436
    .end local v0           #i:I
    .end local v1           #mapFragmentActivity:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;
    .end local v3           #shops:Ljava/util/List;,"Ljava/util/List<Lcom/cymobile/ymwork/types/ConstrustionField;>;"
    :cond_0
    return-void

    .line 431
    .restart local v0       #i:I
    .restart local v1       #mapFragmentActivity:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;
    .restart local v3       #shops:Ljava/util/List;,"Ljava/util/List<Lcom/cymobile/ymwork/types/ConstrustionField;>;"
    :cond_1
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cymobile/ymwork/types/ConstrustionField;

    .line 432
    .local v2, shop:Lcom/cymobile/ymwork/types/ConstrustionField;
    invoke-direct {p0, v2}, Lcom/cymobile/ymwork/act/MapConstrustionDetailFragment;->addMarkersToMap(Lcom/cymobile/ymwork/types/ConstrustionField;)V

    .line 430
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method randomDouble()D
    .locals 10

    .prologue
    .line 402
    const-wide v6, 0x3f50624dd2f1a9fcL

    .line 403
    .local v6, start:D
    const-wide v0, 0x3f847ae147ae147bL

    .line 404
    .local v0, end:D
    new-instance v8, Ljava/util/Random;

    invoke-direct {v8}, Ljava/util/Random;-><init>()V

    invoke-virtual {v8}, Ljava/util/Random;->nextDouble()D

    move-result-wide v2

    .line 405
    .local v2, random:D
    sub-double v8, v0, v6

    mul-double/2addr v8, v2

    add-double v4, v6, v8

    .line 406
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
    .line 409
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
    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/MapConstrustionDetailFragment;->aMap:Lcom/amap/api/maps/AMap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/amap/api/maps/AMap;->clear()V

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/MapConstrustionDetailFragment;->Bianjie:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    if-lez v23, :cond_0

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/MapConstrustionDetailFragment;->Bianjie:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 225
    .local v18, tmpLatLngs:Ljava/lang/String;
    const-string v23, ";"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 227
    .local v8, ll:[Ljava/lang/String;
    new-instance v12, Lcom/amap/api/maps/model/PolylineOptions;

    invoke-direct {v12}, Lcom/amap/api/maps/model/PolylineOptions;-><init>()V

    .line 228
    .local v12, options:Lcom/amap/api/maps/model/PolylineOptions;
    invoke-virtual/range {p0 .. p0}, Lcom/cymobile/ymwork/act/MapConstrustionDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    .line 229
    const v24, 0x7f060029

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getColor(I)I

    move-result v23

    .line 228
    move/from16 v0, v23

    invoke-virtual {v12, v0}, Lcom/amap/api/maps/model/PolylineOptions;->color(I)Lcom/amap/api/maps/model/PolylineOptions;

    .line 231
    array-length v0, v8

    move/from16 v24, v0

    const/16 v23, 0x0

    :goto_0
    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_2

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/MapConstrustionDetailFragment;->aMap:Lcom/amap/api/maps/AMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Lcom/amap/api/maps/AMap;->addPolyline(Lcom/amap/api/maps/model/PolylineOptions;)Lcom/amap/api/maps/model/Polyline;

    .line 250
    .end local v8           #ll:[Ljava/lang/String;
    .end local v12           #options:Lcom/amap/api/maps/model/PolylineOptions;
    .end local v18           #tmpLatLngs:Ljava/lang/String;
    :cond_0
    new-instance v5, Lcom/amap/api/maps/model/LatLngBounds$Builder;

    invoke-direct {v5}, Lcom/amap/api/maps/model/LatLngBounds$Builder;-><init>()V

    .line 251
    .local v5, builder:Lcom/amap/api/maps/model/LatLngBounds$Builder;
    new-instance v9, Lcom/amap/api/maps/model/LatLng;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/MapConstrustionDetailFragment;->Bounds:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v24, ","

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    aget-object v23, v23, v24

    .line 252
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v23

    .line 251
    invoke-static/range {v23 .. v23}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v23

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/MapConstrustionDetailFragment;->Bounds:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string v26, ","

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x1

    aget-object v25, v25, v26

    .line 253
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v25

    .line 252
    invoke-static/range {v25 .. v25}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v25

    .line 251
    move-wide/from16 v0, v23

    move-wide/from16 v2, v25

    invoke-direct {v9, v0, v1, v2, v3}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    .line 255
    .local v9, llBounds:Lcom/amap/api/maps/model/LatLng;
    new-instance v10, Lcom/amap/api/maps/model/LatLng;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/MapConstrustionDetailFragment;->Bounds:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v24, ","

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x2

    aget-object v23, v23, v24

    .line 256
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v23

    .line 255
    invoke-static/range {v23 .. v23}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v23

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/MapConstrustionDetailFragment;->Bounds:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string v26, ","

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x3

    aget-object v25, v25, v26

    .line 257
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v25

    .line 256
    invoke-static/range {v25 .. v25}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v25

    .line 255
    move-wide/from16 v0, v23

    move-wide/from16 v2, v25

    invoke-direct {v10, v0, v1, v2, v3}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    .line 258
    .local v10, llBounds2:Lcom/amap/api/maps/model/LatLng;
    invoke-static {}, Lcom/amap/api/maps/model/LatLngBounds;->builder()Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-result-object v23

    .line 259
    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->build()Lcom/amap/api/maps/model/LatLngBounds;

    move-result-object v4

    .line 261
    .local v4, bounds:Lcom/amap/api/maps/model/LatLngBounds;
    const/16 v23, 0x1

    .line 260
    move/from16 v0, v23

    invoke-static {v4, v0}, Lcom/amap/api/maps/CameraUpdateFactory;->newLatLngBounds(Lcom/amap/api/maps/model/LatLngBounds;I)Lcom/amap/api/maps/CameraUpdate;

    move-result-object v6

    .line 262
    .local v6, cameraUpdate:Lcom/amap/api/maps/CameraUpdate;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/MapConstrustionDetailFragment;->aMap:Lcom/amap/api/maps/AMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Lcom/amap/api/maps/AMap;->moveCamera(Lcom/amap/api/maps/CameraUpdate;)V

    .line 264
    invoke-virtual/range {p0 .. p0}, Lcom/cymobile/ymwork/act/MapConstrustionDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    check-cast v11, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    .line 265
    .local v11, mapFragmentActivity:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;
    invoke-virtual {v11}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->getBuildings()Lcom/cymobile/ymwork/types/Group;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v23

    if-lez v23, :cond_1

    .line 266
    invoke-virtual {v11}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->getBuildings()Lcom/cymobile/ymwork/types/Group;

    move-result-object v14

    .line 267
    .local v14, shops:Ljava/util/List;,"Ljava/util/List<Lcom/cymobile/ymwork/types/ConstrustionField;>;"
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v23

    if-lt v7, v0, :cond_3

    .line 272
    .end local v7           #i:I
    .end local v14           #shops:Ljava/util/List;,"Ljava/util/List<Lcom/cymobile/ymwork/types/ConstrustionField;>;"
    :cond_1
    return-void

    .line 231
    .end local v4           #bounds:Lcom/amap/api/maps/model/LatLngBounds;
    .end local v5           #builder:Lcom/amap/api/maps/model/LatLngBounds$Builder;
    .end local v6           #cameraUpdate:Lcom/amap/api/maps/CameraUpdate;
    .end local v9           #llBounds:Lcom/amap/api/maps/model/LatLng;
    .end local v10           #llBounds2:Lcom/amap/api/maps/model/LatLng;
    .end local v11           #mapFragmentActivity:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;
    .restart local v8       #ll:[Ljava/lang/String;
    .restart local v12       #options:Lcom/amap/api/maps/model/PolylineOptions;
    .restart local v18       #tmpLatLngs:Ljava/lang/String;
    :cond_2
    aget-object v17, v8, v23

    .line 232
    .local v17, tmp:Ljava/lang/String;
    const-string v25, ","

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 233
    .local v16, tlls:[Ljava/lang/String;
    const-wide/16 v21, 0x0

    .line 234
    .local v21, tmplng:D
    const-wide/16 v19, 0x0

    .line 236
    .local v19, tmplat:D
    const/16 v25, 0x0

    aget-object v25, v16, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v21

    .line 237
    const/16 v25, 0x1

    aget-object v25, v16, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v19

    .line 239
    new-instance v15, Lcom/amap/api/maps/model/LatLng;

    move-wide/from16 v0, v19

    move-wide/from16 v2, v21

    invoke-direct {v15, v0, v1, v2, v3}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    .line 241
    .local v15, tll:Lcom/amap/api/maps/model/LatLng;
    invoke-virtual {v12, v15}, Lcom/amap/api/maps/model/PolylineOptions;->add(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/PolylineOptions;

    .line 231
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_0

    .line 268
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
    .restart local v11       #mapFragmentActivity:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;
    .restart local v14       #shops:Ljava/util/List;,"Ljava/util/List<Lcom/cymobile/ymwork/types/ConstrustionField;>;"
    :cond_3
    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/cymobile/ymwork/types/ConstrustionField;

    .line 269
    .local v13, shop:Lcom/cymobile/ymwork/types/ConstrustionField;
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/cymobile/ymwork/act/MapConstrustionDetailFragment;->addMarkersToMap(Lcom/cymobile/ymwork/types/ConstrustionField;)V

    .line 267
    add-int/lit8 v7, v7, 0x1

    goto :goto_1
.end method
