.class public Lcom/cymobile/ymwork/act/ReplyListActivity;
.super Lcom/cymobile/ymwork/widget/FragmentListActivity;
.source "ReplyListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cymobile/ymwork/act/ReplyListActivity$StateHolder;,
        Lcom/cymobile/ymwork/act/ReplyListActivity$TaskReplys;
    }
.end annotation


# static fields
.field private static final Dialog_confirm_reply:I = 0xa

.field private static final TAG:Ljava/lang/String; = "ReplyListActivity"


# instance fields
.field private contexts:Landroid/content/Context;

.field handler:Landroid/os/Handler;

.field private mCaseid:Ljava/lang/String;

.field private mHomeApplication:Lcom/cymobile/ymwork/HomeApplication;

.field private mLayoutEmpty:Landroid/view/ViewGroup;

.field private mListAdapter:Lcom/cymobile/ymwork/widget/ReplyListAdapter;

.field mPrefs:Landroid/content/SharedPreferences;

.field private mStateHolder:Lcom/cymobile/ymwork/act/ReplyListActivity$StateHolder;

.field zoneCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/cymobile/ymwork/widget/FragmentListActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/cymobile/ymwork/act/ReplyListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 335
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/ReplyListActivity;->onRefreshTaskStart()V

    return-void
.end method

