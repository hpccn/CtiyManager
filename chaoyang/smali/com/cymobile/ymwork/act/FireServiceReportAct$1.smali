.class Lcom/cymobile/ymwork/act/FireServiceReportAct$1;
.super Landroid/os/Handler;
.source "FireServiceReportAct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/act/FireServiceReportAct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/FireServiceReportAct;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/FireServiceReportAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$1;->this$0:Lcom/cymobile/ymwork/act/FireServiceReportAct;

    .line 468
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 470
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 506
    :goto_0
    return-void

    .line 472
    :pswitch_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$1;->this$0:Lcom/cymobile/ymwork/act/FireServiceReportAct;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->getTxt_title()V

    .line 473
    iget-object v1, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$1;->this$0:Lcom/cymobile/ymwork/act/FireServiceReportAct;

    iget-object v2, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$1;->this$0:Lcom/cymobile/ymwork/act/FireServiceReportAct;

    invoke-virtual {v2}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->getBarRenderer()Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-result-object v2

    #setter for: Lcom/cymobile/ymwork/act/FireServiceReportAct;->renderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;
    invoke-static {v1, v2}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->access$0(Lcom/cymobile/ymwork/act/FireServiceReportAct;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)V

    .line 474
    iget-object v1, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$1;->this$0:Lcom/cymobile/ymwork/act/FireServiceReportAct;

    iget-object v2, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$1;->this$0:Lcom/cymobile/ymwork/act/FireServiceReportAct;

    invoke-virtual {v2}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->getBarDataset()Lorg/achartengine/model/XYMultipleSeriesDataset;

    move-result-object v2

    #setter for: Lcom/cymobile/ymwork/act/FireServiceReportAct;->dataset:Lorg/achartengine/model/XYMultipleSeriesDataset;
    invoke-static {v1, v2}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->access$1(Lcom/cymobile/ymwork/act/FireServiceReportAct;Lorg/achartengine/model/XYMultipleSeriesDataset;)V

    .line 475
    iget-object v1, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$1;->this$0:Lcom/cymobile/ymwork/act/FireServiceReportAct;

    #getter for: Lcom/cymobile/ymwork/act/FireServiceReportAct;->mark:I
    invoke-static {v1}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->access$2(Lcom/cymobile/ymwork/act/FireServiceReportAct;)I

    move-result v1

    if-nez v1, :cond_1

    .line 476
    iget-object v1, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$1;->this$0:Lcom/cymobile/ymwork/act/FireServiceReportAct;

    #calls: Lcom/cymobile/ymwork/act/FireServiceReportAct;->initNames1()V
    invoke-static {v1}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->access$3(Lcom/cymobile/ymwork/act/FireServiceReportAct;)V

    .line 480
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$1;->this$0:Lcom/cymobile/ymwork/act/FireServiceReportAct;

    .line 481
    iget-object v2, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$1;->this$0:Lcom/cymobile/ymwork/act/FireServiceReportAct;

    iget-object v3, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$1;->this$0:Lcom/cymobile/ymwork/act/FireServiceReportAct;

    #getter for: Lcom/cymobile/ymwork/act/FireServiceReportAct;->dataset:Lorg/achartengine/model/XYMultipleSeriesDataset;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->access$5(Lcom/cymobile/ymwork/act/FireServiceReportAct;)Lorg/achartengine/model/XYMultipleSeriesDataset;

    move-result-object v3

    iget-object v4, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$1;->this$0:Lcom/cymobile/ymwork/act/FireServiceReportAct;

    #getter for: Lcom/cymobile/ymwork/act/FireServiceReportAct;->renderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;
    invoke-static {v4}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->access$6(Lcom/cymobile/ymwork/act/FireServiceReportAct;)Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-result-object v4

    .line 482
    sget-object v5, Lorg/achartengine/chart/BarChart$Type;->DEFAULT:Lorg/achartengine/chart/BarChart$Type;

    .line 480
    invoke-static {v2, v3, v4, v5}, Lorg/achartengine/ChartFactory;->getBarChartView(Landroid/content/Context;Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;Lorg/achartengine/chart/BarChart$Type;)Lorg/achartengine/GraphicalView;

    move-result-object v2

    #setter for: Lcom/cymobile/ymwork/act/FireServiceReportAct;->mChartView:Lorg/achartengine/GraphicalView;
    invoke-static {v1, v2}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->access$7(Lcom/cymobile/ymwork/act/FireServiceReportAct;Lorg/achartengine/GraphicalView;)V

    .line 483
    iget-object v1, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$1;->this$0:Lcom/cymobile/ymwork/act/FireServiceReportAct;

    #getter for: Lcom/cymobile/ymwork/act/FireServiceReportAct;->layout_report:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->access$8(Lcom/cymobile/ymwork/act/FireServiceReportAct;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 484
    iget-object v1, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$1;->this$0:Lcom/cymobile/ymwork/act/FireServiceReportAct;

    #getter for: Lcom/cymobile/ymwork/act/FireServiceReportAct;->layout_report:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->access$8(Lcom/cymobile/ymwork/act/FireServiceReportAct;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$1;->this$0:Lcom/cymobile/ymwork/act/FireServiceReportAct;

    #getter for: Lcom/cymobile/ymwork/act/FireServiceReportAct;->mChartView:Lorg/achartengine/GraphicalView;
    invoke-static {v2}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->access$9(Lcom/cymobile/ymwork/act/FireServiceReportAct;)Lorg/achartengine/GraphicalView;

    move-result-object v2

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 485
    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 484
    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 477
    :cond_1
    iget-object v1, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$1;->this$0:Lcom/cymobile/ymwork/act/FireServiceReportAct;

    #getter for: Lcom/cymobile/ymwork/act/FireServiceReportAct;->mark:I
    invoke-static {v1}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->access$2(Lcom/cymobile/ymwork/act/FireServiceReportAct;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 478
    iget-object v1, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$1;->this$0:Lcom/cymobile/ymwork/act/FireServiceReportAct;

    #calls: Lcom/cymobile/ymwork/act/FireServiceReportAct;->initNames2()V
    invoke-static {v1}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->access$4(Lcom/cymobile/ymwork/act/FireServiceReportAct;)V

    goto :goto_1

    .line 488
    :pswitch_1
    iget-object v1, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$1;->this$0:Lcom/cymobile/ymwork/act/FireServiceReportAct;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->getTxt_title()V

    goto :goto_0

    .line 491
    :pswitch_2
    iget-object v1, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$1;->this$0:Lcom/cymobile/ymwork/act/FireServiceReportAct;

    #getter for: Lcom/cymobile/ymwork/act/FireServiceReportAct;->txt_title:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->access$10(Lcom/cymobile/ymwork/act/FireServiceReportAct;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$1;->this$0:Lcom/cymobile/ymwork/act/FireServiceReportAct;

    #getter for: Lcom/cymobile/ymwork/act/FireServiceReportAct;->str_list_street:Ljava/lang/String;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->access$11(Lcom/cymobile/ymwork/act/FireServiceReportAct;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$1;->this$0:Lcom/cymobile/ymwork/act/FireServiceReportAct;

    #getter for: Lcom/cymobile/ymwork/act/FireServiceReportAct;->str_list_item:Ljava/lang/String;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->access$12(Lcom/cymobile/ymwork/act/FireServiceReportAct;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 494
    :pswitch_3
    iget-object v1, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$1;->this$0:Lcom/cymobile/ymwork/act/FireServiceReportAct;

    #getter for: Lcom/cymobile/ymwork/act/FireServiceReportAct;->txt_title:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->access$10(Lcom/cymobile/ymwork/act/FireServiceReportAct;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$1;->this$0:Lcom/cymobile/ymwork/act/FireServiceReportAct;

    #getter for: Lcom/cymobile/ymwork/act/FireServiceReportAct;->str_list_street:Ljava/lang/String;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->access$11(Lcom/cymobile/ymwork/act/FireServiceReportAct;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$1;->this$0:Lcom/cymobile/ymwork/act/FireServiceReportAct;

    #getter for: Lcom/cymobile/ymwork/act/FireServiceReportAct;->str_list_item:Ljava/lang/String;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->access$12(Lcom/cymobile/ymwork/act/FireServiceReportAct;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 495
    iget-object v1, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$1;->this$0:Lcom/cymobile/ymwork/act/FireServiceReportAct;

    #getter for: Lcom/cymobile/ymwork/act/FireServiceReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/FireServiceReportAct$StateHolder;
    invoke-static {v1}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->access$13(Lcom/cymobile/ymwork/act/FireServiceReportAct;)Lcom/cymobile/ymwork/act/FireServiceReportAct$StateHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$1;->this$0:Lcom/cymobile/ymwork/act/FireServiceReportAct;

    invoke-virtual {v1, v2}, Lcom/cymobile/ymwork/act/FireServiceReportAct$StateHolder;->startTask(Lcom/cymobile/ymwork/act/FireServiceReportAct;)V

    goto/16 :goto_0

    .line 498
    :pswitch_4
    iget-object v1, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$1;->this$0:Lcom/cymobile/ymwork/act/FireServiceReportAct;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->getFilterFragment()Lcom/cymobile/ymwork/widget/RangeFilterFragmentFireReport;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/cymobile/ymwork/widget/RangeFilterFragmentFireReport;->onDataChanged(I)V

    goto/16 :goto_0

    .line 501
    :pswitch_5
    new-instance v0, Lcom/cymobile/ymwork/act/FireServiceReportAct$GetZoneTask;

    iget-object v1, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$1;->this$0:Lcom/cymobile/ymwork/act/FireServiceReportAct;

    .line 502
    iget-object v2, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct$1;->this$0:Lcom/cymobile/ymwork/act/FireServiceReportAct;

    .line 501
    invoke-direct {v0, v1, v2}, Lcom/cymobile/ymwork/act/FireServiceReportAct$GetZoneTask;-><init>(Lcom/cymobile/ymwork/act/FireServiceReportAct;Lcom/cymobile/ymwork/act/FireServiceReportAct;)V

    .line 503
    .local v0, getZoneTask:Lcom/cymobile/ymwork/act/FireServiceReportAct$GetZoneTask;
    invoke-static {v0}, Lcom/cymobile/ymwork/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V

    goto/16 :goto_0

    .line 470
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
