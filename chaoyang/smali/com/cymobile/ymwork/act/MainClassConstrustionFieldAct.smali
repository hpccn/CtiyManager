.class public Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;
.super Lcom/cymobile/ymwork/widget/LoadableListFragmentWithViewAndHeaderConstruction;
.source "MainClassConstrustionFieldAct.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$GetZoneTask;,
        Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;,
        Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$TaskMoreShops;,
        Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$TaskShops;,
        Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$UIHandler;
    }
.end annotation


# static fields
.field public static final CITY_RADIUS_IN_METERS:I = 0xc350

.field private static final Intent_init_direct_search:I = 0xc

.field private static final Intent_init_search:I = 0xb

.field private static final SLEEP_TIME_IF_NO_LOCATION:J = 0xbb8L

.field public static final TAG:Ljava/lang/String; = "MainClassConstrustionFieldAct"


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

.field homeApplication:Lcom/cymobile/ymwork/HomeApplication;

.field private intentDays:I

.field private intentZoneId:Ljava/lang/String;

.field mHandler:Landroid/os/Handler;

.field private mLayoutEmpty:Landroid/view/ViewGroup;

.field private mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

.field private mLoggedOutReceiver:Landroid/content/BroadcastReceiver;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mStateHolder:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;

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

    .line 54
    invoke-direct {p0}, Lcom/cymobile/ymwork/widget/LoadableListFragmentWithViewAndHeaderConstruction;-><init>()V

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->drawableMap:Ljava/util/HashMap;

    .line 63
    iput v1, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->classid:I

    .line 64
    iput v1, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->classidextra:I

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->intentZoneId:Ljava/lang/String;

    .line 174
    new-instance v0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$UIHandler;

    invoke-direct {v0, p0}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$UIHandler;-><init>(Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->mHandler:Landroid/os/Handler;

    .line 263
    new-instance v0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$1;

    invoke-direct {v0, p0}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$1;-><init>(Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->mLoggedOutReceiver:Landroid/content/BroadcastReceiver;

    .line 475
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->orderflags:[Z

    .line 54
    return-void
.end method

.method static synthetic access$0(Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;)V
    .locals 0
    .parameter

    .prologue
    .line 950
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->onRefreshTaskStart()V

    return-void
.end method

.method static synthetic access$2(Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;Lcom/cymobile/ymwork/types/Group;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 711
    invoke-direct {p0, p1, p2}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->onTaskComplete(Lcom/cymobile/ymwork/types/Group;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$3(Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;)I
    .locals 1
    .parameter

    .prologue
    .line 63
    iget v0, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->classid:I

    return v0
.end method

.method static synthetic access$4(Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;)V
    .locals 0
    .parameter

    .prologue
    .line 955
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->onMoreTaskStart()V

    return-void
.end method

.method static synthetic access$5(Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;)Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;

    return-object v0
.end method

.method static synthetic access$6(Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;)Lcom/cymobile/ymwork/widget/SeparatedListAdapter;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    return-object v0
.end method

.method private ensureUi()V
    .locals 3

    .prologue
    .line 387
    const v2, 0x7f08002d

    invoke-virtual {p0, v2}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 388
    .local v0, leftbtn:Landroid/widget/ImageButton;
    new-instance v2, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$4;

    invoke-direct {v2, p0}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$4;-><init>(Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 394
    const v2, 0x7f080030

    invoke-virtual {p0, v2}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 395
    .local v1, rightBtn:Landroid/widget/Button;
    const-string v2, "\u5730\u56fe\u6a21\u5f0f"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 400
    new-instance v2, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$5;

    invoke-direct {v2, p0}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$5;-><init>(Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 472
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->ensureUiListView()V

    .line 473
    return-void
.end method

.method private ensureUiListView()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 484
    new-instance v5, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-direct {v5, p0}, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    .line 486
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->getFilterFragment()Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstruction;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstruction;->getFilterDataSource()Lcom/cymobile/ymwork/adapter/FilterDataSource;

    move-result-object v2

    .line 487
    .local v2, ds:Lcom/cymobile/ymwork/adapter/FilterDataSource;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/cymobile/ymwork/adapter/FilterDataSource;->curFilterId()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v5

    if-ne v5, v9, :cond_0

    .line 488
    iget-object v5, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;->getShops()Lcom/cymobile/ymwork/types/Group;

    move-result-object v5

    iget-object v6, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-direct {p0, v5, v6}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->sortShopsRecent(Lcom/cymobile/ymwork/types/Group;Lcom/cymobile/ymwork/widget/SeparatedListAdapter;)V

    .line 491
    :cond_0
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->getListView()Landroid/widget/ListView;

    move-result-object v4

    check-cast v4, Lcom/cymobile/ymwork/widget/PullToRefreshListView;

    .line 492
    .local v4, listView:Lcom/cymobile/ymwork/widget/PullToRefreshListView;
    iget-object v5, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-virtual {v4, v5}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 493
    invoke-virtual {v4, v8}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->setDividerHeight(I)V

    .line 494
    new-instance v5, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$6;

    invoke-direct {v5, p0}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$6;-><init>(Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;)V

    invoke-virtual {v4, v5}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 540
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 541
    .local v3, inflater:Landroid/view/LayoutInflater;
    invoke-static {}, Lcom/cymobile/ymwork/utils/UiUtil;->sdkVersion()I

    move-result v5

    const/4 v6, 0x3

    if-le v5, v6, :cond_2

    .line 543
    const v5, 0x7f03003d

    .line 542
    invoke-virtual {v3, v5, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ScrollView;

    iput-object v5, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->mLayoutEmpty:Landroid/view/ViewGroup;

    .line 550
    :goto_0
    iget-object v5, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->mLayoutEmpty:Landroid/view/ViewGroup;

    .line 551
    const v6, 0x7f08010f

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 550
    check-cast v0, Landroid/widget/Button;

    .line 552
    .local v0, btnAddFriends:Landroid/widget/Button;
    new-instance v5, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$7;

    invoke-direct {v5, p0}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$7;-><init>(Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 558
    iget-object v5, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->mLayoutEmpty:Landroid/view/ViewGroup;

    .line 559
    const v6, 0x7f080110

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 558
    check-cast v1, Landroid/widget/Button;

    .line 560
    .local v1, btnFriendRequests:Landroid/widget/Button;
    new-instance v5, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$8;

    invoke-direct {v5, p0}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$8;-><init>(Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 565
    iget-object v5, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->mLayoutEmpty:Landroid/view/ViewGroup;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 567
    invoke-direct {v6, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 565
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 569
    iget-object v5, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;->getCount()I

    .line 573
    iget-object v5, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;->getIsRunningTask()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 574
    invoke-virtual {p0, v9}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->setProgressBarIndeterminateVisibility(Z)V

    .line 575
    iget-object v5, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;->getRanOnce()Z

    move-result v5

    if-nez v5, :cond_1

    .line 576
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->setLoadingView()V

    .line 581
    :cond_1
    :goto_1
    return-void

    .line 548
    .end local v0           #btnAddFriends:Landroid/widget/Button;
    .end local v1           #btnFriendRequests:Landroid/widget/Button;
    :cond_2
    const v5, 0x7f03003e

    .line 547
    invoke-virtual {v3, v5, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ScrollView;

    iput-object v5, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->mLayoutEmpty:Landroid/view/ViewGroup;

    goto :goto_0

    .line 579
    .restart local v0       #btnAddFriends:Landroid/widget/Button;
    .restart local v1       #btnFriendRequests:Landroid/widget/Button;
    :cond_3
    invoke-virtual {p0, v8}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->setProgressBarIndeterminateVisibility(Z)V

    goto :goto_1
.end method

.method private onMoreTaskStart()V
    .locals 1

    .prologue
    .line 956
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->setProgressBarIndeterminateVisibility(Z)V

    .line 957
    return-void
.end method

.method private onRefreshTaskStart()V
    .locals 1

    .prologue
    .line 951
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->setProgressBarIndeterminateVisibility(Z)V

    .line 952
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->setLoadingView()V

    .line 953
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

    .line 712
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;

    invoke-virtual {v1, v3}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;->setRanOnce(Z)V

    .line 713
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;

    invoke-virtual {v1, v4}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;->setIsRunningTask(Z)V

    .line 714
    invoke-virtual {p0, v4}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->setProgressBarIndeterminateVisibility(Z)V

    .line 717
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;->removeObserver()V

    .line 718
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;->clear()V

    .line 719
    new-instance v1, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-direct {v1, p0}, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    .line 723
    if-eqz p1, :cond_5

    .line 724
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;

    invoke-virtual {v1, p1}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;->setShops(Lcom/cymobile/ymwork/types/Group;)V

    .line 725
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->getFilterFragment()Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstruction;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstruction;->getFilterDataSource()Lcom/cymobile/ymwork/adapter/FilterDataSource;

    move-result-object v0

    .line 726
    .local v0, ds:Lcom/cymobile/ymwork/adapter/FilterDataSource;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/cymobile/ymwork/adapter/FilterDataSource;->curFilterId()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 727
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;->getShops()Lcom/cymobile/ymwork/types/Group;

    move-result-object v1

    iget-object v2, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-direct {p0, v1, v2}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->sortShopsRecent(Lcom/cymobile/ymwork/types/Group;Lcom/cymobile/ymwork/widget/SeparatedListAdapter;)V

    .line 740
    .end local v0           #ds:Lcom/cymobile/ymwork/adapter/FilterDataSource;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;->getShops()Lcom/cymobile/ymwork/types/Group;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 741
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->mLayoutEmpty:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->setEmptyView(Landroid/view/View;)V

    .line 743
    :cond_1
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 744
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setSelection(I)V

    .line 745
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;->getShops()Lcom/cymobile/ymwork/types/Group;

    move-result-object v1

    if-eqz v1, :cond_6

    if-eqz p1, :cond_6

    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;->getShops()Lcom/cymobile/ymwork/types/Group;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v1

    invoke-virtual {p1}, Lcom/cymobile/ymwork/types/Group;->getNumber()I

    move-result v2

    if-ne v1, v2, :cond_6

    .line 746
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->getListView()Landroid/widget/ListView;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/widget/PullToRefreshListView;

    invoke-virtual {v1, v3}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->onRefreshComplete(Z)V

    .line 750
    :goto_1
    return-void

    .line 728
    .restart local v0       #ds:Lcom/cymobile/ymwork/adapter/FilterDataSource;
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/cymobile/ymwork/adapter/FilterDataSource;->curFilterId()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 729
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;->getShops()Lcom/cymobile/ymwork/types/Group;

    move-result-object v1

    iget-object v2, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-direct {p0, v1, v2}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->sortShopsRecentDesc(Lcom/cymobile/ymwork/types/Group;Lcom/cymobile/ymwork/widget/SeparatedListAdapter;)V

    goto :goto_0

    .line 730
    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/cymobile/ymwork/adapter/FilterDataSource;->curFilterId()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 731
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;->getShops()Lcom/cymobile/ymwork/types/Group;

    move-result-object v1

    iget-object v2, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-direct {p0, v1, v2}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->sortShopsAreaDesc(Lcom/cymobile/ymwork/types/Group;Lcom/cymobile/ymwork/widget/SeparatedListAdapter;)V

    goto :goto_0

    .line 732
    :cond_4
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cymobile/ymwork/adapter/FilterDataSource;->curFilterId()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 733
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;->getShops()Lcom/cymobile/ymwork/types/Group;

    move-result-object v1

    iget-object v2, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-direct {p0, v1, v2}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->sortShopsDistanceDesc(Lcom/cymobile/ymwork/types/Group;Lcom/cymobile/ymwork/widget/SeparatedListAdapter;)V

    goto/16 :goto_0

    .line 735
    .end local v0           #ds:Lcom/cymobile/ymwork/adapter/FilterDataSource;
    :cond_5
    if-eqz p2, :cond_0

    .line 736
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;

    new-instance v2, Lcom/cymobile/ymwork/types/Group;

    invoke-direct {v2}, Lcom/cymobile/ymwork/types/Group;-><init>()V

    invoke-virtual {v1, v2}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;->setShops(Lcom/cymobile/ymwork/types/Group;)V

    goto/16 :goto_0

    .line 748
    :cond_6
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->getListView()Landroid/widget/ListView;

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
    .line 652
    .local p1, shops:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/ConstrustionField;>;"
    new-instance v2, Lcom/cymobile/ymwork/types/Group;

    invoke-direct {v2}, Lcom/cymobile/ymwork/types/Group;-><init>()V

    .line 653
    .local v2, nearby:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/ConstrustionField;>;"
    new-instance v0, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;

    .line 654
    iget-object v3, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->homeApplication:Lcom/cymobile/ymwork/HomeApplication;

    invoke-virtual {v3}, Lcom/cymobile/ymwork/HomeApplication;->getRemoteResourceManager()Lcom/cymobile/ymwork/server/RemoteResourceManager;

    move-result-object v3

    .line 653
    invoke-direct {v0, p0, v3}, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;-><init>(Landroid/content/Context;Lcom/cymobile/ymwork/server/RemoteResourceManager;)V

    .line 655
    .local v0, adapter:Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;
    invoke-virtual {p1}, Lcom/cymobile/ymwork/types/Group;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 671
    invoke-virtual {v2}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 672
    invoke-virtual {v0, v2}, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;->setGroup(Lcom/cymobile/ymwork/types/Group;)V

    .line 674
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 675
    const v4, 0x7f090034

    .line 674
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 673
    invoke-virtual {p2, v3, v0}, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    .line 678
    :cond_0
    return-void

    .line 655
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/types/ConstrustionField;

    .line 667
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
    .line 681
    .local p1, shops:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/ConstrustionField;>;"
    invoke-static {}, Lcom/cymobile/ymwork/utils/Comparators;->getConstrustionFieldDistanceComparator()Ljava/util/Comparator;

    move-result-object v3

    invoke-static {p1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 683
    new-instance v2, Lcom/cymobile/ymwork/types/Group;

    invoke-direct {v2}, Lcom/cymobile/ymwork/types/Group;-><init>()V

    .line 684
    .local v2, nearby:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/ConstrustionField;>;"
    new-instance v0, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;

    .line 685
    iget-object v3, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->homeApplication:Lcom/cymobile/ymwork/HomeApplication;

    invoke-virtual {v3}, Lcom/cymobile/ymwork/HomeApplication;->getRemoteResourceManager()Lcom/cymobile/ymwork/server/RemoteResourceManager;

    move-result-object v3

    .line 684
    invoke-direct {v0, p0, v3}, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;-><init>(Landroid/content/Context;Lcom/cymobile/ymwork/server/RemoteResourceManager;)V

    .line 686
    .local v0, adapter:Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;
    invoke-virtual {p1}, Lcom/cymobile/ymwork/types/Group;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 702
    invoke-virtual {v2}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 703
    invoke-virtual {v0, v2}, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;->setGroup(Lcom/cymobile/ymwork/types/Group;)V

    .line 705
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 706
    const v4, 0x7f090034

    .line 705
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 704
    invoke-virtual {p2, v3, v0}, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    .line 709
    :cond_0
    return-void

    .line 686
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/types/ConstrustionField;

    .line 698
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
    .line 585
    .local p1, shops:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/ConstrustionField;>;"
    invoke-static {}, Lcom/cymobile/ymwork/utils/Comparators;->getConstrustionFieldComparator()Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v3

    invoke-static {p1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 587
    new-instance v2, Lcom/cymobile/ymwork/types/Group;

    invoke-direct {v2}, Lcom/cymobile/ymwork/types/Group;-><init>()V

    .line 588
    .local v2, nearby:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/ConstrustionField;>;"
    new-instance v0, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;

    .line 589
    iget-object v3, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->homeApplication:Lcom/cymobile/ymwork/HomeApplication;

    invoke-virtual {v3}, Lcom/cymobile/ymwork/HomeApplication;->getRemoteResourceManager()Lcom/cymobile/ymwork/server/RemoteResourceManager;

    move-result-object v3

    .line 588
    invoke-direct {v0, p0, v3}, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;-><init>(Landroid/content/Context;Lcom/cymobile/ymwork/server/RemoteResourceManager;)V

    .line 590
    .local v0, adapter:Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;
    invoke-virtual {p1}, Lcom/cymobile/ymwork/types/Group;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 606
    invoke-virtual {v2}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 607
    invoke-virtual {v0, v2}, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;->setGroup(Lcom/cymobile/ymwork/types/Group;)V

    .line 609
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 610
    const v4, 0x7f090034

    .line 609
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 608
    invoke-virtual {p2, v3, v0}, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    .line 613
    :cond_0
    return-void

    .line 590
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/types/ConstrustionField;

    .line 602
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
    .line 618
    .local p1, shops:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/ConstrustionField;>;"
    invoke-static {}, Lcom/cymobile/ymwork/utils/Comparators;->getConstrustionFieldComparator()Ljava/util/Comparator;

    move-result-object v3

    invoke-static {p1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 620
    new-instance v2, Lcom/cymobile/ymwork/types/Group;

    invoke-direct {v2}, Lcom/cymobile/ymwork/types/Group;-><init>()V

    .line 621
    .local v2, nearby:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/ConstrustionField;>;"
    new-instance v0, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;

    .line 622
    iget-object v3, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->homeApplication:Lcom/cymobile/ymwork/HomeApplication;

    invoke-virtual {v3}, Lcom/cymobile/ymwork/HomeApplication;->getRemoteResourceManager()Lcom/cymobile/ymwork/server/RemoteResourceManager;

    move-result-object v3

    .line 621
    invoke-direct {v0, p0, v3}, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;-><init>(Landroid/content/Context;Lcom/cymobile/ymwork/server/RemoteResourceManager;)V

    .line 623
    .local v0, adapter:Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;
    invoke-virtual {p1}, Lcom/cymobile/ymwork/types/Group;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 639
    invoke-virtual {v2}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 640
    invoke-virtual {v0, v2}, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;->setGroup(Lcom/cymobile/ymwork/types/Group;)V

    .line 642
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 643
    const v4, 0x7f090034

    .line 642
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 641
    invoke-virtual {p2, v3, v0}, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    .line 646
    :cond_0
    return-void

    .line 623
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/types/ConstrustionField;

    .line 635
    .local v1, it:Lcom/cymobile/ymwork/types/ConstrustionField;
    invoke-virtual {v2, v1}, Lcom/cymobile/ymwork/types/Group;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public getNoSearchResultsStringId()I
    .locals 1

    .prologue
    .line 292
    const v0, 0x7f090019

    return v0
.end method

.method getShopsSize()I
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;->getCount()I

    move-result v0

    .line 79
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStateHolder()Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;

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

    .line 754
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->getListView()Landroid/widget/ListView;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/widget/PullToRefreshListView;

    .line 755
    .local v1, listview:Lcom/cymobile/ymwork/widget/PullToRefreshListView;
    invoke-virtual {v1, v7}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 756
    .local v4, v:Landroid/view/View;
    invoke-virtual {v1}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->getFirstVisiblePosition()I

    move-result v2

    .line 758
    .local v2, oldPos:I
    iget-object v5, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;

    invoke-virtual {v5, v8}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;->setRanOnce(Z)V

    .line 759
    iget-object v5, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;

    invoke-virtual {v5, v7}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;->setIsRunningTask(Z)V

    .line 760
    invoke-virtual {p0, v7}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->setProgressBarIndeterminateVisibility(Z)V

    .line 762
    if-eqz p2, :cond_5

    .line 763
    instance-of v5, p2, Lcom/cymobile/ymwork/server/error/ServerException;

    if-eqz v5, :cond_4

    move-object v3, p2

    .line 764
    check-cast v3, Lcom/cymobile/ymwork/server/error/ServerException;

    .line 765
    .local v3, se:Lcom/cymobile/ymwork/server/error/ServerException;
    invoke-virtual {v3}, Lcom/cymobile/ymwork/server/error/ServerException;->getErrorCode()I

    move-result v5

    const/16 v6, 0x14

    if-ne v5, v6, :cond_3

    .line 766
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->getListView()Landroid/widget/ListView;

    move-result-object v5

    check-cast v5, Lcom/cymobile/ymwork/widget/PullToRefreshListView;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->onLastRecordComplete()V

    .line 767
    invoke-static {p0, v10, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 774
    .end local v3           #se:Lcom/cymobile/ymwork/server/error/ServerException;
    :goto_0
    iget-object v5, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;->getShops()Lcom/cymobile/ymwork/types/Group;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;->getShops()Lcom/cymobile/ymwork/types/Group;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v5

    if-gtz v5, :cond_1

    .line 777
    :cond_0
    iget-object v5, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;

    new-instance v6, Lcom/cymobile/ymwork/types/Group;

    invoke-direct {v6}, Lcom/cymobile/ymwork/types/Group;-><init>()V

    invoke-virtual {v5, v6}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;->setShops(Lcom/cymobile/ymwork/types/Group;)V

    .line 802
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;->getShops()Lcom/cymobile/ymwork/types/Group;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 803
    iget-object v5, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->mLayoutEmpty:Landroid/view/ViewGroup;

    invoke-virtual {p0, v5}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->setEmptyView(Landroid/view/View;)V

    .line 807
    :cond_2
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->getListView()Landroid/widget/ListView;

    move-result-object v5

    iget-object v6, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 808
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 810
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->getListView()Landroid/widget/ListView;

    move-result-object v5

    check-cast v5, Lcom/cymobile/ymwork/widget/PullToRefreshListView;

    invoke-virtual {v5, v8}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->onAddMoreComplete(Z)V

    .line 811
    return-void

    .line 769
    .restart local v3       #se:Lcom/cymobile/ymwork/server/error/ServerException;
    :cond_3
    invoke-static {p0, v9, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 772
    .end local v3           #se:Lcom/cymobile/ymwork/server/error/ServerException;
    :cond_4
    invoke-static {p0, v9, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 781
    :cond_5
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v5

    if-lez v5, :cond_9

    .line 783
    iget-object v5, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;->removeObserver()V

    .line 784
    iget-object v5, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;->clear()V

    .line 785
    new-instance v5, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-direct {v5, p0}, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    .line 787
    iget-object v5, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;->getShops()Lcom/cymobile/ymwork/types/Group;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/cymobile/ymwork/types/Group;->addAll(Ljava/util/Collection;)Z

    .line 788
    iget-object v5, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;

    invoke-virtual {v5, p1}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;->setShops(Lcom/cymobile/ymwork/types/Group;)V

    .line 789
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->getFilterFragment()Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstruction;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstruction;->getFilterDataSource()Lcom/cymobile/ymwork/adapter/FilterDataSource;

    move-result-object v0

    .line 790
    .local v0, ds:Lcom/cymobile/ymwork/adapter/FilterDataSource;
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/cymobile/ymwork/adapter/FilterDataSource;->curFilterId()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v5

    if-ne v5, v8, :cond_6

    .line 791
    iget-object v5, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;->getShops()Lcom/cymobile/ymwork/types/Group;

    move-result-object v5

    iget-object v6, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-direct {p0, v5, v6}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->sortShopsRecent(Lcom/cymobile/ymwork/types/Group;Lcom/cymobile/ymwork/widget/SeparatedListAdapter;)V

    goto/16 :goto_1

    .line 792
    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/cymobile/ymwork/adapter/FilterDataSource;->curFilterId()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_7

    .line 793
    iget-object v5, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;->getShops()Lcom/cymobile/ymwork/types/Group;

    move-result-object v5

    iget-object v6, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-direct {p0, v5, v6}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->sortShopsRecentDesc(Lcom/cymobile/ymwork/types/Group;Lcom/cymobile/ymwork/widget/SeparatedListAdapter;)V

    goto/16 :goto_1

    .line 794
    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/cymobile/ymwork/adapter/FilterDataSource;->curFilterId()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_8

    .line 795
    iget-object v5, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;->getShops()Lcom/cymobile/ymwork/types/Group;

    move-result-object v5

    iget-object v6, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-direct {p0, v5, v6}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->sortShopsAreaDesc(Lcom/cymobile/ymwork/types/Group;Lcom/cymobile/ymwork/widget/SeparatedListAdapter;)V

    goto/16 :goto_1

    .line 796
    :cond_8
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/cymobile/ymwork/adapter/FilterDataSource;->curFilterId()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    .line 797
    iget-object v5, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;->getShops()Lcom/cymobile/ymwork/types/Group;

    move-result-object v5

    iget-object v6, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-direct {p0, v5, v6}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->sortShopsDistanceDesc(Lcom/cymobile/ymwork/types/Group;Lcom/cymobile/ymwork/widget/SeparatedListAdapter;)V

    goto/16 :goto_1

    .line 799
    .end local v0           #ds:Lcom/cymobile/ymwork/adapter/FilterDataSource;
    :cond_9
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 800
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

    const/4 v5, 0x0

    .line 85
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->requestWindowFeature(I)Z

    .line 86
    const-class v1, Lcom/cymobile/ymwork/SettingBase;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 87
    const/4 v2, 0x2

    .line 86
    invoke-virtual {p0, v1, v2}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->mPrefs:Landroid/content/SharedPreferences;

    .line 88
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->requestWindowFeature(I)Z

    .line 89
    iput-object p0, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->contexts:Landroid/content/Context;

    .line 90
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "Intent_ClassId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 91
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "Intent_ClassId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->classid:I

    .line 92
    iget v1, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->classid:I

    const/16 v2, 0x51

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->classid:I

    const/16 v2, 0x52

    if-ne v1, v2, :cond_1

    .line 93
    :cond_0
    iget v1, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->classid:I

    iput v1, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->classidextra:I

    .line 94
    const/4 v1, 0x0

    iput v1, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->classid:I

    .line 96
    :cond_1
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "Intent_ZoneId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 97
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "Intent_ZoneId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->intentZoneId:Ljava/lang/String;

    .line 99
    :cond_2
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "Intent_Days"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 100
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "Intent_Days"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->intentDays:I

    .line 106
    :cond_3
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "key_GlobalZoneId"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->userZoneId:Ljava/lang/String;

    .line 107
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "key_GlobalZoneName"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->userZoneName:Ljava/lang/String;

    .line 108
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->userZoneId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->userZoneId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v4, 0x6

    if-ne v1, v4, :cond_7

    const-string v1, "\u5168\u90e8"

    :goto_0
    invoke-static {v2, v3, v1}, Lcom/cymobile/ymwork/adapter/FilterDataSource;->resetTOPCategory(JLjava/lang/String;)V

    .line 109
    const v1, 0x7f030028

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->setContentView(I)V

    .line 110
    invoke-super {p0, p1}, Lcom/cymobile/ymwork/widget/LoadableListFragmentWithViewAndHeaderConstruction;->onCreate(Landroid/os/Bundle;)V

    .line 112
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->mLoggedOutReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    .line 113
    const-string v3, "com.cymobile.ymwork.intent.action.LOGGED_OUT"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0, v1, v2}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 115
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/HomeApplication;

    iput-object v1, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->homeApplication:Lcom/cymobile/ymwork/HomeApplication;

    .line 116
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 117
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;

    iput-object v1, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;

    .line 118
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;

    invoke-virtual {v1, p0}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;->setActivity(Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;)V

    .line 122
    :goto_1
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->ensureUi()V

    .line 123
    const v1, 0x7f08002f

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->commonTitle:Landroid/widget/TextView;

    .line 125
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->commonTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900a9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->getListView()Landroid/widget/ListView;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/widget/PullToRefreshListView;

    .line 130
    new-instance v2, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$2;

    invoke-direct {v2, p0}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$2;-><init>(Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;)V

    invoke-virtual {v1, v2}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->setOnRefreshListener(Lcom/cymobile/ymwork/widget/PullToRefreshListView$OnRefreshListener;)V

    .line 140
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->getListView()Landroid/widget/ListView;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/widget/PullToRefreshListView;

    .line 141
    new-instance v2, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$3;

    invoke-direct {v2, p0}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$3;-><init>(Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;)V

    invoke-virtual {v1, v2}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->setOnAddMoreListener(Lcom/cymobile/ymwork/widget/PullToRefreshListView$OnAddMoreListener;)V

    .line 156
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "key_GlobalZoneId"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, zonecode:Ljava/lang/String;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v6, :cond_5

    :cond_4
    invoke-static {}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getSubZone()Lcom/cymobile/ymwork/types/Group;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-static {}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getSubZone()Lcom/cymobile/ymwork/types/Group;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v1

    if-lez v1, :cond_9

    .line 159
    :cond_5
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 163
    .end local v0           #zonecode:Ljava/lang/String;
    :goto_2
    return-void

    .line 103
    :cond_6
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->finish()V

    goto :goto_2

    .line 108
    :cond_7
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->userZoneName:Ljava/lang/String;

    goto/16 :goto_0

    .line 120
    :cond_8
    new-instance v1, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;

    invoke-direct {v1, p0}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;-><init>(Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;)V

    iput-object v1, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;

    goto :goto_1

    .line 161
    .restart local v0       #zonecode:Ljava/lang/String;
    :cond_9
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xb

    const-wide/16 v3, 0xa

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .parameter "id"

    .prologue
    .line 479
    const/4 v0, 0x0

    .line 480
    .local v0, dialog:Landroid/app/Dialog;
    const/4 v1, 0x0

    return-object v1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 189
    invoke-super {p0}, Lcom/cymobile/ymwork/widget/LoadableListFragmentWithViewAndHeaderConstruction;->onDestroy()V

    .line 191
    :try_start_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->mLoggedOutReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->getStateHolder()Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->getStateHolder()Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;->cancel()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 202
    :cond_0
    :goto_1
    return-void

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, ee:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 199
    .end local v0           #ee:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 200
    .restart local v0       #ee:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 273
    invoke-super {p0}, Lcom/cymobile/ymwork/widget/LoadableListFragmentWithViewAndHeaderConstruction;->onPause()V

    .line 278
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;->removeObserver()V

    .line 280
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->mLoggedOutReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 281
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;->cancel()V

    .line 283
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 166
    invoke-super {p0}, Lcom/cymobile/ymwork/widget/LoadableListFragmentWithViewAndHeaderConstruction;->onResume()V

    .line 167
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 170
    :cond_0
    return-void
.end method
