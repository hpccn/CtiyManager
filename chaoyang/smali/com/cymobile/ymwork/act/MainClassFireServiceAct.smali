.class public Lcom/cymobile/ymwork/act/MainClassFireServiceAct;
.super Lcom/cymobile/ymwork/widget/LoadableListFragmentWithViewAndHeaderFire;
.source "MainClassFireServiceAct.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cymobile/ymwork/act/MainClassFireServiceAct$GetZoneTask;,
        Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;,
        Lcom/cymobile/ymwork/act/MainClassFireServiceAct$TaskMoreShops;,
        Lcom/cymobile/ymwork/act/MainClassFireServiceAct$TaskShops;,
        Lcom/cymobile/ymwork/act/MainClassFireServiceAct$UIHandler;
    }
.end annotation


# static fields
.field public static final CITY_RADIUS_IN_METERS:I = 0xc350

.field private static final Intent_init_direct_search:I = 0xc

.field private static final Intent_init_search:I = 0xb

.field private static final SLEEP_TIME_IF_NO_LOCATION:J = 0xbb8L

.field public static final TAG:Ljava/lang/String; = "MainClassFireServiceAct"


# instance fields
.field private classid:I

.field private classidextra:I

.field commonTitle:Landroid/widget/TextView;

.field contexts:Landroid/content/Context;

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

.field private emphasis:Ljava/lang/String;

.field private flag:Z

.field homeApplication:Lcom/cymobile/ymwork/HomeApplication;

.field private intentDays:I

.field private intentZoneId:Ljava/lang/String;

.field mHandler:Landroid/os/Handler;

.field private mLayoutEmpty:Landroid/view/ViewGroup;

.field private mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

