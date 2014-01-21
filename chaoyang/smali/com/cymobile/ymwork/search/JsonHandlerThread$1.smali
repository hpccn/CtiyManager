.class Lcom/cymobile/ymwork/search/JsonHandlerThread$1;
.super Landroid/os/Handler;
.source "JsonHandlerThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/search/JsonHandlerThread;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/search/JsonHandlerThread;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/search/JsonHandlerThread;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/search/JsonHandlerThread$1;->this$0:Lcom/cymobile/ymwork/search/JsonHandlerThread;

    .line 27
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 29
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 42
    :goto_0
    return-void

    .line 31
    :pswitch_0
    iget-object v0, p0, Lcom/cymobile/ymwork/search/JsonHandlerThread$1;->this$0:Lcom/cymobile/ymwork/search/JsonHandlerThread;

    #getter for: Lcom/cymobile/ymwork/search/JsonHandlerThread;->mObserver:Lcom/cymobile/ymwork/search/IJsonHandleObserver;
    invoke-static {v0}, Lcom/cymobile/ymwork/search/JsonHandlerThread;->access$0(Lcom/cymobile/ymwork/search/JsonHandlerThread;)Lcom/cymobile/ymwork/search/IJsonHandleObserver;

    move-result-object v0

    invoke-interface {v0}, Lcom/cymobile/ymwork/search/IJsonHandleObserver;->startGetJson()V

    goto :goto_0

    .line 34
    :pswitch_1
    iget-object v0, p0, Lcom/cymobile/ymwork/search/JsonHandlerThread$1;->this$0:Lcom/cymobile/ymwork/search/JsonHandlerThread;

    #getter for: Lcom/cymobile/ymwork/search/JsonHandlerThread;->mObserver:Lcom/cymobile/ymwork/search/IJsonHandleObserver;
    invoke-static {v0}, Lcom/cymobile/ymwork/search/JsonHandlerThread;->access$0(Lcom/cymobile/ymwork/search/JsonHandlerThread;)Lcom/cymobile/ymwork/search/IJsonHandleObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/cymobile/ymwork/search/JsonHandlerThread$1;->this$0:Lcom/cymobile/ymwork/search/JsonHandlerThread;

    #getter for: Lcom/cymobile/ymwork/search/JsonHandlerThread;->mJsonKeywordList:Ljava/util/List;
    invoke-static {v1}, Lcom/cymobile/ymwork/search/JsonHandlerThread;->access$1(Lcom/cymobile/ymwork/search/JsonHandlerThread;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/cymobile/ymwork/search/IJsonHandleObserver;->showJson(Ljava/util/List;)V

    goto :goto_0

    .line 37
    :pswitch_2
    iget-object v0, p0, Lcom/cymobile/ymwork/search/JsonHandlerThread$1;->this$0:Lcom/cymobile/ymwork/search/JsonHandlerThread;

    #getter for: Lcom/cymobile/ymwork/search/JsonHandlerThread;->mObserver:Lcom/cymobile/ymwork/search/IJsonHandleObserver;
    invoke-static {v0}, Lcom/cymobile/ymwork/search/JsonHandlerThread;->access$0(Lcom/cymobile/ymwork/search/JsonHandlerThread;)Lcom/cymobile/ymwork/search/IJsonHandleObserver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/cymobile/ymwork/search/IJsonHandleObserver;->notifyGetJsonError(I)V

    goto :goto_0

    .line 29
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
