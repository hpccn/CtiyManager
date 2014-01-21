.class public Lcom/cymobile/ymwork/act/MapFragmentActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "MapFragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cymobile/ymwork/act/MapFragmentActivity$DownloadTask;,
        Lcom/cymobile/ymwork/act/MapFragmentActivity$LocatingTask;,
        Lcom/cymobile/ymwork/act/MapFragmentActivity$PaganiteTask;,
        Lcom/cymobile/ymwork/act/MapFragmentActivity$PaginateListener;
    }
.end annotation


# static fields
.field private static final DIALOG_SHOW_HANDLING_PROGRESS:I = 0xc

.field private static final DIALOG_SHOW_LOCATING_PROGRESS:I = 0x14

.field private static final MESSAGE_USE_DEFAULT_LOCATION:I = 0x65

.field private static final MSG_LoadDone:I = 0xa

.field private static final MSG_PageLoadDone:I = 0x2

.field private static final POSITION_TIME_OUT:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "MapFragmentActivity"

.field private static classid:I


# instance fields
.field private AreaName:Ljava/lang/String;

.field private Bianjie:Ljava/lang/String;

.field private Bounds:Ljava/lang/String;

.field private CenterPoint:Ljava/lang/String;

.field private aMap:Lcom/amap/api/maps/AMap;

.field private backImageView:Landroid/widget/ImageView;

.field private bd:Landroid/os/Bundle;

.field private centerView:Landroid/widget/ImageView;

.field private circleProgressBar:Landroid/widget/ProgressBar;

.field contexts:Landroid/content/Context;

.field currentPageCount:I

.field private days:I

.field homeApplication:Lcom/cymobile/ymwork/HomeApplication;

.field private isLocateTaskRunning:Z

.field private isProgressShowing:Z

.field private isSubmitTaskRunning:Z

.field left_to_button:Landroid/widget/ImageView;

.field listener:Lcom/amap/api/location/AMapLocationListener;

.field private locateTask:Lcom/cymobile/ymwork/act/MapFragmentActivity$LocatingTask;

.field private locating:Z

.field mHandler:Landroid/os/Handler;

.field private mHomeApplication:Lcom/cymobile/ymwork/HomeApplication;

.field private mLocation:Landroid/location/Location;

.field mPrefs:Landroid/content/SharedPreferences;

.field private managerProxy:Lcom/amap/api/location/LocationManagerProxy;

.field mapFragment:Lcom/cymobile/ymwork/act/MapDetailFragment;

.field private mapNormal:Z

.field right_to_button:Landroid/widget/ImageView;

.field private shoplat:D

.field private shoplng:D

.field private shops:Lcom/cymobile/ymwork/types/Group;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cymobile/ymwork/types/Group",
            "<",
            "Lcom/cymobile/ymwork/types/Building;",
            ">;"
        }
    .end annotation
.end field

.field showpaginate:Landroid/widget/TextView;

.field userZoneId:Ljava/lang/String;

