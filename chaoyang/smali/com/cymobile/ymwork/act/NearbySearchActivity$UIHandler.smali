.class Lcom/cymobile/ymwork/act/NearbySearchActivity$UIHandler;
.super Landroid/os/Handler;
.source "NearbySearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/act/NearbySearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/NearbySearchActivity;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/NearbySearchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity$UIHandler;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 191
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    .line 192
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity$UIHandler;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivity;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->getFilterFragment()Lcom/cymobile/ymwork/widget/RangeFilterFragment;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/cymobile/ymwork/widget/RangeFilterFragment;->onDataChanged(I)V

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    .line 195
    new-instance v0, Lcom/cymobile/ymwork/act/NearbySearchActivity$GetZoneTask;

    iget-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity$UIHandler;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivity;

    iget-object v2, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity$UIHandler;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivity;

    invoke-direct {v0, v1, v2}, Lcom/cymobile/ymwork/act/NearbySearchActivity$GetZoneTask;-><init>(Lcom/cymobile/ymwork/act/NearbySearchActivity;Lcom/cymobile/ymwork/act/NearbySearchActivity;)V

    .line 196
    .local v0, getZoneTask:Lcom/cymobile/ymwork/act/NearbySearchActivity$GetZoneTask;
    invoke-static {v0}, Lcom/cymobile/ymwork/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V

    goto :goto_0
.end method
