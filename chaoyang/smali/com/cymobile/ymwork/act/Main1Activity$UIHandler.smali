.class Lcom/cymobile/ymwork/act/Main1Activity$UIHandler;
.super Landroid/os/Handler;
.source "Main1Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/act/Main1Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/Main1Activity;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/Main1Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 200
    iput-object p1, p0, Lcom/cymobile/ymwork/act/Main1Activity$UIHandler;->this$0:Lcom/cymobile/ymwork/act/Main1Activity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    const/16 v1, 0x11

    .line 203
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_0

    .line 204
    iget-object v0, p0, Lcom/cymobile/ymwork/act/Main1Activity$UIHandler;->this$0:Lcom/cymobile/ymwork/act/Main1Activity;

    iget-object v0, v0, Lcom/cymobile/ymwork/act/Main1Activity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 205
    iget-object v0, p0, Lcom/cymobile/ymwork/act/Main1Activity$UIHandler;->this$0:Lcom/cymobile/ymwork/act/Main1Activity;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/Main1Activity;->resetCaseNumber()V

    .line 207
    :cond_0
    return-void
.end method