.field private zoneId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    sput v0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->classid:I

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->CenterPoint:Ljava/lang/String;

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->Bianjie:Ljava/lang/String;

    .line 72
    iput-object v2, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->mLocation:Landroid/location/Location;

    .line 74
    iput-boolean v1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->isLocateTaskRunning:Z

    .line 75
    iput-boolean v1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->isSubmitTaskRunning:Z

    .line 77
    iput-boolean v1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->locating:Z

    .line 78
    iput-wide v3, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->shoplat:D

    .line 79
    iput-wide v3, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->shoplng:D

    .line 81
    iput-object v2, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->homeApplication:Lcom/cymobile/ymwork/HomeApplication;

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->Bounds:Ljava/lang/String;

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->AreaName:Ljava/lang/String;

    .line 91
    iput-object v2, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->zoneId:Ljava/lang/String;

    .line 92
    iput v5, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->days:I

    .line 101
    iput-boolean v1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->isProgressShowing:Z

    .line 150
    iput-boolean v5, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->mapNormal:Z

    .line 272
    new-instance v0, Lcom/cymobile/ymwork/types/Group;

    invoke-direct {v0}, Lcom/cymobile/ymwork/types/Group;-><init>()V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->shops:Lcom/cymobile/ymwork/types/Group;

    .line 394
    iput v1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->currentPageCount:I

    .line 465
    new-instance v0, Lcom/cymobile/ymwork/act/MapFragmentActivity$1;

    invoke-direct {v0, p0}, Lcom/cymobile/ymwork/act/MapFragmentActivity$1;-><init>(Lcom/cymobile/ymwork/act/MapFragmentActivity;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->mHandler:Landroid/os/Handler;

    .line 615
    new-instance v0, Lcom/cymobile/ymwork/act/MapFragmentActivity$2;

    invoke-direct {v0, p0}, Lcom/cymobile/ymwork/act/MapFragmentActivity$2;-><init>(Lcom/cymobile/ymwork/act/MapFragmentActivity;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->listener:Lcom/amap/api/location/AMapLocationListener;

    .line 59
    return-void
.end method

.method static synthetic access$0(Lcom/cymobile/ymwork/act/MapFragmentActivity;)Landroid/os/Bundle;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->bd:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cymobile/ymwork/act/MapFragmentActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->AreaName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10(Lcom/cymobile/ymwork/act/MapFragmentActivity;)Lcom/amap/api/location/LocationManagerProxy;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->managerProxy:Lcom/amap/api/location/LocationManagerProxy;

    return-object v0
.end method

.method static synthetic access$11(Lcom/cymobile/ymwork/act/MapFragmentActivity;Landroid/location/Location;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->mLocation:Landroid/location/Location;

    return-void
.end method

.method static synthetic access$12(Lcom/cymobile/ymwork/act/MapFragmentActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->circleProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$13(Lcom/cymobile/ymwork/act/MapFragmentActivity;)Lcom/cymobile/ymwork/HomeApplication;
    .locals 1
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->mHomeApplication:Lcom/cymobile/ymwork/HomeApplication;

    return-object v0
.end method

.method static synthetic access$14(Lcom/cymobile/ymwork/act/MapFragmentActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->zoneId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$15(Lcom/cymobile/ymwork/act/MapFragmentActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->Bianjie:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$16(Lcom/cymobile/ymwork/act/MapFragmentActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->CenterPoint:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$17(Lcom/cymobile/ymwork/act/MapFragmentActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->Bounds:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$18(Lcom/cymobile/ymwork/act/MapFragmentActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 92
    iget v0, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->days:I

    return v0
.end method

.method static synthetic access$19(Lcom/cymobile/ymwork/act/MapFragmentActivity;Lcom/cymobile/ymwork/types/Group;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 272
    iput-object p1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->shops:Lcom/cymobile/ymwork/types/Group;

    return-void
.end method

.method static synthetic access$2(Lcom/cymobile/ymwork/act/MapFragmentActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->AreaName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$20(Lcom/cymobile/ymwork/act/MapFragmentActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 694
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->preLocateTask()V

    return-void
.end method

.method static synthetic access$21(Lcom/cymobile/ymwork/act/MapFragmentActivity;D)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 78
    iput-wide p1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->shoplat:D

    return-void
.end method

.method static synthetic access$22(Lcom/cymobile/ymwork/act/MapFragmentActivity;D)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 79
    iput-wide p1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->shoplng:D

    return-void
.end method

.method static synthetic access$23(Lcom/cymobile/ymwork/act/MapFragmentActivity;)D
    .locals 2
    .parameter

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->shoplat:D

    return-wide v0
.end method

.method static synthetic access$24(Lcom/cymobile/ymwork/act/MapFragmentActivity;)D
    .locals 2
    .parameter

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->shoplng:D

    return-wide v0
.end method

.method static synthetic access$25(Lcom/cymobile/ymwork/act/MapFragmentActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->centerView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$26(Lcom/cymobile/ymwork/act/MapFragmentActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 555
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->startLocating()V

    return-void
.end method

.method static synthetic access$27(Lcom/cymobile/ymwork/act/MapFragmentActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 456
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->doLocating()V

    return-void
.end method

.method static synthetic access$28(Lcom/cymobile/ymwork/act/MapFragmentActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->mapNormal:Z

    return v0
.end method

.method static synthetic access$29(Lcom/cymobile/ymwork/act/MapFragmentActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->mapNormal:Z

    return-void
.end method

.method static synthetic access$3(Lcom/cymobile/ymwork/act/MapFragmentActivity;)Lcom/cymobile/ymwork/types/Group;
    .locals 1
    .parameter

    .prologue
    .line 272
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->shops:Lcom/cymobile/ymwork/types/Group;

    return-object v0
.end method

.method static synthetic access$30(Lcom/cymobile/ymwork/act/MapFragmentActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->isLocateTaskRunning:Z

    return v0
.end method

.method static synthetic access$31(Lcom/cymobile/ymwork/act/MapFragmentActivity;)Lcom/cymobile/ymwork/act/MapFragmentActivity$LocatingTask;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->locateTask:Lcom/cymobile/ymwork/act/MapFragmentActivity$LocatingTask;

    return-object v0
.end method

.method static synthetic access$32(Lcom/cymobile/ymwork/act/MapFragmentActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->isSubmitTaskRunning:Z

    return v0
.end method

.method static synthetic access$4()I
    .locals 1

    .prologue
    .line 90
    sget v0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->classid:I

    return v0
.end method

.method static synthetic access$5(Lcom/cymobile/ymwork/act/MapFragmentActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 700
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->resetPaginate()V

    return-void
.end method

.method static synthetic access$6(Lcom/cymobile/ymwork/act/MapFragmentActivity;)Landroid/location/Location;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic access$7(Lcom/cymobile/ymwork/act/MapFragmentActivity;)Lcom/amap/api/maps/AMap;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->aMap:Lcom/amap/api/maps/AMap;

    return-object v0
.end method

.method static synthetic access$8(Lcom/cymobile/ymwork/act/MapFragmentActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->isProgressShowing:Z

    return v0
.end method

.method static synthetic access$9(Lcom/cymobile/ymwork/act/MapFragmentActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->isProgressShowing:Z

    return-void
.end method

.method private doLocating()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 457
    iget-boolean v0, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->isProgressShowing:Z

    if-nez v0, :cond_0

    .line 458
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->showDialog(I)V

    .line 459
    iput-boolean v4, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->isProgressShowing:Z

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 462
    iput-boolean v4, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->locating:Z

    .line 464
    return-void
.end method

.method private ensureUi()V
    .locals 12

    .prologue
    .line 152
    const v9, 0x7f08002d

    invoke-virtual {p0, v9}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 153
    .local v1, leftbtn:Landroid/widget/ImageButton;
    new-instance v9, Lcom/cymobile/ymwork/act/MapFragmentActivity$3;

    invoke-direct {v9, p0}, Lcom/cymobile/ymwork/act/MapFragmentActivity$3;-><init>(Lcom/cymobile/ymwork/act/MapFragmentActivity;)V

    invoke-virtual {v1, v9}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    const v9, 0x7f080017

    invoke-virtual {p0, v9}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->backImageView:Landroid/widget/ImageView;

    .line 161
    const v9, 0x7f080018

    invoke-virtual {p0, v9}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->centerView:Landroid/widget/ImageView;

    .line 162
    iget-object v9, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->backImageView:Landroid/widget/ImageView;

    new-instance v10, Lcom/cymobile/ymwork/act/MapFragmentActivity$4;

    invoke-direct {v10, p0}, Lcom/cymobile/ymwork/act/MapFragmentActivity$4;-><init>(Lcom/cymobile/ymwork/act/MapFragmentActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-object v9, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->aMap:Lcom/amap/api/maps/AMap;

    if-nez v9, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v9

    .line 185
    const v10, 0x7f080011

    invoke-virtual {v9, v10}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v9

    check-cast v9, Lcom/amap/api/maps/SupportMapFragment;

    invoke-virtual {v9}, Lcom/amap/api/maps/SupportMapFragment;->getMap()Lcom/amap/api/maps/AMap;

    move-result-object v9

    .line 184
    iput-object v9, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->aMap:Lcom/amap/api/maps/AMap;

    .line 186
    invoke-static {p0}, Lcom/amap/api/location/LocationManagerProxy;->getInstance(Landroid/app/Activity;)Lcom/amap/api/location/LocationManagerProxy;

    move-result-object v9

    iput-object v9, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->managerProxy:Lcom/amap/api/location/LocationManagerProxy;

    .line 187
    iget-object v9, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->aMap:Lcom/amap/api/maps/AMap;

    if-eqz v9, :cond_0

    .line 188
    iget-object v9, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->aMap:Lcom/amap/api/maps/AMap;

    invoke-virtual {v9}, Lcom/amap/api/maps/AMap;->getUiSettings()Lcom/amap/api/maps/UiSettings;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/amap/api/maps/UiSettings;->setZoomControlsEnabled(Z)V

    .line 191
    :cond_0
    const v9, 0x7f080019

    invoke-virtual {p0, v9}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    .line 192
    .local v5, mapsatSwitchBtn:Landroid/widget/ImageButton;
    new-instance v9, Lcom/cymobile/ymwork/act/MapFragmentActivity$5;

    invoke-direct {v9, p0}, Lcom/cymobile/ymwork/act/MapFragmentActivity$5;-><init>(Lcom/cymobile/ymwork/act/MapFragmentActivity;)V

    invoke-virtual {v5, v9}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    const v9, 0x7f080031

    invoke-virtual {p0, v9}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 211
    .local v2, listMapBtn:Landroid/widget/Button;
    const-string v9, "\u5217\u8868\u6a21\u5f0f"

    invoke-virtual {v2, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 212
    new-instance v9, Lcom/cymobile/ymwork/act/MapFragmentActivity$6;

    invoke-direct {v9, p0}, Lcom/cymobile/ymwork/act/MapFragmentActivity$6;-><init>(Lcom/cymobile/ymwork/act/MapFragmentActivity;)V

    invoke-virtual {v2, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    const v9, 0x7f08002f

    invoke-virtual {p0, v9}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 229
    .local v8, title:Landroid/widget/TextView;
    sget v9, Lcom/cymobile/ymwork/act/MapFragmentActivity;->classid:I

    if-nez v9, :cond_3

    .line 230
    const-string v9, "\u6700\u65b0\u65b0\u589e\u5efa\u7b51"

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    :cond_1
    :goto_0
    iget-object v9, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v9}, Lcom/cymobile/ymwork/SettingBase;->getListNum(Landroid/content/SharedPreferences;)I

    move-result v4

    .line 237
    .local v4, listnum:I
    if-lez v4, :cond_2

    .line 238
    const v9, 0x7f080015

    invoke-virtual {p0, v9}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->showpaginate:Landroid/widget/TextView;

    .line 239
    iget-object v9, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->showpaginate:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "1-"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v11}, Lcom/cymobile/ymwork/SettingBase;->getListNum(Landroid/content/SharedPreferences;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\u6761"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    const v9, 0x7f080014

    invoke-virtual {p0, v9}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->left_to_button:Landroid/widget/ImageView;

    .line 241
    const v9, 0x7f080016

    invoke-virtual {p0, v9}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->right_to_button:Landroid/widget/ImageView;

    .line 242
    new-instance v6, Lcom/cymobile/ymwork/act/MapFragmentActivity$PaginateListener;

    const/4 v9, 0x0

    invoke-direct {v6, p0, v9}, Lcom/cymobile/ymwork/act/MapFragmentActivity$PaginateListener;-><init>(Lcom/cymobile/ymwork/act/MapFragmentActivity;Z)V

    .line 243
    .local v6, paginateListener:Lcom/cymobile/ymwork/act/MapFragmentActivity$PaginateListener;
    iget-object v9, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->left_to_button:Landroid/widget/ImageView;

    invoke-virtual {v9, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    new-instance v7, Lcom/cymobile/ymwork/act/MapFragmentActivity$PaginateListener;

    const/4 v9, 0x1

    invoke-direct {v7, p0, v9}, Lcom/cymobile/ymwork/act/MapFragmentActivity$PaginateListener;-><init>(Lcom/cymobile/ymwork/act/MapFragmentActivity;Z)V

    .line 245
    .local v7, paginateListenerF:Lcom/cymobile/ymwork/act/MapFragmentActivity$PaginateListener;
    const v9, 0x7f080016

    invoke-virtual {p0, v9}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->right_to_button:Landroid/widget/ImageView;

    .line 246
    iget-object v9, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->right_to_button:Landroid/widget/ImageView;

    invoke-virtual {v9, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    iget-object v9, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->left_to_button:Landroid/widget/ImageView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 248
    iget-object v9, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->right_to_button:Landroid/widget/ImageView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 250
    .end local v6           #paginateListener:Lcom/cymobile/ymwork/act/MapFragmentActivity$PaginateListener;
    .end local v7           #paginateListenerF:Lcom/cymobile/ymwork/act/MapFragmentActivity$PaginateListener;
    :cond_2
    iget-object v9, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v9}, Lcom/cymobile/ymwork/SettingBase;->getListNum(Landroid/content/SharedPreferences;)I

    move-result v3

    .line 251
    .local v3, listNum:I
    const v9, 0x7f080013

    invoke-virtual {p0, v9}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 252
    .local v0, footerpageControl:Landroid/widget/LinearLayout;
    if-gez v3, :cond_5

    .line 253
    const/16 v9, 0x8

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 258
    :goto_1
    return-void

    .line 231
    .end local v0           #footerpageControl:Landroid/widget/LinearLayout;
    .end local v3           #listNum:I
    .end local v4           #listnum:I
    :cond_3
    sget v9, Lcom/cymobile/ymwork/act/MapFragmentActivity;->classid:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    .line 232
    const-string v9, "\u6700\u65b0\u7591\u4f3c\u65b0\u589e\u5efa\u7b51"

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 233
    :cond_4
    sget v9, Lcom/cymobile/ymwork/act/MapFragmentActivity;->classid:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    .line 234
    const-string v9, "\u6700\u65b0\u516c\u4f17\u4e3e\u62a5\u8fdd\u5efa"

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 255
    .restart local v0       #footerpageControl:Landroid/widget/LinearLayout;
    .restart local v3       #listNum:I
    .restart local v4       #listnum:I
    :cond_5
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method private preLocateTask()V
    .locals 1

    .prologue
    .line 695
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->showDialog(I)V

    .line 696
    return-void
.end method

.method private resetPaginate()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 701
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v1}, Lcom/cymobile/ymwork/SettingBase;->getListNum(Landroid/content/SharedPreferences;)I

    move-result v0

    .line 702
    .local v0, listnum:I
    if-gez v0, :cond_0

    .line 743
    :goto_0
    return-void

    .line 705
    :cond_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->shops:Lcom/cymobile/ymwork/types/Group;

    if-eqz v1, :cond_6

    .line 707
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->shops:Lcom/cymobile/ymwork/types/Group;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/Group;->getNumber()I

    move-result v1

    if-nez v1, :cond_1

    .line 708
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->showpaginate:Landroid/widget/TextView;

    const-string v2, "\u6ca1\u6709\u6848\u4ef6"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 709
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->left_to_button:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 710
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->right_to_button:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 711
    :cond_1
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->shops:Lcom/cymobile/ymwork/types/Group;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/Group;->getNumber()I

    move-result v1

    if-le v1, v0, :cond_5

    .line 712
    iget v1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->currentPageCount:I

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->shops:Lcom/cymobile/ymwork/types/Group;

    invoke-virtual {v2}, Lcom/cymobile/ymwork/types/Group;->getNumber()I

    move-result v2

    if-le v1, v2, :cond_3

    .line 713
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->showpaginate:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->currentPageCount:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->shops:Lcom/cymobile/ymwork/types/Group;

    invoke-virtual {v3}, Lcom/cymobile/ymwork/types/Group;->getNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u6761"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 714
    iget v1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->currentPageCount:I

    if-lez v1, :cond_2

    .line 715
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->left_to_button:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 719
    :goto_1
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->right_to_button:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 717
    :cond_2
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->left_to_button:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 721
    :cond_3
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->showpaginate:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->currentPageCount:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->currentPageCount:I

    add-int/2addr v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u6761"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 723
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->right_to_button:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 724
    iget v1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->currentPageCount:I

    if-lez v1, :cond_4

    .line 725
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->left_to_button:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 727
    :cond_4
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->left_to_button:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 732
    :cond_5
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->showpaginate:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "1-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->shops:Lcom/cymobile/ymwork/types/Group;

    invoke-virtual {v3}, Lcom/cymobile/ymwork/types/Group;->getNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u6761"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 733
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->left_to_button:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 734
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->right_to_button:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 737
    :cond_6
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->showpaginate:Landroid/widget/TextView;

    const-string v2, "\u6ca1\u6709\u6848\u4ef6"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 738
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->left_to_button:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 739
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->right_to_button:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private startLocating()V
    .locals 6

    .prologue
    .line 556
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->managerProxy:Lcom/amap/api/location/LocationManagerProxy;

    const-string v1, "lbs"

    invoke-virtual {v0, v1}, Lcom/amap/api/location/LocationManagerProxy;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->managerProxy:Lcom/amap/api/location/LocationManagerProxy;

    const-string v1, "lbs"

    const-wide/16 v2, 0x7d0

    const/high16 v4, 0x4120

    iget-object v5, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->listener:Lcom/amap/api/location/AMapLocationListener;

    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/location/LocationManagerProxy;->requestLocationUpdates(Ljava/lang/String;JFLcom/amap/api/location/AMapLocationListener;)V

    .line 560
    :cond_0
    return-void
.end method


# virtual methods
.method public getBianjie()Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->Bianjie:Ljava/lang/String;

    return-object v0
.end method

.method public getBounds()Ljava/lang/String;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->Bounds:Ljava/lang/String;

    return-object v0
.end method

.method public getBuildings()Lcom/cymobile/ymwork/types/Group;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cymobile/ymwork/types/Group",
            "<",
            "Lcom/cymobile/ymwork/types/Building;",
            ">;"
        }
    .end annotation

    .prologue
    .line 279
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->shops:Lcom/cymobile/ymwork/types/Group;

    return-object v0
.end method

.method public getCenterPoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->CenterPoint:Ljava/lang/String;

    return-object v0
.end method

.method public getClassId()I
    .locals 1

    .prologue
    .line 95
    sget v0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->classid:I

    return v0
.end method

.method public getShops()Lcom/cymobile/ymwork/types/Group;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cymobile/ymwork/types/Group",
            "<",
            "Lcom/cymobile/ymwork/types/Building;",
            ">;"
        }
    .end annotation

    .prologue
    .line 275
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->shops:Lcom/cymobile/ymwork/types/Group;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x64

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 111
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 113
    invoke-virtual {p0, v4}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->requestWindowFeature(I)Z

    .line 115
    const v1, 0x7f030002

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->setContentView(I)V

    .line 116
    iput-object p0, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->contexts:Landroid/content/Context;

    .line 117
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/HomeApplication;

    iput-object v1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->homeApplication:Lcom/cymobile/ymwork/HomeApplication;

    .line 118
    const-class v1, Lcom/cymobile/ymwork/SettingBase;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 119
    const/4 v2, 0x2

    .line 118
    invoke-virtual {p0, v1, v2}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 120
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->ensureUi()V

    .line 121
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "Intent_ClassId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 122
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 123
    const-string v2, "Intent_ClassId"

    .line 122
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/cymobile/ymwork/act/MapFragmentActivity;->classid:I

    .line 124
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "Intent_ZoneId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 125
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "Intent_ZoneId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->zoneId:Ljava/lang/String;

    .line 129
    :goto_0
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "Intent_Days"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "Intent_Days"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->days:I

    .line 137
    :cond_0
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/HomeApplication;

    iput-object v1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->mHomeApplication:Lcom/cymobile/ymwork/HomeApplication;

    .line 139
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "key_GlobalZoneId"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->userZoneId:Ljava/lang/String;

    .line 140
    const v1, 0x7f080012

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->circleProgressBar:Landroid/widget/ProgressBar;

    .line 141
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->circleProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 142
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->circleProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 143
    iput-object p1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->bd:Landroid/os/Bundle;

    .line 145
    new-instance v0, Lcom/cymobile/ymwork/act/MapFragmentActivity$DownloadTask;

    invoke-direct {v0, p0}, Lcom/cymobile/ymwork/act/MapFragmentActivity$DownloadTask;-><init>(Lcom/cymobile/ymwork/act/MapFragmentActivity;)V

    .line 147
    .local v0, dTask:Lcom/cymobile/ymwork/act/MapFragmentActivity$DownloadTask;
    new-array v1, v4, [Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/cymobile/ymwork/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 149
    .end local v0           #dTask:Lcom/cymobile/ymwork/act/MapFragmentActivity$DownloadTask;
    :goto_1
    return-void

    .line 127
    :cond_1
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "key_GlobalZoneId"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->zoneId:Ljava/lang/String;

    goto :goto_0

    .line 133
    :cond_2
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->finish()V

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    .line 564
    sparse-switch p1, :sswitch_data_0

    .line 610
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    :goto_1
    return-object v1

    .line 566
    :sswitch_0
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 567
    .local v1, locateProgress:Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 568
    new-instance v2, Lcom/cymobile/ymwork/act/MapFragmentActivity$7;

    invoke-direct {v2, p0}, Lcom/cymobile/ymwork/act/MapFragmentActivity$7;-><init>(Lcom/cymobile/ymwork/act/MapFragmentActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_1

    .line 593
    .end local v1           #locateProgress:Landroid/app/ProgressDialog;
    :sswitch_1
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 594
    .local v0, handleProgress:Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090022

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 595
    new-instance v2, Lcom/cymobile/ymwork/act/MapFragmentActivity$8;

    invoke-direct {v2, p0}, Lcom/cymobile/ymwork/act/MapFragmentActivity$8;-><init>(Lcom/cymobile/ymwork/act/MapFragmentActivity;)V

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0

    .line 564
    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_1
        0x14 -> :sswitch_0
    .end sparse-switch
.end method

.method public setBounds(Ljava/lang/String;)V
    .locals 0
    .parameter "bounds"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity;->Bounds:Ljava/lang/String;

    .line 84
    return-void
.end method
