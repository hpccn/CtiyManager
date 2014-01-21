.class public Lcom/cymobile/ymwork/search/JsonHandlerThread;
.super Ljava/lang/Thread;
.source "JsonHandlerThread.java"


# static fields
.field protected static final H_GET_JSON_ERROR:I = -0x1

.field protected static final H_GET_JSON_OK:I = 0x1

.field protected static final H_GET_JSON_START:I = 0x0

.field private static final TAG:Ljava/lang/String; = "JsonHandlerThread"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mJsonKeywordList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyWord:Ljava/lang/String;

.field private mObserver:Lcom/cymobile/ymwork/search/IJsonHandleObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "keyWord"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/cymobile/ymwork/search/JsonHandlerThread;->mContext:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/cymobile/ymwork/search/JsonHandlerThread;->mKeyWord:Ljava/lang/String;

    .line 27
    new-instance v0, Lcom/cymobile/ymwork/search/JsonHandlerThread$1;

    invoke-direct {v0, p0}, Lcom/cymobile/ymwork/search/JsonHandlerThread$1;-><init>(Lcom/cymobile/ymwork/search/JsonHandlerThread;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/search/JsonHandlerThread;->mHandler:Landroid/os/Handler;

    .line 44
    return-void
.end method

.method static synthetic access$0(Lcom/cymobile/ymwork/search/JsonHandlerThread;)Lcom/cymobile/ymwork/search/IJsonHandleObserver;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/cymobile/ymwork/search/JsonHandlerThread;->mObserver:Lcom/cymobile/ymwork/search/IJsonHandleObserver;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cymobile/ymwork/search/JsonHandlerThread;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/cymobile/ymwork/search/JsonHandlerThread;->mJsonKeywordList:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public loadJsonData()V
    .locals 3

    .prologue
    .line 48
    const-string v1, "JsonHandlerThread"

    const-string v2, "JsonHandlerThread loadJsonData()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v1, p0, Lcom/cymobile/ymwork/search/JsonHandlerThread;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/cymobile/ymwork/search/JsonHandlerThread;->mKeyWord:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/cymobile/ymwork/search/JsonHandlerThread;->mKeyWord:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 50
    iget-object v1, p0, Lcom/cymobile/ymwork/search/JsonHandlerThread;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://nssug.baidu.com/su?wd="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cymobile/ymwork/search/JsonHandlerThread;->mKeyWord:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&ie=utf-8&prod=news"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, url:Ljava/lang/String;
    new-instance v1, Lcom/cymobile/ymwork/search/SearchRemindJsonInfo;

    invoke-direct {v1, v0}, Lcom/cymobile/ymwork/search/SearchRemindJsonInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/cymobile/ymwork/search/SearchRemindJsonInfo;->getInfoFromJson()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/cymobile/ymwork/search/JsonHandlerThread;->mJsonKeywordList:Ljava/util/List;

    .line 53
    iget-object v1, p0, Lcom/cymobile/ymwork/search/JsonHandlerThread;->mJsonKeywordList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 54
    iget-object v1, p0, Lcom/cymobile/ymwork/search/JsonHandlerThread;->mHandler:Landroid/os/Handler;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 55
    :cond_0
    iget-object v1, p0, Lcom/cymobile/ymwork/search/JsonHandlerThread;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 57
    .end local v0           #url:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public run()V
    .locals 0

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/cymobile/ymwork/search/JsonHandlerThread;->loadJsonData()V

    .line 61
    return-void
.end method

.method public setObserver(Lcom/cymobile/ymwork/search/IJsonHandleObserver;)V
    .locals 0
    .parameter "observer"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/cymobile/ymwork/search/JsonHandlerThread;->mObserver:Lcom/cymobile/ymwork/search/IJsonHandleObserver;

    .line 65
    return-void
.end method
