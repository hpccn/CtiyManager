.class Lcom/cymobile/ymwork/server/RemoteResourceFetcher$1;
.super Ljava/lang/Object;
.source "RemoteResourceFetcher.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/server/RemoteResourceFetcher;->newRequestCall(Lcom/cymobile/ymwork/server/RemoteResourceFetcher$Request;)Ljava/util/concurrent/Callable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/cymobile/ymwork/server/RemoteResourceFetcher$Request;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/server/RemoteResourceFetcher;

.field private final synthetic val$request:Lcom/cymobile/ymwork/server/RemoteResourceFetcher$Request;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/server/RemoteResourceFetcher;Lcom/cymobile/ymwork/server/RemoteResourceFetcher$Request;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/server/RemoteResourceFetcher$1;->this$0:Lcom/cymobile/ymwork/server/RemoteResourceFetcher;

    iput-object p2, p0, Lcom/cymobile/ymwork/server/RemoteResourceFetcher$1;->val$request:Lcom/cymobile/ymwork/server/RemoteResourceFetcher$Request;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/cymobile/ymwork/server/RemoteResourceFetcher$Request;
    .locals 7

    .prologue
    .line 77
    :try_start_0
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    iget-object v4, p0, Lcom/cymobile/ymwork/server/RemoteResourceFetcher$1;->val$request:Lcom/cymobile/ymwork/server/RemoteResourceFetcher$Request;

    iget-object v4, v4, Lcom/cymobile/ymwork/server/RemoteResourceFetcher$Request;->uri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 78
    .local v1, httpGet:Lorg/apache/http/client/methods/HttpGet;
    const-string v4, "Accept-Encoding"

    const-string v5, "gzip"

    invoke-virtual {v1, v4, v5}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v4, p0, Lcom/cymobile/ymwork/server/RemoteResourceFetcher$1;->this$0:Lcom/cymobile/ymwork/server/RemoteResourceFetcher;

    #getter for: Lcom/cymobile/ymwork/server/RemoteResourceFetcher;->mHttpClient:Lorg/apache/http/client/HttpClient;
    invoke-static {v4}, Lcom/cymobile/ymwork/server/RemoteResourceFetcher;->access$1(Lcom/cymobile/ymwork/server/RemoteResourceFetcher;)Lorg/apache/http/client/HttpClient;

    move-result-object v4

    invoke-interface {v4, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 80
    .local v3, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 81
    .local v0, entity:Lorg/apache/http/HttpEntity;
    invoke-static {v0}, Lcom/cymobile/ymwork/server/RemoteResourceFetcher;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v2

    .line 82
    .local v2, is:Ljava/io/InputStream;
    iget-object v4, p0, Lcom/cymobile/ymwork/server/RemoteResourceFetcher$1;->this$0:Lcom/cymobile/ymwork/server/RemoteResourceFetcher;

    #getter for: Lcom/cymobile/ymwork/server/RemoteResourceFetcher;->mResourceCache:Lcom/cymobile/ymwork/server/DiskCache;
    invoke-static {v4}, Lcom/cymobile/ymwork/server/RemoteResourceFetcher;->access$2(Lcom/cymobile/ymwork/server/RemoteResourceFetcher;)Lcom/cymobile/ymwork/server/DiskCache;

    move-result-object v4

    iget-object v5, p0, Lcom/cymobile/ymwork/server/RemoteResourceFetcher$1;->val$request:Lcom/cymobile/ymwork/server/RemoteResourceFetcher$Request;

    iget-object v5, v5, Lcom/cymobile/ymwork/server/RemoteResourceFetcher$Request;->hash:Ljava/lang/String;

    invoke-interface {v4, v5, v2}, Lcom/cymobile/ymwork/server/DiskCache;->store(Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    iget-object v4, p0, Lcom/cymobile/ymwork/server/RemoteResourceFetcher$1;->this$0:Lcom/cymobile/ymwork/server/RemoteResourceFetcher;

    #getter for: Lcom/cymobile/ymwork/server/RemoteResourceFetcher;->mActiveRequestsMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v4}, Lcom/cymobile/ymwork/server/RemoteResourceFetcher;->access$0(Lcom/cymobile/ymwork/server/RemoteResourceFetcher;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    iget-object v5, p0, Lcom/cymobile/ymwork/server/RemoteResourceFetcher$1;->val$request:Lcom/cymobile/ymwork/server/RemoteResourceFetcher$Request;

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v4, p0, Lcom/cymobile/ymwork/server/RemoteResourceFetcher$1;->this$0:Lcom/cymobile/ymwork/server/RemoteResourceFetcher;

    iget-object v5, p0, Lcom/cymobile/ymwork/server/RemoteResourceFetcher$1;->val$request:Lcom/cymobile/ymwork/server/RemoteResourceFetcher$Request;

    iget-object v5, v5, Lcom/cymobile/ymwork/server/RemoteResourceFetcher$Request;->uri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Lcom/cymobile/ymwork/server/RemoteResourceFetcher;->notifyObservers(Ljava/lang/Object;)V

    .line 91
    .end local v0           #entity:Lorg/apache/http/HttpEntity;
    .end local v1           #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v2           #is:Ljava/io/InputStream;
    .end local v3           #response:Lorg/apache/http/HttpResponse;
    :goto_0
    iget-object v4, p0, Lcom/cymobile/ymwork/server/RemoteResourceFetcher$1;->val$request:Lcom/cymobile/ymwork/server/RemoteResourceFetcher$Request;

    return-object v4

    .line 84
    :catch_0
    move-exception v4

    .line 88
    iget-object v4, p0, Lcom/cymobile/ymwork/server/RemoteResourceFetcher$1;->this$0:Lcom/cymobile/ymwork/server/RemoteResourceFetcher;

    #getter for: Lcom/cymobile/ymwork/server/RemoteResourceFetcher;->mActiveRequestsMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v4}, Lcom/cymobile/ymwork/server/RemoteResourceFetcher;->access$0(Lcom/cymobile/ymwork/server/RemoteResourceFetcher;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    iget-object v5, p0, Lcom/cymobile/ymwork/server/RemoteResourceFetcher$1;->val$request:Lcom/cymobile/ymwork/server/RemoteResourceFetcher$Request;

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v4, p0, Lcom/cymobile/ymwork/server/RemoteResourceFetcher$1;->this$0:Lcom/cymobile/ymwork/server/RemoteResourceFetcher;

    iget-object v5, p0, Lcom/cymobile/ymwork/server/RemoteResourceFetcher$1;->val$request:Lcom/cymobile/ymwork/server/RemoteResourceFetcher$Request;

    iget-object v5, v5, Lcom/cymobile/ymwork/server/RemoteResourceFetcher$Request;->uri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Lcom/cymobile/ymwork/server/RemoteResourceFetcher;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_0

    .line 86
    :catchall_0
    move-exception v4

    .line 88
    iget-object v5, p0, Lcom/cymobile/ymwork/server/RemoteResourceFetcher$1;->this$0:Lcom/cymobile/ymwork/server/RemoteResourceFetcher;

    #getter for: Lcom/cymobile/ymwork/server/RemoteResourceFetcher;->mActiveRequestsMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v5}, Lcom/cymobile/ymwork/server/RemoteResourceFetcher;->access$0(Lcom/cymobile/ymwork/server/RemoteResourceFetcher;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    iget-object v6, p0, Lcom/cymobile/ymwork/server/RemoteResourceFetcher$1;->val$request:Lcom/cymobile/ymwork/server/RemoteResourceFetcher$Request;

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v5, p0, Lcom/cymobile/ymwork/server/RemoteResourceFetcher$1;->this$0:Lcom/cymobile/ymwork/server/RemoteResourceFetcher;

    iget-object v6, p0, Lcom/cymobile/ymwork/server/RemoteResourceFetcher$1;->val$request:Lcom/cymobile/ymwork/server/RemoteResourceFetcher$Request;

    iget-object v6, v6, Lcom/cymobile/ymwork/server/RemoteResourceFetcher$Request;->uri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Lcom/cymobile/ymwork/server/RemoteResourceFetcher;->notifyObservers(Ljava/lang/Object;)V

    .line 90
    throw v4
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/cymobile/ymwork/server/RemoteResourceFetcher$1;->call()Lcom/cymobile/ymwork/server/RemoteResourceFetcher$Request;

    move-result-object v0

    return-object v0
.end method
