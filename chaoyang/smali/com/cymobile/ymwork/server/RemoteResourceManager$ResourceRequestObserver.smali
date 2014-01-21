.class public abstract Lcom/cymobile/ymwork/server/RemoteResourceManager$ResourceRequestObserver;
.super Ljava/lang/Object;
.source "RemoteResourceManager.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/server/RemoteResourceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ResourceRequestObserver"
.end annotation


# instance fields
.field private mRequestUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 0
    .parameter "requestUri"

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/cymobile/ymwork/server/RemoteResourceManager$ResourceRequestObserver;->mRequestUri:Landroid/net/Uri;

    .line 99
    return-void
.end method


# virtual methods
.method public abstract requestReceived(Ljava/util/Observable;Landroid/net/Uri;)V
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2
    .parameter "observable"
    .parameter "data"

    .prologue
    .line 103
    move-object v0, p2

    check-cast v0, Landroid/net/Uri;

    .line 104
    .local v0, dataUri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/cymobile/ymwork/server/RemoteResourceManager$ResourceRequestObserver;->mRequestUri:Landroid/net/Uri;

    if-ne v0, v1, :cond_0

    .line 106
    invoke-virtual {p0, p1, v0}, Lcom/cymobile/ymwork/server/RemoteResourceManager$ResourceRequestObserver;->requestReceived(Ljava/util/Observable;Landroid/net/Uri;)V

    .line 108
    :cond_0
    return-void
.end method
