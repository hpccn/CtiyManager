.class Lcom/cymobile/ymwork/search/SearchHandlerThread$1;
.super Landroid/os/Handler;
.source "SearchHandlerThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/search/SearchHandlerThread;-><init>(Landroid/content/Context;Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/search/SearchHandlerThread;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/search/SearchHandlerThread;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/search/SearchHandlerThread$1;->this$0:Lcom/cymobile/ymwork/search/SearchHandlerThread;

    .line 69
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 71
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 96
    iget-object v0, p0, Lcom/cymobile/ymwork/search/SearchHandlerThread$1;->this$0:Lcom/cymobile/ymwork/search/SearchHandlerThread;

    #getter for: Lcom/cymobile/ymwork/search/SearchHandlerThread;->mHandleObserver:Lcom/cymobile/ymwork/search/ISearchHandleObserver;
    invoke-static {v0}, Lcom/cymobile/ymwork/search/SearchHandlerThread;->access$0(Lcom/cymobile/ymwork/search/SearchHandlerThread;)Lcom/cymobile/ymwork/search/ISearchHandleObserver;

    move-result-object v0

    invoke-interface {v0}, Lcom/cymobile/ymwork/search/ISearchHandleObserver;->searchError()V

    .line 99
    :goto_0
    return-void

    .line 74
    :pswitch_0
    iget-object v0, p0, Lcom/cymobile/ymwork/search/SearchHandlerThread$1;->this$0:Lcom/cymobile/ymwork/search/SearchHandlerThread;

    #getter for: Lcom/cymobile/ymwork/search/SearchHandlerThread;->mHandleObserver:Lcom/cymobile/ymwork/search/ISearchHandleObserver;
    invoke-static {v0}, Lcom/cymobile/ymwork/search/SearchHandlerThread;->access$0(Lcom/cymobile/ymwork/search/SearchHandlerThread;)Lcom/cymobile/ymwork/search/ISearchHandleObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/cymobile/ymwork/search/SearchHandlerThread$1;->this$0:Lcom/cymobile/ymwork/search/SearchHandlerThread;

    #getter for: Lcom/cymobile/ymwork/search/SearchHandlerThread;->mSearchResultList:Ljava/util/List;
    invoke-static {v1}, Lcom/cymobile/ymwork/search/SearchHandlerThread;->access$1(Lcom/cymobile/ymwork/search/SearchHandlerThread;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/cymobile/ymwork/search/ISearchHandleObserver;->searchResultShow(Ljava/util/List;)V

    goto :goto_0

    .line 79
    :pswitch_1
    iget-object v0, p0, Lcom/cymobile/ymwork/search/SearchHandlerThread$1;->this$0:Lcom/cymobile/ymwork/search/SearchHandlerThread;

    #getter for: Lcom/cymobile/ymwork/search/SearchHandlerThread;->mHandleObserver:Lcom/cymobile/ymwork/search/ISearchHandleObserver;
    invoke-static {v0}, Lcom/cymobile/ymwork/search/SearchHandlerThread;->access$0(Lcom/cymobile/ymwork/search/SearchHandlerThread;)Lcom/cymobile/ymwork/search/ISearchHandleObserver;

    move-result-object v0

    invoke-interface {v0}, Lcom/cymobile/ymwork/search/ISearchHandleObserver;->searchResultNothing()V

    goto :goto_0

    .line 84
    :pswitch_2
    iget-object v0, p0, Lcom/cymobile/ymwork/search/SearchHandlerThread$1;->this$0:Lcom/cymobile/ymwork/search/SearchHandlerThread;

    #getter for: Lcom/cymobile/ymwork/search/SearchHandlerThread;->mHandleObserver:Lcom/cymobile/ymwork/search/ISearchHandleObserver;
    invoke-static {v0}, Lcom/cymobile/ymwork/search/SearchHandlerThread;->access$0(Lcom/cymobile/ymwork/search/SearchHandlerThread;)Lcom/cymobile/ymwork/search/ISearchHandleObserver;

    move-result-object v0

    invoke-interface {v0}, Lcom/cymobile/ymwork/search/ISearchHandleObserver;->searchNetworkError()V

    goto :goto_0

    .line 88
    :pswitch_3
    iget-object v0, p0, Lcom/cymobile/ymwork/search/SearchHandlerThread$1;->this$0:Lcom/cymobile/ymwork/search/SearchHandlerThread;

    #getter for: Lcom/cymobile/ymwork/search/SearchHandlerThread;->mHandleObserver:Lcom/cymobile/ymwork/search/ISearchHandleObserver;
    invoke-static {v0}, Lcom/cymobile/ymwork/search/SearchHandlerThread;->access$0(Lcom/cymobile/ymwork/search/SearchHandlerThread;)Lcom/cymobile/ymwork/search/ISearchHandleObserver;

    move-result-object v0

    invoke-interface {v0}, Lcom/cymobile/ymwork/search/ISearchHandleObserver;->searchStart()V

    goto :goto_0

    .line 92
    :pswitch_4
    iget-object v0, p0, Lcom/cymobile/ymwork/search/SearchHandlerThread$1;->this$0:Lcom/cymobile/ymwork/search/SearchHandlerThread;

    #getter for: Lcom/cymobile/ymwork/search/SearchHandlerThread;->mHandleObserver:Lcom/cymobile/ymwork/search/ISearchHandleObserver;
    invoke-static {v0}, Lcom/cymobile/ymwork/search/SearchHandlerThread;->access$0(Lcom/cymobile/ymwork/search/SearchHandlerThread;)Lcom/cymobile/ymwork/search/ISearchHandleObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/cymobile/ymwork/search/SearchHandlerThread$1;->this$0:Lcom/cymobile/ymwork/search/SearchHandlerThread;

    #getter for: Lcom/cymobile/ymwork/search/SearchHandlerThread;->mSearchResultList:Ljava/util/List;
    invoke-static {v1}, Lcom/cymobile/ymwork/search/SearchHandlerThread;->access$1(Lcom/cymobile/ymwork/search/SearchHandlerThread;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/cymobile/ymwork/search/ISearchHandleObserver;->searchResultRefresh(Ljava/util/List;)V

    goto :goto_0

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
