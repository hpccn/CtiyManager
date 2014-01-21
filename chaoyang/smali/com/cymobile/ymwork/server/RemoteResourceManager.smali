.class public Lcom/cymobile/ymwork/server/RemoteResourceManager;
.super Ljava/util/Observable;
.source "RemoteResourceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cymobile/ymwork/server/RemoteResourceManager$FetcherObserver;,
        Lcom/cymobile/ymwork/server/RemoteResourceManager$ResourceRequestObserver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "RemoteResourceManager"


# instance fields
.field private mDiskCache:Lcom/cymobile/ymwork/server/DiskCache;

.field private mFetcherObserver:Lcom/cymobile/ymwork/server/RemoteResourceManager$FetcherObserver;

.field private mRemoteResourceFetcher:Lcom/cymobile/ymwork/server/RemoteResourceFetcher;


# direct methods
.method public constructor <init>(Lcom/cymobile/ymwork/server/DiskCache;)V
    .locals 2
    .parameter "cache"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 18
    new-instance v0, Lcom/cymobile/ymwork/server/RemoteResourceManager$FetcherObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cymobile/ymwork/server/RemoteResourceManager$FetcherObserver;-><init>(Lcom/cymobile/ymwork/server/RemoteResourceManager;Lcom/cymobile/ymwork/server/RemoteResourceManager$FetcherObserver;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/server/RemoteResourceManager;->mFetcherObserver:Lcom/cymobile/ymwork/server/RemoteResourceManager$FetcherObserver;

    .line 25
    iput-object p1, p0, Lcom/cymobile/ymwork/server/RemoteResourceManager;->mDiskCache:Lcom/cymobile/ymwork/server/DiskCache;

    .line 26
    new-instance v0, Lcom/cymobile/ymwork/server/RemoteResourceFetcher;

    iget-object v1, p0, Lcom/cymobile/ymwork/server/RemoteResourceManager;->mDiskCache:Lcom/cymobile/ymwork/server/DiskCache;

    invoke-direct {v0, v1}, Lcom/cymobile/ymwork/server/RemoteResourceFetcher;-><init>(Lcom/cymobile/ymwork/server/DiskCache;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/server/RemoteResourceManager;->mRemoteResourceFetcher:Lcom/cymobile/ymwork/server/RemoteResourceFetcher;

    .line 27
    iget-object v0, p0, Lcom/cymobile/ymwork/server/RemoteResourceManager;->mRemoteResourceFetcher:Lcom/cymobile/ymwork/server/RemoteResourceFetcher;

    iget-object v1, p0, Lcom/cymobile/ymwork/server/RemoteResourceManager;->mFetcherObserver:Lcom/cymobile/ymwork/server/RemoteResourceManager$FetcherObserver;

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/server/RemoteResourceFetcher;->addObserver(Ljava/util/Observer;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "cacheName"

    .prologue
    .line 21
    new-instance v0, Lcom/cymobile/ymwork/server/BaseDiskCache;

    const-string v1, "com.cymobile.ymwork"

    invoke-direct {v0, v1, p1}, Lcom/cymobile/ymwork/server/BaseDiskCache;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/cymobile/ymwork/server/RemoteResourceManager;-><init>(Lcom/cymobile/ymwork/server/DiskCache;)V

    .line 22
    return-void
.end method

.method static synthetic access$0(Lcom/cymobile/ymwork/server/RemoteResourceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/cymobile/ymwork/server/RemoteResourceManager;->setChanged()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/cymobile/ymwork/server/RemoteResourceManager;->mRemoteResourceFetcher:Lcom/cymobile/ymwork/server/RemoteResourceFetcher;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/server/RemoteResourceFetcher;->shutdown()V

    .line 88
    iget-object v0, p0, Lcom/cymobile/ymwork/server/RemoteResourceManager;->mDiskCache:Lcom/cymobile/ymwork/server/DiskCache;

    invoke-interface {v0}, Lcom/cymobile/ymwork/server/DiskCache;->clear()V

    .line 89
    return-void
.end method

.method public exists(Landroid/net/Uri;)Z
    .locals 2
    .parameter "uri"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/cymobile/ymwork/server/RemoteResourceManager;->mDiskCache:Lcom/cymobile/ymwork/server/DiskCache;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/cymobile/ymwork/server/DiskCache;->exists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getFile(Landroid/net/Uri;)Ljava/io/File;
    .locals 2
    .parameter "uri"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/cymobile/ymwork/server/RemoteResourceManager;->mDiskCache:Lcom/cymobile/ymwork/server/DiskCache;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/cymobile/ymwork/server/DiskCache;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 2
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/cymobile/ymwork/server/RemoteResourceManager;->mDiskCache:Lcom/cymobile/ymwork/server/DiskCache;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/cymobile/ymwork/server/DiskCache;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public invalidate(Landroid/net/Uri;)V
    .locals 2
    .parameter "uri"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/cymobile/ymwork/server/RemoteResourceManager;->mDiskCache:Lcom/cymobile/ymwork/server/DiskCache;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/cymobile/ymwork/server/DiskCache;->invalidate(Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public request(Landroid/net/Uri;)V
    .locals 2
    .parameter "uri"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/cymobile/ymwork/server/RemoteResourceManager;->mRemoteResourceFetcher:Lcom/cymobile/ymwork/server/RemoteResourceFetcher;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/cymobile/ymwork/server/RemoteResourceFetcher;->fetch(Landroid/net/Uri;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 71
    return-void
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/cymobile/ymwork/server/RemoteResourceManager;->mRemoteResourceFetcher:Lcom/cymobile/ymwork/server/RemoteResourceFetcher;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/server/RemoteResourceFetcher;->shutdown()V

    .line 83
    iget-object v0, p0, Lcom/cymobile/ymwork/server/RemoteResourceManager;->mDiskCache:Lcom/cymobile/ymwork/server/DiskCache;

    invoke-interface {v0}, Lcom/cymobile/ymwork/server/DiskCache;->cleanup()V

    .line 84
    return-void
.end method
