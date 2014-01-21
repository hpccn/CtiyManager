.class Lcom/cymobile/ymwork/act/UserEditActivity$UIHandler;
.super Landroid/os/Handler;
.source "UserEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/act/UserEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/UserEditActivity;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/UserEditActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 417
    iput-object p1, p0, Lcom/cymobile/ymwork/act/UserEditActivity$UIHandler;->this$0:Lcom/cymobile/ymwork/act/UserEditActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 420
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    .line 421
    iget-object v0, p0, Lcom/cymobile/ymwork/act/UserEditActivity$UIHandler;->this$0:Lcom/cymobile/ymwork/act/UserEditActivity;

    #calls: Lcom/cymobile/ymwork/act/UserEditActivity;->resetZoneSpinner()V
    invoke-static {v0}, Lcom/cymobile/ymwork/act/UserEditActivity;->access$12(Lcom/cymobile/ymwork/act/UserEditActivity;)V

    .line 425
    :cond_0
    :goto_0
    return-void

    .line 422
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 423
    iget-object v0, p0, Lcom/cymobile/ymwork/act/UserEditActivity$UIHandler;->this$0:Lcom/cymobile/ymwork/act/UserEditActivity;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/UserEditActivity;->setUser()V

    goto :goto_0
.end method
