.class public Lcom/cymobile/ymwork/act/RoadsWater;
.super Landroid/support/v4/app/FragmentActivity;
.source "RoadsWater.java"


# static fields
.field private static classid:I


# instance fields
.field private aMap:Lcom/amap/api/maps/AMap;

.field private managerProxy:Lcom/amap/api/location/LocationManagerProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput v0, Lcom/cymobile/ymwork/act/RoadsWater;->classid:I

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private ensureUi()V
    .locals 2

    .prologue
    .line 42
    const v1, 0x7f080013

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/RoadsWater;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 43
    .local v0, footerpageControl:Landroid/widget/LinearLayout;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 44
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/RoadsWater;->requestWindowFeature(I)Z

    .line 26
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/RoadsWater;->setContentView(I)V

    .line 27
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/RoadsWater;->ensureUi()V

    .line 28
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/RoadsWater;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Intent_ClassId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/RoadsWater;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 30
    const-string v1, "Intent_ClassId"

    .line 29
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/cymobile/ymwork/act/RoadsWater;->classid:I

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/cymobile/ymwork/act/RoadsWater;->aMap:Lcom/amap/api/maps/AMap;

    if-nez v0, :cond_1

    .line 33
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/RoadsWater;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 34
    const v1, 0x7f080011

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/SupportMapFragment;

    invoke-virtual {v0}, Lcom/amap/api/maps/SupportMapFragment;->getMap()Lcom/amap/api/maps/AMap;

    move-result-object v0

    .line 33
    iput-object v0, p0, Lcom/cymobile/ymwork/act/RoadsWater;->aMap:Lcom/amap/api/maps/AMap;

    .line 35
    invoke-static {p0}, Lcom/amap/api/location/LocationManagerProxy;->getInstance(Landroid/app/Activity;)Lcom/amap/api/location/LocationManagerProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/cymobile/ymwork/act/RoadsWater;->managerProxy:Lcom/amap/api/location/LocationManagerProxy;

    .line 36
    iget-object v0, p0, Lcom/cymobile/ymwork/act/RoadsWater;->aMap:Lcom/amap/api/maps/AMap;

    if-eqz v0, :cond_1

    .line 37
    iget-object v0, p0, Lcom/cymobile/ymwork/act/RoadsWater;->aMap:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0}, Lcom/amap/api/maps/AMap;->getUiSettings()Lcom/amap/api/maps/UiSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/UiSettings;->setZoomControlsEnabled(Z)V

    .line 40
    :cond_1
    return-void
.end method
