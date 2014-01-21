.class public Lcom/cymobile/ymwork/act/UserListActivity;
.super Lcom/cymobile/ymwork/widget/FragmentListActivity;
.source "UserListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cymobile/ymwork/act/UserListActivity$StateHolder;,
        Lcom/cymobile/ymwork/act/UserListActivity$TaskUsers;
    }
.end annotation


# static fields
.field private static final SLEEP_TIME_IF_NO_LOCATION:J = 0xbb8L

.field private static final TAG:Ljava/lang/String; = "UserListActivity"

.field private static contexts:Landroid/content/Context;


# instance fields
.field handler:Landroid/os/Handler;

.field private mHomeApplication:Lcom/cymobile/ymwork/HomeApplication;

.field private mLayoutEmpty:Landroid/view/ViewGroup;

.field private mListAdapter:Lcom/cymobile/ymwork/widget/UsersListAdapter;

.field mPrefs:Landroid/content/SharedPreferences;

.field private mStateHolder:Lcom/cymobile/ymwork/act/UserListActivity$StateHolder;

.field zoneCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/cymobile/ymwork/widget/FragmentListActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/cymobile/ymwork/act/UserListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 343
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/UserListActivity;->onRefreshTaskStart()V

    return-void
.end method

.method static synthetic access$1(Lcom/cymobile/ymwork/act/UserListActivity;Lcom/cymobile/ymwork/types/Group;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 348
    invoke-direct {p0, p1, p2}, Lcom/cymobile/ymwork/act/UserListActivity;->onTaskComplete(Lcom/cymobile/ymwork/types/Group;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$2()Landroid/content/Context;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/cymobile/ymwork/act/UserListActivity;->contexts:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3(Lcom/cymobile/ymwork/act/UserListActivity;)Lcom/cymobile/ymwork/act/UserListActivity$StateHolder;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/cymobile/ymwork/act/UserListActivity;->mStateHolder:Lcom/cymobile/ymwork/act/UserListActivity$StateHolder;

    return-object v0
.end method

.method private ensureUi()V
    .locals 4

    .prologue
    .line 87
    const v3, 0x7f08002d

    invoke-virtual {p0, v3}, Lcom/cymobile/ymwork/act/UserListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 88
    .local v0, leftbtn:Landroid/widget/ImageButton;
    new-instance v3, Lcom/cymobile/ymwork/act/UserListActivity$1;

    invoke-direct {v3, p0}, Lcom/cymobile/ymwork/act/UserListActivity$1;-><init>(Lcom/cymobile/ymwork/act/UserListActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    const v3, 0x7f080030

    invoke-virtual {p0, v3}, Lcom/cymobile/ymwork/act/UserListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 95
    .local v1, rightbtn:Landroid/widget/Button;
    const v3, 0x7f090049

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(I)V

    .line 96
    new-instance v3, Lcom/cymobile/ymwork/act/UserListActivity$2;

    invoke-direct {v3, p0}, Lcom/cymobile/ymwork/act/UserListActivity$2;-><init>(Lcom/cymobile/ymwork/act/UserListActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    const v3, 0x7f08002f

    invoke-virtual {p0, v3}, Lcom/cymobile/ymwork/act/UserListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 105
    .local v2, title:Landroid/widget/TextView;
    const v3, 0x7f09004b

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 106
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/UserListActivity;->ensureUiListView()V

    .line 107
    return-void
.end method

.method private ensureUiListView()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 114
    new-instance v3, Lcom/cymobile/ymwork/widget/UsersListAdapter;

    iget-object v4, p0, Lcom/cymobile/ymwork/act/UserListActivity;->mHomeApplication:Lcom/cymobile/ymwork/HomeApplication;

    invoke-virtual {v4}, Lcom/cymobile/ymwork/HomeApplication;->getRemoteResourceManager()Lcom/cymobile/ymwork/server/RemoteResourceManager;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/cymobile/ymwork/widget/UsersListAdapter;-><init>(Landroid/content/Context;Lcom/cymobile/ymwork/server/RemoteResourceManager;)V

    iput-object v3, p0, Lcom/cymobile/ymwork/act/UserListActivity;->mListAdapter:Lcom/cymobile/ymwork/widget/UsersListAdapter;

    .line 115
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/UserListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 116
    .local v2, listView:Landroid/widget/ListView;
    iget-object v3, p0, Lcom/cymobile/ymwork/act/UserListActivity;->mListAdapter:Lcom/cymobile/ymwork/widget/UsersListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 117
    invoke-virtual {v2, v7}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 118
    new-instance v3, Lcom/cymobile/ymwork/act/UserListActivity$3;

    invoke-direct {v3, p0}, Lcom/cymobile/ymwork/act/UserListActivity$3;-><init>(Lcom/cymobile/ymwork/act/UserListActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 125
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 126
    .local v1, inflater:Landroid/view/LayoutInflater;
    invoke-static {}, Lcom/cymobile/ymwork/utils/UiUtil;->sdkVersion()I

    move-result v3

    const/4 v4, 0x3

    if-le v3, v4, :cond_2

    .line 128
    const v3, 0x7f03003d

    .line 127
    invoke-virtual {v1, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ScrollView;

    iput-object v3, p0, Lcom/cymobile/ymwork/act/UserListActivity;->mLayoutEmpty:Landroid/view/ViewGroup;

    .line 130
    iget-object v3, p0, Lcom/cymobile/ymwork/act/UserListActivity;->mLayoutEmpty:Landroid/view/ViewGroup;

    .line 131
    const v4, 0x7f08010f

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 130
    check-cast v0, Landroid/widget/Button;

    .line 132
    .local v0, btnAddFriends:Landroid/widget/Button;
    new-instance v3, Lcom/cymobile/ymwork/act/UserListActivity$4;

    invoke-direct {v3, p0}, Lcom/cymobile/ymwork/act/UserListActivity$4;-><init>(Lcom/cymobile/ymwork/act/UserListActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    .end local v0           #btnAddFriends:Landroid/widget/Button;
    :goto_0
    iget-object v3, p0, Lcom/cymobile/ymwork/act/UserListActivity;->mLayoutEmpty:Landroid/view/ViewGroup;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 148
    invoke-direct {v4, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 146
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    iget-object v3, p0, Lcom/cymobile/ymwork/act/UserListActivity;->mListAdapter:Lcom/cymobile/ymwork/widget/UsersListAdapter;

    invoke-virtual {v3}, Lcom/cymobile/ymwork/widget/UsersListAdapter;->getCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 151
    iget-object v3, p0, Lcom/cymobile/ymwork/act/UserListActivity;->mLayoutEmpty:Landroid/view/ViewGroup;

    invoke-virtual {p0, v3, v5}, Lcom/cymobile/ymwork/act/UserListActivity;->setEmptyView(Landroid/view/View;Lcom/cymobile/ymwork/server/error/ServerException;)V

    .line 154
    :cond_0
    iget-object v3, p0, Lcom/cymobile/ymwork/act/UserListActivity;->mStateHolder:Lcom/cymobile/ymwork/act/UserListActivity$StateHolder;

    invoke-virtual {v3}, Lcom/cymobile/ymwork/act/UserListActivity$StateHolder;->getIsRunningTask()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 155
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/cymobile/ymwork/act/UserListActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 156
    iget-object v3, p0, Lcom/cymobile/ymwork/act/UserListActivity;->mStateHolder:Lcom/cymobile/ymwork/act/UserListActivity$StateHolder;

    invoke-virtual {v3}, Lcom/cymobile/ymwork/act/UserListActivity$StateHolder;->getRanOnce()Z

    move-result v3

    if-nez v3, :cond_1

    .line 157
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/UserListActivity;->setLoadingView()V

    .line 162
    :cond_1
    :goto_1
    return-void

    .line 143
    :cond_2
    const v3, 0x7f03003e

    .line 142
    invoke-virtual {v1, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ScrollView;

    iput-object v3, p0, Lcom/cymobile/ymwork/act/UserListActivity;->mLayoutEmpty:Landroid/view/ViewGroup;

    goto :goto_0

    .line 160
    :cond_3
    invoke-virtual {p0, v7}, Lcom/cymobile/ymwork/act/UserListActivity;->setProgressBarIndeterminateVisibility(Z)V

    goto :goto_1
.end method

.method private onRefreshTaskStart()V
    .locals 1

    .prologue
    .line 344
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/UserListActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 345
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/UserListActivity;->setLoadingView()V

    .line 346
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
            "Lcom/cymobile/ymwork/types/User;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, users:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/User;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 349
    iget-object v1, p0, Lcom/cymobile/ymwork/act/UserListActivity;->mStateHolder:Lcom/cymobile/ymwork/act/UserListActivity$StateHolder;

    invoke-virtual {v1, v3}, Lcom/cymobile/ymwork/act/UserListActivity$StateHolder;->setRanOnce(Z)V

    .line 350
    iget-object v1, p0, Lcom/cymobile/ymwork/act/UserListActivity;->mStateHolder:Lcom/cymobile/ymwork/act/UserListActivity$StateHolder;

    invoke-virtual {v1, v2}, Lcom/cymobile/ymwork/act/UserListActivity$StateHolder;->setIsRunningTask(Z)V

    .line 351
    invoke-virtual {p0, v2}, Lcom/cymobile/ymwork/act/UserListActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 354
    iget-object v1, p0, Lcom/cymobile/ymwork/act/UserListActivity;->mListAdapter:Lcom/cymobile/ymwork/widget/UsersListAdapter;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/widget/UsersListAdapter;->removeObserver()V

    .line 355
    new-instance v1, Lcom/cymobile/ymwork/widget/UsersListAdapter;

    iget-object v2, p0, Lcom/cymobile/ymwork/act/UserListActivity;->mHomeApplication:Lcom/cymobile/ymwork/HomeApplication;

    invoke-virtual {v2}, Lcom/cymobile/ymwork/HomeApplication;->getRemoteResourceManager()Lcom/cymobile/ymwork/server/RemoteResourceManager;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/cymobile/ymwork/widget/UsersListAdapter;-><init>(Landroid/content/Context;Lcom/cymobile/ymwork/server/RemoteResourceManager;)V

    iput-object v1, p0, Lcom/cymobile/ymwork/act/UserListActivity;->mListAdapter:Lcom/cymobile/ymwork/widget/UsersListAdapter;

    .line 357
    if-eqz p1, :cond_1

    .line 358
    iget-object v1, p0, Lcom/cymobile/ymwork/act/UserListActivity;->mStateHolder:Lcom/cymobile/ymwork/act/UserListActivity$StateHolder;

    invoke-virtual {v1, p1}, Lcom/cymobile/ymwork/act/UserListActivity$StateHolder;->setUsers(Lcom/cymobile/ymwork/types/Group;)V

    .line 364
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/UserListActivity;->mStateHolder:Lcom/cymobile/ymwork/act/UserListActivity$StateHolder;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/UserListActivity$StateHolder;->getUsers()Lcom/cymobile/ymwork/types/Group;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 365
    iget-object v1, p0, Lcom/cymobile/ymwork/act/UserListActivity;->mLayoutEmpty:Landroid/view/ViewGroup;

    new-instance v2, Lcom/cymobile/ymwork/server/error/ServerException;

    const-string v3, ""

    const-string v4, ""

    .line 366
    const/16 v5, 0x14

    invoke-direct {v2, v3, v4, v5}, Lcom/cymobile/ymwork/server/error/ServerException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 365
    invoke-virtual {p0, v1, v2}, Lcom/cymobile/ymwork/act/UserListActivity;->setEmptyView(Landroid/view/View;Lcom/cymobile/ymwork/server/error/ServerException;)V

    .line 375
    :goto_1
    return-void

    .line 359
    :cond_1
    if-eqz p2, :cond_0

    .line 360
    iget-object v1, p0, Lcom/cymobile/ymwork/act/UserListActivity;->mStateHolder:Lcom/cymobile/ymwork/act/UserListActivity$StateHolder;

    new-instance v2, Lcom/cymobile/ymwork/types/Group;

    invoke-direct {v2}, Lcom/cymobile/ymwork/types/Group;-><init>()V

    invoke-virtual {v1, v2}, Lcom/cymobile/ymwork/act/UserListActivity$StateHolder;->setUsers(Lcom/cymobile/ymwork/types/Group;)V

    .line 361
    invoke-static {p0, p2}, Lcom/cymobile/ymwork/utils/NotificationsUtil;->ToastReasonForFailure(Landroid/content/Context;Ljava/lang/Exception;)V

    goto :goto_0

    .line 368
    :cond_2
    const v1, 0x7f0800c1

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/UserListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 369
    .local v0, loadableListHolder:Landroid/widget/LinearLayout;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 371
    iget-object v1, p0, Lcom/cymobile/ymwork/act/UserListActivity;->mStateHolder:Lcom/cymobile/ymwork/act/UserListActivity$StateHolder;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/UserListActivity$StateHolder;->getUsers()Lcom/cymobile/ymwork/types/Group;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/cymobile/ymwork/act/UserListActivity;->setAdapter(Lcom/cymobile/ymwork/types/Group;)V

    .line 372
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/UserListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/cymobile/ymwork/act/UserListActivity;->mListAdapter:Lcom/cymobile/ymwork/widget/UsersListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 373
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/UserListActivity;->getListView()Landroid/widget/ListView;

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
            "Lcom/cymobile/ymwork/types/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 377
    .local p1, users:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/User;>;"
    invoke-virtual {p1}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/cymobile/ymwork/act/UserListActivity;->mListAdapter:Lcom/cymobile/ymwork/widget/UsersListAdapter;

    invoke-virtual {v0, p1}, Lcom/cymobile/ymwork/widget/UsersListAdapter;->setGroup(Lcom/cymobile/ymwork/types/Group;)V

    .line 380
    :cond_0
    return-void
.end method


# virtual methods
.method public addUser(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 382
    const-string v0, "UserListActivity"

    const-string v1, "add user"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/cymobile/ymwork/widget/FragmentListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/UserListActivity;->requestWindowFeature(I)Z

    .line 58
    const-class v1, Lcom/cymobile/ymwork/SettingBase;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 59
    const/4 v2, 0x2

    .line 58
    invoke-virtual {p0, v1, v2}, Lcom/cymobile/ymwork/act/UserListActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/cymobile/ymwork/act/UserListActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 60
    sput-object p0, Lcom/cymobile/ymwork/act/UserListActivity;->contexts:Landroid/content/Context;

    .line 61
    iget-object v1, p0, Lcom/cymobile/ymwork/act/UserListActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "Pref_key_GlobalIsAdmin"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 62
    .local v0, isAdmin:Z
    if-nez v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/UserListActivity;->finish()V

    .line 77
    :goto_0
    return-void

    .line 66
    :cond_0
    const v1, 0x7f030046

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/UserListActivity;->setContentView(I)V

    .line 67
    iget-object v1, p0, Lcom/cymobile/ymwork/act/UserListActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "key_GlobalZoneId"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cymobile/ymwork/act/UserListActivity;->zoneCode:Ljava/lang/String;

    .line 68
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/UserListActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 69
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/UserListActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/act/UserListActivity$StateHolder;

    iput-object v1, p0, Lcom/cymobile/ymwork/act/UserListActivity;->mStateHolder:Lcom/cymobile/ymwork/act/UserListActivity$StateHolder;

    .line 70
    iget-object v1, p0, Lcom/cymobile/ymwork/act/UserListActivity;->mStateHolder:Lcom/cymobile/ymwork/act/UserListActivity$StateHolder;

    invoke-virtual {v1, p0}, Lcom/cymobile/ymwork/act/UserListActivity$StateHolder;->setActivity(Lcom/cymobile/ymwork/act/UserListActivity;)V

    .line 74
    :goto_1
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/UserListActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/HomeApplication;

    iput-object v1, p0, Lcom/cymobile/ymwork/act/UserListActivity;->mHomeApplication:Lcom/cymobile/ymwork/HomeApplication;

    .line 75
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/UserListActivity;->ensureUi()V

    goto :goto_0

    .line 72
    :cond_1
    new-instance v1, Lcom/cymobile/ymwork/act/UserListActivity$StateHolder;

    invoke-direct {v1, p0}, Lcom/cymobile/ymwork/act/UserListActivity$StateHolder;-><init>(Lcom/cymobile/ymwork/act/UserListActivity;)V

    iput-object v1, p0, Lcom/cymobile/ymwork/act/UserListActivity;->mStateHolder:Lcom/cymobile/ymwork/act/UserListActivity$StateHolder;

    goto :goto_1
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Lcom/cymobile/ymwork/widget/FragmentListActivity;->onResume()V

    .line 82
    iget-object v0, p0, Lcom/cymobile/ymwork/act/UserListActivity;->mStateHolder:Lcom/cymobile/ymwork/act/UserListActivity$StateHolder;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/UserListActivity$StateHolder;->getRanOnce()Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/cymobile/ymwork/act/UserListActivity;->mStateHolder:Lcom/cymobile/ymwork/act/UserListActivity$StateHolder;

    invoke-virtual {v0, p0}, Lcom/cymobile/ymwork/act/UserListActivity$StateHolder;->startTask(Lcom/cymobile/ymwork/act/UserListActivity;)V

    .line 85
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

    .line 166
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 167
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v5, v5, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_0

    .line 168
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-virtual {v5, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :cond_0
    :goto_0
    const v5, 0x7f0800c1

    invoke-virtual {p0, v5}, Lcom/cymobile/ymwork/act/UserListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 174
    .local v2, parent:Landroid/widget/LinearLayout;
    if-eqz v2, :cond_1

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 175
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 178
    :cond_1
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-le v5, v7, :cond_2

    .line 179
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 181
    :cond_2
    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 182
    const v5, 0x7f08010e

    invoke-virtual {p0, v5}, Lcom/cymobile/ymwork/act/UserListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 183
    .local v4, text:Landroid/widget/TextView;
    const v5, 0x7f08010f

    invoke-virtual {p0, v5}, Lcom/cymobile/ymwork/act/UserListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 184
    .local v3, refresh:Landroid/widget/Button;
    const v5, 0x7f080110

    invoke-virtual {p0, v5}, Lcom/cymobile/ymwork/act/UserListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 185
    .local v0, cancel:Landroid/widget/Button;
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/cymobile/ymwork/server/error/ServerException;->getErrorCode()I

    move-result v5

    if-lez v5, :cond_3

    .line 186
    invoke-virtual {p2}, Lcom/cymobile/ymwork/server/error/ServerException;->getErrorCode()I

    move-result v5

    const/16 v6, 0x19

    if-ne v5, v6, :cond_4

    .line 187
    const v5, 0x7f09004f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 192
    :cond_3
    :goto_1
    new-instance v5, Lcom/cymobile/ymwork/act/UserListActivity$5;

    invoke-direct {v5, p0}, Lcom/cymobile/ymwork/act/UserListActivity$5;-><init>(Lcom/cymobile/ymwork/act/UserListActivity;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    new-instance v5, Lcom/cymobile/ymwork/act/UserListActivity$6;

    invoke-direct {v5, p0}, Lcom/cymobile/ymwork/act/UserListActivity$6;-><init>(Lcom/cymobile/ymwork/act/UserListActivity;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    return-void

    .line 170
    .end local v0           #cancel:Landroid/widget/Button;
    .end local v2           #parent:Landroid/widget/LinearLayout;
    .end local v3           #refresh:Landroid/widget/Button;
    .end local v4           #text:Landroid/widget/TextView;
    :catch_0
    move-exception v1

    .line 171
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 188
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

    .line 189
    const v5, 0x7f09004e

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method public setLoadingView()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 209
    const v1, 0x7f0800c1

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/UserListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 211
    .local v0, parent:Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-le v1, v3, :cond_0

    .line 212
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 214
    :cond_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 215
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 217
    :cond_1
    return-void
.end method
