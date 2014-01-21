.class public Lcom/cymobile/ymwork/act/RoadsWaterActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "RoadsWaterActivity.java"


# static fields
.field private static classid:I


# instance fields
.field public Bianjie1:Ljava/lang/String;

.field public Bounds1:Ljava/lang/String;

.field public CenterPoint1:Ljava/lang/String;

.field private aMap:Lcom/amap/api/maps/AMap;

.field private mLocation:Landroid/location/Location;

.field private managerProxy:Lcom/amap/api/location/LocationManagerProxy;

.field mapFragment:Lcom/cymobile/ymwork/act/MapDetailFragment;

.field private mapNormal:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput v0, Lcom/cymobile/ymwork/act/RoadsWaterActivity;->classid:I

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/cymobile/ymwork/act/RoadsWaterActivity;->Bianjie1:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/cymobile/ymwork/act/RoadsWaterActivity;->CenterPoint1:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/cymobile/ymwork/act/RoadsWaterActivity;->Bounds1:Ljava/lang/String;

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cymobile/ymwork/act/RoadsWaterActivity;->mapNormal:Z

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cymobile/ymwork/act/RoadsWaterActivity;->mLocation:Landroid/location/Location;

    .line 24
    return-void
.end method

.method static synthetic access$0(Lcom/cymobile/ymwork/act/RoadsWaterActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/cymobile/ymwork/act/RoadsWaterActivity;->mapNormal:Z

    return v0
.end method

.method static synthetic access$1(Lcom/cymobile/ymwork/act/RoadsWaterActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/cymobile/ymwork/act/RoadsWaterActivity;->mapNormal:Z

    return-void
.end method

.method private ensureUi()V
    .locals 11

    .prologue
    .line 64
    const v5, 0x7f08002d

    invoke-virtual {p0, v5}, Lcom/cymobile/ymwork/act/RoadsWaterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 65
    .local v2, leftbtn:Landroid/widget/ImageButton;
    new-instance v5, Lcom/cymobile/ymwork/act/RoadsWaterActivity$1;

    invoke-direct {v5, p0}, Lcom/cymobile/ymwork/act/RoadsWaterActivity$1;-><init>(Lcom/cymobile/ymwork/act/RoadsWaterActivity;)V

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    const v5, 0x7f080030

    invoke-virtual {p0, v5}, Lcom/cymobile/ymwork/act/RoadsWaterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    .line 71
    .local v3, mapsatSwitchBtn:Landroid/widget/ImageButton;
    new-instance v5, Lcom/cymobile/ymwork/act/RoadsWaterActivity$2;

    invoke-direct {v5, p0}, Lcom/cymobile/ymwork/act/RoadsWaterActivity$2;-><init>(Lcom/cymobile/ymwork/act/RoadsWaterActivity;)V

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v5, p0, Lcom/cymobile/ymwork/act/RoadsWaterActivity;->mLocation:Landroid/location/Location;

    if-eqz v5, :cond_0

    .line 89
    iget-object v5, p0, Lcom/cymobile/ymwork/act/RoadsWaterActivity;->aMap:Lcom/amap/api/maps/AMap;

    invoke-virtual {v5}, Lcom/amap/api/maps/AMap;->getCameraPosition()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v5

    iget v0, v5, Lcom/amap/api/maps/model/CameraPosition;->zoom:F

    .line 90
    .local v0, a:F
    iget-object v5, p0, Lcom/cymobile/ymwork/act/RoadsWaterActivity;->aMap:Lcom/amap/api/maps/AMap;

    new-instance v6, Lcom/amap/api/maps/model/LatLng;

    iget-object v7, p0, Lcom/cymobile/ymwork/act/RoadsWaterActivity;->mLocation:Landroid/location/Location;

    invoke-virtual {v7}, Landroid/location/Location;->getLatitude()D

    move-result-wide v7

    iget-object v9, p0, Lcom/cymobile/ymwork/act/RoadsWaterActivity;->mLocation:Landroid/location/Location;

    invoke-virtual {v9}, Landroid/location/Location;->getLongitude()D

    move-result-wide v9

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-static {v6, v0}, Lcom/amap/api/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/amap/api/maps/model/LatLng;F)Lcom/amap/api/maps/CameraUpdate;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/amap/api/maps/AMap;->animateCamera(Lcom/amap/api/maps/CameraUpdate;)V

    .line 92
    .end local v0           #a:F
    :cond_0
    const v5, 0x7f080013

    invoke-virtual {p0, v5}, Lcom/cymobile/ymwork/act/RoadsWaterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 93
    .local v1, footerpageControl:Landroid/widget/LinearLayout;
    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 94
    const v5, 0x7f08002f

    invoke-virtual {p0, v5}, Lcom/cymobile/ymwork/act/RoadsWaterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 95
    .local v4, title:Landroid/widget/TextView;
    const-string v5, "\u6700\u65b0\u9053\u8def\u79ef\u6c34\u3010\u517124\u4ef6\u3011"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    return-void
.end method


# virtual methods
.method public getBianjie1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/cymobile/ymwork/act/RoadsWaterActivity;->Bianjie1:Ljava/lang/String;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/RoadsWaterActivity;->requestWindowFeature(I)Z

    .line 42
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/RoadsWaterActivity;->setContentView(I)V

    .line 45
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/RoadsWaterActivity;->ensureUi()V

    .line 47
    iget-object v0, p0, Lcom/cymobile/ymwork/act/RoadsWaterActivity;->aMap:Lcom/amap/api/maps/AMap;

    if-nez v0, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/RoadsWaterActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 49
    const v1, 0x7f080011

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/SupportMapFragment;

    invoke-virtual {v0}, Lcom/amap/api/maps/SupportMapFragment;->getMap()Lcom/amap/api/maps/AMap;

    move-result-object v0

    .line 48
    iput-object v0, p0, Lcom/cymobile/ymwork/act/RoadsWaterActivity;->aMap:Lcom/amap/api/maps/AMap;

    .line 50
    invoke-static {p0}, Lcom/amap/api/location/LocationManagerProxy;->getInstance(Landroid/app/Activity;)Lcom/amap/api/location/LocationManagerProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/cymobile/ymwork/act/RoadsWaterActivity;->managerProxy:Lcom/amap/api/location/LocationManagerProxy;

    .line 51
    iget-object v0, p0, Lcom/cymobile/ymwork/act/RoadsWaterActivity;->aMap:Lcom/amap/api/maps/AMap;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/cymobile/ymwork/act/RoadsWaterActivity;->aMap:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0}, Lcom/amap/api/maps/AMap;->getUiSettings()Lcom/amap/api/maps/UiSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/UiSettings;->setZoomControlsEnabled(Z)V

    .line 55
    :cond_0
    return-void
.end method
