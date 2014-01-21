.class public Lcom/cymobile/ymwork/act/MainClassPublicReportAct;
.super Lcom/cymobile/ymwork/widget/LoadableListFragmentWithViewAndHeaderPublicReport;
.source "MainClassPublicReportAct.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cymobile/ymwork/act/MainClassPublicReportAct$GetZoneTask;,
        Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;,
        Lcom/cymobile/ymwork/act/MainClassPublicReportAct$TaskMoreShops;,
        Lcom/cymobile/ymwork/act/MainClassPublicReportAct$TaskShops;,
        Lcom/cymobile/ymwork/act/MainClassPublicReportAct$UIHandler;
    }
.end annotation


# static fields
.field public static final CITY_RADIUS_IN_METERS:I = 0xc350

.field private static final Intent_init_direct_search:I = 0xc

.field private static final Intent_init_search:I = 0xb

.field private static final SLEEP_TIME_IF_NO_LOCATION:J = 0xbb8L

.field public static final TAG:Ljava/lang/String; = "MainClassPublicReportAct"


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

.field private mStateHolder:Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;

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
    invoke-direct {p0}, Lcom/cymobile/ymwork/widget/LoadableListFragmentWithViewAndHeaderPublicReport;-><init>()V

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->drawableMap:Ljava/util/HashMap;

    .line 66
    iput v1, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->classid:I

    .line 67
    iput v1, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->classidextra:I

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->intentZoneId:Ljava/lang/String;

    .line 191
    new-instance v0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$UIHandler;

    invoke-direct {v0, p0}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$UIHandler;-><init>(Lcom/cymobile/ymwork/act/MainClassPublicReportAct;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->mHandler:Landroid/os/Handler;

    .line 296
    new-instance v0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$1;

    invoke-direct {v0, p0}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$1;-><init>(Lcom/cymobile/ymwork/act/MainClassPublicReportAct;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->mLoggedOutReceiver:Landroid/content/BroadcastReceiver;

    .line 523
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->orderflags:[Z

    .line 54
    return-void
.end method

.method static synthetic access$0(Lcom/cymobile/ymwork/act/MainClassPublicReportAct;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cymobile/ymwork/act/MainClassPublicReportAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1023
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->onRefreshTaskStart()V

    return-void
.end method

.method static synthetic access$2(Lcom/cymobile/ymwork/act/MainClassPublicReportAct;Lcom/cymobile/ymwork/types/Group;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 752
    invoke-direct {p0, p1, p2}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->onTaskComplete(Lcom/cymobile/ymwork/types/Group;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$3(Lcom/cymobile/ymwork/act/MainClassPublicReportAct;)I
    .locals 1
    .parameter

    .prologue
    .line 66
    iget v0, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->classid:I

    return v0
.end method

.method static synthetic access$4(Lcom/cymobile/ymwork/act/MainClassPublicReportAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1028
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->onMoreTaskStart()V

    return-void
.end method

.method static synthetic access$5(Lcom/cymobile/ymwork/act/MainClassPublicReportAct;)Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;

    return-object v0
.end method

.method static synthetic access$6(Lcom/cymobile/ymwork/act/MainClassPublicReportAct;)Lcom/cymobile/ymwork/widget/SeparatedListAdapter;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    return-object v0
.end method

.method private ensureUi()V
    .locals 3

    .prologue
    .line 426
    const v2, 0x7f08002d

    invoke-virtual {p0, v2}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 427
    .local v0, leftbtn:Landroid/widget/ImageButton;
    new-instance v2, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$4;

    invoke-direct {v2, p0}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$4;-><init>(Lcom/cymobile/ymwork/act/MainClassPublicReportAct;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 433
    const v2, 0x7f080030

    invoke-virtual {p0, v2}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 434
    .local v1, rightBtn:Landroid/widget/Button;
    const-string v2, "\u5730\u56fe\u6a21\u5f0f"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 439
    new-instance v2, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$5;

    invoke-direct {v2, p0}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$5;-><init>(Lcom/cymobile/ymwork/act/MainClassPublicReportAct;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 520
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->ensureUiListView()V

    .line 521
    return-void
.end method

.method private ensureUiListView()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 532
    new-instance v5, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-direct {v5, p0}, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    .line 534
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->getFilterFragment()Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;

    move-result-object v5

    .line 535
    invoke-virtual {v5}, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->getFilterDataSource()Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;

    move-result-object v2

    .line 536
    .local v2, ds:Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;
    if-eqz v2, :cond_0

    .line 537
    invoke-virtual {v2}, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->curFilterId()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v5

    if-ne v5, v9, :cond_0

    .line 538
    iget-object v5, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;->getShops()Lcom/cymobile/ymwork/types/Group;

    move-result-object v5

    iget-object v6, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-direct {p0, v5, v6}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->sortShopsRecent(Lcom/cymobile/ymwork/types/Group;Lcom/cymobile/ymwork/widget/SeparatedListAdapter;)V

    .line 541
    :cond_0
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->getListView()Landroid/widget/ListView;

    move-result-object v4

    check-cast v4, Lcom/cymobile/ymwork/widget/PullToRefreshListView;

    .line 542
    .local v4, listView:Lcom/cymobile/ymwork/widget/PullToRefreshListView;
    iget-object v5, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-virtual {v4, v5}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 543
    invoke-virtual {v4, v8}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->setDividerHeight(I)V

    .line 544
    new-instance v5, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$6;

    invoke-direct {v5, p0}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$6;-><init>(Lcom/cymobile/ymwork/act/MainClassPublicReportAct;)V

    invoke-virtual {v4, v5}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 595
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 596
    .local v3, inflater:Landroid/view/LayoutInflater;
    invoke-static {}, Lcom/cymobile/ymwork/utils/UiUtil;->sdkVersion()I

    move-result v5

    const/4 v6, 0x3

    if-le v5, v6, :cond_2

    .line 598
    const v5, 0x7f03003d

    .line 597
    invoke-virtual {v3, v5, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ScrollView;

    iput-object v5, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->mLayoutEmpty:Landroid/view/ViewGroup;

    .line 605
    :goto_0
    iget-object v5, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->mLayoutEmpty:Landroid/view/ViewGroup;

    .line 606
    const v6, 0x7f08010f

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 605
    check-cast v0, Landroid/widget/Button;

    .line 607
    .local v0, btnAddFriends:Landroid/widget/Button;
    new-instance v5, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$7;

    invoke-direct {v5, p0}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$7;-><init>(Lcom/cymobile/ymwork/act/MainClassPublicReportAct;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 613
    iget-object v5, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->mLayoutEmpty:Landroid/view/ViewGroup;

    .line 614
    const v6, 0x7f080110

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 613
    check-cast v1, Landroid/widget/Button;

    .line 615
    .local v1, btnFriendRequests:Landroid/widget/Button;
    new-instance v5, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$8;

    invoke-direct {v5, p0}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$8;-><init>(Lcom/cymobile/ymwork/act/MainClassPublicReportAct;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 620
    iget-object v5, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->mLayoutEmpty:Landroid/view/ViewGroup;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 622
    invoke-direct {v6, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 620
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 624
    iget-object v5, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;->getCount()I

    .line 628
    iget-object v5, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;->getIsRunningTask()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 629
    invoke-virtual {p0, v9}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->setProgressBarIndeterminateVisibility(Z)V

    .line 630
    iget-object v5, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;->getRanOnce()Z

    move-result v5

    if-nez v5, :cond_1

    .line 631
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->setLoadingView()V

    .line 636
    :cond_1
    :goto_1
    return-void

    .line 603
    .end local v0           #btnAddFriends:Landroid/widget/Button;
    .end local v1           #btnFriendRequests:Landroid/widget/Button;
    :cond_2
    const v5, 0x7f03003e

    .line 602
    invoke-virtual {v3, v5, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ScrollView;

    iput-object v5, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->mLayoutEmpty:Landroid/view/ViewGroup;

    goto :goto_0

    .line 634
    .restart local v0       #btnAddFriends:Landroid/widget/Button;
    .restart local v1       #btnFriendRequests:Landroid/widget/Button;
    :cond_3
    invoke-virtual {p0, v8}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->setProgressBarIndeterminateVisibility(Z)V

    goto :goto_1
.end method

.method private onMoreTaskStart()V
    .locals 1

    .prologue
    .line 1029
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->setProgressBarIndeterminateVisibility(Z)V

    .line 1030
    return-void
.end method

.method private onRefreshTaskStart()V
    .locals 1

    .prologue
    .line 1024
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->setProgressBarIndeterminateVisibility(Z)V

    .line 1025
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->setLoadingView()V

    .line 1026
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

    .line 753
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;

    invoke-virtual {v1, v3}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;->setRanOnce(Z)V

    .line 754
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;

    invoke-virtual {v1, v4}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;->setIsRunningTask(Z)V

    .line 755
    invoke-virtual {p0, v4}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->setProgressBarIndeterminateVisibility(Z)V

    .line 758
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;->removeObserver()V

    .line 759
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;->clear()V

    .line 760
    new-instance v1, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-direct {v1, p0}, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    .line 764
    if-eqz p1, :cond_5

    .line 765
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;

    invoke-virtual {v1, p1}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;->setShops(Lcom/cymobile/ymwork/types/Group;)V

    .line 766
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->getFilterFragment()Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;

    move-result-object v1

    .line 767
    invoke-virtual {v1}, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->getFilterDataSource()Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;

    move-result-object v0

    .line 768
    .local v0, ds:Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;
    if-eqz v0, :cond_2

    .line 769
    invoke-virtual {v0}, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->curFilterId()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 770
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;->getShops()Lcom/cymobile/ymwork/types/Group;

    move-result-object v1

    iget-object v2, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-direct {p0, v1, v2}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->sortShopsRecent(Lcom/cymobile/ymwork/types/Group;Lcom/cymobile/ymwork/widget/SeparatedListAdapter;)V

    .line 786
    .end local v0           #ds:Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;->getShops()Lcom/cymobile/ymwork/types/Group;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 787
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->mLayoutEmpty:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->setEmptyView(Landroid/view/View;)V

    .line 789
    :cond_1
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 790
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setSelection(I)V

    .line 791
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;->getShops()Lcom/cymobile/ymwork/types/Group;

    move-result-object v1

    if-eqz v1, :cond_6

    if-eqz p1, :cond_6

    .line 792
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;->getShops()Lcom/cymobile/ymwork/types/Group;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v1

    invoke-virtual {p1}, Lcom/cymobile/ymwork/types/Group;->getNumber()I

    move-result v2

    if-ne v1, v2, :cond_6

    .line 793
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->getListView()Landroid/widget/ListView;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/widget/PullToRefreshListView;

    invoke-virtual {v1, v3}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->onRefreshComplete(Z)V

    .line 797
    :goto_1
    return-void

    .line 771
    .restart local v0       #ds:Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;
    :cond_2
    if-eqz v0, :cond_3

    .line 772
    invoke-virtual {v0}, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->curFilterId()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 773
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;->getShops()Lcom/cymobile/ymwork/types/Group;

    move-result-object v1

    iget-object v2, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-direct {p0, v1, v2}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->sortShopsRecentDesc(Lcom/cymobile/ymwork/types/Group;Lcom/cymobile/ymwork/widget/SeparatedListAdapter;)V

    goto :goto_0

    .line 774
    :cond_3
    if-eqz v0, :cond_4

    .line 775
    invoke-virtual {v0}, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->curFilterId()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 776
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;->getShops()Lcom/cymobile/ymwork/types/Group;

    move-result-object v1

    iget-object v2, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-direct {p0, v1, v2}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->sortShopsAreaDesc(Lcom/cymobile/ymwork/types/Group;Lcom/cymobile/ymwork/widget/SeparatedListAdapter;)V

    goto :goto_0

    .line 777
    :cond_4
    if-eqz v0, :cond_0

    .line 778
    invoke-virtual {v0}, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->curFilterId()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 779
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;->getShops()Lcom/cymobile/ymwork/types/Group;

    move-result-object v1

    iget-object v2, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-direct {p0, v1, v2}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->sortShopsDistanceDesc(Lcom/cymobile/ymwork/types/Group;Lcom/cymobile/ymwork/widget/SeparatedListAdapter;)V

    goto/16 :goto_0

    .line 781
    .end local v0           #ds:Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;
    :cond_5
    if-eqz p2, :cond_0

    .line 782
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;

    new-instance v2, Lcom/cymobile/ymwork/types/Group;

    invoke-direct {v2}, Lcom/cymobile/ymwork/types/Group;-><init>()V

    invoke-virtual {v1, v2}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;->setShops(Lcom/cymobile/ymwork/types/Group;)V

    goto/16 :goto_0

    .line 795
    :cond_6
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->getListView()Landroid/widget/ListView;

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
    .line 699
    .local p1, shops:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/ConstrustionField;>;"
    new-instance v2, Lcom/cymobile/ymwork/types/Group;

    invoke-direct {v2}, Lcom/cymobile/ymwork/types/Group;-><init>()V

    .line 700
    .local v2, nearby:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/ConstrustionField;>;"
    new-instance v0, Lcom/cymobile/ymwork/widget/PublicReportListAdapter;

    .line 701
    iget-object v3, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->homeApplication:Lcom/cymobile/ymwork/HomeApplication;

    invoke-virtual {v3}, Lcom/cymobile/ymwork/HomeApplication;->getRemoteResourceManager()Lcom/cymobile/ymwork/server/RemoteResourceManager;

    move-result-object v3

    .line 700
    invoke-direct {v0, p0, v3}, Lcom/cymobile/ymwork/widget/PublicReportListAdapter;-><init>(Landroid/content/Context;Lcom/cymobile/ymwork/server/RemoteResourceManager;)V

    .line 702
    .local v0, adapter:Lcom/cymobile/ymwork/widget/PublicReportListAdapter;
    invoke-virtual {p1}, Lcom/cymobile/ymwork/types/Group;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 714
    invoke-virtual {v2}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 715
    invoke-virtual {v0, v2}, Lcom/cymobile/ymwork/widget/PublicReportListAdapter;->setGroup(Lcom/cymobile/ymwork/types/Group;)V

    .line 717
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 718
    const v4, 0x7f090034

    .line 717
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 716
    invoke-virtual {p2, v3, v0}, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    .line 721
    :cond_0
    return-void

    .line 702
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/types/ConstrustionField;

    .line 710
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
    .line 725
    .line 726
    .local p1, shops:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/ConstrustionField;>;"
    invoke-static {}, Lcom/cymobile/ymwork/utils/Comparators;->getConstrustionFieldDistanceComparator()Ljava/util/Comparator;

    move-result-object v3

    .line 725
    invoke-static {p1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 728
    new-instance v2, Lcom/cymobile/ymwork/types/Group;

    invoke-direct {v2}, Lcom/cymobile/ymwork/types/Group;-><init>()V

    .line 729
    .local v2, nearby:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/ConstrustionField;>;"
    new-instance v0, Lcom/cymobile/ymwork/widget/PublicReportListAdapter;

    .line 730
    iget-object v3, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->homeApplication:Lcom/cymobile/ymwork/HomeApplication;

    invoke-virtual {v3}, Lcom/cymobile/ymwork/HomeApplication;->getRemoteResourceManager()Lcom/cymobile/ymwork/server/RemoteResourceManager;

    move-result-object v3

    .line 729
    invoke-direct {v0, p0, v3}, Lcom/cymobile/ymwork/widget/PublicReportListAdapter;-><init>(Landroid/content/Context;Lcom/cymobile/ymwork/server/RemoteResourceManager;)V

    .line 731
    .local v0, adapter:Lcom/cymobile/ymwork/widget/PublicReportListAdapter;
    invoke-virtual {p1}, Lcom/cymobile/ymwork/types/Group;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 743
    invoke-virtual {v2}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 744
    invoke-virtual {v0, v2}, Lcom/cymobile/ymwork/widget/PublicReportListAdapter;->setGroup(Lcom/cymobile/ymwork/types/Group;)V

    .line 746
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 747
    const v4, 0x7f090034

    .line 746
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 745
    invoke-virtual {p2, v3, v0}, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    .line 750
    :cond_0
    return-void

    .line 731
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/types/ConstrustionField;

    .line 739
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
    .line 640
    .line 641
    .local p1, shops:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/ConstrustionField;>;"
    invoke-static {}, Lcom/cymobile/ymwork/utils/Comparators;->getConstrustionFieldComparator()Ljava/util/Comparator;

    move-result-object v3

    .line 640
    invoke-static {v3}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v3

    invoke-static {p1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 643
    new-instance v2, Lcom/cymobile/ymwork/types/Group;

    invoke-direct {v2}, Lcom/cymobile/ymwork/types/Group;-><init>()V

    .line 644
    .local v2, nearby:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/ConstrustionField;>;"
    new-instance v0, Lcom/cymobile/ymwork/widget/PublicReportListAdapter;

    .line 645
    iget-object v3, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->homeApplication:Lcom/cymobile/ymwork/HomeApplication;

    invoke-virtual {v3}, Lcom/cymobile/ymwork/HomeApplication;->getRemoteResourceManager()Lcom/cymobile/ymwork/server/RemoteResourceManager;

    move-result-object v3

    .line 644
    invoke-direct {v0, p0, v3}, Lcom/cymobile/ymwork/widget/PublicReportListAdapter;-><init>(Landroid/content/Context;Lcom/cymobile/ymwork/server/RemoteResourceManager;)V

    .line 646
    .local v0, adapter:Lcom/cymobile/ymwork/widget/PublicReportListAdapter;
    invoke-virtual {p1}, Lcom/cymobile/ymwork/types/Group;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 658
    invoke-virtual {v2}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 659
    invoke-virtual {v0, v2}, Lcom/cymobile/ymwork/widget/PublicReportListAdapter;->setGroup(Lcom/cymobile/ymwork/types/Group;)V

    .line 661
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 662
    const v4, 0x7f090034

    .line 661
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 660
    invoke-virtual {p2, v3, v0}, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    .line 665
    :cond_0
    return-void

    .line 646
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/types/ConstrustionField;

    .line 654
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
    .line 669
    .local p1, shops:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/ConstrustionField;>;"
    invoke-static {}, Lcom/cymobile/ymwork/utils/Comparators;->getConstrustionFieldComparator()Ljava/util/Comparator;

    move-result-object v3

    invoke-static {p1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 671
    new-instance v2, Lcom/cymobile/ymwork/types/Group;

    invoke-direct {v2}, Lcom/cymobile/ymwork/types/Group;-><init>()V

    .line 672
    .local v2, nearby:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/ConstrustionField;>;"
    new-instance v0, Lcom/cymobile/ymwork/widget/PublicReportListAdapter;

    .line 673
    iget-object v3, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->homeApplication:Lcom/cymobile/ymwork/HomeApplication;

    invoke-virtual {v3}, Lcom/cymobile/ymwork/HomeApplication;->getRemoteResourceManager()Lcom/cymobile/ymwork/server/RemoteResourceManager;

    move-result-object v3

    .line 672
    invoke-direct {v0, p0, v3}, Lcom/cymobile/ymwork/widget/PublicReportListAdapter;-><init>(Landroid/content/Context;Lcom/cymobile/ymwork/server/RemoteResourceManager;)V

    .line 674
    .local v0, adapter:Lcom/cymobile/ymwork/widget/PublicReportListAdapter;
    invoke-virtual {p1}, Lcom/cymobile/ymwork/types/Group;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 686
    invoke-virtual {v2}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 687
    invoke-virtual {v0, v2}, Lcom/cymobile/ymwork/widget/PublicReportListAdapter;->setGroup(Lcom/cymobile/ymwork/types/Group;)V

    .line 689
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 690
    const v4, 0x7f090034

    .line 689
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 688
    invoke-virtual {p2, v3, v0}, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    .line 693
    :cond_0
    return-void

    .line 674
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/types/ConstrustionField;

    .line 682
    .local v1, it:Lcom/cymobile/ymwork/types/ConstrustionField;
    invoke-virtual {v2, v1}, Lcom/cymobile/ymwork/types/Group;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public getNoSearchResultsStringId()I
    .locals 1

    .prologue
    .line 326
    const v0, 0x7f090019

    return v0
.end method

.method getShopsSize()I
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;->getCount()I

    move-result v0

    .line 82
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStateHolder()Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;

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

    .line 801
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->getListView()Landroid/widget/ListView;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/widget/PullToRefreshListView;

    .line 802
    .local v1, listview:Lcom/cymobile/ymwork/widget/PullToRefreshListView;
    invoke-virtual {v1, v7}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 803
    .local v4, v:Landroid/view/View;
    invoke-virtual {v1}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->getFirstVisiblePosition()I

    move-result v2

    .line 805
    .local v2, oldPos:I
    iget-object v5, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;

    invoke-virtual {v5, v8}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;->setRanOnce(Z)V

    .line 806
    iget-object v5, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;

    invoke-virtual {v5, v7}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;->setIsRunningTask(Z)V

    .line 807
    invoke-virtual {p0, v7}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->setProgressBarIndeterminateVisibility(Z)V

    .line 809
    if-eqz p2, :cond_5

    .line 810
    instance-of v5, p2, Lcom/cymobile/ymwork/server/error/ServerException;

    if-eqz v5, :cond_4

    move-object v3, p2

    .line 811
    check-cast v3, Lcom/cymobile/ymwork/server/error/ServerException;

    .line 812
    .local v3, se:Lcom/cymobile/ymwork/server/error/ServerException;
    invoke-virtual {v3}, Lcom/cymobile/ymwork/server/error/ServerException;->getErrorCode()I

    move-result v5

    const/16 v6, 0x14

    if-ne v5, v6, :cond_3

    .line 813
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->getListView()Landroid/widget/ListView;

    move-result-object v5

    check-cast v5, Lcom/cymobile/ymwork/widget/PullToRefreshListView;

    .line 814
    invoke-virtual {v5}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->onLastRecordComplete()V

    .line 815
    invoke-static {p0, v10, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    .line 817
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 828
    .end local v3           #se:Lcom/cymobile/ymwork/server/error/ServerException;
    :goto_0
    iget-object v5, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;->getShops()Lcom/cymobile/ymwork/types/Group;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 829
    iget-object v5, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;->getShops()Lcom/cymobile/ymwork/types/Group;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v5

    if-gtz v5, :cond_1

    .line 834
    :cond_0
    iget-object v5, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;

    new-instance v6, Lcom/cymobile/ymwork/types/Group;

    invoke-direct {v6}, Lcom/cymobile/ymwork/types/Group;-><init>()V

    invoke-virtual {v5, v6}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;->setShops(Lcom/cymobile/ymwork/types/Group;)V

    .line 866
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;->getShops()Lcom/cymobile/ymwork/types/Group;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 867
    iget-object v5, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->mLayoutEmpty:Landroid/view/ViewGroup;

    invoke-virtual {p0, v5}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->setEmptyView(Landroid/view/View;)V

    .line 871
    :cond_2
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->getListView()Landroid/widget/ListView;

    move-result-object v5

    iget-object v6, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 872
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 874
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->getListView()Landroid/widget/ListView;

    move-result-object v5

    check-cast v5, Lcom/cymobile/ymwork/widget/PullToRefreshListView;

    invoke-virtual {v5, v8}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->onAddMoreComplete(Z)V

    .line 875
    return-void

    .line 819
    .restart local v3       #se:Lcom/cymobile/ymwork/server/error/ServerException;
    :cond_3
    invoke-static {p0, v9, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    .line 821
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 824
    .end local v3           #se:Lcom/cymobile/ymwork/server/error/ServerException;
    :cond_4
    invoke-static {p0, v9, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    .line 826
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 838
    :cond_5
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v5

    if-lez v5, :cond_9

    .line 840
    iget-object v5, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;->removeObserver()V

    .line 841
    iget-object v5, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;->clear()V

    .line 842
    new-instance v5, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-direct {v5, p0}, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    .line 844
    iget-object v5, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;->getShops()Lcom/cymobile/ymwork/types/Group;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/cymobile/ymwork/types/Group;->addAll(Ljava/util/Collection;)Z

    .line 845
    iget-object v5, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;

    invoke-virtual {v5, p1}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;->setShops(Lcom/cymobile/ymwork/types/Group;)V

    .line 846
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->getFilterFragment()Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;

    move-result-object v5

    .line 847
    invoke-virtual {v5}, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->getFilterDataSource()Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;

    move-result-object v0

    .line 848
    .local v0, ds:Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;
    if-eqz v0, :cond_6

    .line 849
    invoke-virtual {v0}, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->curFilterId()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v5

    if-ne v5, v8, :cond_6

    .line 850
    iget-object v5, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;->getShops()Lcom/cymobile/ymwork/types/Group;

    move-result-object v5

    iget-object v6, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-direct {p0, v5, v6}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->sortShopsRecent(Lcom/cymobile/ymwork/types/Group;Lcom/cymobile/ymwork/widget/SeparatedListAdapter;)V

    goto/16 :goto_1

    .line 851
    :cond_6
    if-eqz v0, :cond_7

    .line 852
    invoke-virtual {v0}, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->curFilterId()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_7

    .line 853
    iget-object v5, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;->getShops()Lcom/cymobile/ymwork/types/Group;

    move-result-object v5

    iget-object v6, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-direct {p0, v5, v6}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->sortShopsRecentDesc(Lcom/cymobile/ymwork/types/Group;Lcom/cymobile/ymwork/widget/SeparatedListAdapter;)V

    goto/16 :goto_1

    .line 854
    :cond_7
    if-eqz v0, :cond_8

    .line 855
    invoke-virtual {v0}, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->curFilterId()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_8

    .line 856
    iget-object v5, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;->getShops()Lcom/cymobile/ymwork/types/Group;

    move-result-object v5

    iget-object v6, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-direct {p0, v5, v6}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->sortShopsAreaDesc(Lcom/cymobile/ymwork/types/Group;Lcom/cymobile/ymwork/widget/SeparatedListAdapter;)V

    goto/16 :goto_1

    .line 857
    :cond_8
    if-eqz v0, :cond_1

    .line 858
    invoke-virtual {v0}, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->curFilterId()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    .line 859
    iget-object v5, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;->getShops()Lcom/cymobile/ymwork/types/Group;

    move-result-object v5

    iget-object v6, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-direct {p0, v5, v6}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->sortShopsDistanceDesc(Lcom/cymobile/ymwork/types/Group;Lcom/cymobile/ymwork/widget/SeparatedListAdapter;)V

    goto/16 :goto_1

    .line 861
    .end local v0           #ds:Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;
    :cond_9
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 862
    :cond_a
    invoke-static {p0, v10, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    .line 864
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/16 v6, 0xc

    const/4 v5, 0x0

    .line 90
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->requestWindowFeature(I)Z

    .line 91
    const-class v1, Lcom/cymobile/ymwork/SettingBase;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 92
    const/4 v2, 0x2

    .line 91
    invoke-virtual {p0, v1, v2}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->mPrefs:Landroid/content/SharedPreferences;

    .line 93
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->requestWindowFeature(I)Z

    .line 94
    iput-object p0, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->contexts:Landroid/content/Context;

    .line 95
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "Intent_ClassId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 96
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 97
    const-string v2, "Intent_ClassId"

    .line 96
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->classid:I

    .line 98
    iget v1, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->classid:I

    const/16 v2, 0x51

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->classid:I

    const/16 v2, 0x52

    if-ne v1, v2, :cond_1

    .line 99
    :cond_0
    iget v1, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->classid:I

    iput v1, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->classidextra:I

    .line 100
    const/4 v1, 0x0

    iput v1, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->classid:I

    .line 102
    :cond_1
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "Intent_ZoneId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 103
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 104
    const-string v2, "Intent_ZoneId"

    .line 103
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->intentZoneId:Ljava/lang/String;

    .line 106
    :cond_2
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "Intent_Days"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 107
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 108
    const-string v2, "Intent_Days"

    .line 107
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->intentDays:I

    .line 114
    :cond_3
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "key_GlobalZoneId"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->userZoneId:Ljava/lang/String;

    .line 115
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "key_GlobalZoneName"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->userZoneName:Ljava/lang/String;

    .line 118
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->userZoneId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->userZoneId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v4, 0x6

    if-ne v1, v4, :cond_7

    const-string v1, "\u5168\u90e8"

    .line 117
    :goto_0
    invoke-static {v2, v3, v1}, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->resetTOPCategory(JLjava/lang/String;)V

    .line 120
    const v1, 0x7f030028

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->setContentView(I)V

    .line 121
    invoke-super {p0, p1}, Lcom/cymobile/ymwork/widget/LoadableListFragmentWithViewAndHeaderPublicReport;->onCreate(Landroid/os/Bundle;)V

    .line 123
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->mLoggedOutReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    .line 124
    const-string v3, "com.cymobile.ymwork.intent.action.LOGGED_OUT"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0, v1, v2}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 126
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/HomeApplication;

    iput-object v1, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->homeApplication:Lcom/cymobile/ymwork/HomeApplication;

    .line 127
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 128
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;

    iput-object v1, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;

    .line 129
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;

    invoke-virtual {v1, p0}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;->setActivity(Lcom/cymobile/ymwork/act/MainClassPublicReportAct;)V

    .line 133
    :goto_1
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->ensureUi()V

    .line 134
    const v1, 0x7f08002f

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->commonTitle:Landroid/widget/TextView;

    .line 136
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->commonTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 137
    const v3, 0x7f0900ab

    .line 136
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->getListView()Landroid/widget/ListView;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/widget/PullToRefreshListView;

    .line 141
    new-instance v2, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$2;

    invoke-direct {v2, p0}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$2;-><init>(Lcom/cymobile/ymwork/act/MainClassPublicReportAct;)V

    invoke-virtual {v1, v2}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->setOnRefreshListener(Lcom/cymobile/ymwork/widget/PullToRefreshListView$OnRefreshListener;)V

    .line 151
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->getListView()Landroid/widget/ListView;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/widget/PullToRefreshListView;

    .line 152
    new-instance v2, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$3;

    invoke-direct {v2, p0}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$3;-><init>(Lcom/cymobile/ymwork/act/MainClassPublicReportAct;)V

    invoke-virtual {v1, v2}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->setOnAddMoreListener(Lcom/cymobile/ymwork/widget/PullToRefreshListView$OnAddMoreListener;)V

    .line 168
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "key_GlobalZoneId"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, zonecode:Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 171
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v6, :cond_5

    .line 172
    :cond_4
    invoke-static {}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getSubZone()Lcom/cymobile/ymwork/types/Group;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 173
    invoke-static {}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getSubZone()Lcom/cymobile/ymwork/types/Group;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v1

    if-lez v1, :cond_9

    .line 175
    :cond_5
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 179
    .end local v0           #zonecode:Ljava/lang/String;
    :goto_2
    return-void

    .line 111
    :cond_6
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->finish()V

    goto :goto_2

    .line 119
    :cond_7
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->userZoneName:Ljava/lang/String;

    goto/16 :goto_0

    .line 131
    :cond_8
    new-instance v1, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;

    invoke-direct {v1, p0}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;-><init>(Lcom/cymobile/ymwork/act/MainClassPublicReportAct;)V

    iput-object v1, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;

    goto :goto_1

    .line 177
    .restart local v0       #zonecode:Ljava/lang/String;
    :cond_9
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xb

    const-wide/16 v3, 0xa

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .parameter "id"

    .prologue
    .line 527
    const/4 v0, 0x0

    .line 528
    .local v0, dialog:Landroid/app/Dialog;
    const/4 v1, 0x0

    return-object v1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 210
    invoke-super {p0}, Lcom/cymobile/ymwork/widget/LoadableListFragmentWithViewAndHeaderPublicReport;->onDestroy()V

    .line 212
    :try_start_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->mLoggedOutReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->getStateHolder()Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->getStateHolder()Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;->cancel()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 223
    :cond_0
    :goto_1
    return-void

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, ee:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 220
    .end local v0           #ee:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 221
    .restart local v0       #ee:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 306
    invoke-super {p0}, Lcom/cymobile/ymwork/widget/LoadableListFragmentWithViewAndHeaderPublicReport;->onPause()V

    .line 311
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;->removeObserver()V

    .line 313
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->mLoggedOutReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 314
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;->cancel()V

    .line 316
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 183
    invoke-super {p0}, Lcom/cymobile/ymwork/widget/LoadableListFragmentWithViewAndHeaderPublicReport;->onResume()V

    .line 184
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 187
    :cond_0
    return-void
.end method