.method static synthetic access$1(Lcom/cymobile/ymwork/act/ReplyListActivity;Lcom/cymobile/ymwork/types/Group;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 340
    invoke-direct {p0, p1, p2}, Lcom/cymobile/ymwork/act/ReplyListActivity;->onTaskComplete(Lcom/cymobile/ymwork/types/Group;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$2(Lcom/cymobile/ymwork/act/ReplyListActivity;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ReplyListActivity;->contexts:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3(Lcom/cymobile/ymwork/act/ReplyListActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ReplyListActivity;->mCaseid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/cymobile/ymwork/act/ReplyListActivity;)Lcom/cymobile/ymwork/HomeApplication;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ReplyListActivity;->mHomeApplication:Lcom/cymobile/ymwork/HomeApplication;

    return-object v0
.end method

.method static synthetic access$5(Lcom/cymobile/ymwork/act/ReplyListActivity;)Lcom/cymobile/ymwork/act/ReplyListActivity$StateHolder;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ReplyListActivity;->mStateHolder:Lcom/cymobile/ymwork/act/ReplyListActivity$StateHolder;

    return-object v0
.end method

.method private ensureUi()V
    .locals 4

    .prologue
    .line 83
    const v3, 0x7f08002d

    invoke-virtual {p0, v3}, Lcom/cymobile/ymwork/act/ReplyListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 84
    .local v0, leftbtn:Landroid/widget/ImageButton;
    new-instance v3, Lcom/cymobile/ymwork/act/ReplyListActivity$1;

    invoke-direct {v3, p0}, Lcom/cymobile/ymwork/act/ReplyListActivity$1;-><init>(Lcom/cymobile/ymwork/act/ReplyListActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    const v3, 0x7f080030

    invoke-virtual {p0, v3}, Lcom/cymobile/ymwork/act/ReplyListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 91
    .local v1, rightbtn:Landroid/widget/Button;
    const v3, 0x7f0900bc

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(I)V

    .line 92
    new-instance v3, Lcom/cymobile/ymwork/act/ReplyListActivity$2;

    invoke-direct {v3, p0}, Lcom/cymobile/ymwork/act/ReplyListActivity$2;-><init>(Lcom/cymobile/ymwork/act/ReplyListActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    const v3, 0x7f08002f

    invoke-virtual {p0, v3}, Lcom/cymobile/ymwork/act/ReplyListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 113
    .local v2, title:Landroid/widget/TextView;
    const v3, 0x7f0900bd

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 114
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/ReplyListActivity;->ensureUiListView()V

    .line 115
    return-void
.end method

.method private ensureUiListView()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 122
    new-instance v3, Lcom/cymobile/ymwork/widget/ReplyListAdapter;

    iget-object v4, p0, Lcom/cymobile/ymwork/act/ReplyListActivity;->mHomeApplication:Lcom/cymobile/ymwork/HomeApplication;

    invoke-virtual {v4}, Lcom/cymobile/ymwork/HomeApplication;->getRemoteResourceManager()Lcom/cymobile/ymwork/server/RemoteResourceManager;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/cymobile/ymwork/widget/ReplyListAdapter;-><init>(Landroid/content/Context;Lcom/cymobile/ymwork/server/RemoteResourceManager;)V

    iput-object v3, p0, Lcom/cymobile/ymwork/act/ReplyListActivity;->mListAdapter:Lcom/cymobile/ymwork/widget/ReplyListAdapter;

    .line 123
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/ReplyListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 124
    .local v2, listView:Landroid/widget/ListView;
    iget-object v3, p0, Lcom/cymobile/ymwork/act/ReplyListActivity;->mListAdapter:Lcom/cymobile/ymwork/widget/ReplyListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 125
    invoke-virtual {v2, v7}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 126
    new-instance v3, Lcom/cymobile/ymwork/act/ReplyListActivity$3;

    invoke-direct {v3, p0}, Lcom/cymobile/ymwork/act/ReplyListActivity$3;-><init>(Lcom/cymobile/ymwork/act/ReplyListActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 133
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 134
    .local v1, inflater:Landroid/view/LayoutInflater;
    invoke-static {}, Lcom/cymobile/ymwork/utils/UiUtil;->sdkVersion()I

    move-result v3

    const/4 v4, 0x3

    if-le v3, v4, :cond_2

    .line 136
    const v3, 0x7f03003d

    .line 135
    invoke-virtual {v1, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ScrollView;

    iput-object v3, p0, Lcom/cymobile/ymwork/act/ReplyListActivity;->mLayoutEmpty:Landroid/view/ViewGroup;

    .line 138
    iget-object v3, p0, Lcom/cymobile/ymwork/act/ReplyListActivity;->mLayoutEmpty:Landroid/view/ViewGroup;

    .line 139
    const v4, 0x7f08010f

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 138
    check-cast v0, Landroid/widget/Button;

    .line 140
    .local v0, btnAddFriends:Landroid/widget/Button;
    new-instance v3, Lcom/cymobile/ymwork/act/ReplyListActivity$4;

    invoke-direct {v3, p0}, Lcom/cymobile/ymwork/act/ReplyListActivity$4;-><init>(Lcom/cymobile/ymwork/act/ReplyListActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    .end local v0           #btnAddFriends:Landroid/widget/Button;
    :goto_0
    iget-object v3, p0, Lcom/cymobile/ymwork/act/ReplyListActivity;->mLayoutEmpty:Landroid/view/ViewGroup;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 156
    invoke-direct {v4, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 154
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    iget-object v3, p0, Lcom/cymobile/ymwork/act/ReplyListActivity;->mListAdapter:Lcom/cymobile/ymwork/widget/ReplyListAdapter;

    invoke-virtual {v3}, Lcom/cymobile/ymwork/widget/ReplyListAdapter;->getCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 159
    iget-object v3, p0, Lcom/cymobile/ymwork/act/ReplyListActivity;->mLayoutEmpty:Landroid/view/ViewGroup;

    invoke-virtual {p0, v3, v5}, Lcom/cymobile/ymwork/act/ReplyListActivity;->setEmptyView(Landroid/view/View;Lcom/cymobile/ymwork/server/error/ServerException;)V

    .line 162
    :cond_0
    iget-object v3, p0, Lcom/cymobile/ymwork/act/ReplyListActivity;->mStateHolder:Lcom/cymobile/ymwork/act/ReplyListActivity$StateHolder;

    invoke-virtual {v3}, Lcom/cymobile/ymwork/act/ReplyListActivity$StateHolder;->getIsRunningTask()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 163
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/cymobile/ymwork/act/ReplyListActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 164
    iget-object v3, p0, Lcom/cymobile/ymwork/act/ReplyListActivity;->mStateHolder:Lcom/cymobile/ymwork/act/ReplyListActivity$StateHolder;

    invoke-virtual {v3}, Lcom/cymobile/ymwork/act/ReplyListActivity$StateHolder;->getRanOnce()Z

    move-result v3

    if-nez v3, :cond_1

    .line 165
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/ReplyListActivity;->setLoadingView()V

    .line 170
    :cond_1
    :goto_1
    return-void

    .line 151
    :cond_2
    const v3, 0x7f03003e

    .line 150
    invoke-virtual {v1, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ScrollView;

    iput-object v3, p0, Lcom/cymobile/ymwork/act/ReplyListActivity;->mLayoutEmpty:Landroid/view/ViewGroup;

    goto :goto_0

    .line 168
    :cond_3
    invoke-virtual {p0, v7}, Lcom/cymobile/ymwork/act/ReplyListActivity;->setProgressBarIndeterminateVisibility(Z)V

    goto :goto_1
.end method

.method private onRefreshTaskStart()V
    .locals 1

    .prologue
    .line 336
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/ReplyListActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 337
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/ReplyListActivity;->setLoadingView()V

    .line 338
    return-void
.end method

.method private onTaskComplete(Lcom/cymobile/ymwork/types/Group;Ljava/lang/Exception;)V
    .locals 6
    .parameter
    .parameter "ex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cymobile/ymwork/types/Group",
            "<",
            "Lcom/cymobile/ymwork/types/Reply;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, reply:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/Reply;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 341
    iget-object v1, p0, Lcom/cymobile/ymwork/act/ReplyListActivity;->mStateHolder:Lcom/cymobile/ymwork/act/ReplyListActivity$StateHolder;

    invoke-virtual {v1, v3}, Lcom/cymobile/ymwork/act/ReplyListActivity$StateHolder;->setRanOnce(Z)V

    .line 342
    iget-object v1, p0, Lcom/cymobile/ymwork/act/ReplyListActivity;->mStateHolder:Lcom/cymobile/ymwork/act/ReplyListActivity$StateHolder;

    invoke-virtual {v1, v2}, Lcom/cymobile/ymwork/act/ReplyListActivity$StateHolder;->setIsRunningTask(Z)V

    .line 343
    invoke-virtual {p0, v2}, Lcom/cymobile/ymwork/act/ReplyListActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 346
    iget-object v1, p0, Lcom/cymobile/ymwork/act/ReplyListActivity;->mListAdapter:Lcom/cymobile/ymwork/widget/ReplyListAdapter;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/widget/ReplyListAdapter;->removeObserver()V

    .line 347
    new-instance v1, Lcom/cymobile/ymwork/widget/ReplyListAdapter;

    iget-object v2, p0, Lcom/cymobile/ymwork/act/ReplyListActivity;->mHomeApplication:Lcom/cymobile/ymwork/HomeApplication;

    invoke-virtual {v2}, Lcom/cymobile/ymwork/HomeApplication;->getRemoteResourceManager()Lcom/cymobile/ymwork/server/RemoteResourceManager;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/cymobile/ymwork/widget/ReplyListAdapter;-><init>(Landroid/content/Context;Lcom/cymobile/ymwork/server/RemoteResourceManager;)V

    iput-object v1, p0, Lcom/cymobile/ymwork/act/ReplyListActivity;->mListAdapter:Lcom/cymobile/ymwork/widget/ReplyListAdapter;

    .line 349
    if-eqz p1, :cond_1

    .line 350
    iget-object v1, p0, Lcom/cymobile/ymwork/act/ReplyListActivity;->mStateHolder:Lcom/cymobile/ymwork/act/ReplyListActivity$StateHolder;

    invoke-virtual {v1, p1}, Lcom/cymobile/ymwork/act/ReplyListActivity$StateHolder;->setReply(Lcom/cymobile/ymwork/types/Group;)V

    .line 356
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/ReplyListActivity;->mStateHolder:Lcom/cymobile/ymwork/act/ReplyListActivity$StateHolder;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/ReplyListActivity$StateHolder;->getReply()Lcom/cymobile/ymwork/types/Group;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 357
    iget-object v1, p0, Lcom/cymobile/ymwork/act/ReplyListActivity;->mLayoutEmpty:Landroid/view/ViewGroup;

    new-instance v2, Lcom/cymobile/ymwork/server/error/ServerException;

    const-string v3, ""

    const-string v4, ""

    .line 358
    const/16 v5, 0x14

    invoke-direct {v2, v3, v4, v5}, Lcom/cymobile/ymwork/server/error/ServerException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 357
    invoke-virtual {p0, v1, v2}, Lcom/cymobile/ymwork/act/ReplyListActivity;->setEmptyView(Landroid/view/View;Lcom/cymobile/ymwork/server/error/ServerException;)V

    .line 367
    :goto_1
    return-void

    .line 351
    :cond_1
    if-eqz p2, :cond_0

    .line 352
    iget-object v1, p0, Lcom/cymobile/ymwork/act/ReplyListActivity;->mStateHolder:Lcom/cymobile/ymwork/act/ReplyListActivity$StateHolder;

    new-instance v2, Lcom/cymobile/ymwork/types/Group;

    invoke-direct {v2}, Lcom/cymobile/ymwork/types/Group;-><init>()V

    invoke-virtual {v1, v2}, Lcom/cymobile/ymwork/act/ReplyListActivity$StateHolder;->setReply(Lcom/cymobile/ymwork/types/Group;)V

    .line 353
    invoke-static {p0, p2}, Lcom/cymobile/ymwork/utils/NotificationsUtil;->ToastReasonForFailure(Landroid/content/Context;Ljava/lang/Exception;)V

    goto :goto_0

    .line 360
    :cond_2
    const v1, 0x7f0800c1

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/ReplyListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 361
    .local v0, loadableListHolder:Landroid/widget/LinearLayout;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 363
    iget-object v1, p0, Lcom/cymobile/ymwork/act/ReplyListActivity;->mStateHolder:Lcom/cymobile/ymwork/act/ReplyListActivity$StateHolder;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/ReplyListActivity$StateHolder;->getReply()Lcom/cymobile/ymwork/types/Group;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/cymobile/ymwork/act/ReplyListActivity;->setAdapter(Lcom/cymobile/ymwork/types/Group;)V

    .line 364
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/ReplyListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/cymobile/ymwork/act/ReplyListActivity;->mListAdapter:Lcom/cymobile/ymwork/widget/ReplyListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 365
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/ReplyListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_1
.end method

.method private setAdapter(Lcom/cymobile/ymwork/types/Group;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cymobile/ymwork/types/Group",
            "<",
            "Lcom/cymobile/ymwork/types/Reply;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 369
    .local p1, replys:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/Reply;>;"
    invoke-virtual {p1}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ReplyListActivity;->mListAdapter:Lcom/cymobile/ymwork/widget/ReplyListAdapter;

    invoke-virtual {v0, p1}, Lcom/cymobile/ymwork/widget/ReplyListAdapter;->setGroup(Lcom/cymobile/ymwork/types/Group;)V

    .line 372
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/cymobile/ymwork/widget/FragmentListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/ReplyListActivity;->requestWindowFeature(I)Z

    .line 55
    const-class v0, Lcom/cymobile/ymwork/SettingBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 56
    const/4 v1, 0x2

    .line 55
    invoke-virtual {p0, v0, v1}, Lcom/cymobile/ymwork/act/ReplyListActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/cymobile/ymwork/act/ReplyListActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 58
    const v0, 0x7f03002f

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/ReplyListActivity;->setContentView(I)V

    .line 59
    iput-object p0, p0, Lcom/cymobile/ymwork/act/ReplyListActivity;->contexts:Landroid/content/Context;

    .line 60
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/ReplyListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/ReplyListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "caseid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cymobile/ymwork/act/ReplyListActivity;->mCaseid:Ljava/lang/String;

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ReplyListActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "key_GlobalZoneId"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cymobile/ymwork/act/ReplyListActivity;->zoneCode:Ljava/lang/String;

    .line 64
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/ReplyListActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 65
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/ReplyListActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cymobile/ymwork/act/ReplyListActivity$StateHolder;

    iput-object v0, p0, Lcom/cymobile/ymwork/act/ReplyListActivity;->mStateHolder:Lcom/cymobile/ymwork/act/ReplyListActivity$StateHolder;

    .line 66
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ReplyListActivity;->mStateHolder:Lcom/cymobile/ymwork/act/ReplyListActivity$StateHolder;

    invoke-virtual {v0, p0}, Lcom/cymobile/ymwork/act/ReplyListActivity$StateHolder;->setActivity(Lcom/cymobile/ymwork/act/ReplyListActivity;)V

    .line 70
    :goto_0
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/ReplyListActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/cymobile/ymwork/HomeApplication;

    iput-object v0, p0, Lcom/cymobile/ymwork/act/ReplyListActivity;->mHomeApplication:Lcom/cymobile/ymwork/HomeApplication;

    .line 71
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/ReplyListActivity;->ensureUi()V

    .line 73
    return-void

    .line 68
    :cond_1
    new-instance v0, Lcom/cymobile/ymwork/act/ReplyListActivity$StateHolder;

    invoke-direct {v0, p0}, Lcom/cymobile/ymwork/act/ReplyListActivity$StateHolder;-><init>(Lcom/cymobile/ymwork/act/ReplyListActivity;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/ReplyListActivity;->mStateHolder:Lcom/cymobile/ymwork/act/ReplyListActivity$StateHolder;

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 378
    const/16 v1, 0xa

    if-ne p1, v1, :cond_0

    .line 379
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 380
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const-string v1, "\u53ea\u6709\u533a\u7ea7\u9886\u5bfc\u624d\u80fd\u6279\u793a\u610f\u89c1\uff0c\u662f\u5426\u7ee7\u7eed\uff1f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 381
    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 382
    const-string v1, "\u786e\u8ba4"

    new-instance v2, Lcom/cymobile/ymwork/act/ReplyListActivity$7;

    invoke-direct {v2, p0}, Lcom/cymobile/ymwork/act/ReplyListActivity$7;-><init>(Lcom/cymobile/ymwork/act/ReplyListActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 392
    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lcom/cymobile/ymwork/act/ReplyListActivity$8;

    invoke-direct {v2, p0}, Lcom/cymobile/ymwork/act/ReplyListActivity$8;-><init>(Lcom/cymobile/ymwork/act/ReplyListActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 398
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 400
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0, p1}, Lcom/cymobile/ymwork/widget/FragmentListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 77
    invoke-super {p0}, Lcom/cymobile/ymwork/widget/FragmentListActivity;->onResume()V

    .line 78
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ReplyListActivity;->mStateHolder:Lcom/cymobile/ymwork/act/ReplyListActivity$StateHolder;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/ReplyListActivity$StateHolder;->getRanOnce()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ReplyListActivity;->mStateHolder:Lcom/cymobile/ymwork/act/ReplyListActivity$StateHolder;

    invoke-virtual {v0, p0}, Lcom/cymobile/ymwork/act/ReplyListActivity$StateHolder;->startTask(Lcom/cymobile/ymwork/act/ReplyListActivity;)V

    .line 81
    :cond_0
    return-void
.end method

.method public setEmptyView(Landroid/view/View;Lcom/cymobile/ymwork/server/error/ServerException;)V
    .locals 8
    .parameter "view"
    .parameter "ex"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 174
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 175
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v5, v5, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_0

    .line 176
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-virtual {v5, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :cond_0
    :goto_0
    const v5, 0x7f0800c1

    invoke-virtual {p0, v5}, Lcom/cymobile/ymwork/act/ReplyListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 182
    .local v2, parent:Landroid/widget/LinearLayout;
    if-eqz v2, :cond_1

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 183
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 186
    :cond_1
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-le v5, v7, :cond_2

    .line 187
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 189
    :cond_2
    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 190
    const v5, 0x7f08010e

    invoke-virtual {p0, v5}, Lcom/cymobile/ymwork/act/ReplyListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 191
    .local v4, text:Landroid/widget/TextView;
    const v5, 0x7f08010f

    invoke-virtual {p0, v5}, Lcom/cymobile/ymwork/act/ReplyListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 192
    .local v3, refresh:Landroid/widget/Button;
    const v5, 0x7f080110

    invoke-virtual {p0, v5}, Lcom/cymobile/ymwork/act/ReplyListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 193
    .local v0, cancel:Landroid/widget/Button;
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/cymobile/ymwork/server/error/ServerException;->getErrorCode()I

    move-result v5

    if-lez v5, :cond_3

    .line 194
    invoke-virtual {p2}, Lcom/cymobile/ymwork/server/error/ServerException;->getErrorCode()I

    move-result v5

    const/16 v6, 0x19

    if-ne v5, v6, :cond_4

    .line 195
    const v5, 0x7f09004f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 200
    :cond_3
    :goto_1
    new-instance v5, Lcom/cymobile/ymwork/act/ReplyListActivity$5;

    invoke-direct {v5, p0}, Lcom/cymobile/ymwork/act/ReplyListActivity$5;-><init>(Lcom/cymobile/ymwork/act/ReplyListActivity;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    new-instance v5, Lcom/cymobile/ymwork/act/ReplyListActivity$6;

    invoke-direct {v5, p0}, Lcom/cymobile/ymwork/act/ReplyListActivity$6;-><init>(Lcom/cymobile/ymwork/act/ReplyListActivity;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    return-void

    .line 178
    .end local v0           #cancel:Landroid/widget/Button;
    .end local v2           #parent:Landroid/widget/LinearLayout;
    .end local v3           #refresh:Landroid/widget/Button;
    .end local v4           #text:Landroid/widget/TextView;
    :catch_0
    move-exception v1

    .line 179
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 196
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #cancel:Landroid/widget/Button;
    .restart local v2       #parent:Landroid/widget/LinearLayout;
    .restart local v3       #refresh:Landroid/widget/Button;
    .restart local v4       #text:Landroid/widget/TextView;
    :cond_4
    invoke-virtual {p2}, Lcom/cymobile/ymwork/server/error/ServerException;->getErrorCode()I

    move-result v5

    const/16 v6, 0x14

    if-ne v5, v6, :cond_3

    .line 197
    const v5, 0x7f0900cc

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method public setLoadingView()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 217
    const v1, 0x7f0800c1

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/ReplyListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 219
    .local v0, parent:Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-le v1, v3, :cond_0

    .line 220
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 222
    :cond_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 223
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 225
    :cond_1
    return-void
.end method
