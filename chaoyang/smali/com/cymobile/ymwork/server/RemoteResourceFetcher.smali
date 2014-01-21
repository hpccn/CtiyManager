.class public Lcom/cymobile/ymwork/server/RemoteResourceFetcher;
.super Ljava/util/Observable;
.source "RemoteResourceFetcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cymobile/ymwork/server/RemoteResourceFetcher$Request;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "RemoteResourceFetcher"


# instance fields
.field private mActiveRequestsMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/cymobile/ymwork/server/RemoteResourceFetcher$Request;",
            "Ljava/util/concurrent/Callable",
            "<",
            "Lcom/cymobile/ymwork/server/RemoteResourceFetcher$Request;",
            ">;>;"
        }
    .end annotation
.end field

.field private mExecutor:Ljava/util/concurrent/ExecutorService;

.field private mHttpClient:Lorg/apache/http/client/HttpClient;

.field private mResourceCache:Lcom/cymobile/ymwork/server/DiskCache;


# direct methods
.method public constructor <init>(Lcom/cymobile/ymwork/server/DiskCache;)V
    .locals 1
    .parameter "cache"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 41
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/cymobile/ymwork/server/RemoteResourceFetcher;->mActiveRequestsMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 44
    iput-object p1, p0, Lcom/cymobile/ymwork/server/RemoteResourceFetcher;->mResourceCache:Lcom/cymobile/ymwork/server/DiskCache;

    .line 45
    invoke-static {}, Lcom/cymobile/ymwork/server/RemoteResourceFetcher;->createHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/cymobile/ymwork/server/RemoteResourceFetcher;->mHttpClient:Lorg/apache/http/client/HttpClient;

    .line 46
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/cymobile/ymwork/server/RemoteResourceFetcher;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 47
    return-void
.end method

.method static synthetic access$0(Lcom/cymobile/ymwork/server/RemoteResourceFetcher;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/cymobile/ymwork/server/RemoteResourceFetcher;->mActiveRequestsMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cymobile/ymwork/server/RemoteResourceFetcher;)Lorg/apache/http/client/HttpClient;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/cymobile/ymwork/server/RemoteResourceFetcher;->mHttpClient:Lorg/apache/http/client/HttpClient;

    return-object v0
.end method

.method static synthetic access$2(Lcom/cymobile/ymwork/server/RemoteResourceFetcher;)Lcom/cymobile/ymwork/server/DiskCache;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/cymobile/ymwork/server/RemoteResourceFetcher;->mResourceCache:Lcom/cymobile/ymwork/server/DiskCache;

    return-object v0
.end method

.method public static final createHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 7

    .prologue
    const/16 v5, 0x2710

    .line 131
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 135
    .local v1, params:Lorg/apache/http/params/HttpParams;
    const/4 v4, 0x0

    invoke-static {v1, v4}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    .line 138
    invoke-static {v1, v5}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 139
    invoke-static {v1, v5}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 140
    const/16 v4, 0x2000

    invoke-static {v1, v4}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 143
    new-instance v3, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 147
    .local v3, supportedSchemes:Lorg/apache/http/conn/scheme/SchemeRegistry;
    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v2

    .line 148
    .local v2, sf:Lorg/apache/http/conn/scheme/SocketFactory;
    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    const-string v5, "http"

    const/16 v6, 0x50

    invoke-direct {v4, v5, v2, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 150
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v1, v3}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 152
    .local v0, ccm:Lorg/apache/http/conn/ClientConnectionManager;
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4, v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    return-object v4
.end method

