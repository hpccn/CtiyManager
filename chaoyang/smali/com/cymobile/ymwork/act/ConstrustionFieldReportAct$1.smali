.class Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$1;
.super Landroid/os/Handler;
.source "ConstrustionFieldReportAct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$1;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    .line 493
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 495
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 533
    :goto_0
    return-void

    .line 497
    :pswitch_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$1;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->getTxt_title()V

    .line 498
    iget-object v1, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$1;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    iget-object v2, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$1;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    invoke-virtual {v2}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->getBarRenderer()Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-result-object v2

    #setter for: Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->renderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;
    invoke-static {v1, v2}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->access$0(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)V

    .line 499
    iget-object v1, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$1;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    iget-object v2, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$1;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    invoke-virtual {v2}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->getBarDataset()Lorg/achartengine/model/XYMultipleSeriesDataset;

    move-result-object v2

    #setter for: Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->dataset:Lorg/achartengine/model/XYMultipleSeriesDataset;
    invoke-static {v1, v2}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->access$1(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;Lorg/achartengine/model/XYMultipleSeriesDataset;)V

    .line 500
    iget-object v1, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$1;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    #getter for: Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->mark:I
    invoke-static {v1}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->access$2(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)I

    move-result v1

    if-nez v1, :cond_1

    .line 501
    iget-object v1, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$1;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    #calls: Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->initNames1()V
    invoke-static {v1}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->access$3(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)V

    .line 507
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$1;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    .line 508
    iget-object v2, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$1;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    iget-object v3, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$1;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    #getter for: Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->dataset:Lorg/achartengine/model/XYMultipleSeriesDataset;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->access$6(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)Lorg/achartengine/model/XYMultipleSeriesDataset;

    move-result-object v3

    iget-object v4, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$1;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    #getter for: Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->renderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;
    invoke-static {v4}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->access$7(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-result-object v4

    .line 509
    sget-object v5, Lorg/achartengine/chart/BarChart$Type;->DEFAULT:Lorg/achartengine/chart/BarChart$Type;

    .line 507
    invoke-static {v2, v3, v4, v5}, Lorg/achartengine/ChartFactory;->getBarChartView(Landroid/content/Context;Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;Lorg/achartengine/chart/BarChart$Type;)Lorg/achartengine/GraphicalView;

    move-result-object v2

    #setter for: Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->mChartView:Lorg/achartengine/GraphicalView;
    invoke-static {v1, v2}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->access$8(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;Lorg/achartengine/GraphicalView;)V

    .line 510
    iget-object v1, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$1;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    #getter for: Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->layout_report:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->access$9(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 511
    iget-object v1, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$1;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    #getter for: Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->layout_report:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->access$9(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$1;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    #getter for: Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->mChartView:Lorg/achartengine/GraphicalView;
    invoke-static {v2}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->access$10(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)Lorg/achartengine/GraphicalView;

    move-result-object v2

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 512
    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 511
    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 502
    :cond_1
    iget-object v1, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$1;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    #getter for: Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->mark:I
    invoke-static {v1}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->access$2(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 503
    iget-object v1, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$1;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    #calls: Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->initNames2()V
    invoke-static {v1}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->access$4(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)V

    goto :goto_1

    .line 504
    :cond_2
    iget-object v1, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$1;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    #getter for: Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->mark:I
    invoke-static {v1}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->access$2(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 505
    iget-object v1, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$1;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    #calls: Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->initNames4()V
    invoke-static {v1}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->access$5(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)V

    goto :goto_1

    .line 515
    :pswitch_1
    iget-object v1, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$1;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->getTxt_title()V

    goto/16 :goto_0

    .line 518
    :pswitch_2
    iget-object v1, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$1;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    #getter for: Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->txt_title:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->access$11(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$1;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    #getter for: Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->str_list_street:Ljava/lang/String;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->access$12(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$1;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    #getter for: Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->str_list_item:Ljava/lang/String;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->access$13(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 521
    :pswitch_3
    iget-object v1, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$1;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    #getter for: Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->txt_title:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->access$11(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$1;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    #getter for: Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->str_list_street:Ljava/lang/String;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->access$12(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$1;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    #getter for: Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->str_list_item:Ljava/lang/String;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->access$13(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 522
    iget-object v1, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$1;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    #getter for: Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$StateHolder;
    invoke-static {v1}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->access$14(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$StateHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$1;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    invoke-virtual {v1, v2}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$StateHolder;->startTask(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)V

    goto/16 :goto_0

    .line 525
    :pswitch_4
    iget-object v1, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$1;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->getFilterFragment()Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstructionReport;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstructionReport;->onDataChanged(I)V

    goto/16 :goto_0

    .line 528
    :pswitch_5
    new-instance v0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$GetZoneTask;

    iget-object v1, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$1;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    .line 529
    iget-object v2, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$1;->this$0:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    .line 528
    invoke-direct {v0, v1, v2}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$GetZoneTask;-><init>(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)V

    .line 530
    .local v0, getZoneTask:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$GetZoneTask;
    invoke-static {v0}, Lcom/cymobile/ymwork/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V

    goto/16 :goto_0

    .line 495
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
