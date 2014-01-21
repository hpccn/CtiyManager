.class Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$1;
.super Landroid/os/Handler;
.source "VisitorvolumeReportAct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$1;->this$0:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;

    .line 451
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const v4, 0x7f0900d1

    const/4 v2, 0x6

    const/16 v3, 0x8

    .line 453
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 485
    :goto_0
    return-void

    .line 455
    :pswitch_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$1;->this$0:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;

    #getter for: Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->category:Ljava/lang/String;
    invoke-static {v1}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->access$0(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 456
    iget-object v1, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$1;->this$0:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;

    iget-object v2, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$1;->this$0:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;

    invoke-virtual {v2}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->str_address:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->access$1(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;Ljava/lang/String;)V

    .line 458
    iget-object v1, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$1;->this$0:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;

    #getter for: Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->btn_Street:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->access$2(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 463
    :goto_1
    iget-object v1, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$1;->this$0:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;

    #calls: Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->initTimes()V
    invoke-static {v1}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->access$3(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;)V

    .line 464
    iget-object v1, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$1;->this$0:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->lineChart()V

    goto :goto_0

    .line 460
    :cond_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$1;->this$0:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;

    sget-object v2, Lcom/cymobile/ymwork/widget/ShopReportFragment;->street_name:Ljava/lang/String;

    #setter for: Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->str_address:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->access$1(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;Ljava/lang/String;)V

    .line 461
    iget-object v1, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$1;->this$0:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;

    #getter for: Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->btn_Street:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->access$2(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    .line 467
    :pswitch_1
    iget-object v1, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$1;->this$0:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;

    #getter for: Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->category:Ljava/lang/String;
    invoke-static {v1}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->access$0(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 468
    iget-object v1, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$1;->this$0:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;

    iget-object v2, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$1;->this$0:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;

    invoke-virtual {v2}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->str_address:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->access$1(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;Ljava/lang/String;)V

    .line 470
    iget-object v1, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$1;->this$0:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;

    #getter for: Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->btn_Street:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->access$2(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 472
    :cond_1
    iget-object v1, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$1;->this$0:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;

    sget-object v2, Lcom/cymobile/ymwork/widget/ShopReportFragment;->street_name:Ljava/lang/String;

    #setter for: Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->str_address:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->access$1(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;Ljava/lang/String;)V

    .line 473
    iget-object v1, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$1;->this$0:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;

    #getter for: Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->btn_Street:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->access$2(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 477
    :pswitch_2
    iget-object v1, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$1;->this$0:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->getFilterFragment()Lcom/cymobile/ymwork/widget/RangeFilterFragmentVisitorvolumeReport;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/cymobile/ymwork/widget/RangeFilterFragmentVisitorvolumeReport;->onDataChanged(I)V

    goto/16 :goto_0

    .line 480
    :pswitch_3
    new-instance v0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$GetZoneTask;

    iget-object v1, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$1;->this$0:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;

    .line 481
    iget-object v2, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$1;->this$0:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;

    .line 480
    invoke-direct {v0, v1, v2}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$GetZoneTask;-><init>(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;)V

    .line 482
    .local v0, getZoneTask:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$GetZoneTask;
    invoke-static {v0}, Lcom/cymobile/ymwork/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V

    goto/16 :goto_0

    .line 453
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
