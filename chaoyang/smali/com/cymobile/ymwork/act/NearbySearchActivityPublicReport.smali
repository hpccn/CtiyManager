.class public Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;
.super Lcom/cymobile/ymwork/widget/LoadableListFragmentWithViewAndHeader;
.source "NearbySearchActivityPublicReport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$GetZoneTask;,
        Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;,
        Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$TaskMoreShops;,
        Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$TaskShops;,
        Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$UIHandler;
    }
.end annotation


# static fields
.field public static final CITY_RADIUS_IN_METERS:I = 0xc350

.field private static final Intent_init_direct_search:I = 0xc

.field private static final Intent_init_search:I = 0xb

.field private static final SLEEP_TIME_IF_NO_LOCATION:J = 0xbb8L

.field public static final TAG:Ljava/lang/String; = "NearbySearchActivity"


# instance fields
.field private classid:I

.field private classidextra:I

.field commonTitle:Landroid/widget/TextView;

.field private contexts:Landroid/content/Context;

.field public drawableMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field homeApplication:Lcom/cymobile/ymwork/HomeApplication;

.field private intentDays:I

.field private intentZoneId:Ljava/lang/String;

.field mHandler:Landroid/os/Handler;

.field private mLayoutEmpty:Landroid/view/ViewGroup;

.field private mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

.field private mLoggedOutReceiver:Landroid/content/BroadcastReceiver;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mStateHolder:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;

.field final orderflags:[Z

.field userSubZones:Lcom/cymobile/ymwork/types/Group;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cymobile/ymwork/types/Group",
            "<",
            "Lcom/cymobile/ymwork/types/Zone;",
            ">;"
        }
    .end annotation
.end field

.field userZoneId:Ljava/lang/String;

