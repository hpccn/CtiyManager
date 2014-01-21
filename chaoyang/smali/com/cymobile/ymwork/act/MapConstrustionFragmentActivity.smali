.class public Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "MapConstrustionFragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$DownloadTask;,
        Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$LocatingTask;,
        Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$PaganiteTask;,
        Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$PaginateListener;
    }
.end annotation


# static fields
.field private static final DIALOG_SHOW_HANDLING_PROGRESS:I = 0xc

.field private static final DIALOG_SHOW_LOCATING_PROGRESS:I = 0x14

.field public static final Intent_ClassId:Ljava/lang/String; = "Intent_ClassId"

.field private static final MESSAGE_USE_DEFAULT_LOCATION:I = 0x65

.field private static final MSG_LoadDone:I = 0xa

.field private static final MSG_PageLoadDone:I = 0x2

.field private static final POSITION_TIME_OUT:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "MapConstrustionFragmentActivity"

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

.field private commonTitle:Landroid/widget/TextView;

.field contexts:Landroid/content/Context;

.field currentPageCount:I

.field private days:I

.field private flag:Z

.field homeApplication:Lcom/cymobile/ymwork/HomeApplication;

.field private isLocateTaskRunning:Z

.field private isProgressShowing:Z

.field private isSubmitTaskRunning:Z

.field left_to_button:Landroid/widget/ImageView;

.field listener:Lcom/amap/api/location/AMapLocationListener;

.field private locateTask:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$LocatingTask;

.field private locating:Z

.field mHandler:Landroid/os/Handler;

.field private mHomeApplication:Lcom/cymobile/ymwork/HomeApplication;

.field private mLocation:Landroid/location/Location;

.field mPrefs:Landroid/content/SharedPreferences;

.field private managerProxy:Lcom/amap/api/location/LocationManagerProxy;

.field mapFragment:Lcom/cymobile/ymwork/act/MapConstrustionDetailFragment;

.field private mapNormal:Z

.field private mark:Ljava/lang/String;

.field right_to_button:Landroid/widget/ImageView;

.field private shoplat:D

.field private shoplng:D

.field private shops:Lcom/cymobile/ymwork/types/Group;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cymobile/ymwork/types/Group",
            "<",
            "Lcom/cymobile/ymwork/types/ConstrustionField;",
            ">;"
        }
    .end annotation
.end field

.field showpaginate:Landroid/widget/TextView;

.field private title:Landroid/widget/TextView;

.field userZoneId:Ljava/lang/String;

.field userZoneName:Ljava/lang/String;

