.class public Lcom/cymobile/ymwork/services/WebService;
.super Ljava/lang/Object;
.source "WebService.java"


# static fields
.field private static final THREAD_COUNT:I = 0x5

.field private static mCached:Ljava/util/concurrent/ExecutorService;

.field private static mFixed:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTheadPool(Z)Ljava/util/concurrent/ExecutorService;
    .locals 2
    .parameter "flag"

    .prologue
    .line 12
    sget-object v0, Lcom/cymobile/ymwork/services/WebService;->mCached:Ljava/util/concurrent/ExecutorService;

    .line 13
    .local v0, executorservice:Ljava/util/concurrent/ExecutorService;
    if-eqz p0, :cond_1

    .line 14
    if-nez v0, :cond_0

    .line 15
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 16
    sput-object v0, Lcom/cymobile/ymwork/services/WebService;->mCached:Ljava/util/concurrent/ExecutorService;

    .line 18
    :cond_0
    sget-object v0, Lcom/cymobile/ymwork/services/WebService;->mCached:Ljava/util/concurrent/ExecutorService;

    .line 27
    :goto_0
    return-object v0

    .line 20
    :cond_1
    sget-object v0, Lcom/cymobile/ymwork/services/WebService;->mFixed:Ljava/util/concurrent/ExecutorService;

    .line 21
    if-nez v0, :cond_2

    .line 22
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 23
    sput-object v0, Lcom/cymobile/ymwork/services/WebService;->mFixed:Ljava/util/concurrent/ExecutorService;

    .line 25
    :cond_2
    sget-object v0, Lcom/cymobile/ymwork/services/WebService;->mFixed:Ljava/util/concurrent/ExecutorService;

    goto :goto_0
.end method
