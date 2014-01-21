.class Lcom/cymobile/ymwork/server/RemoteResourceManager$FetcherObserver;
.super Ljava/lang/Object;
.source "RemoteResourceManager.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/server/RemoteResourceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FetcherObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/server/RemoteResourceManager;


# direct methods
.method private constructor <init>(Lcom/cymobile/ymwork/server/RemoteResourceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/cymobile/ymwork/server/RemoteResourceManager$FetcherObserver;->this$0:Lcom/cymobile/ymwork/server/RemoteResourceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cymobile/ymwork/server/RemoteResourceManager;Lcom/cymobile/ymwork/server/RemoteResourceManager$FetcherObserver;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/cymobile/ymwork/server/RemoteResourceManager$FetcherObserver;-><init>(Lcom/cymobile/ymwork/server/RemoteResourceManager;)V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1
    .parameter "observable"
    .parameter "data"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/cymobile/ymwork/server/RemoteResourceManager$FetcherObserver;->this$0:Lcom/cymobile/ymwork/server/RemoteResourceManager;

    #calls: Lcom/cymobile/ymwork/server/RemoteResourceManager;->setChanged()V
    invoke-static {v0}, Lcom/cymobile/ymwork/server/RemoteResourceManager;->access$0(Lcom/cymobile/ymwork/server/RemoteResourceManager;)V

    .line 118
    iget-object v0, p0, Lcom/cymobile/ymwork/server/RemoteResourceManager$FetcherObserver;->this$0:Lcom/cymobile/ymwork/server/RemoteResourceManager;

    invoke-virtual {v0, p2}, Lcom/cymobile/ymwork/server/RemoteResourceManager;->notifyObservers(Ljava/lang/Object;)V

    .line 119
    return-void
.end method