.method public static getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;
    .locals 5
    .parameter "entity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    .line 106
    .local v2, responseStream:Ljava/io/InputStream;
    if-nez v2, :cond_0

    move-object v3, v2

    .line 120
    .end local v2           #responseStream:Ljava/io/InputStream;
    .local v3, responseStream:Ljava/io/InputStream;
    :goto_0
    return-object v3

    .line 109
    .end local v3           #responseStream:Ljava/io/InputStream;
    .restart local v2       #responseStream:Ljava/io/InputStream;
    :cond_0
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v1

    .line 110
    .local v1, header:Lorg/apache/http/Header;
    if-nez v1, :cond_1

    move-object v3, v2

    .line 111
    .end local v2           #responseStream:Ljava/io/InputStream;
    .restart local v3       #responseStream:Ljava/io/InputStream;
    goto :goto_0

    .line 113
    .end local v3           #responseStream:Ljava/io/InputStream;
    .restart local v2       #responseStream:Ljava/io/InputStream;
    :cond_1
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, contentEncoding:Ljava/lang/String;
    if-nez v0, :cond_2

    move-object v3, v2

    .line 115
    .end local v2           #responseStream:Ljava/io/InputStream;
    .restart local v3       #responseStream:Ljava/io/InputStream;
    goto :goto_0

    .line 117
    .end local v3           #responseStream:Ljava/io/InputStream;
    .restart local v2       #responseStream:Ljava/io/InputStream;
    :cond_2
    const-string v4, "gzip"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 118
    new-instance v3, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v3, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v2           #responseStream:Ljava/io/InputStream;
    .restart local v3       #responseStream:Ljava/io/InputStream;
    move-object v2, v3

    .end local v3           #responseStream:Ljava/io/InputStream;
    .restart local v2       #responseStream:Ljava/io/InputStream;
    :cond_3
    move-object v3, v2

    .line 120
    .end local v2           #responseStream:Ljava/io/InputStream;
    .restart local v3       #responseStream:Ljava/io/InputStream;
    goto :goto_0
.end method

.method private newRequestCall(Lcom/cymobile/ymwork/server/RemoteResourceFetcher$Request;)Ljava/util/concurrent/Callable;
    .locals 1
    .parameter "request"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cymobile/ymwork/server/RemoteResourceFetcher$Request;",
            ")",
            "Ljava/util/concurrent/Callable",
            "<",
            "Lcom/cymobile/ymwork/server/RemoteResourceFetcher$Request;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    new-instance v0, Lcom/cymobile/ymwork/server/RemoteResourceFetcher$1;

    invoke-direct {v0, p0, p1}, Lcom/cymobile/ymwork/server/RemoteResourceFetcher$1;-><init>(Lcom/cymobile/ymwork/server/RemoteResourceFetcher;Lcom/cymobile/ymwork/server/RemoteResourceFetcher$Request;)V

    return-object v0
.end method


# virtual methods
.method public fetch(Landroid/net/Uri;Ljava/lang/String;)Ljava/util/concurrent/Future;
    .locals 4
    .parameter "uri"
    .parameter "hash"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/cymobile/ymwork/server/RemoteResourceFetcher$Request;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    new-instance v1, Lcom/cymobile/ymwork/server/RemoteResourceFetcher$Request;

    invoke-direct {v1, p1, p2}, Lcom/cymobile/ymwork/server/RemoteResourceFetcher$Request;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    .line 56
    .local v1, request:Lcom/cymobile/ymwork/server/RemoteResourceFetcher$Request;
    iget-object v3, p0, Lcom/cymobile/ymwork/server/RemoteResourceFetcher;->mActiveRequestsMap:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v3

    .line 57
    :try_start_0
    invoke-direct {p0, v1}, Lcom/cymobile/ymwork/server/RemoteResourceFetcher;->newRequestCall(Lcom/cymobile/ymwork/server/RemoteResourceFetcher$Request;)Ljava/util/concurrent/Callable;

    move-result-object v0

    .line 58
    .local v0, fetcher:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<Lcom/cymobile/ymwork/server/RemoteResourceFetcher$Request;>;"
    iget-object v2, p0, Lcom/cymobile/ymwork/server/RemoteResourceFetcher;->mActiveRequestsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 60
    iget-object v2, p0, Lcom/cymobile/ymwork/server/RemoteResourceFetcher;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v2

    monitor-exit v3

    .line 65
    :goto_0
    return-object v2

    .line 56
    :cond_0
    monitor-exit v3

    .line 65
    const/4 v2, 0x0

    goto :goto_0

    .line 56
    .end local v0           #fetcher:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<Lcom/cymobile/ymwork/server/RemoteResourceFetcher$Request;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public notifyObservers(Ljava/lang/Object;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/cymobile/ymwork/server/RemoteResourceFetcher;->setChanged()V

    .line 51
    invoke-super {p0, p1}, Ljava/util/Observable;->notifyObservers(Ljava/lang/Object;)V

    .line 52
    return-void
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/cymobile/ymwork/server/RemoteResourceFetcher;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 70
    return-void
.end method
