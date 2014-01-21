.class Lcom/cymobile/ymwork/widget/UsersListAdapter$RemoteResourceManagerObserver;
.super Ljava/lang/Object;
.source "UsersListAdapter.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/widget/UsersListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteResourceManagerObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/widget/UsersListAdapter;


# direct methods
.method private constructor <init>(Lcom/cymobile/ymwork/widget/UsersListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/cymobile/ymwork/widget/UsersListAdapter$RemoteResourceManagerObserver;->this$0:Lcom/cymobile/ymwork/widget/UsersListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cymobile/ymwork/widget/UsersListAdapter;Lcom/cymobile/ymwork/widget/UsersListAdapter$RemoteResourceManagerObserver;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/cymobile/ymwork/widget/UsersListAdapter$RemoteResourceManagerObserver;-><init>(Lcom/cymobile/ymwork/widget/UsersListAdapter;)V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2
    .parameter "observable"
    .parameter "data"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/UsersListAdapter$RemoteResourceManagerObserver;->this$0:Lcom/cymobile/ymwork/widget/UsersListAdapter;

    #getter for: Lcom/cymobile/ymwork/widget/UsersListAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/cymobile/ymwork/widget/UsersListAdapter;->access$1(Lcom/cymobile/ymwork/widget/UsersListAdapter;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/cymobile/ymwork/widget/UsersListAdapter$RemoteResourceManagerObserver;->this$0:Lcom/cymobile/ymwork/widget/UsersListAdapter;

    #getter for: Lcom/cymobile/ymwork/widget/UsersListAdapter;->mUpdatePhotos:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/cymobile/ymwork/widget/UsersListAdapter;->access$2(Lcom/cymobile/ymwork/widget/UsersListAdapter;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 121
    return-void
.end method
