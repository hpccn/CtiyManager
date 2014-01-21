.class public Lcom/cymobile/ymwork/widget/ReplyListAdapter;
.super Lcom/cymobile/ymwork/widget/BaseReplyAdapter;
.source "ReplyListAdapter.java"

# interfaces
.implements Lcom/cymobile/ymwork/widget/ObservableAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cymobile/ymwork/widget/ReplyListAdapter$RemoteResourceManagerObserver;,
        Lcom/cymobile/ymwork/widget/ReplyListAdapter$ShopCoverFetcher;,
        Lcom/cymobile/ymwork/widget/ReplyListAdapter$ViewHolder;
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

.field private mResourcesObserver:Lcom/cymobile/ymwork/widget/ReplyListAdapter$RemoteResourceManagerObserver;

.field private mRrm:Lcom/cymobile/ymwork/server/RemoteResourceManager;

.field private mUpdatePhotos:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/cymobile/ymwork/server/RemoteResourceManager;)V
    .locals 2
    .parameter "context"
    .parameter "rrm"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/cymobile/ymwork/widget/BaseReplyAdapter;-><init>(Landroid/content/Context;)V

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/ReplyListAdapter;->mHandler:Landroid/os/Handler;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/ReplyListAdapter;->ImageFetchFailRecord:Ljava/util/HashMap;

    .line 130
    new-instance v0, Lcom/cymobile/ymwork/widget/ReplyListAdapter$1;

    invoke-direct {v0, p0}, Lcom/cymobile/ymwork/widget/ReplyListAdapter$1;-><init>(Lcom/cymobile/ymwork/widget/ReplyListAdapter;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/ReplyListAdapter;->mUpdatePhotos:Ljava/lang/Runnable;

    .line 41
    iput-object p1, p0, Lcom/cymobile/ymwork/widget/ReplyListAdapter;->mContext:Landroid/content/Context;

    .line 42
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/ReplyListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 43
    iput-object p2, p0, Lcom/cymobile/ymwork/widget/ReplyListAdapter;->mRrm:Lcom/cymobile/ymwork/server/RemoteResourceManager;

    .line 44
    new-instance v0, Lcom/cymobile/ymwork/widget/ReplyListAdapter$RemoteResourceManagerObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cymobile/ymwork/widget/ReplyListAdapter$RemoteResourceManagerObserver;-><init>(Lcom/cymobile/ymwork/widget/ReplyListAdapter;Lcom/cymobile/ymwork/widget/ReplyListAdapter$RemoteResourceManagerObserver;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/ReplyListAdapter;->mResourcesObserver:Lcom/cymobile/ymwork/widget/ReplyListAdapter$RemoteResourceManagerObserver;

    .line 46
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ReplyListAdapter;->mRrm:Lcom/cymobile/ymwork/server/RemoteResourceManager;

    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ReplyListAdapter;->mResourcesObserver:Lcom/cymobile/ymwork/widget/ReplyListAdapter$RemoteResourceManagerObserver;

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/server/RemoteResourceManager;->addObserver(Ljava/util/Observer;)V

    .line 48
    invoke-static {}, Lcom/cymobile/ymwork/utils/UiUtil;->sdkVersion()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/cymobile/ymwork/widget/ReplyListAdapter;->mIsSdk3:Z

    .line 49
    return-void

    .line 48
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/cymobile/ymwork/widget/ReplyListAdapter;)Lcom/cymobile/ymwork/server/RemoteResourceManager;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ReplyListAdapter;->mRrm:Lcom/cymobile/ymwork/server/RemoteResourceManager;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cymobile/ymwork/widget/ReplyListAdapter;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ReplyListAdapter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Lcom/cymobile/ymwork/widget/ReplyListAdapter;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ReplyListAdapter;->mUpdatePhotos:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v7, 0x0

    .line 64
    if-nez p2, :cond_1

    .line 65
    iget-object v5, p0, Lcom/cymobile/ymwork/widget/ReplyListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f030019

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 69
    new-instance v3, Lcom/cymobile/ymwork/widget/ReplyListAdapter$ViewHolder;

    invoke-direct {v3, v7}, Lcom/cymobile/ymwork/widget/ReplyListAdapter$ViewHolder;-><init>(Lcom/cymobile/ymwork/widget/ReplyListAdapter$ViewHolder;)V

    .line 70
    .local v3, holder:Lcom/cymobile/ymwork/widget/ReplyListAdapter$ViewHolder;
    const v5, 0x7f080056

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v3, Lcom/cymobile/ymwork/widget/ReplyListAdapter$ViewHolder;->firstLine:Landroid/widget/TextView;

    .line 71
    const v5, 0x7f080057

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v3, Lcom/cymobile/ymwork/widget/ReplyListAdapter$ViewHolder;->secondLine:Landroid/widget/TextView;

    .line 73
    const v5, 0x7f080059

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v3, Lcom/cymobile/ymwork/widget/ReplyListAdapter$ViewHolder;->thirdLine2:Landroid/widget/TextView;

    .line 74
    const v5, 0x7f08005a

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v3, Lcom/cymobile/ymwork/widget/ReplyListAdapter$ViewHolder;->thirdLine21:Landroid/widget/TextView;

    .line 77
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 82
    :goto_0
    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/widget/ReplyListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cymobile/ymwork/types/Reply;

    .line 83
    .local v4, reply:Lcom/cymobile/ymwork/types/Reply;
    if-eqz v4, :cond_0

    .line 84
    iget-object v5, v3, Lcom/cymobile/ymwork/widget/ReplyListAdapter$ViewHolder;->firstLine:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/cymobile/ymwork/types/Reply;->getQulingdaopishi()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 87
    .local v0, currentDate:Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    .line 88
    .local v1, currentDateLong:J
    iget-object v5, v3, Lcom/cymobile/ymwork/widget/ReplyListAdapter$ViewHolder;->secondLine:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/cymobile/ymwork/widget/ReplyListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0900b5

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/cymobile/ymwork/widget/ReplyListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Lcom/cymobile/ymwork/types/Reply;->getReplyTime()J

    move-result-wide v8

    const-wide/32 v10, 0x1b77400

    sub-long/2addr v8, v10

    invoke-static {v7, v8, v9}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v5, v3, Lcom/cymobile/ymwork/widget/ReplyListAdapter$ViewHolder;->thirdLine2:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/cymobile/ymwork/types/Reply;->getQulingdaodetail()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v5, v3, Lcom/cymobile/ymwork/widget/ReplyListAdapter$ViewHolder;->thirdLine21:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/cymobile/ymwork/types/Reply;->getQulingdaodesc()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    .end local v0           #currentDate:Ljava/util/Date;
    .end local v1           #currentDateLong:J
    :cond_0
    return-object p2

    .line 80
    .end local v3           #holder:Lcom/cymobile/ymwork/widget/ReplyListAdapter$ViewHolder;
    .end local v4           #reply:Lcom/cymobile/ymwork/types/Reply;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cymobile/ymwork/widget/ReplyListAdapter$ViewHolder;

    .restart local v3       #holder:Lcom/cymobile/ymwork/widget/ReplyListAdapter$ViewHolder;
    goto :goto_0
.end method

.method public removeObserver()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ReplyListAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ReplyListAdapter;->mUpdatePhotos:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 53
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ReplyListAdapter;->mRrm:Lcom/cymobile/ymwork/server/RemoteResourceManager;

    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ReplyListAdapter;->mResourcesObserver:Lcom/cymobile/ymwork/widget/ReplyListAdapter$RemoteResourceManagerObserver;

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/server/RemoteResourceManager;->deleteObserver(Ljava/util/Observer;)V

    .line 54
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
            "Lcom/cymobile/ymwork/types/Reply;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, g:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/Reply;>;"
    invoke-super {p0, p1}, Lcom/cymobile/ymwork/widget/BaseReplyAdapter;->setGroup(Lcom/cymobile/ymwork/types/Group;)V

    .line 119
    invoke-virtual {p1}, Lcom/cymobile/ymwork/types/Group;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    return-void

    .line 119
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cymobile/ymwork/types/Reply;

    goto :goto_0
.end method
