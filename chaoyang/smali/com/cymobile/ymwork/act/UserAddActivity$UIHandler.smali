.class Lcom/cymobile/ymwork/act/UserAddActivity$UIHandler;
.super Landroid/os/Handler;
.source "UserAddActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/act/UserAddActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/UserAddActivity;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/UserAddActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 393
    iput-object p1, p0, Lcom/cymobile/ymwork/act/UserAddActivity$UIHandler;->this$0:Lcom/cymobile/ymwork/act/UserAddActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 396
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 397
    iget-object v0, p0, Lcom/cymobile/ymwork/act/UserAddActivity$UIHandler;->this$0:Lcom/cymobile/ymwork/act/UserAddActivity;

    #calls: Lcom/cymobile/ymwork/act/UserAddActivity;->resetZoneSpinner()V
    invoke-static {v0}, Lcom/cymobile/ymwork/act/UserAddActivity;->access$12(Lcom/cymobile/ymwork/act/UserAddActivity;)V

    .line 399
    :cond_0
    return-void
.end method
