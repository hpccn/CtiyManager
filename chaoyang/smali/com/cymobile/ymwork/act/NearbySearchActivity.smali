.class public Lcom/cymobile/ymwork/act/NearbySearchActivity;
.super Lcom/cymobile/ymwork/widget/LoadableListFragmentWithViewAndHeader;
.source "NearbySearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cymobile/ymwork/act/NearbySearchActivity$GetZoneTask;,
        Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;,
        Lcom/cymobile/ymwork/act/NearbySearchActivity$TaskMoreShops;,
        Lcom/cymobile/ymwork/act/NearbySearchActivity$TaskShops;,
        Lcom/cymobile/ymwork/act/NearbySearchActivity$UIHandler;
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

.field private mStateHolder:Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;

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

    .line 56
    invoke-direct {p0}, Lcom/cymobile/ymwork/widget/LoadableListFragmentWithViewAndHeader;-><init>()V

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->drawableMap:Ljava/util/HashMap;

    .line 65
    iput v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->classid:I

    .line 66
    iput v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->classidextra:I

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->intentZoneId:Ljava/lang/String;

    .line 187
    new-instance v0, Lcom/cymobile/ymwork/act/NearbySearchActivity$UIHandler;

    invoke-direct {v0, p0}, Lcom/cymobile/ymwork/act/NearbySearchActivity$UIHandler;-><init>(Lcom/cymobile/ymwork/act/NearbySearchActivity;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->mHandler:Landroid/os/Handler;

    .line 271
    new-instance v0, Lcom/cymobile/ymwork/act/NearbySearchActivity$1;

    invoke-direct {v0, p0}, Lcom/cymobile/ymwork/act/NearbySearchActivity$1;-><init>(Lcom/cymobile/ymwork/act/NearbySearchActivity;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->mLoggedOutReceiver:Landroid/content/BroadcastReceiver;

    .line 516
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->orderflags:[Z

    .line 56
    return-void
.end method

.method static synthetic access$0(Lcom/cymobile/ymwork/act/NearbySearchActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cymobile/ymwork/act/NearbySearchActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 65
    iget v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->classid:I

    return v0
.end method

.method static synthetic access$2(Lcom/cymobile/ymwork/act/NearbySearchActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 66
    iget v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->classidextra:I

    return v0
.end method

.method static synthetic access$3(Lcom/cymobile/ymwork/act/NearbySearchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 991
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->onRefreshTaskStart()V

    return-void
.end method

.method static synthetic access$4(Lcom/cymobile/ymwork/act/NearbySearchActivity;Lcom/cymobile/ymwork/types/Group;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 752
    invoke-direct {p0, p1, p2}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->onTaskComplete(Lcom/cymobile/ymwork/types/Group;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$5(Lcom/cymobile/ymwork/act/NearbySearchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 996
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->onMoreTaskStart()V

    return-void
.end method

.method static synthetic access$6(Lcom/cymobile/ymwork/act/NearbySearchActivity;)Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->mStateHolder:Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;

    return-object v0
.end method

.method static synthetic access$7(Lcom/cymobile/ymwork/act/NearbySearchActivity;)Lcom/cymobile/ymwork/widget/SeparatedListAdapter;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    return-object v0
.end method

.method private ensureUi()V
    .locals 3

    .prologue
    .line 427
    const v2, 0x7f08002d

    invoke-virtual {p0, v2}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 428
    .local v0, leftbtn:Landroid/widget/ImageButton;
    new-instance v2, Lcom/cymobile/ymwork/act/NearbySearchActivity$4;

    invoke-direct {v2, p0}, Lcom/cymobile/ymwork/act/NearbySearchActivity$4;-><init>(Lcom/cymobile/ymwork/act/NearbySearchActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 435
    const v2, 0x7f080030

    invoke-virtual {p0, v2}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 436
    .local v1, rightBtn:Landroid/widget/Button;
    const-string v2, "\u5730\u56fe\u6a21\u5f0f"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 441
    new-instance v2, Lcom/cymobile/ymwork/act/NearbySearchActivity$5;

    invoke-direct {v2, p0}, Lcom/cymobile/ymwork/act/NearbySearchActivity$5;-><init>(Lcom/cymobile/ymwork/act/NearbySearchActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 513
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->ensureUiListView()V

    .line 514
    return-void
.end method

.method private ensureUiListView()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 525
    new-instance v5, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-direct {v5, p0}, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    .line 527
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->getFilterFragment()Lcom/cymobile/ymwork/widget/RangeFilterFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cymobile/ymwork/widget/RangeFilterFragment;->getFilterDataSource()Lcom/cymobile/ymwork/adapter/FilterDataSource;

    move-result-object v2

    .line 528
    .local v2, ds:Lcom/cymobile/ymwork/adapter/FilterDataSource;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/cymobile/ymwork/adapter/FilterDataSource;->curFilterId()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v5

    if-ne v5, v9, :cond_0

    .line 529
    iget-object v5, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->mStateHolder:Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;->getShops()Lcom/cymobile/ymwork/types/Group;

    move-result-object v5

    iget-object v6, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-direct {p0, v5, v6}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->sortShopsRecent(Lcom/cymobile/ymwork/types/Group;Lcom/cymobile/ymwork/widget/SeparatedListAdapter;)V

    .line 532
    :cond_0
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->getListView()Landroid/widget/ListView;

    move-result-object v4

    check-cast v4, Lcom/cymobile/ymwork/widget/PullToRefreshListView;

    .line 533
    .local v4, listView:Lcom/cymobile/ymwork/widget/PullToRefreshListView;
    iget-object v5, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-virtual {v4, v5}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 534
    invoke-virtual {v4, v8}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->setDividerHeight(I)V

    .line 535
    new-instance v5, Lcom/cymobile/ymwork/act/NearbySearchActivity$6;

    invoke-direct {v5, p0}, Lcom/cymobile/ymwork/act/NearbySearchActivity$6;-><init>(Lcom/cymobile/ymwork/act/NearbySearchActivity;)V

    invoke-virtual {v4, v5}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 581
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 582
    .local v3, inflater:Landroid/view/LayoutInflater;
    invoke-static {}, Lcom/cymobile/ymwork/utils/UiUtil;->sdkVersion()I

    move-result v5

    const/4 v6, 0x3

    if-le v5, v6, :cond_2

    .line 584
    const v5, 0x7f03003d

    .line 583
    invoke-virtual {v3, v5, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ScrollView;

    iput-object v5, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->mLayoutEmpty:Landroid/view/ViewGroup;

    .line 591
    :goto_0
    iget-object v5, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->mLayoutEmpty:Landroid/view/ViewGroup;

    .line 592
    const v6, 0x7f08010f

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 591
    check-cast v0, Landroid/widget/Button;

    .line 593
    .local v0, btnAddFriends:Landroid/widget/Button;
    new-instance v5, Lcom/cymobile/ymwork/act/NearbySearchActivity$7;

    invoke-direct {v5, p0}, Lcom/cymobile/ymwork/act/NearbySearchActivity$7;-><init>(Lcom/cymobile/ymwork/act/NearbySearchActivity;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 599
    iget-object v5, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->mLayoutEmpty:Landroid/view/ViewGroup;

    .line 600
    const v6, 0x7f080110

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 599
    check-cast v1, Landroid/widget/Button;

    .line 601
    .local v1, btnFriendRequests:Landroid/widget/Button;
    new-instance v5, Lcom/cymobile/ymwork/act/NearbySearchActivity$8;

    invoke-direct {v5, p0}, Lcom/cymobile/ymwork/act/NearbySearchActivity$8;-><init>(Lcom/cymobile/ymwork/act/NearbySearchActivity;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 606
    iget-object v5, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->mLayoutEmpty:Landroid/view/ViewGroup;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 608
    invoke-direct {v6, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 606
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 610
    iget-object v5, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;->getCount()I

    .line 614
    iget-object v5, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->mStateHolder:Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;->getIsRunningTask()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 615
    invoke-virtual {p0, v9}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 616
    iget-object v5, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->mStateHolder:Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;->getRanOnce()Z

    move-result v5

    if-nez v5, :cond_1

    .line 617
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->setLoadingView()V

    .line 622
    :cond_1
    :goto_1
    return-void

    .line 589
    .end local v0           #btnAddFriends:Landroid/widget/Button;
    .end local v1           #btnFriendRequests:Landroid/widget/Button;
    :cond_2
    const v5, 0x7f03003e

    .line 588
    invoke-virtual {v3, v5, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ScrollView;

    iput-object v5, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->mLayoutEmpty:Landroid/view/ViewGroup;

    goto :goto_0

    .line 620
    .restart local v0       #btnAddFriends:Landroid/widget/Button;
    .restart local v1       #btnFriendRequests:Landroid/widget/Button;
    :cond_3
    invoke-virtual {p0, v8}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->setProgressBarIndeterminateVisibility(Z)V

    goto :goto_1
.end method

.method private onMoreTaskStart()V
    .locals 1

    .prologue
    .line 997
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 998
    return-void
.end method

.method private onRefreshTaskStart()V
    .locals 1

    .prologue
    .line 992
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 993
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->setLoadingView()V

    .line 994
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

    .line 753
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->mStateHolder:Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;

    invoke-virtual {v1, v3}, Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;->setRanOnce(Z)V

    .line 754
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->mStateHolder:Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;

    invoke-virtual {v1, v4}, Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;->setIsRunningTask(Z)V

    .line 755
    invoke-virtual {p0, v4}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 758
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;->removeObserver()V

    .line 759
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;->clear()V

    .line 760
    new-instance v1, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-direct {v1, p0}, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    .line 764
    if-eqz p1, :cond_5

    .line 765
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->mStateHolder:Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;

    invoke-virtual {v1, p1}, Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;->setShops(Lcom/cymobile/ymwork/types/Group;)V

    .line 766
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->getFilterFragment()Lcom/cymobile/ymwork/widget/RangeFilterFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cymobile/ymwork/widget/RangeFilterFragment;->getFilterDataSource()Lcom/cymobile/ymwork/adapter/FilterDataSource;

    move-result-object v0

    .line 767
    .local v0, ds:Lcom/cymobile/ymwork/adapter/FilterDataSource;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/cymobile/ymwork/adapter/FilterDataSource;->curFilterId()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 768
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->mStateHolder:Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;->getShops()Lcom/cymobile/ymwork/types/Group;

    move-result-object v1

    iget-object v2, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-direct {p0, v1, v2}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->sortShopsRecent(Lcom/cymobile/ymwork/types/Group;Lcom/cymobile/ymwork/widget/SeparatedListAdapter;)V

    .line 781
    .end local v0           #ds:Lcom/cymobile/ymwork/adapter/FilterDataSource;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->mStateHolder:Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;->getShops()Lcom/cymobile/ymwork/types/Group;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 782
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->mLayoutEmpty:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->setEmptyView(Landroid/view/View;)V

    .line 784
    :cond_1
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 785
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setSelection(I)V

    .line 786
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->mStateHolder:Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;->getShops()Lcom/cymobile/ymwork/types/Group;

    move-result-object v1

    if-eqz v1, :cond_6

    if-eqz p1, :cond_6

    iget-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->mStateHolder:Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;->getShops()Lcom/cymobile/ymwork/types/Group;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v1

    invoke-virtual {p1}, Lcom/cymobile/ymwork/types/Group;->getNumber()I

    move-result v2

    if-ne v1, v2, :cond_6

    .line 787
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/widget/PullToRefreshListView;

    invoke-virtual {v1, v3}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->onRefreshComplete(Z)V

    .line 791
    :goto_1
    return-void

    .line 769
    .restart local v0       #ds:Lcom/cymobile/ymwork/adapter/FilterDataSource;
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/cymobile/ymwork/adapter/FilterDataSource;->curFilterId()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 770
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->mStateHolder:Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;->getShops()Lcom/cymobile/ymwork/types/Group;

    move-result-object v1

    iget-object v2, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-direct {p0, v1, v2}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->sortShopsRecentDesc(Lcom/cymobile/ymwork/types/Group;Lcom/cymobile/ymwork/widget/SeparatedListAdapter;)V

    goto :goto_0

    .line 771
    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/cymobile/ymwork/adapter/FilterDataSource;->curFilterId()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 772
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->mStateHolder:Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;->getShops()Lcom/cymobile/ymwork/types/Group;

    move-result-object v1

    iget-object v2, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-direct {p0, v1, v2}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->sortShopsAreaDesc(Lcom/cymobile/ymwork/types/Group;Lcom/cymobile/ymwork/widget/SeparatedListAdapter;)V

    goto :goto_0

    .line 773
    :cond_4
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cymobile/ymwork/adapter/FilterDataSource;->curFilterId()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 774
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->mStateHolder:Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;->getShops()Lcom/cymobile/ymwork/types/Group;

    move-result-object v1

    iget-object v2, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-direct {p0, v1, v2}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->sortShopsDistanceDesc(Lcom/cymobile/ymwork/types/Group;Lcom/cymobile/ymwork/widget/SeparatedListAdapter;)V

    goto/16 :goto_0

    .line 776
    .end local v0           #ds:Lcom/cymobile/ymwork/adapter/FilterDataSource;
    :cond_5
    if-eqz p2, :cond_0

    .line 777
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->mStateHolder:Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;

    new-instance v2, Lcom/cymobile/ymwork/types/Group;

    invoke-direct {v2}, Lcom/cymobile/ymwork/types/Group;-><init>()V

    invoke-virtual {v1, v2}, Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;->setShops(Lcom/cymobile/ymwork/types/Group;)V

    goto/16 :goto_0

    .line 789
    :cond_6
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->getListView()Landroid/widget/ListView;

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
    .line 693
    .local p1, shops:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/Building;>;"
    new-instance v2, Lcom/cymobile/ymwork/types/Group;

    invoke-direct {v2}, Lcom/cymobile/ymwork/types/Group;-><init>()V

    .line 694
    .local v2, nearby:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/Building;>;"
    new-instance v0, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;

    .line 695
    iget-object v3, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->homeApplication:Lcom/cymobile/ymwork/HomeApplication;

    invoke-virtual {v3}, Lcom/cymobile/ymwork/HomeApplication;->getRemoteResourceManager()Lcom/cymobile/ymwork/server/RemoteResourceManager;

    move-result-object v3

    .line 694
    invoke-direct {v0, p0, v3}, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;-><init>(Landroid/content/Context;Lcom/cymobile/ymwork/server/RemoteResourceManager;)V

    .line 696
    .local v0, adapter:Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;
    invoke-virtual {p1}, Lcom/cymobile/ymwork/types/Group;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 712
    invoke-virtual {v2}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 713
    invoke-virtual {v0, v2}, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;->setGroup(Lcom/cymobile/ymwork/types/Group;)V

    .line 715
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 716
    const v4, 0x7f090034

    .line 715
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 714
    invoke-virtual {p2, v3, v0}, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    .line 719
    :cond_0
    return-void

    .line 696
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/types/Building;

    .line 708
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
    .line 722
    .local p1, shops:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/Building;>;"
    invoke-static {}, Lcom/cymobile/ymwork/utils/Comparators;->getRecentDistanceComparator()Ljava/util/Comparator;

    move-result-object v3

    invoke-static {p1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 724
    new-instance v2, Lcom/cymobile/ymwork/types/Group;

    invoke-direct {v2}, Lcom/cymobile/ymwork/types/Group;-><init>()V

    .line 725
    .local v2, nearby:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/Building;>;"
    new-instance v0, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;

    .line 726
    iget-object v3, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->homeApplication:Lcom/cymobile/ymwork/HomeApplication;

    invoke-virtual {v3}, Lcom/cymobile/ymwork/HomeApplication;->getRemoteResourceManager()Lcom/cymobile/ymwork/server/RemoteResourceManager;

    move-result-object v3

    .line 725
    invoke-direct {v0, p0, v3}, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;-><init>(Landroid/content/Context;Lcom/cymobile/ymwork/server/RemoteResourceManager;)V

    .line 727
    .local v0, adapter:Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;
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
    invoke-virtual {v0, v2}, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;->setGroup(Lcom/cymobile/ymwork/types/Group;)V

    .line 746
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->getResources()Landroid/content/res/Resources;

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

    .line 727
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/types/Building;

    .line 739
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
    .line 626
    .local p1, shops:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/Building;>;"
    invoke-static {}, Lcom/cymobile/ymwork/utils/Comparators;->getShopRecencyComparator()Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v3

    invoke-static {p1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 628
    new-instance v2, Lcom/cymobile/ymwork/types/Group;

    invoke-direct {v2}, Lcom/cymobile/ymwork/types/Group;-><init>()V

    .line 629
    .local v2, nearby:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/Building;>;"
    new-instance v0, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;

    .line 630
    iget-object v3, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->homeApplication:Lcom/cymobile/ymwork/HomeApplication;

    invoke-virtual {v3}, Lcom/cymobile/ymwork/HomeApplication;->getRemoteResourceManager()Lcom/cymobile/ymwork/server/RemoteResourceManager;

    move-result-object v3

    .line 629
    invoke-direct {v0, p0, v3}, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;-><init>(Landroid/content/Context;Lcom/cymobile/ymwork/server/RemoteResourceManager;)V

    .line 631
    .local v0, adapter:Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;
    invoke-virtual {p1}, Lcom/cymobile/ymwork/types/Group;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 647
    invoke-virtual {v2}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 648
    invoke-virtual {v0, v2}, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;->setGroup(Lcom/cymobile/ymwork/types/Group;)V

    .line 650
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 651
    const v4, 0x7f090034

    .line 650
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 649
    invoke-virtual {p2, v3, v0}, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    .line 654
    :cond_0
    return-void

    .line 631
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/types/Building;

    .line 643
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
    .line 659
    .local p1, shops:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/Building;>;"
    invoke-static {}, Lcom/cymobile/ymwork/utils/Comparators;->getShopRecencyComparator()Ljava/util/Comparator;

    move-result-object v3

    invoke-static {p1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 661
    new-instance v2, Lcom/cymobile/ymwork/types/Group;

    invoke-direct {v2}, Lcom/cymobile/ymwork/types/Group;-><init>()V

    .line 662
    .local v2, nearby:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/Building;>;"
    new-instance v0, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;

    .line 663
    iget-object v3, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->homeApplication:Lcom/cymobile/ymwork/HomeApplication;

    invoke-virtual {v3}, Lcom/cymobile/ymwork/HomeApplication;->getRemoteResourceManager()Lcom/cymobile/ymwork/server/RemoteResourceManager;

    move-result-object v3

    .line 662
    invoke-direct {v0, p0, v3}, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;-><init>(Landroid/content/Context;Lcom/cymobile/ymwork/server/RemoteResourceManager;)V

    .line 664
    .local v0, adapter:Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;
    invoke-virtual {p1}, Lcom/cymobile/ymwork/types/Group;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 680
    invoke-virtual {v2}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 681
    invoke-virtual {v0, v2}, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;->setGroup(Lcom/cymobile/ymwork/types/Group;)V

    .line 683
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 684
    const v4, 0x7f090034

    .line 683
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 682
    invoke-virtual {p2, v3, v0}, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    .line 687
    :cond_0
    return-void

    .line 664
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/types/Building;

    .line 676
    .local v1, it:Lcom/cymobile/ymwork/types/Building;
    invoke-virtual {v2, v1}, Lcom/cymobile/ymwork/types/Group;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public getNoSearchResultsStringId()I
    .locals 1

    .prologue
    .line 300
    const v0, 0x7f090019

    return v0
.end method

.method getShopsSize()I
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;->getCount()I

    move-result v0

    .line 81
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStateHolder()Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->mStateHolder:Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;

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

    .line 795
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/widget/PullToRefreshListView;

    .line 796
    .local v1, listview:Lcom/cymobile/ymwork/widget/PullToRefreshListView;
    invoke-virtual {v1, v7}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 797
    .local v4, v:Landroid/view/View;
    invoke-virtual {v1}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->getFirstVisiblePosition()I

    move-result v2

    .line 799
    .local v2, oldPos:I
    iget-object v5, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->mStateHolder:Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;

    invoke-virtual {v5, v8}, Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;->setRanOnce(Z)V

    .line 800
    iget-object v5, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->mStateHolder:Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;

    invoke-virtual {v5, v7}, Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;->setIsRunningTask(Z)V

    .line 801
    invoke-virtual {p0, v7}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 803
    if-eqz p2, :cond_5

    .line 804
    instance-of v5, p2, Lcom/cymobile/ymwork/server/error/ServerException;

    if-eqz v5, :cond_4

    move-object v3, p2

    .line 805
    check-cast v3, Lcom/cymobile/ymwork/server/error/ServerException;

    .line 806
    .local v3, se:Lcom/cymobile/ymwork/server/error/ServerException;
    invoke-virtual {v3}, Lcom/cymobile/ymwork/server/error/ServerException;->getErrorCode()I

    move-result v5

    const/16 v6, 0x14

    if-ne v5, v6, :cond_3

    .line 807
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->getListView()Landroid/widget/ListView;

    move-result-object v5

    check-cast v5, Lcom/cymobile/ymwork/widget/PullToRefreshListView;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->onLastRecordComplete()V

    .line 808
    invoke-static {p0, v10, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 815
    .end local v3           #se:Lcom/cymobile/ymwork/server/error/ServerException;
    :goto_0
    iget-object v5, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->mStateHolder:Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;->getShops()Lcom/cymobile/ymwork/types/Group;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->mStateHolder:Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;->getShops()Lcom/cymobile/ymwork/types/Group;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v5

    if-gtz v5, :cond_1

    .line 818
    :cond_0
    iget-object v5, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->mStateHolder:Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;

    new-instance v6, Lcom/cymobile/ymwork/types/Group;

    invoke-direct {v6}, Lcom/cymobile/ymwork/types/Group;-><init>()V

    invoke-virtual {v5, v6}, Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;->setShops(Lcom/cymobile/ymwork/types/Group;)V

    .line 843
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->mStateHolder:Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;->getShops()Lcom/cymobile/ymwork/types/Group;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 844
    iget-object v5, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->mLayoutEmpty:Landroid/view/ViewGroup;

    invoke-virtual {p0, v5}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->setEmptyView(Landroid/view/View;)V

    .line 848
    :cond_2
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->getListView()Landroid/widget/ListView;

    move-result-object v5

    iget-object v6, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 849
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 851
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->getListView()Landroid/widget/ListView;

    move-result-object v5

    check-cast v5, Lcom/cymobile/ymwork/widget/PullToRefreshListView;

    invoke-virtual {v5, v8}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->onAddMoreComplete(Z)V

    .line 852
    return-void

    .line 810
    .restart local v3       #se:Lcom/cymobile/ymwork/server/error/ServerException;
    :cond_3
    invoke-static {p0, v9, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 813
    .end local v3           #se:Lcom/cymobile/ymwork/server/error/ServerException;
    :cond_4
    invoke-static {p0, v9, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 822
    :cond_5
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v5

    if-lez v5, :cond_9

    .line 824
    iget-object v5, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;->removeObserver()V

    .line 825
    iget-object v5, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;->clear()V

    .line 826
    new-instance v5, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-direct {v5, p0}, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    .line 828
    iget-object v5, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->mStateHolder:Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;->getShops()Lcom/cymobile/ymwork/types/Group;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/cymobile/ymwork/types/Group;->addAll(Ljava/util/Collection;)Z

    .line 829
    iget-object v5, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->mStateHolder:Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;

    invoke-virtual {v5, p1}, Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;->setShops(Lcom/cymobile/ymwork/types/Group;)V

    .line 830
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->getFilterFragment()Lcom/cymobile/ymwork/widget/RangeFilterFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cymobile/ymwork/widget/RangeFilterFragment;->getFilterDataSource()Lcom/cymobile/ymwork/adapter/FilterDataSource;

    move-result-object v0

    .line 831
    .local v0, ds:Lcom/cymobile/ymwork/adapter/FilterDataSource;
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/cymobile/ymwork/adapter/FilterDataSource;->curFilterId()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v5

    if-ne v5, v8, :cond_6

    .line 832
    iget-object v5, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->mStateHolder:Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;->getShops()Lcom/cymobile/ymwork/types/Group;

    move-result-object v5

    iget-object v6, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-direct {p0, v5, v6}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->sortShopsRecent(Lcom/cymobile/ymwork/types/Group;Lcom/cymobile/ymwork/widget/SeparatedListAdapter;)V

    goto/16 :goto_1

    .line 833
    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/cymobile/ymwork/adapter/FilterDataSource;->curFilterId()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_7

    .line 834
    iget-object v5, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->mStateHolder:Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;->getShops()Lcom/cymobile/ymwork/types/Group;

    move-result-object v5

    iget-object v6, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-direct {p0, v5, v6}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->sortShopsRecentDesc(Lcom/cymobile/ymwork/types/Group;Lcom/cymobile/ymwork/widget/SeparatedListAdapter;)V

    goto/16 :goto_1

    .line 835
    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/cymobile/ymwork/adapter/FilterDataSource;->curFilterId()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_8

    .line 836
    iget-object v5, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->mStateHolder:Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;->getShops()Lcom/cymobile/ymwork/types/Group;

    move-result-object v5

    iget-object v6, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-direct {p0, v5, v6}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->sortShopsAreaDesc(Lcom/cymobile/ymwork/types/Group;Lcom/cymobile/ymwork/widget/SeparatedListAdapter;)V

    goto/16 :goto_1

    .line 837
    :cond_8
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/cymobile/ymwork/adapter/FilterDataSource;->curFilterId()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    .line 838
    iget-object v5, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->mStateHolder:Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;->getShops()Lcom/cymobile/ymwork/types/Group;

    move-result-object v5

    iget-object v6, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-direct {p0, v5, v6}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->sortShopsDistanceDesc(Lcom/cymobile/ymwork/types/Group;Lcom/cymobile/ymwork/widget/SeparatedListAdapter;)V

    goto/16 :goto_1

    .line 840
    .end local v0           #ds:Lcom/cymobile/ymwork/adapter/FilterDataSource;
    :cond_9
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 841
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
    invoke-virtual {p0, v6}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->requestWindowFeature(I)Z

    .line 88
    const-class v1, Lcom/cymobile/ymwork/SettingBase;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v7}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 90
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->requestWindowFeature(I)Z

    .line 91
    iput-object p0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->contexts:Landroid/content/Context;

    .line 92
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "Intent_ClassId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 93
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "Intent_ClassId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->classid:I

    .line 94
    iget v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->classid:I

    if-eq v1, v9, :cond_0

    iget v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->classid:I

    const/16 v2, 0x52

    if-ne v1, v2, :cond_1

    .line 95
    :cond_0
    iget v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->classid:I

    iput v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->classidextra:I

    .line 96
    const/4 v1, 0x0

    iput v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->classid:I

    .line 98
    :cond_1
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "Intent_ZoneId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 99
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "Intent_ZoneId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->intentZoneId:Ljava/lang/String;

    .line 101
    :cond_2
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "Intent_Days"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 102
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "Intent_Days"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->intentDays:I

    .line 108
    :cond_3
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "key_GlobalZoneId"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->userZoneId:Ljava/lang/String;

    .line 109
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "key_GlobalZoneName"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->userZoneName:Ljava/lang/String;

    .line 110
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->userZoneId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->userZoneId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v4, 0x6

    if-ne v1, v4, :cond_9

    const-string v1, "\u5168\u90e8"

    :goto_0
    invoke-static {v2, v3, v1}, Lcom/cymobile/ymwork/adapter/FilterDataSource;->resetTOPCategory(JLjava/lang/String;)V

    .line 111
    const v1, 0x7f030028

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->setContentView(I)V

    .line 112
    invoke-super {p0, p1}, Lcom/cymobile/ymwork/widget/LoadableListFragmentWithViewAndHeader;->onCreate(Landroid/os/Bundle;)V

    .line 114
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->mLoggedOutReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    .line 115
    const-string v3, "com.cymobile.ymwork.intent.action.LOGGED_OUT"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0, v1, v2}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 117
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/HomeApplication;

    iput-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->homeApplication:Lcom/cymobile/ymwork/HomeApplication;

    .line 118
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 119
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;

    iput-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->mStateHolder:Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;

    .line 120
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->mStateHolder:Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;

    invoke-virtual {v1, p0}, Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;->setActivity(Lcom/cymobile/ymwork/act/NearbySearchActivity;)V

    .line 124
    :goto_1
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->ensureUi()V

    .line 125
    const v1, 0x7f08002f

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->commonTitle:Landroid/widget/TextView;

    .line 126
    iget v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->classid:I

    if-nez v1, :cond_b

    .line 127
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->commonTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900a6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->classidextra:I

    if-ne v1, v9, :cond_4

    .line 129
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->commonTitle:Landroid/widget/TextView;

    const-string v2, "\u6d88\u9632\u5b89\u5168"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    :cond_4
    iget v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->classidextra:I

    const/16 v2, 0x52

    if-ne v1, v2, :cond_5

    .line 132
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->commonTitle:Landroid/widget/TextView;

    const-string v2, "\u98df\u54c1\u5b89\u5168"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/widget/PullToRefreshListView;

    .line 142
    new-instance v2, Lcom/cymobile/ymwork/act/NearbySearchActivity$2;

    invoke-direct {v2, p0}, Lcom/cymobile/ymwork/act/NearbySearchActivity$2;-><init>(Lcom/cymobile/ymwork/act/NearbySearchActivity;)V

    invoke-virtual {v1, v2}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->setOnRefreshListener(Lcom/cymobile/ymwork/widget/PullToRefreshListView$OnRefreshListener;)V

    .line 152
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/widget/PullToRefreshListView;

    .line 153
    new-instance v2, Lcom/cymobile/ymwork/act/NearbySearchActivity$3;

    invoke-direct {v2, p0}, Lcom/cymobile/ymwork/act/NearbySearchActivity$3;-><init>(Lcom/cymobile/ymwork/act/NearbySearchActivity;)V

    invoke-virtual {v1, v2}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->setOnAddMoreListener(Lcom/cymobile/ymwork/widget/PullToRefreshListView$OnAddMoreListener;)V

    .line 168
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->mPrefs:Landroid/content/SharedPreferences;

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
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v8, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 175
    .end local v0           #zonecode:Ljava/lang/String;
    :goto_3
    return-void

    .line 105
    :cond_8
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->finish()V

    goto :goto_3

    .line 110
    :cond_9
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->userZoneName:Ljava/lang/String;

    goto/16 :goto_0

    .line 122
    :cond_a
    new-instance v1, Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;

    invoke-direct {v1, p0}, Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;-><init>(Lcom/cymobile/ymwork/act/NearbySearchActivity;)V

    iput-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->mStateHolder:Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;

    goto/16 :goto_1

    .line 134
    :cond_b
    iget v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->classid:I

    if-ne v1, v6, :cond_c

    .line 135
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->commonTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900a7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 136
    :cond_c
    iget v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->classid:I

    if-ne v1, v7, :cond_5

    .line 137
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->commonTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900a8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 173
    .restart local v0       #zonecode:Ljava/lang/String;
    :cond_d
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xb

    const-wide/16 v3, 0xa

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_3
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .parameter "id"

    .prologue
    .line 520
    const/4 v0, 0x0

    .line 521
    .local v0, dialog:Landroid/app/Dialog;
    const/4 v1, 0x0

    return-object v1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 202
    invoke-super {p0}, Lcom/cymobile/ymwork/widget/LoadableListFragmentWithViewAndHeader;->onDestroy()V

    .line 204
    :try_start_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->mLoggedOutReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->getStateHolder()Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 210
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->getStateHolder()Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;->cancel()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 215
    :cond_0
    :goto_1
    return-void

    .line 205
    :catch_0
    move-exception v0

    .line 206
    .local v0, ee:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 212
    .end local v0           #ee:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 213
    .restart local v0       #ee:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 281
    invoke-super {p0}, Lcom/cymobile/ymwork/widget/LoadableListFragmentWithViewAndHeader;->onPause()V

    .line 286
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->mListAdapter:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;->removeObserver()V

    .line 288
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->mLoggedOutReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 289
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->mStateHolder:Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;->cancel()V

    .line 291
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 180
    invoke-super {p0}, Lcom/cymobile/ymwork/widget/LoadableListFragmentWithViewAndHeader;->onResume()V

    .line 181
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 184
    :cond_0
    return-void
.end method
