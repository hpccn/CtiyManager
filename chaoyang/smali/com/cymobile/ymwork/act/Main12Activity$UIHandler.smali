.class Lcom/cymobile/ymwork/act/Main12Activity$UIHandler;
.super Landroid/os/Handler;
.source "Main12Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/act/Main12Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/Main12Activity;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/Main12Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/cymobile/ymwork/act/Main12Activity$UIHandler;->this$0:Lcom/cymobile/ymwork/act/Main12Activity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    const/16 v1, 0x11

    .line 206
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_0

    .line 207
    iget-object v0, p0, Lcom/cymobile/ymwork/act/Main12Activity$UIHandler;->this$0:Lcom/cymobile/ymwork/act/Main12Activity;

    iget-object v0, v0, Lcom/cymobile/ymwork/act/Main12Activity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 208
    iget-object v0, p0, Lcom/cymobile/ymwork/act/Main12Activity$UIHandler;->this$0:Lcom/cymobile/ymwork/act/Main12Activity;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/Main12Activity;->resetCaseNumber()V

    .line 210
    :cond_0
    return-void
.end method
