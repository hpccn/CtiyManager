.class public Lcom/cymobile/ymwork/widget/UsersListAdapter;
.super Lcom/cymobile/ymwork/widget/BaseUsersAdapter;
.source "UsersListAdapter.java"

# interfaces
.implements Lcom/cymobile/ymwork/widget/ObservableAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cymobile/ymwork/widget/UsersListAdapter$RemoteResourceManagerObserver;,
        Lcom/cymobile/ymwork/widget/UsersListAdapter$ShopCoverFetcher;,
        Lcom/cymobile/ymwork/widget/UsersListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field ImageFetchFailRecord:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsSdk3:Z

.field private mResourcesObserver:Lcom/cymobile/ymwork/widget/UsersListAdapter$RemoteResourceManagerObserver;

.field private mRrm:Lcom/cymobile/ymwork/server/RemoteResourceManager;

.field private mUpdatePhotos:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/cymobile/ymwork/server/RemoteResourceManager;)V
    .locals 2
    .parameter "context"
    .parameter "rrm"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/cymobile/ymwork/widget/BaseUsersAdapter;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/UsersListAdapter;->mHandler:Landroid/os/Handler;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/UsersListAdapter;->ImageFetchFailRecord:Ljava/util/HashMap;

    .line 124
    new-instance v0, Lcom/cymobile/ymwork/widget/UsersListAdapter$1;

    invoke-direct {v0, p0}, Lcom/cymobile/ymwork/widget/UsersListAdapter$1;-><init>(Lcom/cymobile/ymwork/widget/UsersListAdapter;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/UsersListAdapter;->mUpdatePhotos:Ljava/lang/Runnable;

    .line 39
    iput-object p1, p0, Lcom/cymobile/ymwork/widget/UsersListAdapter;->mContext:Landroid/content/Context;

    .line 40
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/UsersListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 41
    iput-object p2, p0, Lcom/cymobile/ymwork/widget/UsersListAdapter;->mRrm:Lcom/cymobile/ymwork/server/RemoteResourceManager;

    .line 42
    new-instance v0, Lcom/cymobile/ymwork/widget/UsersListAdapter$RemoteResourceManagerObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cymobile/ymwork/widget/UsersListAdapter$RemoteResourceManagerObserver;-><init>(Lcom/cymobile/ymwork/widget/UsersListAdapter;Lcom/cymobile/ymwork/widget/UsersListAdapter$RemoteResourceManagerObserver;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/UsersListAdapter;->mResourcesObserver:Lcom/cymobile/ymwork/widget/UsersListAdapter$RemoteResourceManagerObserver;

    .line 44
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/UsersListAdapter;->mRrm:Lcom/cymobile/ymwork/server/RemoteResourceManager;

    iget-object v1, p0, Lcom/cymobile/ymwork/widget/UsersListAdapter;->mResourcesObserver:Lcom/cymobile/ymwork/widget/UsersListAdapter$RemoteResourceManagerObserver;

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/server/RemoteResourceManager;->addObserver(Ljava/util/Observer;)V

    .line 46
    invoke-static {}, Lcom/cymobile/ymwork/utils/UiUtil;->sdkVersion()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/cymobile/ymwork/widget/UsersListAdapter;->mIsSdk3:Z

    .line 47
    return-void

    .line 46
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/cymobile/ymwork/widget/UsersListAdapter;)Lcom/cymobile/ymwork/server/RemoteResourceManager;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/UsersListAdapter;->mRrm:Lcom/cymobile/ymwork/server/RemoteResourceManager;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cymobile/ymwork/widget/UsersListAdapter;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/UsersListAdapter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Lcom/cymobile/ymwork/widget/UsersListAdapter;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 124
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/UsersListAdapter;->mUpdatePhotos:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    .line 62
    if-nez p2, :cond_1

    .line 63
    iget-object v2, p0, Lcom/cymobile/ymwork/widget/UsersListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03001b

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 67
    new-instance v0, Lcom/cymobile/ymwork/widget/UsersListAdapter$ViewHolder;

    invoke-direct {v0, v4}, Lcom/cymobile/ymwork/widget/UsersListAdapter$ViewHolder;-><init>(Lcom/cymobile/ymwork/widget/UsersListAdapter$ViewHolder;)V

    .line 68
    .local v0, holder:Lcom/cymobile/ymwork/widget/UsersListAdapter$ViewHolder;
    const v2, 0x7f080056

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/cymobile/ymwork/widget/UsersListAdapter$ViewHolder;->firstLine:Landroid/widget/TextView;

    .line 69
    const v2, 0x7f080057

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/cymobile/ymwork/widget/UsersListAdapter$ViewHolder;->secondLine:Landroid/widget/TextView;

    .line 71
    const v2, 0x7f080059

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/cymobile/ymwork/widget/UsersListAdapter$ViewHolder;->thirdLine2:Landroid/widget/TextView;

    .line 72
    const v2, 0x7f08005a

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/cymobile/ymwork/widget/UsersListAdapter$ViewHolder;->thirdLine21:Landroid/widget/TextView;

    .line 75
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 80
    :goto_0
    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/widget/UsersListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/types/User;

    .line 81
    .local v1, user:Lcom/cymobile/ymwork/types/User;
    if-eqz v1, :cond_0

    .line 82
    iget-object v2, v0, Lcom/cymobile/ymwork/widget/UsersListAdapter$ViewHolder;->firstLine:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/User;->getUserName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v3, v0, Lcom/cymobile/ymwork/widget/UsersListAdapter$ViewHolder;->secondLine:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/User;->isAdmin()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "\u7ba1\u7406\u5458"

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v2, v0, Lcom/cymobile/ymwork/widget/UsersListAdapter$ViewHolder;->thirdLine2:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/cymobile/ymwork/widget/UsersListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090050

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/User;->getMobile()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v2, v0, Lcom/cymobile/ymwork/widget/UsersListAdapter$ViewHolder;->thirdLine21:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/User;->getZoneName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    :cond_0
    return-object p2

    .line 78
    .end local v0           #holder:Lcom/cymobile/ymwork/widget/UsersListAdapter$ViewHolder;
    .end local v1           #user:Lcom/cymobile/ymwork/types/User;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cymobile/ymwork/widget/UsersListAdapter$ViewHolder;

    .restart local v0       #holder:Lcom/cymobile/ymwork/widget/UsersListAdapter$ViewHolder;
    goto :goto_0

    .line 83
    .restart local v1       #user:Lcom/cymobile/ymwork/types/User;
    :cond_2
    const-string v2, ""

    goto :goto_1
.end method

.method public removeObserver()V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/UsersListAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/cymobile/ymwork/widget/UsersListAdapter;->mUpdatePhotos:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 51
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/UsersListAdapter;->mRrm:Lcom/cymobile/ymwork/server/RemoteResourceManager;

    iget-object v1, p0, Lcom/cymobile/ymwork/widget/UsersListAdapter;->mResourcesObserver:Lcom/cymobile/ymwork/widget/UsersListAdapter$RemoteResourceManagerObserver;

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/server/RemoteResourceManager;->deleteObserver(Ljava/util/Observer;)V

    .line 52
    return-void
.end method

.method public setGroup(Lcom/cymobile/ymwork/types/Group;)V
    .locals 2
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
    .line 112
    .local p1, g:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/User;>;"
    invoke-super {p0, p1}, Lcom/cymobile/ymwork/widget/BaseUsersAdapter;->setGroup(Lcom/cymobile/ymwork/types/Group;)V

    .line 113
    invoke-virtual {p1}, Lcom/cymobile/ymwork/types/Group;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    return-void

    .line 113
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cymobile/ymwork/types/User;

    goto :goto_0
.end method
