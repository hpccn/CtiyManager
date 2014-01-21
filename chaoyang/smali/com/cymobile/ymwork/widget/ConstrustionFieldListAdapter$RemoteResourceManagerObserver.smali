.class Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter$RemoteResourceManagerObserver;
.super Ljava/lang/Object;
.source "ConstrustionFieldListAdapter.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteResourceManagerObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;


# direct methods
.method private constructor <init>(Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 296
    iput-object p1, p0, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter$RemoteResourceManagerObserver;->this$0:Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter$RemoteResourceManagerObserver;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 296
    invoke-direct {p0, p1}, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter$RemoteResourceManagerObserver;-><init>(Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;)V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2
    .parameter "observable"
    .parameter "data"

    .prologue
    .line 299
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter$RemoteResourceManagerObserver;->this$0:Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;

    #getter for: Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;->access$3(Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter$RemoteResourceManagerObserver;->this$0:Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;

    #getter for: Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;->mUpdatePhotos:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;->access$4(Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 300
    return-void
.end method
