.class Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$UIHandler;
.super Landroid/os/Handler;
.source "NearbySearchActivityPublicReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;)V
    .locals 0
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$UIHandler;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 183
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    .line 184
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$UIHandler;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->getFilterFragment()Lcom/cymobile/ymwork/widget/RangeFilterFragment;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/cymobile/ymwork/widget/RangeFilterFragment;->onDataChanged(I)V

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    .line 187
    new-instance v0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$GetZoneTask;

    iget-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$UIHandler;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;

    iget-object v2, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$UIHandler;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;

    invoke-direct {v0, v1, v2}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$GetZoneTask;-><init>(Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;)V

    .line 188
    .local v0, getZoneTask:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$GetZoneTask;
    invoke-static {v0}, Lcom/cymobile/ymwork/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V

    goto :goto_0
.end method
