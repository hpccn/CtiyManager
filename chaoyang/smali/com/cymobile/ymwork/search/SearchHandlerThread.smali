.class public Lcom/cymobile/ymwork/search/SearchHandlerThread;
.super Ljava/lang/Thread;
.source "SearchHandlerThread.java"


# static fields
.field public static final COUNT_NEWS_FOR_ONEPATE:I = 0x14

.field public static final HOT_VIEW_ADDR_HTTP_CL:Ljava/lang/String; = "http://news.baidu.com/k?cl=3"

.field public static final H_LOAD_MORE_OK:I = 0x7

.field public static final H_SEARCH_NETWORK_ERROR:I = 0x5

.field public static final H_SEARCH_NOTHING:I = 0x4

.field public static final H_SEARCH_RESULT_OK:I = 0x3

.field public static final H_SEARCH_START:I = 0x6

.field public static final MEDIA_TYPE_CLEARLY:I = 0x2

.field public static final MEDIA_TYPE_DEFAULT:I = 0x0

.field public static final MEDIA_TYPE_FLUENTLY:I = 0x1

.field public static final SEARCH_ADDR:Ljava/lang/String; = "http://news.baidu.com/k?word="

.field public static final TAG_HOT_VIEW_HOT:Ljava/lang/String; = "&sp=hotquery"

.field public static final TAG_HOT_VIEW_HTTP_CT_RN:Ljava/lang/String; = "&ct=9&rn=20"

.field public static final TAG_HOT_VIEW_HTTP_FROM:Ljava/lang/String; = "&ie=utf8"

.field public static final TAG_HOT_VIEW_HTTP_PN:Ljava/lang/String; = "&pn="

.field public static final TAG_HOT_VIEW_HTTP_RN:Ljava/lang/String; = "&rn=20"

.field public static final TAG_HOT_VIEW_HTTP_TN:Ljava/lang/String; = "&tn=newsXmlUTF8"

.field public static final TAG_HOT_VIEW_TRACE:Ljava/lang/String; = "&pid=k&subpid=3&page=10"

.field public static final TAG_HOT_VIEW_WORD:Ljava/lang/String; = "&word="

.field public static final TAG_SEARCH_HTTP_CL:Ljava/lang/String; = "&cl=2"

.field public static final TAG_SEARCH_HTTP_CT_PN:Ljava/lang/String; = "&ct=1&pn="

.field public static final TAG_SEARCH_HTTP_FROM:Ljava/lang/String; = "&ie=utf8"

.field public static final TAG_SEARCH_HTTP_RN:Ljava/lang/String; = "&rn=20"

.field public static final TAG_SEARCH_HTTP_TN:Ljava/lang/String; = "&tn=newsXmlUTF8"

.field public static final TAG_SEARCH_TRACE:Ljava/lang/String; = "&pid=k&subpid=3&page=2"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandleObserver:Lcom/cymobile/ymwork/search/ISearchHandleObserver;

.field private mHandler:Landroid/os/Handler;

.field private mKeyWord:Ljava/lang/String;

.field private mPageNo:I

.field private mSearchResultList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cymobile/ymwork/types/Building;",
            ">;"
        }
    .end annotation
.end field

.field private mType:I

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 1
    .parameter "context"
    .parameter "keyWord"
    .parameter "type"
    .parameter "pageNo"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/cymobile/ymwork/search/SearchHandlerThread;->mContext:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lcom/cymobile/ymwork/search/SearchHandlerThread;->mKeyWord:Ljava/lang/String;

    .line 66
    iput p3, p0, Lcom/cymobile/ymwork/search/SearchHandlerThread;->mType:I

    .line 67
    iput p4, p0, Lcom/cymobile/ymwork/search/SearchHandlerThread;->mPageNo:I

    .line 69
    new-instance v0, Lcom/cymobile/ymwork/search/SearchHandlerThread$1;

    invoke-direct {v0, p0}, Lcom/cymobile/ymwork/search/SearchHandlerThread$1;-><init>(Lcom/cymobile/ymwork/search/SearchHandlerThread;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/search/SearchHandlerThread;->mHandler:Landroid/os/Handler;

    .line 101
    return-void
.end method

.method static synthetic access$0(Lcom/cymobile/ymwork/search/SearchHandlerThread;)Lcom/cymobile/ymwork/search/ISearchHandleObserver;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/cymobile/ymwork/search/SearchHandlerThread;->mHandleObserver:Lcom/cymobile/ymwork/search/ISearchHandleObserver;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cymobile/ymwork/search/SearchHandlerThread;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/cymobile/ymwork/search/SearchHandlerThread;->mSearchResultList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2(Lcom/cymobile/ymwork/search/SearchHandlerThread;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/cymobile/ymwork/search/SearchHandlerThread;->url:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/cymobile/ymwork/search/SearchHandlerThread;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/cymobile/ymwork/search/SearchHandlerThread;->mSearchResultList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$4(Lcom/cymobile/ymwork/search/SearchHandlerThread;)I
    .locals 1
    .parameter

    .prologue
    .line 55
    iget v0, p0, Lcom/cymobile/ymwork/search/SearchHandlerThread;->mPageNo:I

    return v0
.end method

.method static synthetic access$5(Lcom/cymobile/ymwork/search/SearchHandlerThread;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/cymobile/ymwork/search/SearchHandlerThread;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getSearchResultData()V
    .locals 3

    .prologue
    .line 104
    iget-object v1, p0, Lcom/cymobile/ymwork/search/SearchHandlerThread;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cymobile/ymwork/search/SearchHandlerThread;->mKeyWord:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, ""

    iget-object v2, p0, Lcom/cymobile/ymwork/search/SearchHandlerThread;->mKeyWord:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/cymobile/ymwork/search/SearchHandlerThread;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .local v0, urlSb:Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/cymobile/ymwork/search/SearchHandlerThread;->mType:I

    packed-switch v1, :pswitch_data_0

    .line 156
    .end local v0           #urlSb:Ljava/lang/StringBuilder;
    :cond_0
    :goto_0
    return-void

    .line 109
    .restart local v0       #urlSb:Ljava/lang/StringBuilder;
    :pswitch_0
    const-string v1, "http://news.baidu.com/k?word="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cymobile/ymwork/search/SearchHandlerThread;->mKeyWord:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 110
    const-string v2, "&cl=2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&ct=1&pn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 111
    iget v2, p0, Lcom/cymobile/ymwork/search/SearchHandlerThread;->mPageNo:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&ie=utf8"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&rn=20"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 112
    const-string v2, "&tn=newsXmlUTF8"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&pid=k&subpid=3&page=2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cymobile/ymwork/search/SearchHandlerThread;->url:Ljava/lang/String;

    .line 114
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/cymobile/ymwork/services/WebService;->getTheadPool(Z)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/cymobile/ymwork/search/SearchHandlerThread$2;

    invoke-direct {v2, p0}, Lcom/cymobile/ymwork/search/SearchHandlerThread$2;-><init>(Lcom/cymobile/ymwork/search/SearchHandlerThread;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/cymobile/ymwork/search/SearchHandlerThread;->getSearchResultData()V

    .line 160
    return-void
.end method

.method public setObserver(Lcom/cymobile/ymwork/search/ISearchHandleObserver;)V
    .locals 0
    .parameter "observer"

    .prologue
    .line 163
    iput-object p1, p0, Lcom/cymobile/ymwork/search/SearchHandlerThread;->mHandleObserver:Lcom/cymobile/ymwork/search/ISearchHandleObserver;

    .line 164
    return-void
.end method
