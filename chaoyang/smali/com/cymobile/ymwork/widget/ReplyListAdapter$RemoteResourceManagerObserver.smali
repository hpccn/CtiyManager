.class Lcom/cymobile/ymwork/widget/ReplyListAdapter$RemoteResourceManagerObserver;
.super Ljava/lang/Object;
.source "ReplyListAdapter.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/widget/ReplyListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteResourceManagerObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/widget/ReplyListAdapter;


# direct methods
.method private constructor <init>(Lcom/cymobile/ymwork/widget/ReplyListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/cymobile/ymwork/widget/ReplyListAdapter$RemoteResourceManagerObserver;->this$0:Lcom/cymobile/ymwork/widget/ReplyListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cymobile/ymwork/widget/ReplyListAdapter;Lcom/cymobile/ymwork/widget/ReplyListAdapter$RemoteResourceManagerObserver;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/cymobile/ymwork/widget/ReplyListAdapter$RemoteResourceManagerObserver;-><init>(Lcom/cymobile/ymwork/widget/ReplyListAdapter;)V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2
    .parameter "observable"
    .parameter "data"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ReplyListAdapter$RemoteResourceManagerObserver;->this$0:Lcom/cymobile/ymwork/widget/ReplyListAdapter;

    #getter for: Lcom/cymobile/ymwork/widget/ReplyListAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/cymobile/ymwork/widget/ReplyListAdapter;->access$1(Lcom/cymobile/ymwork/widget/ReplyListAdapter;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ReplyListAdapter$RemoteResourceManagerObserver;->this$0:Lcom/cymobile/ymwork/widget/ReplyListAdapter;

    #getter for: Lcom/cymobile/ymwork/widget/ReplyListAdapter;->mUpdatePhotos:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/cymobile/ymwork/widget/ReplyListAdapter;->access$2(Lcom/cymobile/ymwork/widget/ReplyListAdapter;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 127
    return-void
.end method