.field private zoneId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    sput v0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->classid:I

    .line 54
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->CenterPoint:Ljava/lang/String;

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->Bianjie:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->mark:Ljava/lang/String;

    .line 69
    iput-object v2, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->mLocation:Landroid/location/Location;

    .line 71
    iput-boolean v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->isLocateTaskRunning:Z

    .line 72
    iput-boolean v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->isSubmitTaskRunning:Z

    .line 73
    iput-boolean v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->flag:Z

    .line 74
    iput-boolean v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->locating:Z

    .line 75
    iput-wide v3, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->shoplat:D

    .line 76
    iput-wide v3, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->shoplng:D

    .line 78
    iput-object v2, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->homeApplication:Lcom/cymobile/ymwork/HomeApplication;

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->Bounds:Ljava/lang/String;

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->AreaName:Ljava/lang/String;

    .line 90
    iput-object v2, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->zoneId:Ljava/lang/String;

    .line 91
    iput v5, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->days:I

    .line 101
    iput-boolean v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->isProgressShowing:Z

    .line 171
    iput-boolean v5, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->mapNormal:Z

    .line 346
    new-instance v0, Lcom/cymobile/ymwork/types/Group;

    invoke-direct {v0}, Lcom/cymobile/ymwork/types/Group;-><init>()V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->shops:Lcom/cymobile/ymwork/types/Group;

    .line 476
    iput v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->currentPageCount:I

    .line 559
    new-instance v0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$1;

    invoke-direct {v0, p0}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$1;-><init>(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->mHandler:Landroid/os/Handler;

    .line 780
    new-instance v0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$2;

    invoke-direct {v0, p0}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$2;-><init>(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->listener:Lcom/amap/api/location/AMapLocationListener;

    .line 54
    return-void
.end method

.method static synthetic access$0(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Landroid/os/Bundle;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->bd:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->commonTitle:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$10(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Lcom/amap/api/maps/AMap;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->aMap:Lcom/amap/api/maps/AMap;

    return-object v0
.end method

.method static synthetic access$11(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->isProgressShowing:Z

    return v0
.end method

.method static synthetic access$12(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->isProgressShowing:Z

    return-void
.end method

.method static synthetic access$13(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Lcom/amap/api/location/LocationManagerProxy;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->managerProxy:Lcom/amap/api/location/LocationManagerProxy;

    return-object v0
.end method

.method static synthetic access$14(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;Landroid/location/Location;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->mLocation:Landroid/location/Location;

    return-void
.end method

.method static synthetic access$15(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->circleProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$16(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Lcom/cymobile/ymwork/HomeApplication;
    .locals 1
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->mHomeApplication:Lcom/cymobile/ymwork/HomeApplication;

    return-object v0
.end method

.method static synthetic access$17(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->zoneId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$18(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->Bianjie:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$19(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->CenterPoint:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->commonTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$20(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->Bounds:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$21(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 91
    iget v0, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->days:I

    return v0
.end method

.method static synthetic access$22(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;Lcom/cymobile/ymwork/types/Group;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 346
    iput-object p1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->shops:Lcom/cymobile/ymwork/types/Group;

    return-void
.end method

.method static synthetic access$23(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 859
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->preLocateTask()V

    return-void
.end method

.method static synthetic access$24(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;D)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 75
    iput-wide p1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->shoplat:D

    return-void
.end method

.method static synthetic access$25(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;D)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 76
    iput-wide p1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->shoplng:D

    return-void
.end method

.method static synthetic access$26(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)D
    .locals 2
    .parameter

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->shoplat:D

    return-wide v0
.end method

.method static synthetic access$27(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)D
    .locals 2
    .parameter

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->shoplng:D

    return-wide v0
.end method

.method static synthetic access$28(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->centerView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$29(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 715
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->startLocating()V

    return-void
.end method

.method static synthetic access$3(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->AreaName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$30(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 548
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->doLocating()V

    return-void
.end method

.method static synthetic access$31(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->mapNormal:Z

    return v0
.end method

.method static synthetic access$32(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->mapNormal:Z

    return-void
.end method

.method static synthetic access$33(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->flag:Z

    return v0
.end method

.method static synthetic access$34(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->isLocateTaskRunning:Z

    return v0
.end method

.method static synthetic access$35(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$LocatingTask;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->locateTask:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$LocatingTask;

    return-object v0
.end method

.method static synthetic access$36(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->isSubmitTaskRunning:Z

    return v0
.end method

.method static synthetic access$4(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->AreaName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Lcom/cymobile/ymwork/types/Group;
    .locals 1
    .parameter

    .prologue
    .line 346
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->shops:Lcom/cymobile/ymwork/types/Group;

    return-object v0
.end method

.method static synthetic access$6()I
    .locals 1

    .prologue
    .line 89
    sget v0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->classid:I

    return v0
.end method

.method static synthetic access$7(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->mark:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 863
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->resetPaginate()V

    return-void
.end method

.method static synthetic access$9(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Landroid/location/Location;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method private doLocating()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 549
    iget-boolean v0, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->isProgressShowing:Z

    if-nez v0, :cond_0

    .line 550
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->showDialog(I)V

    .line 551
    iput-boolean v4, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->isProgressShowing:Z

    .line 553
    :cond_0
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    .line 554
    const-wide/16 v2, 0x2710

    .line 553
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 555
    iput-boolean v4, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->locating:Z

    .line 557
    return-void
.end method

.method private ensureUi()V
    .locals 15

    .prologue
    const v14, 0x7f080016

    const/4 v13, 0x0

    const/4 v12, 0x1

    const/16 v11, 0x8

    .line 174
    const v8, 0x7f08002d

    invoke-virtual {p0, v8}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 175
    .local v1, leftbtn:Landroid/widget/ImageButton;
    new-instance v8, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$3;

    invoke-direct {v8, p0}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$3;-><init>(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)V

    invoke-virtual {v1, v8}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    const v8, 0x7f080017

    invoke-virtual {p0, v8}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->backImageView:Landroid/widget/ImageView;

    .line 183
    const v8, 0x7f080018

    invoke-virtual {p0, v8}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->centerView:Landroid/widget/ImageView;

    .line 184
    iget-object v8, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->backImageView:Landroid/widget/ImageView;

    new-instance v9, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$4;

    invoke-direct {v9, p0}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$4;-><init>(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)V

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    iget-object v8, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->aMap:Lcom/amap/api/maps/AMap;

    if-nez v8, :cond_0

    .line 208
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v8

    .line 209
    const v9, 0x7f080011

    invoke-virtual {v8, v9}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v8

    check-cast v8, Lcom/amap/api/maps/SupportMapFragment;

    invoke-virtual {v8}, Lcom/amap/api/maps/SupportMapFragment;->getMap()Lcom/amap/api/maps/AMap;

    move-result-object v8

    .line 208
    iput-object v8, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->aMap:Lcom/amap/api/maps/AMap;

    .line 210
    invoke-static {p0}, Lcom/amap/api/location/LocationManagerProxy;->getInstance(Landroid/app/Activity;)Lcom/amap/api/location/LocationManagerProxy;

    move-result-object v8

    iput-object v8, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->managerProxy:Lcom/amap/api/location/LocationManagerProxy;

    .line 211
    iget-object v8, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->aMap:Lcom/amap/api/maps/AMap;

    if-eqz v8, :cond_0

    .line 212
    iget-object v8, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->aMap:Lcom/amap/api/maps/AMap;

    invoke-virtual {v8}, Lcom/amap/api/maps/AMap;->getUiSettings()Lcom/amap/api/maps/UiSettings;

    move-result-object v8

    invoke-virtual {v8, v12}, Lcom/amap/api/maps/UiSettings;->setZoomControlsEnabled(Z)V

    .line 215
    :cond_0
    const v8, 0x7f080019

    invoke-virtual {p0, v8}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    .line 216
    .local v5, mapsatSwitchBtn:Landroid/widget/ImageButton;
    new-instance v8, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$5;

    invoke-direct {v8, p0}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$5;-><init>(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)V

    invoke-virtual {v5, v8}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    const v8, 0x7f080031

    invoke-virtual {p0, v8}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 236
    .local v2, listMapBtn:Landroid/widget/Button;
    const-string v8, "\u5217\u8868\u6a21\u5f0f"

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 237
    new-instance v8, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$6;

    invoke-direct {v8, p0}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$6;-><init>(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)V

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    const v8, 0x7f08002f

    invoke-virtual {p0, v8}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->title:Landroid/widget/TextView;

    .line 273
    iget-object v8, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->title:Landroid/widget/TextView;

    const-string v9, ""

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    sget v8, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->classid:I

    if-nez v8, :cond_3

    .line 275
    iget-object v8, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->title:Landroid/widget/TextView;

    const-string v9, "\u6700\u65b0\u65b0\u589e\u5efa\u7b51"

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    :cond_1
    :goto_0
    iget-object v8, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v8}, Lcom/cymobile/ymwork/SettingBase;->getListNum(Landroid/content/SharedPreferences;)I

    move-result v4

    .line 308
    .local v4, listnum:I
    if-lez v4, :cond_2

    .line 309
    const v8, 0x7f080015

    invoke-virtual {p0, v8}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->showpaginate:Landroid/widget/TextView;

    .line 310
    iget-object v8, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->showpaginate:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "1-"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v10}, Lcom/cymobile/ymwork/SettingBase;->getListNum(Landroid/content/SharedPreferences;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\u6761"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    const v8, 0x7f080014

    invoke-virtual {p0, v8}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageButton;

    iput-object v8, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->left_to_button:Landroid/widget/ImageView;

    .line 312
    invoke-virtual {p0, v14}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageButton;

    iput-object v8, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->right_to_button:Landroid/widget/ImageView;

    .line 313
    new-instance v6, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$PaginateListener;

    invoke-direct {v6, p0, v13}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$PaginateListener;-><init>(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;Z)V

    .line 314
    .local v6, paginateListener:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$PaginateListener;
    iget-object v8, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->left_to_button:Landroid/widget/ImageView;

    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    new-instance v7, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$PaginateListener;

    invoke-direct {v7, p0, v12}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$PaginateListener;-><init>(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;Z)V

    .line 316
    .local v7, paginateListenerF:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$PaginateListener;
    invoke-virtual {p0, v14}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageButton;

    iput-object v8, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->right_to_button:Landroid/widget/ImageView;

    .line 317
    iget-object v8, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->right_to_button:Landroid/widget/ImageView;

    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    iget-object v8, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->left_to_button:Landroid/widget/ImageView;

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 319
    iget-object v8, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->right_to_button:Landroid/widget/ImageView;

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 321
    .end local v6           #paginateListener:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$PaginateListener;
    .end local v7           #paginateListenerF:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$PaginateListener;
    :cond_2
    iget-object v8, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v8}, Lcom/cymobile/ymwork/SettingBase;->getListNum(Landroid/content/SharedPreferences;)I

    move-result v3

    .line 322
    .local v3, listNum:I
    const v8, 0x7f080013

    invoke-virtual {p0, v8}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 323
    .local v0, footerpageControl:Landroid/widget/LinearLayout;
    if-gez v3, :cond_11

    .line 324
    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 328
    :goto_1
    return-void

    .line 276
    .end local v0           #footerpageControl:Landroid/widget/LinearLayout;
    .end local v3           #listNum:I
    .end local v4           #listnum:I
    :cond_3
    sget v8, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->classid:I

    if-ne v8, v12, :cond_4

    .line 277
    iget-object v8, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->title:Landroid/widget/TextView;

    const-string v9, "\u6700\u65b0\u7591\u4f3c\u65b0\u589e\u5efa\u7b51"

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 278
    :cond_4
    sget v8, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->classid:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_5

    .line 279
    iget-object v8, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->title:Landroid/widget/TextView;

    const-string v9, "\u6700\u65b0\u516c\u4f17\u4e3e\u62a5\u8fdd\u5efa"

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 280
    :cond_5
    sget v8, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->classid:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_6

    .line 281
    iget-object v8, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->title:Landroid/widget/TextView;

    const-string v9, "\u6700\u65b0\u571f\u65b9\u5de5\u5730"

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 282
    :cond_6
    sget v8, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->classid:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_9

    .line 283
    iget-object v8, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->mark:Ljava/lang/String;

    const-string v9, "1"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 284
    iget-object v8, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->title:Landroid/widget/TextView;

    const-string v9, "\u6700\u65b0\u91cd\u70b9\u5355\u4f4d\u6d88\u9632\u9690\u60a3"

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 285
    :cond_7
    iget-object v8, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->mark:Ljava/lang/String;

    const-string v9, "2"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 286
    iget-object v8, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->title:Landroid/widget/TextView;

    const-string v9, "\u6700\u65b0\u4e00\u822c\u5355\u4f4d\u6d88\u9632\u9690\u60a3"

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 288
    :cond_8
    iget-object v8, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->title:Landroid/widget/TextView;

    const-string v9, "\u6700\u65b0\u6d88\u9632\u9690\u60a3"

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 290
    :cond_9
    sget v8, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->classid:I

    const/4 v9, 0x5

    if-ne v8, v9, :cond_a

    .line 291
    iget-object v8, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->title:Landroid/widget/TextView;

    const-string v9, "\u6700\u65b0\u516c\u4f17\u4e3e\u62a5\u6295\u8bc9"

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 292
    :cond_a
    sget v8, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->classid:I

    if-ne v8, v11, :cond_b

    .line 293
    iget-object v8, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->title:Landroid/widget/TextView;

    const-string v9, "\u6700\u65b0\u9884\u9632\u7164\u6c14\u4e2d\u6bd2\u5b89\u5168"

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 294
    :cond_b
    sget v8, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->classid:I

    const/16 v9, 0x9

    if-ne v8, v9, :cond_c

    .line 295
    iget-object v8, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->title:Landroid/widget/TextView;

    const-string v9, "\u6700\u65b0\u8fdd\u6cd5\u5efa\u8bbe"

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 296
    :cond_c
    sget v8, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->classid:I

    const/16 v9, 0xa

    if-ne v8, v9, :cond_d

    .line 297
    iget-object v8, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->title:Landroid/widget/TextView;

    const-string v9, "\u6700\u65b0\u51fa\u79df\u623f\u5c4b"

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 298
    :cond_d
    sget v8, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->classid:I

    const/16 v9, 0xb

    if-ne v8, v9, :cond_e

    .line 299
    iget-object v8, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->title:Landroid/widget/TextView;

    const-string v9, "\u6700\u65b0\u4eba\u53e3\u7ba1\u7406"

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 300
    :cond_e
    sget v8, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->classid:I

    const/16 v9, 0xc

    if-ne v8, v9, :cond_f

    .line 301
    iget-object v8, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->title:Landroid/widget/TextView;

    const-string v9, "\u6700\u65b0\u98df\u54c1\u5b89\u5168"

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 302
    :cond_f
    sget v8, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->classid:I

    const/16 v9, 0xd

    if-ne v8, v9, :cond_10

    .line 303
    iget-object v8, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->title:Landroid/widget/TextView;

    const-string v9, "\u6700\u65b0\u8bc1\u7167\u8d44\u8d28"

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 304
    :cond_10
    sget v8, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->classid:I

    const/16 v9, 0xe

    if-ne v8, v9, :cond_1

    .line 305
    iget-object v8, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->title:Landroid/widget/TextView;

    const-string v9, "\u5176\u4ed6"

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 326
    .restart local v0       #footerpageControl:Landroid/widget/LinearLayout;
    .restart local v3       #listNum:I
    .restart local v4       #listnum:I
    :cond_11
    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method private preLocateTask()V
    .locals 1

    .prologue
    .line 860
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->showDialog(I)V

    .line 861
    return-void
.end method

.method private resetPaginate()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 864
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v1}, Lcom/cymobile/ymwork/SettingBase;->getListNum(Landroid/content/SharedPreferences;)I

    move-result v0

    .line 865
    .local v0, listnum:I
    if-gez v0, :cond_0

    .line 907
    :goto_0
    return-void

    .line 868
    :cond_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->shops:Lcom/cymobile/ymwork/types/Group;

    if-eqz v1, :cond_6

    .line 870
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->shops:Lcom/cymobile/ymwork/types/Group;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/Group;->getNumber()I

    move-result v1

    if-nez v1, :cond_1

    .line 871
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->showpaginate:Landroid/widget/TextView;

    const-string v2, "\u6ca1\u6709\u6848\u4ef6"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 872
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->left_to_button:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 873
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->right_to_button:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 874
    :cond_1
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->shops:Lcom/cymobile/ymwork/types/Group;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/Group;->getNumber()I

    move-result v1

    if-le v1, v0, :cond_5

    .line 875
    iget v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->currentPageCount:I

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->shops:Lcom/cymobile/ymwork/types/Group;

    invoke-virtual {v2}, Lcom/cymobile/ymwork/types/Group;->getNumber()I

    move-result v2

    if-le v1, v2, :cond_3

    .line 876
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->showpaginate:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->currentPageCount:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 877
    iget-object v3, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->shops:Lcom/cymobile/ymwork/types/Group;

    invoke-virtual {v3}, Lcom/cymobile/ymwork/types/Group;->getNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u6761"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 876
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 878
    iget v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->currentPageCount:I

    if-lez v1, :cond_2

    .line 879
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->left_to_button:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 883
    :goto_1
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->right_to_button:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 881
    :cond_2
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->left_to_button:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 885
    :cond_3
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->showpaginate:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->currentPageCount:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 886
    iget v3, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->currentPageCount:I

    add-int/2addr v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u6761"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 885
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 888
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->right_to_button:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 889
    iget v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->currentPageCount:I

    if-lez v1, :cond_4

    .line 890
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->left_to_button:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 892
    :cond_4
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->left_to_button:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 897
    :cond_5
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->showpaginate:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "1-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->shops:Lcom/cymobile/ymwork/types/Group;

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

    .line 898
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->left_to_button:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 899
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->right_to_button:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 902
    :cond_6
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->showpaginate:Landroid/widget/TextView;

    const-string v2, "\u6ca1\u6709\u6848\u4ef6"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 903
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->left_to_button:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 904
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->right_to_button:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private startLocating()V
    .locals 6

    .prologue
    .line 716
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->managerProxy:Lcom/amap/api/location/LocationManagerProxy;

    const-string v1, "lbs"

    invoke-virtual {v0, v1}, Lcom/amap/api/location/LocationManagerProxy;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 717
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->managerProxy:Lcom/amap/api/location/LocationManagerProxy;

    .line 718
    const-string v1, "lbs"

    const-wide/16 v2, 0x7d0

    const/high16 v4, 0x4120

    iget-object v5, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->listener:Lcom/amap/api/location/AMapLocationListener;

    .line 717
    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/location/LocationManagerProxy;->requestLocationUpdates(Ljava/lang/String;JFLcom/amap/api/location/AMapLocationListener;)V

    .line 721
    :cond_0
    return-void
.end method


# virtual methods
.method public getBianjie()Ljava/lang/String;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->Bianjie:Ljava/lang/String;

    return-object v0
.end method

.method public getBounds()Ljava/lang/String;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->Bounds:Ljava/lang/String;

    return-object v0
.end method

.method public getBuildings()Lcom/cymobile/ymwork/types/Group;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cymobile/ymwork/types/Group",
            "<",
            "Lcom/cymobile/ymwork/types/ConstrustionField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 353
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->shops:Lcom/cymobile/ymwork/types/Group;

    return-object v0
.end method

.method public getCenterPoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->CenterPoint:Ljava/lang/String;

    return-object v0
.end method

.method public getClassId()I
    .locals 1

    .prologue
    .line 94
    sget v0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->classid:I

    return v0
.end method

.method public getShops()Lcom/cymobile/ymwork/types/Group;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cymobile/ymwork/types/Group",
            "<",
            "Lcom/cymobile/ymwork/types/ConstrustionField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 349
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->shops:Lcom/cymobile/ymwork/types/Group;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x64

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 111
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 113
    invoke-virtual {p0, v3}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->requestWindowFeature(I)Z

    .line 115
    const v1, 0x7f030002

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->setContentView(I)V

    .line 116
    iput-object p0, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->contexts:Landroid/content/Context;

    .line 117
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/HomeApplication;

    iput-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->homeApplication:Lcom/cymobile/ymwork/HomeApplication;

    .line 118
    const-class v1, Lcom/cymobile/ymwork/SettingBase;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 119
    const/4 v2, 0x2

    .line 118
    invoke-virtual {p0, v1, v2}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 120
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->ensureUi()V

    .line 121
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "Intent_ClassId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 122
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 123
    const-string v2, "Intent_ClassId"

    .line 122
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->classid:I

    .line 124
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "Intent_ZoneId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 125
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 126
    const-string v2, "Intent_ZoneId"

    .line 125
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->zoneId:Ljava/lang/String;

    .line 131
    :goto_0
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "Intent_Days"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "Intent_Days"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->days:I

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 139
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "userZoneId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 140
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "userZoneName"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 141
    iput-boolean v3, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->flag:Z

    .line 142
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "userZoneId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->userZoneId:Ljava/lang/String;

    .line 143
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "userZoneName"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->userZoneName:Ljava/lang/String;

    .line 147
    :goto_1
    sget v1, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->classid:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    sget v1, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->classid:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    sget v1, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->classid:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_2

    :cond_1
    iget-boolean v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->flag:Z

    if-nez v1, :cond_2

    .line 148
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "EM"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->mark:Ljava/lang/String;

    .line 151
    :cond_2
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/HomeApplication;

    iput-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->mHomeApplication:Lcom/cymobile/ymwork/HomeApplication;

    .line 153
    const v1, 0x7f080012

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->circleProgressBar:Landroid/widget/ProgressBar;

    .line 154
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->circleProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 155
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->circleProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 156
    iput-object p1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->bd:Landroid/os/Bundle;

    .line 158
    new-instance v0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$DownloadTask;

    invoke-direct {v0, p0}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$DownloadTask;-><init>(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)V

    .line 160
    .local v0, dTask:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$DownloadTask;
    new-array v1, v3, [Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/cymobile/ymwork/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 162
    .end local v0           #dTask:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$DownloadTask;
    :goto_2
    return-void

    .line 128
    :cond_3
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "key_GlobalZoneId"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->zoneId:Ljava/lang/String;

    goto/16 :goto_0

    .line 135
    :cond_4
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->finish()V

    goto :goto_2

    .line 145
    :cond_5
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "key_GlobalZoneId"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->userZoneId:Ljava/lang/String;

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    .line 726
    sparse-switch p1, :sswitch_data_0

    .line 776
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    :goto_1
    return-object v1

    .line 728
    :sswitch_0
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 729
    .local v1, locateProgress:Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 730
    const v3, 0x7f090007

    .line 729
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 732
    new-instance v2, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$7;

    invoke-direct {v2, p0}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$7;-><init>(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_1

    .line 757
    .end local v1           #locateProgress:Landroid/app/ProgressDialog;
    :sswitch_1
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 758
    .local v0, handleProgress:Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 759
    const v3, 0x7f090022

    .line 758
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 761
    new-instance v2, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$8;

    invoke-direct {v2, p0}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$8;-><init>(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)V

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0

    .line 726
    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_1
        0x14 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 167
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 168
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->title:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    return-void
.end method

.method public setBounds(Ljava/lang/String;)V
    .locals 0
    .parameter "bounds"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->Bounds:Ljava/lang/String;

    .line 82
    return-void
.end method
