.class Lcom/cymobile/ymwork/act/SetZoneActivity1$UIHandler;
.super Landroid/os/Handler;
.source "SetZoneActivity1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/act/SetZoneActivity1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/SetZoneActivity1;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/SetZoneActivity1;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1$UIHandler;->this$0:Lcom/cymobile/ymwork/act/SetZoneActivity1;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 92
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    .line 93
    iget-object v0, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1$UIHandler;->this$0:Lcom/cymobile/ymwork/act/SetZoneActivity1;

    #calls: Lcom/cymobile/ymwork/act/SetZoneActivity1;->resetStreetZoneSpinner()V
    invoke-static {v0}, Lcom/cymobile/ymwork/act/SetZoneActivity1;->access$0(Lcom/cymobile/ymwork/act/SetZoneActivity1;)V

    .line 94
    iget-object v0, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1$UIHandler;->this$0:Lcom/cymobile/ymwork/act/SetZoneActivity1;

    #calls: Lcom/cymobile/ymwork/act/SetZoneActivity1;->dismissProgressDialog()V
    invoke-static {v0}, Lcom/cymobile/ymwork/act/SetZoneActivity1;->access$1(Lcom/cymobile/ymwork/act/SetZoneActivity1;)V

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 96
    iget-object v0, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1$UIHandler;->this$0:Lcom/cymobile/ymwork/act/SetZoneActivity1;

    #calls: Lcom/cymobile/ymwork/act/SetZoneActivity1;->resetCommunityZoneSpinner()V
    invoke-static {v0}, Lcom/cymobile/ymwork/act/SetZoneActivity1;->access$2(Lcom/cymobile/ymwork/act/SetZoneActivity1;)V

    .line 97
    iget-object v0, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1$UIHandler;->this$0:Lcom/cymobile/ymwork/act/SetZoneActivity1;

    #calls: Lcom/cymobile/ymwork/act/SetZoneActivity1;->dismissProgressDialog()V
    invoke-static {v0}, Lcom/cymobile/ymwork/act/SetZoneActivity1;->access$1(Lcom/cymobile/ymwork/act/SetZoneActivity1;)V

    goto :goto_0
.end method
