.class Lcom/cymobile/ymwork/act/MainClassPublicReportAct$UIHandler;
.super Landroid/os/Handler;
.source "MainClassPublicReportAct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/act/MainClassPublicReportAct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/MainClassPublicReportAct;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/MainClassPublicReportAct;)V
    .locals 0
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$UIHandler;->this$0:Lcom/cymobile/ymwork/act/MainClassPublicReportAct;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 196
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    .line 197
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$UIHandler;->this$0:Lcom/cymobile/ymwork/act/MainClassPublicReportAct;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->getFilterFragment()Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;

    move-result-object v1

    .line 198
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->onDataChanged(I)V

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    .line 201
    new-instance v0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$GetZoneTask;

    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$UIHandler;->this$0:Lcom/cymobile/ymwork/act/MainClassPublicReportAct;

    .line 202
    iget-object v2, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$UIHandler;->this$0:Lcom/cymobile/ymwork/act/MainClassPublicReportAct;

    .line 201
    invoke-direct {v0, v1, v2}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$GetZoneTask;-><init>(Lcom/cymobile/ymwork/act/MainClassPublicReportAct;Lcom/cymobile/ymwork/act/MainClassPublicReportAct;)V

    .line 203
    .local v0, getZoneTask:Lcom/cymobile/ymwork/act/MainClassPublicReportAct$GetZoneTask;
    invoke-static {v0}, Lcom/cymobile/ymwork/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V

    goto :goto_0
.end method