.field private mLoggedOutReceiver:Landroid/content/BroadcastReceiver;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mStateHolder:Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;

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
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Lcom/cymobile/ymwork/widget/LoadableListFragmentWithViewAndHeaderFire;-><init>()V

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->drawableMap:Ljava/util/HashMap;

    .line 68
    iput v1, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->classid:I

    .line 69
    iput v1, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->classidextra:I

    .line 70
    iput-object v2, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->intentZoneId:Ljava/lang/String;

    iput-object v2, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->emphasis:Ljava/lang/String;

    .line 72
    iput-boolean v1, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->flag:Z

    .line 209
    new-instance v0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$UIHandler;

    invoke-direct {v0, p0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$UIHandler;-><init>(Lcom/cymobile/ymwork/act/MainClassFireServiceAct;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->mHandler:Landroid/os/Handler;

    .line 298
    new-instance v0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$1;

    invoke-direct {v0, p0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$1;-><init>(Lcom/cymobile/ymwork/act/MainClassFireServiceAct;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->mLoggedOutReceiver:Landroid/content/BroadcastReceiver;

    .line 536
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->orderflags:[Z

    .line 59
    return-void
.end method

.method static synthetic access$0(Lcom/cymobile/ymwork/act/MainClassFireServiceAct;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cymobile/ymwork/act/MainClassFireServiceAct;)I
    .locals 1
    .parameter

    .prologue
    .line 68
    iget v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->classid:I

    return v0
.end method

.method static synthetic access$2(Lcom/cymobile/ymwork/act/MainClassFireServiceAct;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->emphasis:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/cymobile/ymwork/act/MainClassFireServiceAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1033
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->onRefreshTaskStart()V

    return-void
.end method

.method static synthetic access$4(Lcom/cymobile/ymwork/act/MainClassFireServiceAct;Lcom/cymobile/ymwork/types/Group;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 772
    invoke-direct {p0, p1, p2}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->onTaskComplete(Lcom/cymobile/ymwork/types/Group;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$5(Lcom/cymobile/ymwork/act/MainClassFireServiceAct;)Z
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->flag:Z

    return v0
.end method

.method static synthetic access$6(Lcom/cymobile/ymwork/act/MainClassFireServiceAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1038
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->onMoreTaskStart()V

    return-void
.end method

.method static synthetic access$7(Lcom/cymobile/ymwork/act/MainClassFireServiceAct;)Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;

    return-object v0
.end method

.method static synthetic access$8(Lcom/cymobile/ymwork/act/MainClassFireServiceAct;)Lcom/cymobile/ymwork/widget/SeparatedListAdapter;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    return-object v0
.end method

.method private ensureUi()V
    .locals 3

    .prologue
    .line 444
    const v2, 0x7f08002d

    invoke-virtual {p0, v2}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 445
    .local v0, leftbtn:Landroid/widget/ImageButton;
    new-instance v2, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$4;

    invoke-direct {v2, p0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$4;-><init>(Lcom/cymobile/ymwork/act/MainClassFireServiceAct;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 451
    const v2, 0x7f080030

    invoke-virtual {p0, v2}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 452
    .local v1, rightBtn:Landroid/widget/Button;
    const-string v2, "\u5730\u56fe\u6a21\u5f0f"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 457
    new-instance v2, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$5;

    invoke-direct {v2, p0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$5;-><init>(Lcom/cymobile/ymwork/act/MainClassFireServiceAct;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 533
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->ensureUiListView()V

    .line 534
    return-void
.end method

.method private ensureUiListView()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 545
    new-instance v5, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-direct {v5, p0}, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    .line 547
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->getFilterFragment()Lcom/cymobile/ymwork/widget/RangeFilterFragmentFire;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cymobile/ymwork/widget/RangeFilterFragmentFire;->getFilterDataSource()Lcom/cymobile/ymwork/adapter/FilterDataSource;

    move-result-object v2

    .line 548
    .local v2, ds:Lcom/cymobile/ymwork/adapter/FilterDataSource;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/cymobile/ymwork/adapter/FilterDataSource;->curFilterId()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v5

    if-ne v5, v9, :cond_0

    .line 549
    iget-object v5, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->getShops()Lcom/cymobile/ymwork/types/Group;

    move-result-object v5

    iget-object v6, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-direct {p0, v5, v6}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->sortShopsRecent(Lcom/cymobile/ymwork/types/Group;Lcom/cymobile/ymwork/widget/SeparatedListAdapter;)V

    .line 552
    :cond_0
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->getListView()Landroid/widget/ListView;

    move-result-object v4

    check-cast v4, Lcom/cymobile/ymwork/widget/PullToRefreshListView;

    .line 553
    .local v4, listView:Lcom/cymobile/ymwork/widget/PullToRefreshListView;
    iget-object v5, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-virtual {v4, v5}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 554
    invoke-virtual {v4, v8}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->setDividerHeight(I)V

    .line 555
    new-instance v5, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$6;

    invoke-direct {v5, p0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$6;-><init>(Lcom/cymobile/ymwork/act/MainClassFireServiceAct;)V

    invoke-virtual {v4, v5}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 601
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 602
    .local v3, inflater:Landroid/view/LayoutInflater;
    invoke-static {}, Lcom/cymobile/ymwork/utils/UiUtil;->sdkVersion()I

    move-result v5

    const/4 v6, 0x3

    if-le v5, v6, :cond_2

    .line 604
    const v5, 0x7f03003d

    .line 603
    invoke-virtual {v3, v5, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ScrollView;

    iput-object v5, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->mLayoutEmpty:Landroid/view/ViewGroup;

    .line 611
    :goto_0
    iget-object v5, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->mLayoutEmpty:Landroid/view/ViewGroup;

    .line 612
    const v6, 0x7f08010f

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 611
    check-cast v0, Landroid/widget/Button;

    .line 613
    .local v0, btnAddFriends:Landroid/widget/Button;
    new-instance v5, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$7;

    invoke-direct {v5, p0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$7;-><init>(Lcom/cymobile/ymwork/act/MainClassFireServiceAct;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 619
    iget-object v5, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->mLayoutEmpty:Landroid/view/ViewGroup;

    .line 620
    const v6, 0x7f080110

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 619
    check-cast v1, Landroid/widget/Button;

    .line 621
    .local v1, btnFriendRequests:Landroid/widget/Button;
    new-instance v5, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$8;

    invoke-direct {v5, p0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$8;-><init>(Lcom/cymobile/ymwork/act/MainClassFireServiceAct;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 626
    iget-object v5, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->mLayoutEmpty:Landroid/view/ViewGroup;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 628
    invoke-direct {v6, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 626
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 630
    iget-object v5, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;->getCount()I

    .line 634
    iget-object v5, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->getIsRunningTask()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 635
    invoke-virtual {p0, v9}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->setProgressBarIndeterminateVisibility(Z)V

    .line 636
    iget-object v5, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->getRanOnce()Z

    move-result v5

    if-nez v5, :cond_1

    .line 637
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->setLoadingView()V

    .line 642
    :cond_1
    :goto_1
    return-void

    .line 609
    .end local v0           #btnAddFriends:Landroid/widget/Button;
    .end local v1           #btnFriendRequests:Landroid/widget/Button;
    :cond_2
    const v5, 0x7f03003e

    .line 608
    invoke-virtual {v3, v5, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ScrollView;

    iput-object v5, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->mLayoutEmpty:Landroid/view/ViewGroup;

    goto :goto_0

    .line 640
    .restart local v0       #btnAddFriends:Landroid/widget/Button;
    .restart local v1       #btnFriendRequests:Landroid/widget/Button;
    :cond_3
    invoke-virtual {p0, v8}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->setProgressBarIndeterminateVisibility(Z)V

    goto :goto_1
.end method

.method private onMoreTaskStart()V
    .locals 1

    .prologue
    .line 1039
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->setProgressBarIndeterminateVisibility(Z)V

    .line 1040
    return-void
.end method

.method private onRefreshTaskStart()V
    .locals 1

    .prologue
    .line 1034
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->setProgressBarIndeterminateVisibility(Z)V

    .line 1035
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->setLoadingView()V

    .line 1036
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
            "Lcom/cymobile/ymwork/types/ConstrustionField;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, shops:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/ConstrustionField;>;"
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 773
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;

    invoke-virtual {v1, v3}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->setRanOnce(Z)V

    .line 774
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;

    invoke-virtual {v1, v4}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->setIsRunningTask(Z)V

    .line 775
    invoke-virtual {p0, v4}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->setProgressBarIndeterminateVisibility(Z)V

    .line 778
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;->removeObserver()V

    .line 779
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;->clear()V

    .line 780
    new-instance v1, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-direct {v1, p0}, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    .line 784
    if-eqz p1, :cond_5

    .line 785
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;

    invoke-virtual {v1, p1}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->setShops(Lcom/cymobile/ymwork/types/Group;)V

    .line 786
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->getFilterFragment()Lcom/cymobile/ymwork/widget/RangeFilterFragmentFire;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cymobile/ymwork/widget/RangeFilterFragmentFire;->getFilterDataSource()Lcom/cymobile/ymwork/adapter/FilterDataSource;

    move-result-object v0

    .line 787
    .local v0, ds:Lcom/cymobile/ymwork/adapter/FilterDataSource;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/cymobile/ymwork/adapter/FilterDataSource;->curFilterId()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 788
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->getShops()Lcom/cymobile/ymwork/types/Group;

    move-result-object v1

    iget-object v2, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-direct {p0, v1, v2}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->sortShopsRecent(Lcom/cymobile/ymwork/types/Group;Lcom/cymobile/ymwork/widget/SeparatedListAdapter;)V

    .line 801
    .end local v0           #ds:Lcom/cymobile/ymwork/adapter/FilterDataSource;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->getShops()Lcom/cymobile/ymwork/types/Group;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 802
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->mLayoutEmpty:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->setEmptyView(Landroid/view/View;)V

    .line 804
    :cond_1
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 805
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setSelection(I)V

    .line 806
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->getShops()Lcom/cymobile/ymwork/types/Group;

    move-result-object v1

    if-eqz v1, :cond_6

    if-eqz p1, :cond_6

    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->getShops()Lcom/cymobile/ymwork/types/Group;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v1

    invoke-virtual {p1}, Lcom/cymobile/ymwork/types/Group;->getNumber()I

    move-result v2

    if-ne v1, v2, :cond_6

    .line 807
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->getListView()Landroid/widget/ListView;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/widget/PullToRefreshListView;

    invoke-virtual {v1, v3}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->onRefreshComplete(Z)V

    .line 811
    :goto_1
    return-void

    .line 789
    .restart local v0       #ds:Lcom/cymobile/ymwork/adapter/FilterDataSource;
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/cymobile/ymwork/adapter/FilterDataSource;->curFilterId()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 790
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->getShops()Lcom/cymobile/ymwork/types/Group;

    move-result-object v1

    iget-object v2, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-direct {p0, v1, v2}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->sortShopsRecentDesc(Lcom/cymobile/ymwork/types/Group;Lcom/cymobile/ymwork/widget/SeparatedListAdapter;)V

    goto :goto_0

    .line 791
    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/cymobile/ymwork/adapter/FilterDataSource;->curFilterId()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 792
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->getShops()Lcom/cymobile/ymwork/types/Group;

    move-result-object v1

    iget-object v2, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-direct {p0, v1, v2}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->sortShopsAreaDesc(Lcom/cymobile/ymwork/types/Group;Lcom/cymobile/ymwork/widget/SeparatedListAdapter;)V

    goto :goto_0

    .line 793
    :cond_4
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cymobile/ymwork/adapter/FilterDataSource;->curFilterId()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 794
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->getShops()Lcom/cymobile/ymwork/types/Group;

    move-result-object v1

    iget-object v2, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-direct {p0, v1, v2}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->sortShopsDistanceDesc(Lcom/cymobile/ymwork/types/Group;Lcom/cymobile/ymwork/widget/SeparatedListAdapter;)V

    goto/16 :goto_0

    .line 796
    .end local v0           #ds:Lcom/cymobile/ymwork/adapter/FilterDataSource;
    :cond_5
    if-eqz p2, :cond_0

    .line 797
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;

    new-instance v2, Lcom/cymobile/ymwork/types/Group;

    invoke-direct {v2}, Lcom/cymobile/ymwork/types/Group;-><init>()V

    invoke-virtual {v1, v2}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->setShops(Lcom/cymobile/ymwork/types/Group;)V

    goto/16 :goto_0

    .line 809
    :cond_6
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->getListView()Landroid/widget/ListView;

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
            "Lcom/cymobile/ymwork/types/ConstrustionField;",
            ">;",
            "Lcom/cymobile/ymwork/widget/SeparatedListAdapter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 713
    .local p1, shops:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/ConstrustionField;>;"
    new-instance v2, Lcom/cymobile/ymwork/types/Group;

    invoke-direct {v2}, Lcom/cymobile/ymwork/types/Group;-><init>()V

    .line 714
    .local v2, nearby:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/ConstrustionField;>;"
    new-instance v0, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;

    .line 715
    iget-object v3, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->homeApplication:Lcom/cymobile/ymwork/HomeApplication;

    invoke-virtual {v3}, Lcom/cymobile/ymwork/HomeApplication;->getRemoteResourceManager()Lcom/cymobile/ymwork/server/RemoteResourceManager;

    move-result-object v3

    .line 714
    invoke-direct {v0, p0, v3}, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;-><init>(Landroid/content/Context;Lcom/cymobile/ymwork/server/RemoteResourceManager;)V

    .line 716
    .local v0, adapter:Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;
    invoke-virtual {p1}, Lcom/cymobile/ymwork/types/Group;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 732
    invoke-virtual {v2}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 733
    invoke-virtual {v0, v2}, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;->setGroup(Lcom/cymobile/ymwork/types/Group;)V

    .line 735
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 736
    const v4, 0x7f090034

    .line 735
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 734
    invoke-virtual {p2, v3, v0}, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    .line 739
    :cond_0
    return-void

    .line 716
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/types/ConstrustionField;

    .line 728
    .local v1, it:Lcom/cymobile/ymwork/types/ConstrustionField;
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
            "Lcom/cymobile/ymwork/types/ConstrustionField;",
            ">;",
            "Lcom/cymobile/ymwork/widget/SeparatedListAdapter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 742
    .local p1, shops:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/ConstrustionField;>;"
    invoke-static {}, Lcom/cymobile/ymwork/utils/Comparators;->getConstrustionFieldDistanceComparator()Ljava/util/Comparator;

    move-result-object v3

    invoke-static {p1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 744
    new-instance v2, Lcom/cymobile/ymwork/types/Group;

    invoke-direct {v2}, Lcom/cymobile/ymwork/types/Group;-><init>()V

    .line 745
    .local v2, nearby:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/ConstrustionField;>;"
    new-instance v0, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;

    .line 746
    iget-object v3, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->homeApplication:Lcom/cymobile/ymwork/HomeApplication;

    invoke-virtual {v3}, Lcom/cymobile/ymwork/HomeApplication;->getRemoteResourceManager()Lcom/cymobile/ymwork/server/RemoteResourceManager;

    move-result-object v3

    .line 745
    invoke-direct {v0, p0, v3}, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;-><init>(Landroid/content/Context;Lcom/cymobile/ymwork/server/RemoteResourceManager;)V

    .line 747
    .local v0, adapter:Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;
    invoke-virtual {p1}, Lcom/cymobile/ymwork/types/Group;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 763
    invoke-virtual {v2}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 764
    invoke-virtual {v0, v2}, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;->setGroup(Lcom/cymobile/ymwork/types/Group;)V

    .line 766
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 767
    const v4, 0x7f090034

    .line 766
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 765
    invoke-virtual {p2, v3, v0}, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    .line 770
    :cond_0
    return-void

    .line 747
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/types/ConstrustionField;

    .line 759
    .local v1, it:Lcom/cymobile/ymwork/types/ConstrustionField;
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
            "Lcom/cymobile/ymwork/types/ConstrustionField;",
            ">;",
            "Lcom/cymobile/ymwork/widget/SeparatedListAdapter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 646
    .local p1, shops:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/ConstrustionField;>;"
    invoke-static {}, Lcom/cymobile/ymwork/utils/Comparators;->getConstrustionFieldComparator()Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v3

    invoke-static {p1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 648
    new-instance v2, Lcom/cymobile/ymwork/types/Group;

    invoke-direct {v2}, Lcom/cymobile/ymwork/types/Group;-><init>()V

    .line 649
    .local v2, nearby:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/ConstrustionField;>;"
    new-instance v0, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;

    .line 650
    iget-object v3, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->homeApplication:Lcom/cymobile/ymwork/HomeApplication;

    invoke-virtual {v3}, Lcom/cymobile/ymwork/HomeApplication;->getRemoteResourceManager()Lcom/cymobile/ymwork/server/RemoteResourceManager;

    move-result-object v3

    .line 649
    invoke-direct {v0, p0, v3}, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;-><init>(Landroid/content/Context;Lcom/cymobile/ymwork/server/RemoteResourceManager;)V

    .line 651
    .local v0, adapter:Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;
    invoke-virtual {p1}, Lcom/cymobile/ymwork/types/Group;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 667
    invoke-virtual {v2}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 668
    invoke-virtual {v0, v2}, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;->setGroup(Lcom/cymobile/ymwork/types/Group;)V

    .line 670
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 671
    const v4, 0x7f090034

    .line 670
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 669
    invoke-virtual {p2, v3, v0}, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    .line 674
    :cond_0
    return-void

    .line 651
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/types/ConstrustionField;

    .line 663
    .local v1, it:Lcom/cymobile/ymwork/types/ConstrustionField;
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
            "Lcom/cymobile/ymwork/types/ConstrustionField;",
            ">;",
            "Lcom/cymobile/ymwork/widget/SeparatedListAdapter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 679
    .local p1, shops:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/ConstrustionField;>;"
    invoke-static {}, Lcom/cymobile/ymwork/utils/Comparators;->getConstrustionFieldComparator()Ljava/util/Comparator;

    move-result-object v3

    invoke-static {p1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 681
    new-instance v2, Lcom/cymobile/ymwork/types/Group;

    invoke-direct {v2}, Lcom/cymobile/ymwork/types/Group;-><init>()V

    .line 682
    .local v2, nearby:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/ConstrustionField;>;"
    new-instance v0, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;

    .line 683
    iget-object v3, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->homeApplication:Lcom/cymobile/ymwork/HomeApplication;

    invoke-virtual {v3}, Lcom/cymobile/ymwork/HomeApplication;->getRemoteResourceManager()Lcom/cymobile/ymwork/server/RemoteResourceManager;

    move-result-object v3

    .line 682
    invoke-direct {v0, p0, v3}, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;-><init>(Landroid/content/Context;Lcom/cymobile/ymwork/server/RemoteResourceManager;)V

    .line 684
    .local v0, adapter:Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;
    invoke-virtual {p1}, Lcom/cymobile/ymwork/types/Group;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 700
    invoke-virtual {v2}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 701
    invoke-virtual {v0, v2}, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;->setGroup(Lcom/cymobile/ymwork/types/Group;)V

    .line 703
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 704
    const v4, 0x7f090034

    .line 703
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 702
    invoke-virtual {p2, v3, v0}, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    .line 707
    :cond_0
    return-void

    .line 684
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/types/ConstrustionField;

    .line 696
    .local v1, it:Lcom/cymobile/ymwork/types/ConstrustionField;
    invoke-virtual {v2, v1}, Lcom/cymobile/ymwork/types/Group;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public getNoSearchResultsStringId()I
    .locals 1

    .prologue
    .line 327
    const v0, 0x7f090019

    return v0
.end method

.method getShopsSize()I
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;->getCount()I

    move-result v0

    .line 85
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStateHolder()Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;

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
            "Lcom/cymobile/ymwork/types/ConstrustionField;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, shops:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/ConstrustionField;>;"
    const v10, 0x7f090091

    const v9, 0x7f090090

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 815
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->getListView()Landroid/widget/ListView;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/widget/PullToRefreshListView;

    .line 816
    .local v1, listview:Lcom/cymobile/ymwork/widget/PullToRefreshListView;
    invoke-virtual {v1, v7}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 817
    .local v4, v:Landroid/view/View;
    invoke-virtual {v1}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->getFirstVisiblePosition()I

    move-result v2

    .line 819
    .local v2, oldPos:I
    iget-object v5, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;

    invoke-virtual {v5, v8}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->setRanOnce(Z)V

    .line 820
    iget-object v5, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;

    invoke-virtual {v5, v7}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->setIsRunningTask(Z)V

    .line 821
    invoke-virtual {p0, v7}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->setProgressBarIndeterminateVisibility(Z)V

    .line 823
    if-eqz p2, :cond_5

    .line 824
    instance-of v5, p2, Lcom/cymobile/ymwork/server/error/ServerException;

    if-eqz v5, :cond_4

    move-object v3, p2

    .line 825
    check-cast v3, Lcom/cymobile/ymwork/server/error/ServerException;

    .line 826
    .local v3, se:Lcom/cymobile/ymwork/server/error/ServerException;
    invoke-virtual {v3}, Lcom/cymobile/ymwork/server/error/ServerException;->getErrorCode()I

    move-result v5

    const/16 v6, 0x14

    if-ne v5, v6, :cond_3

    .line 827
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->getListView()Landroid/widget/ListView;

    move-result-object v5

    check-cast v5, Lcom/cymobile/ymwork/widget/PullToRefreshListView;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->onLastRecordComplete()V

    .line 828
    invoke-static {p0, v10, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 835
    .end local v3           #se:Lcom/cymobile/ymwork/server/error/ServerException;
    :goto_0
    iget-object v5, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->getShops()Lcom/cymobile/ymwork/types/Group;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->getShops()Lcom/cymobile/ymwork/types/Group;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v5

    if-gtz v5, :cond_1

    .line 838
    :cond_0
    iget-object v5, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;

    new-instance v6, Lcom/cymobile/ymwork/types/Group;

    invoke-direct {v6}, Lcom/cymobile/ymwork/types/Group;-><init>()V

    invoke-virtual {v5, v6}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->setShops(Lcom/cymobile/ymwork/types/Group;)V

    .line 863
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->getShops()Lcom/cymobile/ymwork/types/Group;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 864
    iget-object v5, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->mLayoutEmpty:Landroid/view/ViewGroup;

    invoke-virtual {p0, v5}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->setEmptyView(Landroid/view/View;)V

    .line 868
    :cond_2
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->getListView()Landroid/widget/ListView;

    move-result-object v5

    iget-object v6, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 869
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 871
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->getListView()Landroid/widget/ListView;

    move-result-object v5

    check-cast v5, Lcom/cymobile/ymwork/widget/PullToRefreshListView;

    invoke-virtual {v5, v8}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->onAddMoreComplete(Z)V

    .line 872
    return-void

    .line 830
    .restart local v3       #se:Lcom/cymobile/ymwork/server/error/ServerException;
    :cond_3
    invoke-static {p0, v9, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 833
    .end local v3           #se:Lcom/cymobile/ymwork/server/error/ServerException;
    :cond_4
    invoke-static {p0, v9, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 842
    :cond_5
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v5

    if-lez v5, :cond_9

    .line 844
    iget-object v5, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;->removeObserver()V

    .line 845
    iget-object v5, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;->clear()V

    .line 846
    new-instance v5, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-direct {v5, p0}, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    .line 848
    iget-object v5, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->getShops()Lcom/cymobile/ymwork/types/Group;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/cymobile/ymwork/types/Group;->addAll(Ljava/util/Collection;)Z

    .line 849
    iget-object v5, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;

    invoke-virtual {v5, p1}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->setShops(Lcom/cymobile/ymwork/types/Group;)V

    .line 850
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->getFilterFragment()Lcom/cymobile/ymwork/widget/RangeFilterFragmentFire;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cymobile/ymwork/widget/RangeFilterFragmentFire;->getFilterDataSource()Lcom/cymobile/ymwork/adapter/FilterDataSource;

    move-result-object v0

    .line 851
    .local v0, ds:Lcom/cymobile/ymwork/adapter/FilterDataSource;
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/cymobile/ymwork/adapter/FilterDataSource;->curFilterId()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v5

    if-ne v5, v8, :cond_6

    .line 852
    iget-object v5, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->getShops()Lcom/cymobile/ymwork/types/Group;

    move-result-object v5

    iget-object v6, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-direct {p0, v5, v6}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->sortShopsRecent(Lcom/cymobile/ymwork/types/Group;Lcom/cymobile/ymwork/widget/SeparatedListAdapter;)V

    goto/16 :goto_1

    .line 853
    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/cymobile/ymwork/adapter/FilterDataSource;->curFilterId()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_7

    .line 854
    iget-object v5, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->getShops()Lcom/cymobile/ymwork/types/Group;

    move-result-object v5

    iget-object v6, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-direct {p0, v5, v6}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->sortShopsRecentDesc(Lcom/cymobile/ymwork/types/Group;Lcom/cymobile/ymwork/widget/SeparatedListAdapter;)V

    goto/16 :goto_1

    .line 855
    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/cymobile/ymwork/adapter/FilterDataSource;->curFilterId()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_8

    .line 856
    iget-object v5, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->getShops()Lcom/cymobile/ymwork/types/Group;

    move-result-object v5

    iget-object v6, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-direct {p0, v5, v6}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->sortShopsAreaDesc(Lcom/cymobile/ymwork/types/Group;Lcom/cymobile/ymwork/widget/SeparatedListAdapter;)V

    goto/16 :goto_1

    .line 857
    :cond_8
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/cymobile/ymwork/adapter/FilterDataSource;->curFilterId()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    .line 858
    iget-object v5, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->getShops()Lcom/cymobile/ymwork/types/Group;

    move-result-object v5

    iget-object v6, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-direct {p0, v5, v6}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->sortShopsDistanceDesc(Lcom/cymobile/ymwork/types/Group;Lcom/cymobile/ymwork/widget/SeparatedListAdapter;)V

    goto/16 :goto_1

    .line 860
    .end local v0           #ds:Lcom/cymobile/ymwork/adapter/FilterDataSource;
    :cond_9
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 861
    :cond_a
    invoke-static {p0, v10, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/16 v6, 0xc

    const/4 v5, 0x6

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 91
    invoke-virtual {p0, v3}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->requestWindowFeature(I)Z

    .line 92
    const-class v1, Lcom/cymobile/ymwork/SettingBase;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 93
    const/4 v2, 0x2

    .line 92
    invoke-virtual {p0, v1, v2}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->mPrefs:Landroid/content/SharedPreferences;

    .line 94
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->requestWindowFeature(I)Z

    .line 95
    iput-object p0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->contexts:Landroid/content/Context;

    .line 96
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "Intent_ClassId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 97
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "Intent_ClassId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->classid:I

    .line 98
    iget v1, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->classid:I

    const/16 v2, 0x51

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->classid:I

    const/16 v2, 0x52

    if-ne v1, v2, :cond_1

    .line 99
    :cond_0
    iget v1, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->classid:I

    iput v1, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->classidextra:I

    .line 100
    const/4 v1, 0x0

    iput v1, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->classid:I

    .line 102
    :cond_1
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "Intent_ZoneId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 103
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "Intent_ZoneId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->intentZoneId:Ljava/lang/String;

    .line 105
    :cond_2
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "Intent_Days"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 106
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "Intent_Days"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->intentDays:I

    .line 112
    :cond_3
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 113
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "userZoneId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 114
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "userZoneName"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 115
    iput-boolean v3, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->flag:Z

    .line 116
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "userZoneId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->userZoneId:Ljava/lang/String;

    .line 117
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "userZoneName"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->userZoneName:Ljava/lang/String;

    .line 119
    :cond_4
    iget v1, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->classid:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_5

    iget v1, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->classid:I

    if-eq v1, v5, :cond_5

    iget v1, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->classid:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_6

    :cond_5
    iget-boolean v1, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->flag:Z

    if-nez v1, :cond_6

    .line 120
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "EM"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->emphasis:Ljava/lang/String;

    .line 122
    :cond_6
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->userZoneId:Ljava/lang/String;

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->userZoneName:Ljava/lang/String;

    if-nez v1, :cond_b

    .line 123
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "key_GlobalZoneId"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->userZoneId:Ljava/lang/String;

    .line 124
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "key_GlobalZoneName"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->userZoneName:Ljava/lang/String;

    .line 125
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->userZoneId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->userZoneId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v5, :cond_a

    const-string v1, "\u5168\u90e8"

    :goto_0
    invoke-static {v2, v3, v1}, Lcom/cymobile/ymwork/adapter/FilterDataSource;->resetTOPCategory(JLjava/lang/String;)V

    .line 129
    :goto_1
    const v1, 0x7f030028

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->setContentView(I)V

    .line 130
    invoke-super {p0, p1}, Lcom/cymobile/ymwork/widget/LoadableListFragmentWithViewAndHeaderFire;->onCreate(Landroid/os/Bundle;)V

    .line 132
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->mLoggedOutReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    .line 133
    const-string v3, "com.cymobile.ymwork.intent.action.LOGGED_OUT"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0, v1, v2}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 135
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/HomeApplication;

    iput-object v1, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->homeApplication:Lcom/cymobile/ymwork/HomeApplication;

    .line 136
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 137
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;

    iput-object v1, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;

    .line 138
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;

    invoke-virtual {v1, p0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->setActivity(Lcom/cymobile/ymwork/act/MainClassFireServiceAct;)V

    .line 142
    :goto_2
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->ensureUi()V

    .line 143
    const v1, 0x7f08002f

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->commonTitle:Landroid/widget/TextView;

    .line 144
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->setCommonTitle()V

    .line 146
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->getListView()Landroid/widget/ListView;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/widget/PullToRefreshListView;

    .line 147
    new-instance v2, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$2;

    invoke-direct {v2, p0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$2;-><init>(Lcom/cymobile/ymwork/act/MainClassFireServiceAct;)V

    invoke-virtual {v1, v2}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->setOnRefreshListener(Lcom/cymobile/ymwork/widget/PullToRefreshListView$OnRefreshListener;)V

    .line 157
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->getListView()Landroid/widget/ListView;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/widget/PullToRefreshListView;

    .line 158
    new-instance v2, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$3;

    invoke-direct {v2, p0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$3;-><init>(Lcom/cymobile/ymwork/act/MainClassFireServiceAct;)V

    invoke-virtual {v1, v2}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->setOnAddMoreListener(Lcom/cymobile/ymwork/widget/PullToRefreshListView$OnAddMoreListener;)V

    .line 173
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "key_GlobalZoneId"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, zonecode:Ljava/lang/String;
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v6, :cond_8

    :cond_7
    invoke-static {}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getSubZone()Lcom/cymobile/ymwork/types/Group;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-static {}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getSubZone()Lcom/cymobile/ymwork/types/Group;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v1

    if-lez v1, :cond_d

    .line 176
    :cond_8
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 180
    .end local v0           #zonecode:Ljava/lang/String;
    :goto_3
    return-void

    .line 109
    :cond_9
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->finish()V

    goto :goto_3

    .line 125
    :cond_a
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->userZoneName:Ljava/lang/String;

    goto/16 :goto_0

    .line 127
    :cond_b
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->userZoneId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->userZoneName:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/cymobile/ymwork/adapter/FilterDataSource;->resetTOPCategory(JLjava/lang/String;)V

    goto/16 :goto_1

    .line 140
    :cond_c
    new-instance v1, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;

    invoke-direct {v1, p0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;-><init>(Lcom/cymobile/ymwork/act/MainClassFireServiceAct;)V

    iput-object v1, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;

    goto :goto_2

    .line 178
    .restart local v0       #zonecode:Ljava/lang/String;
    :cond_d
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xb

    const-wide/16 v3, 0xa

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_3
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .parameter "id"

    .prologue
    .line 540
    const/4 v0, 0x0

    .line 541
    .local v0, dialog:Landroid/app/Dialog;
    const/4 v1, 0x0

    return-object v1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 224
    invoke-super {p0}, Lcom/cymobile/ymwork/widget/LoadableListFragmentWithViewAndHeaderFire;->onDestroy()V

    .line 226
    :try_start_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->mLoggedOutReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->getStateHolder()Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 232
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->getStateHolder()Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->cancel()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 237
    :cond_0
    :goto_1
    return-void

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, ee:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 234
    .end local v0           #ee:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 235
    .restart local v0       #ee:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 308
    invoke-super {p0}, Lcom/cymobile/ymwork/widget/LoadableListFragmentWithViewAndHeaderFire;->onPause()V

    .line 313
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;->removeObserver()V

    .line 315
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->mLoggedOutReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 316
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->cancel()V

    .line 318
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 183
    invoke-super {p0}, Lcom/cymobile/ymwork/widget/LoadableListFragmentWithViewAndHeaderFire;->onResume()V

    .line 184
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 187
    :cond_0
    return-void
.end method

.method public setCommonTitle()V
    .locals 3

    .prologue
    .line 189
    iget v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->classid:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->classid:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->classid:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->commonTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900aa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    :cond_1
    :goto_0
    return-void

    .line 191
    :cond_2
    iget v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->classid:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 192
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->commonTitle:Landroid/widget/TextView;

    const-string v1, "\u9884\u9632\u7164\u6c14\u4e2d\u6bd2\u5b89\u5168"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 193
    :cond_3
    iget v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->classid:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_4

    .line 194
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->commonTitle:Landroid/widget/TextView;

    const-string v1, "\u8fdd\u6cd5\u5efa\u8bbe"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 195
    :cond_4
    iget v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->classid:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_5

    .line 196
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->commonTitle:Landroid/widget/TextView;

    const-string v1, "\u51fa\u79df\u623f\u5c4b"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 197
    :cond_5
    iget v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->classid:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_6

    .line 198
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->commonTitle:Landroid/widget/TextView;

    const-string v1, "\u4eba\u53e3\u7ba1\u7406"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 199
    :cond_6
    iget v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->classid:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_7

    .line 200
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->commonTitle:Landroid/widget/TextView;

    const-string v1, "\u98df\u54c1\u5b89\u5168"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 201
    :cond_7
    iget v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->classid:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_8

    .line 202
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->commonTitle:Landroid/widget/TextView;

    const-string v1, "\u8bc1\u7167\u8d44\u8d28"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 203
    :cond_8
    iget v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->classid:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    .line 204
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->commonTitle:Landroid/widget/TextView;

    const-string v1, "\u5176\u4ed6"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