.field userZoneName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Lcom/cymobile/ymwork/widget/LoadableListFragmentWithViewAndHeader;-><init>()V

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->drawableMap:Ljava/util/HashMap;

    .line 65
    iput v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->classid:I

    .line 66
    iput v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->classidextra:I

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->intentZoneId:Ljava/lang/String;

    .line 179
    new-instance v0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$UIHandler;

    invoke-direct {v0, p0}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$UIHandler;-><init>(Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->mHandler:Landroid/os/Handler;

    .line 267
    new-instance v0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$1;

    invoke-direct {v0, p0}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$1;-><init>(Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->mLoggedOutReceiver:Landroid/content/BroadcastReceiver;

    .line 501
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->orderflags:[Z

    .line 55
    return-void
.end method

.method static synthetic access$0(Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->contexts:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2(Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;)I
    .locals 1
    .parameter

    .prologue
    .line 65
    iget v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->classid:I

    return v0
.end method

.method static synthetic access$3(Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;)I
    .locals 1
    .parameter

    .prologue
    .line 66
    iget v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->classidextra:I

    return v0
.end method

.method static synthetic access$4(Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;)V
    .locals 0
    .parameter

    .prologue
    .line 976
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->onRefreshTaskStart()V

    return-void
.end method

.method static synthetic access$5(Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;Lcom/cymobile/ymwork/types/Group;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 737
    invoke-direct {p0, p1, p2}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->onTaskComplete(Lcom/cymobile/ymwork/types/Group;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$6(Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;)V
    .locals 0
    .parameter

    .prologue
    .line 981
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->onMoreTaskStart()V

    return-void
.end method

.method static synthetic access$7(Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;)Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->mStateHolder:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;

    return-object v0
.end method

.method static synthetic access$8(Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;)Lcom/cymobile/ymwork/widget/SeparatedListAdapter;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    return-object v0
.end method

.method private ensureUi()V
    .locals 3

    .prologue
    .line 414
    const v2, 0x7f08002d

    invoke-virtual {p0, v2}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 415
    .local v0, leftbtn:Landroid/widget/ImageButton;
    new-instance v2, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$4;

    invoke-direct {v2, p0}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$4;-><init>(Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 421
    const v2, 0x7f080030

    invoke-virtual {p0, v2}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 426
    .local v1, rightBtn:Landroid/widget/ImageButton;
    new-instance v2, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$5;

    invoke-direct {v2, p0}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$5;-><init>(Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 498
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->ensureUiListView()V

    .line 499
    return-void
.end method

.method private ensureUiListView()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 510
    new-instance v5, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-direct {v5, p0}, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    .line 512
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->getFilterFragment()Lcom/cymobile/ymwork/widget/RangeFilterFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cymobile/ymwork/widget/RangeFilterFragment;->getFilterDataSource()Lcom/cymobile/ymwork/adapter/FilterDataSource;

    move-result-object v2

    .line 513
    .local v2, ds:Lcom/cymobile/ymwork/adapter/FilterDataSource;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/cymobile/ymwork/adapter/FilterDataSource;->curFilterId()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v5

    if-ne v5, v9, :cond_0

    .line 514
    iget-object v5, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->mStateHolder:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;->getShops()Lcom/cymobile/ymwork/types/Group;

    move-result-object v5

    iget-object v6, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-direct {p0, v5, v6}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->sortShopsRecent(Lcom/cymobile/ymwork/types/Group;Lcom/cymobile/ymwork/widget/SeparatedListAdapter;)V

    .line 517
    :cond_0
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->getListView()Landroid/widget/ListView;

    move-result-object v4

    check-cast v4, Lcom/cymobile/ymwork/widget/PullToRefreshListView;

    .line 518
    .local v4, listView:Lcom/cymobile/ymwork/widget/PullToRefreshListView;
    iget-object v5, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-virtual {v4, v5}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 519
    invoke-virtual {v4, v8}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->setDividerHeight(I)V

    .line 520
    new-instance v5, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$6;

    invoke-direct {v5, p0}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$6;-><init>(Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;)V

    invoke-virtual {v4, v5}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 566
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 567
    .local v3, inflater:Landroid/view/LayoutInflater;
    invoke-static {}, Lcom/cymobile/ymwork/utils/UiUtil;->sdkVersion()I

    move-result v5

    const/4 v6, 0x3

    if-le v5, v6, :cond_2

    .line 569
    const v5, 0x7f03003d

    .line 568
    invoke-virtual {v3, v5, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ScrollView;

    iput-object v5, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->mLayoutEmpty:Landroid/view/ViewGroup;

    .line 576
    :goto_0
    iget-object v5, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->mLayoutEmpty:Landroid/view/ViewGroup;

    .line 577
    const v6, 0x7f08010f

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 576
    check-cast v0, Landroid/widget/Button;

    .line 578
    .local v0, btnAddFriends:Landroid/widget/Button;
    new-instance v5, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$7;

    invoke-direct {v5, p0}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$7;-><init>(Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 584
    iget-object v5, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->mLayoutEmpty:Landroid/view/ViewGroup;

    .line 585
    const v6, 0x7f080110

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 584
    check-cast v1, Landroid/widget/Button;

    .line 586
    .local v1, btnFriendRequests:Landroid/widget/Button;
    new-instance v5, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$8;

    invoke-direct {v5, p0}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$8;-><init>(Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 591
    iget-object v5, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->mLayoutEmpty:Landroid/view/ViewGroup;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 593
    invoke-direct {v6, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 591
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 595
    iget-object v5, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;->getCount()I

    .line 599
    iget-object v5, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->mStateHolder:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;->getIsRunningTask()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 600
    invoke-virtual {p0, v9}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->setProgressBarIndeterminateVisibility(Z)V

    .line 601
    iget-object v5, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->mStateHolder:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;->getRanOnce()Z

    move-result v5

    if-nez v5, :cond_1

    .line 602
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->setLoadingView()V

    .line 607
    :cond_1
    :goto_1
    return-void

    .line 574
    .end local v0           #btnAddFriends:Landroid/widget/Button;
    .end local v1           #btnFriendRequests:Landroid/widget/Button;
    :cond_2
    const v5, 0x7f03003e

    .line 573
    invoke-virtual {v3, v5, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ScrollView;

    iput-object v5, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->mLayoutEmpty:Landroid/view/ViewGroup;

    goto :goto_0

    .line 605
    .restart local v0       #btnAddFriends:Landroid/widget/Button;
    .restart local v1       #btnFriendRequests:Landroid/widget/Button;
    :cond_3
    invoke-virtual {p0, v8}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->setProgressBarIndeterminateVisibility(Z)V

    goto :goto_1
.end method

.method private onMoreTaskStart()V
    .locals 1

    .prologue
    .line 982
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->setProgressBarIndeterminateVisibility(Z)V

    .line 983
    return-void
.end method

.method private onRefreshTaskStart()V
    .locals 1

    .prologue
    .line 977
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->setProgressBarIndeterminateVisibility(Z)V

    .line 978
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->setLoadingView()V

    .line 979
    return-void
.end method

.method private onTaskComplete(Lcom/cymobile/ymwork/types/Group;Ljava/lang/Exception;)V
    .locals 5
    .parameter
    .parameter "ex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cymobile/ymwork/types/Group",
            "<",
            "Lcom/cymobile/ymwork/types/Building;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, shops:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/Building;>;"
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 738
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->mStateHolder:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;

    invoke-virtual {v1, v3}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;->setRanOnce(Z)V

    .line 739
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->mStateHolder:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;

    invoke-virtual {v1, v4}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;->setIsRunningTask(Z)V

    .line 740
    invoke-virtual {p0, v4}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->setProgressBarIndeterminateVisibility(Z)V

    .line 743
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;->removeObserver()V

    .line 744
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;->clear()V

    .line 745
    new-instance v1, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-direct {v1, p0}, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    .line 749
    if-eqz p1, :cond_5

    .line 750
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->mStateHolder:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;

    invoke-virtual {v1, p1}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;->setShops(Lcom/cymobile/ymwork/types/Group;)V

    .line 751
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->getFilterFragment()Lcom/cymobile/ymwork/widget/RangeFilterFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cymobile/ymwork/widget/RangeFilterFragment;->getFilterDataSource()Lcom/cymobile/ymwork/adapter/FilterDataSource;

    move-result-object v0

    .line 752
    .local v0, ds:Lcom/cymobile/ymwork/adapter/FilterDataSource;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/cymobile/ymwork/adapter/FilterDataSource;->curFilterId()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 753
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->mStateHolder:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;->getShops()Lcom/cymobile/ymwork/types/Group;

    move-result-object v1

    iget-object v2, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-direct {p0, v1, v2}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->sortShopsRecent(Lcom/cymobile/ymwork/types/Group;Lcom/cymobile/ymwork/widget/SeparatedListAdapter;)V

    .line 766
    .end local v0           #ds:Lcom/cymobile/ymwork/adapter/FilterDataSource;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->mStateHolder:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;->getShops()Lcom/cymobile/ymwork/types/Group;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 767
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->mLayoutEmpty:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->setEmptyView(Landroid/view/View;)V

    .line 769
    :cond_1
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 770
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setSelection(I)V

    .line 771
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->mStateHolder:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;->getShops()Lcom/cymobile/ymwork/types/Group;

    move-result-object v1

    if-eqz v1, :cond_6

    if-eqz p1, :cond_6

    iget-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->mStateHolder:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;->getShops()Lcom/cymobile/ymwork/types/Group;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v1

    invoke-virtual {p1}, Lcom/cymobile/ymwork/types/Group;->getNumber()I

    move-result v2

    if-ne v1, v2, :cond_6

    .line 772
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->getListView()Landroid/widget/ListView;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/widget/PullToRefreshListView;

    invoke-virtual {v1, v3}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->onRefreshComplete(Z)V

    .line 776
    :goto_1
    return-void

    .line 754
    .restart local v0       #ds:Lcom/cymobile/ymwork/adapter/FilterDataSource;
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/cymobile/ymwork/adapter/FilterDataSource;->curFilterId()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 755
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->mStateHolder:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;->getShops()Lcom/cymobile/ymwork/types/Group;

    move-result-object v1

    iget-object v2, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-direct {p0, v1, v2}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->sortShopsRecentDesc(Lcom/cymobile/ymwork/types/Group;Lcom/cymobile/ymwork/widget/SeparatedListAdapter;)V

    goto :goto_0

    .line 756
    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/cymobile/ymwork/adapter/FilterDataSource;->curFilterId()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 757
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->mStateHolder:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;->getShops()Lcom/cymobile/ymwork/types/Group;

    move-result-object v1

    iget-object v2, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-direct {p0, v1, v2}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->sortShopsAreaDesc(Lcom/cymobile/ymwork/types/Group;Lcom/cymobile/ymwork/widget/SeparatedListAdapter;)V

    goto :goto_0

    .line 758
    :cond_4
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cymobile/ymwork/adapter/FilterDataSource;->curFilterId()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 759
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->mStateHolder:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;->getShops()Lcom/cymobile/ymwork/types/Group;

    move-result-object v1

    iget-object v2, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-direct {p0, v1, v2}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->sortShopsDistanceDesc(Lcom/cymobile/ymwork/types/Group;Lcom/cymobile/ymwork/widget/SeparatedListAdapter;)V

    goto/16 :goto_0

    .line 761
    .end local v0           #ds:Lcom/cymobile/ymwork/adapter/FilterDataSource;
    :cond_5
    if-eqz p2, :cond_0

    .line 762
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->mStateHolder:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;

    new-instance v2, Lcom/cymobile/ymwork/types/Group;

    invoke-direct {v2}, Lcom/cymobile/ymwork/types/Group;-><init>()V

    invoke-virtual {v1, v2}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;->setShops(Lcom/cymobile/ymwork/types/Group;)V

    goto/16 :goto_0

    .line 774
    :cond_6
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->getListView()Landroid/widget/ListView;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/widget/PullToRefreshListView;

    invoke-virtual {v1, v4}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->onRefreshComplete(Z)V

    goto :goto_1
.end method

.method private sortShopsAreaDesc(Lcom/cymobile/ymwork/types/Group;Lcom/cymobile/ymwork/widget/SeparatedListAdapter;)V
    .locals 5
    .parameter
    .parameter "listAdapter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cymobile/ymwork/types/Group",
            "<",
            "Lcom/cymobile/ymwork/types/Building;",
            ">;",
            "Lcom/cymobile/ymwork/widget/SeparatedListAdapter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 678
    .local p1, shops:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/Building;>;"
    new-instance v2, Lcom/cymobile/ymwork/types/Group;

    invoke-direct {v2}, Lcom/cymobile/ymwork/types/Group;-><init>()V

    .line 679
    .local v2, nearby:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/Building;>;"
    new-instance v0, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;

    .line 680
    iget-object v3, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->homeApplication:Lcom/cymobile/ymwork/HomeApplication;

    invoke-virtual {v3}, Lcom/cymobile/ymwork/HomeApplication;->getRemoteResourceManager()Lcom/cymobile/ymwork/server/RemoteResourceManager;

    move-result-object v3

    .line 679
    invoke-direct {v0, p0, v3}, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;-><init>(Landroid/content/Context;Lcom/cymobile/ymwork/server/RemoteResourceManager;)V

    .line 681
    .local v0, adapter:Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;
    invoke-virtual {p1}, Lcom/cymobile/ymwork/types/Group;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 697
    invoke-virtual {v2}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 698
    invoke-virtual {v0, v2}, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;->setGroup(Lcom/cymobile/ymwork/types/Group;)V

    .line 700
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 701
    const v4, 0x7f090034

    .line 700
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 699
    invoke-virtual {p2, v3, v0}, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    .line 704
    :cond_0
    return-void

    .line 681
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/types/Building;

    .line 693
    .local v1, it:Lcom/cymobile/ymwork/types/Building;
    invoke-virtual {v2, v1}, Lcom/cymobile/ymwork/types/Group;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private sortShopsDistanceDesc(Lcom/cymobile/ymwork/types/Group;Lcom/cymobile/ymwork/widget/SeparatedListAdapter;)V
    .locals 5
    .parameter
    .parameter "listAdapter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cymobile/ymwork/types/Group",
            "<",
            "Lcom/cymobile/ymwork/types/Building;",
            ">;",
            "Lcom/cymobile/ymwork/widget/SeparatedListAdapter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 707
    .local p1, shops:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/Building;>;"
    invoke-static {}, Lcom/cymobile/ymwork/utils/Comparators;->getRecentDistanceComparator()Ljava/util/Comparator;

    move-result-object v3

    invoke-static {p1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 709
    new-instance v2, Lcom/cymobile/ymwork/types/Group;

    invoke-direct {v2}, Lcom/cymobile/ymwork/types/Group;-><init>()V

    .line 710
    .local v2, nearby:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/Building;>;"
    new-instance v0, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;

    .line 711
    iget-object v3, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->homeApplication:Lcom/cymobile/ymwork/HomeApplication;

    invoke-virtual {v3}, Lcom/cymobile/ymwork/HomeApplication;->getRemoteResourceManager()Lcom/cymobile/ymwork/server/RemoteResourceManager;

    move-result-object v3

    .line 710
    invoke-direct {v0, p0, v3}, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;-><init>(Landroid/content/Context;Lcom/cymobile/ymwork/server/RemoteResourceManager;)V

    .line 712
    .local v0, adapter:Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;
    invoke-virtual {p1}, Lcom/cymobile/ymwork/types/Group;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 728
    invoke-virtual {v2}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 729
    invoke-virtual {v0, v2}, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;->setGroup(Lcom/cymobile/ymwork/types/Group;)V

    .line 731
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 732
    const v4, 0x7f090034

    .line 731
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 730
    invoke-virtual {p2, v3, v0}, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    .line 735
    :cond_0
    return-void

    .line 712
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/types/Building;

    .line 724
    .local v1, it:Lcom/cymobile/ymwork/types/Building;
    invoke-virtual {v2, v1}, Lcom/cymobile/ymwork/types/Group;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private sortShopsRecent(Lcom/cymobile/ymwork/types/Group;Lcom/cymobile/ymwork/widget/SeparatedListAdapter;)V
    .locals 5
    .parameter
    .parameter "listAdapter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cymobile/ymwork/types/Group",
            "<",
            "Lcom/cymobile/ymwork/types/Building;",
            ">;",
            "Lcom/cymobile/ymwork/widget/SeparatedListAdapter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 611
    .local p1, shops:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/Building;>;"
    invoke-static {}, Lcom/cymobile/ymwork/utils/Comparators;->getShopRecencyComparator()Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v3

    invoke-static {p1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 613
    new-instance v2, Lcom/cymobile/ymwork/types/Group;

    invoke-direct {v2}, Lcom/cymobile/ymwork/types/Group;-><init>()V

    .line 614
    .local v2, nearby:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/Building;>;"
    new-instance v0, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;

    .line 615
    iget-object v3, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->homeApplication:Lcom/cymobile/ymwork/HomeApplication;

    invoke-virtual {v3}, Lcom/cymobile/ymwork/HomeApplication;->getRemoteResourceManager()Lcom/cymobile/ymwork/server/RemoteResourceManager;

    move-result-object v3

    .line 614
    invoke-direct {v0, p0, v3}, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;-><init>(Landroid/content/Context;Lcom/cymobile/ymwork/server/RemoteResourceManager;)V

    .line 616
    .local v0, adapter:Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;
    invoke-virtual {p1}, Lcom/cymobile/ymwork/types/Group;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 632
    invoke-virtual {v2}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 633
    invoke-virtual {v0, v2}, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;->setGroup(Lcom/cymobile/ymwork/types/Group;)V

    .line 635
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 636
    const v4, 0x7f090034

    .line 635
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 634
    invoke-virtual {p2, v3, v0}, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    .line 639
    :cond_0
    return-void

    .line 616
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/types/Building;

    .line 628
    .local v1, it:Lcom/cymobile/ymwork/types/Building;
    invoke-virtual {v2, v1}, Lcom/cymobile/ymwork/types/Group;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private sortShopsRecentDesc(Lcom/cymobile/ymwork/types/Group;Lcom/cymobile/ymwork/widget/SeparatedListAdapter;)V
    .locals 5
    .parameter
    .parameter "listAdapter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cymobile/ymwork/types/Group",
            "<",
            "Lcom/cymobile/ymwork/types/Building;",
            ">;",
            "Lcom/cymobile/ymwork/widget/SeparatedListAdapter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 644
    .local p1, shops:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/Building;>;"
    invoke-static {}, Lcom/cymobile/ymwork/utils/Comparators;->getShopRecencyComparator()Ljava/util/Comparator;

    move-result-object v3

    invoke-static {p1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 646
    new-instance v2, Lcom/cymobile/ymwork/types/Group;

    invoke-direct {v2}, Lcom/cymobile/ymwork/types/Group;-><init>()V

    .line 647
    .local v2, nearby:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/Building;>;"
    new-instance v0, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;

    .line 648
    iget-object v3, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->homeApplication:Lcom/cymobile/ymwork/HomeApplication;

    invoke-virtual {v3}, Lcom/cymobile/ymwork/HomeApplication;->getRemoteResourceManager()Lcom/cymobile/ymwork/server/RemoteResourceManager;

    move-result-object v3

    .line 647
    invoke-direct {v0, p0, v3}, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;-><init>(Landroid/content/Context;Lcom/cymobile/ymwork/server/RemoteResourceManager;)V

    .line 649
    .local v0, adapter:Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;
    invoke-virtual {p1}, Lcom/cymobile/ymwork/types/Group;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 665
    invoke-virtual {v2}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 666
    invoke-virtual {v0, v2}, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;->setGroup(Lcom/cymobile/ymwork/types/Group;)V

    .line 668
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 669
    const v4, 0x7f090034

    .line 668
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 667
    invoke-virtual {p2, v3, v0}, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    .line 672
    :cond_0
    return-void

    .line 649
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/types/Building;

    .line 661
    .local v1, it:Lcom/cymobile/ymwork/types/Building;
    invoke-virtual {v2, v1}, Lcom/cymobile/ymwork/types/Group;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public getNoSearchResultsStringId()I
    .locals 1

    .prologue
    .line 296
    const v0, 0x7f090019

    return v0
.end method

.method getShopsSize()I
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;->getCount()I

    move-result v0

    .line 81
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStateHolder()Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->mStateHolder:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;

    return-object v0
.end method

.method onAddMoreTaskComplete(Lcom/cymobile/ymwork/types/Group;Ljava/lang/Exception;)V
    .locals 11
    .parameter
    .parameter "ex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cymobile/ymwork/types/Group",
            "<",
            "Lcom/cymobile/ymwork/types/Building;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, shops:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/Building;>;"
    const v10, 0x7f090091

    const v9, 0x7f090090

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 780
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->getListView()Landroid/widget/ListView;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/widget/PullToRefreshListView;

    .line 781
    .local v1, listview:Lcom/cymobile/ymwork/widget/PullToRefreshListView;
    invoke-virtual {v1, v7}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 782
    .local v4, v:Landroid/view/View;
    invoke-virtual {v1}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->getFirstVisiblePosition()I

    move-result v2

    .line 784
    .local v2, oldPos:I
    iget-object v5, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->mStateHolder:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;

    invoke-virtual {v5, v8}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;->setRanOnce(Z)V

    .line 785
    iget-object v5, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->mStateHolder:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;

    invoke-virtual {v5, v7}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;->setIsRunningTask(Z)V

    .line 786
    invoke-virtual {p0, v7}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->setProgressBarIndeterminateVisibility(Z)V

    .line 788
    if-eqz p2, :cond_5

    .line 789
    instance-of v5, p2, Lcom/cymobile/ymwork/server/error/ServerException;

    if-eqz v5, :cond_4

    move-object v3, p2

    .line 790
    check-cast v3, Lcom/cymobile/ymwork/server/error/ServerException;

    .line 791
    .local v3, se:Lcom/cymobile/ymwork/server/error/ServerException;
    invoke-virtual {v3}, Lcom/cymobile/ymwork/server/error/ServerException;->getErrorCode()I

    move-result v5

    const/16 v6, 0x14

    if-ne v5, v6, :cond_3

    .line 792
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->getListView()Landroid/widget/ListView;

    move-result-object v5

    check-cast v5, Lcom/cymobile/ymwork/widget/PullToRefreshListView;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->onLastRecordComplete()V

    .line 793
    invoke-static {p0, v10, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 800
    .end local v3           #se:Lcom/cymobile/ymwork/server/error/ServerException;
    :goto_0
    iget-object v5, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->mStateHolder:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;->getShops()Lcom/cymobile/ymwork/types/Group;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->mStateHolder:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;->getShops()Lcom/cymobile/ymwork/types/Group;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v5

    if-gtz v5, :cond_1

    .line 803
    :cond_0
    iget-object v5, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->mStateHolder:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;

    new-instance v6, Lcom/cymobile/ymwork/types/Group;

    invoke-direct {v6}, Lcom/cymobile/ymwork/types/Group;-><init>()V

    invoke-virtual {v5, v6}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;->setShops(Lcom/cymobile/ymwork/types/Group;)V

    .line 828
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->mStateHolder:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;->getShops()Lcom/cymobile/ymwork/types/Group;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 829
    iget-object v5, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->mLayoutEmpty:Landroid/view/ViewGroup;

    invoke-virtual {p0, v5}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->setEmptyView(Landroid/view/View;)V

    .line 833
    :cond_2
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->getListView()Landroid/widget/ListView;

    move-result-object v5

    iget-object v6, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 834
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 836
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->getListView()Landroid/widget/ListView;

    move-result-object v5

    check-cast v5, Lcom/cymobile/ymwork/widget/PullToRefreshListView;

    invoke-virtual {v5, v8}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->onAddMoreComplete(Z)V

    .line 837
    return-void

    .line 795
    .restart local v3       #se:Lcom/cymobile/ymwork/server/error/ServerException;
    :cond_3
    invoke-static {p0, v9, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 798
    .end local v3           #se:Lcom/cymobile/ymwork/server/error/ServerException;
    :cond_4
    invoke-static {p0, v9, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 807
    :cond_5
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v5

    if-lez v5, :cond_9

    .line 809
    iget-object v5, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;->removeObserver()V

    .line 810
    iget-object v5, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;->clear()V

    .line 811
    new-instance v5, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-direct {v5, p0}, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    .line 813
    iget-object v5, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->mStateHolder:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;->getShops()Lcom/cymobile/ymwork/types/Group;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/cymobile/ymwork/types/Group;->addAll(Ljava/util/Collection;)Z

    .line 814
    iget-object v5, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->mStateHolder:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;

    invoke-virtual {v5, p1}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;->setShops(Lcom/cymobile/ymwork/types/Group;)V

    .line 815
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->getFilterFragment()Lcom/cymobile/ymwork/widget/RangeFilterFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cymobile/ymwork/widget/RangeFilterFragment;->getFilterDataSource()Lcom/cymobile/ymwork/adapter/FilterDataSource;

    move-result-object v0

    .line 816
    .local v0, ds:Lcom/cymobile/ymwork/adapter/FilterDataSource;
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/cymobile/ymwork/adapter/FilterDataSource;->curFilterId()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v5

    if-ne v5, v8, :cond_6

    .line 817
    iget-object v5, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->mStateHolder:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;->getShops()Lcom/cymobile/ymwork/types/Group;

    move-result-object v5

    iget-object v6, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-direct {p0, v5, v6}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->sortShopsRecent(Lcom/cymobile/ymwork/types/Group;Lcom/cymobile/ymwork/widget/SeparatedListAdapter;)V

    goto/16 :goto_1

    .line 818
    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/cymobile/ymwork/adapter/FilterDataSource;->curFilterId()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_7

    .line 819
    iget-object v5, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->mStateHolder:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;->getShops()Lcom/cymobile/ymwork/types/Group;

    move-result-object v5

    iget-object v6, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-direct {p0, v5, v6}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->sortShopsRecentDesc(Lcom/cymobile/ymwork/types/Group;Lcom/cymobile/ymwork/widget/SeparatedListAdapter;)V

    goto/16 :goto_1

    .line 820
    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/cymobile/ymwork/adapter/FilterDataSource;->curFilterId()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_8

    .line 821
    iget-object v5, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->mStateHolder:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;->getShops()Lcom/cymobile/ymwork/types/Group;

    move-result-object v5

    iget-object v6, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-direct {p0, v5, v6}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->sortShopsAreaDesc(Lcom/cymobile/ymwork/types/Group;Lcom/cymobile/ymwork/widget/SeparatedListAdapter;)V

    goto/16 :goto_1

    .line 822
    :cond_8
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/cymobile/ymwork/adapter/FilterDataSource;->curFilterId()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    .line 823
    iget-object v5, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->mStateHolder:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;->getShops()Lcom/cymobile/ymwork/types/Group;

    move-result-object v5

    iget-object v6, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-direct {p0, v5, v6}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->sortShopsDistanceDesc(Lcom/cymobile/ymwork/types/Group;Lcom/cymobile/ymwork/widget/SeparatedListAdapter;)V

    goto/16 :goto_1

    .line 825
    .end local v0           #ds:Lcom/cymobile/ymwork/adapter/FilterDataSource;
    :cond_9
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 826
    :cond_a
    invoke-static {p0, v10, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/16 v9, 0x51

    const/16 v8, 0xc

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 87
    invoke-virtual {p0, v6}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->requestWindowFeature(I)Z

    .line 88
    const-class v1, Lcom/cymobile/ymwork/SettingBase;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v7}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->mPrefs:Landroid/content/SharedPreferences;

    .line 90
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->requestWindowFeature(I)Z

    .line 91
    iput-object p0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->contexts:Landroid/content/Context;

    .line 92
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "Intent_ClassId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 93
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "Intent_ClassId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->classid:I

    .line 94
    iget v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->classid:I

    if-eq v1, v9, :cond_0

    iget v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->classid:I

    const/16 v2, 0x52

    if-ne v1, v2, :cond_1

    .line 95
    :cond_0
    iget v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->classid:I

    iput v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->classidextra:I

    .line 96
    const/4 v1, 0x0

    iput v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->classid:I

    .line 98
    :cond_1
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "Intent_ZoneId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 99
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "Intent_ZoneId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->intentZoneId:Ljava/lang/String;

    .line 101
    :cond_2
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "Intent_Days"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 102
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "Intent_Days"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->intentDays:I

    .line 108
    :cond_3
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "key_GlobalZoneId"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->userZoneId:Ljava/lang/String;

    .line 109
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "key_GlobalZoneName"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->userZoneName:Ljava/lang/String;

    .line 110
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->userZoneId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->userZoneId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v4, 0x6

    if-ne v1, v4, :cond_9

    const-string v1, "\u5168\u90e8"

    :goto_0
    invoke-static {v2, v3, v1}, Lcom/cymobile/ymwork/adapter/FilterDataSource;->resetTOPCategory(JLjava/lang/String;)V

    .line 111
    const v1, 0x7f030028

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->setContentView(I)V

    .line 112
    invoke-super {p0, p1}, Lcom/cymobile/ymwork/widget/LoadableListFragmentWithViewAndHeader;->onCreate(Landroid/os/Bundle;)V

    .line 114
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->mLoggedOutReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    .line 115
    const-string v3, "com.cymobile.ymwork.intent.action.LOGGED_OUT"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0, v1, v2}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 117
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/HomeApplication;

    iput-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->homeApplication:Lcom/cymobile/ymwork/HomeApplication;

    .line 118
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 119
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;

    iput-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->mStateHolder:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;

    .line 120
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->mStateHolder:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;

    invoke-virtual {v1, p0}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;->setActivity(Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;)V

    .line 124
    :goto_1
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->ensureUi()V

    .line 125
    const v1, 0x7f08002f

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->commonTitle:Landroid/widget/TextView;

    .line 126
    iget v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->classid:I

    if-nez v1, :cond_b

    .line 127
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->commonTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900a6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->classidextra:I

    if-ne v1, v9, :cond_4

    .line 129
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->commonTitle:Landroid/widget/TextView;

    const-string v2, "\u6d88\u9632\u5b89\u5168"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    :cond_4
    iget v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->classidextra:I

    const/16 v2, 0x52

    if-ne v1, v2, :cond_5

    .line 132
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->commonTitle:Landroid/widget/TextView;

    const-string v2, "\u98df\u54c1\u5b89\u5168"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->getListView()Landroid/widget/ListView;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/widget/PullToRefreshListView;

    .line 142
    new-instance v2, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$2;

    invoke-direct {v2, p0}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$2;-><init>(Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;)V

    invoke-virtual {v1, v2}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->setOnRefreshListener(Lcom/cymobile/ymwork/widget/PullToRefreshListView$OnRefreshListener;)V

    .line 152
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->getListView()Landroid/widget/ListView;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/widget/PullToRefreshListView;

    .line 153
    new-instance v2, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$3;

    invoke-direct {v2, p0}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$3;-><init>(Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;)V

    invoke-virtual {v1, v2}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->setOnAddMoreListener(Lcom/cymobile/ymwork/widget/PullToRefreshListView$OnAddMoreListener;)V

    .line 168
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "key_GlobalZoneId"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, zonecode:Ljava/lang/String;
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v8, :cond_7

    :cond_6
    invoke-static {}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getSubZone()Lcom/cymobile/ymwork/types/Group;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-static {}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getSubZone()Lcom/cymobile/ymwork/types/Group;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v1

    if-lez v1, :cond_d

    .line 171
    :cond_7
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v8, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 175
    .end local v0           #zonecode:Ljava/lang/String;
    :goto_3
    return-void

    .line 105
    :cond_8
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->finish()V

    goto :goto_3

    .line 110
    :cond_9
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->userZoneName:Ljava/lang/String;

    goto/16 :goto_0

    .line 122
    :cond_a
    new-instance v1, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;

    invoke-direct {v1, p0}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;-><init>(Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;)V

    iput-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->mStateHolder:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;

    goto/16 :goto_1

    .line 134
    :cond_b
    iget v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->classid:I

    if-ne v1, v6, :cond_c

    .line 135
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->commonTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900a7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 136
    :cond_c
    iget v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->classid:I

    if-ne v1, v7, :cond_5

    .line 137
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->commonTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900a8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 173
    .restart local v0       #zonecode:Ljava/lang/String;
    :cond_d
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xb

    const-wide/16 v3, 0xa

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_3
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .parameter "id"

    .prologue
    .line 505
    const/4 v0, 0x0

    .line 506
    .local v0, dialog:Landroid/app/Dialog;
    const/4 v1, 0x0

    return-object v1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 194
    invoke-super {p0}, Lcom/cymobile/ymwork/widget/LoadableListFragmentWithViewAndHeader;->onDestroy()V

    .line 196
    :try_start_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->mLoggedOutReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->getStateHolder()Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 202
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->getStateHolder()Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;->cancel()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 207
    :cond_0
    :goto_1
    return-void

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, ee:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 204
    .end local v0           #ee:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 205
    .restart local v0       #ee:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 277
    invoke-super {p0}, Lcom/cymobile/ymwork/widget/LoadableListFragmentWithViewAndHeader;->onPause()V

    .line 282
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;->removeObserver()V

    .line 284
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->mLoggedOutReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 285
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->mStateHolder:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;->cancel()V

    .line 287
    :cond_0
    return-void
.end method
