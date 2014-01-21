.class Lcom/cymobile/ymwork/act/PublicReportAct$1;
.super Landroid/os/Handler;
.source "PublicReportAct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/act/PublicReportAct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/PublicReportAct;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/PublicReportAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/PublicReportAct$1;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    .line 474
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 476
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 512
    :goto_0
    return-void

    .line 478
    :pswitch_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/PublicReportAct$1;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/PublicReportAct;->getTxt_title()V

    .line 479
    iget-object v1, p0, Lcom/cymobile/ymwork/act/PublicReportAct$1;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    iget-object v2, p0, Lcom/cymobile/ymwork/act/PublicReportAct$1;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    invoke-virtual {v2}, Lcom/cymobile/ymwork/act/PublicReportAct;->getBarRenderer()Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-result-object v2

    #setter for: Lcom/cymobile/ymwork/act/PublicReportAct;->renderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;
    invoke-static {v1, v2}, Lcom/cymobile/ymwork/act/PublicReportAct;->access$0(Lcom/cymobile/ymwork/act/PublicReportAct;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)V

    .line 480
    iget-object v1, p0, Lcom/cymobile/ymwork/act/PublicReportAct$1;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    iget-object v2, p0, Lcom/cymobile/ymwork/act/PublicReportAct$1;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    invoke-virtual {v2}, Lcom/cymobile/ymwork/act/PublicReportAct;->getBarDataset()Lorg/achartengine/model/XYMultipleSeriesDataset;

    move-result-object v2

    #setter for: Lcom/cymobile/ymwork/act/PublicReportAct;->dataset:Lorg/achartengine/model/XYMultipleSeriesDataset;
    invoke-static {v1, v2}, Lcom/cymobile/ymwork/act/PublicReportAct;->access$1(Lcom/cymobile/ymwork/act/PublicReportAct;Lorg/achartengine/model/XYMultipleSeriesDataset;)V

    .line 481
    iget-object v1, p0, Lcom/cymobile/ymwork/act/PublicReportAct$1;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    #getter for: Lcom/cymobile/ymwork/act/PublicReportAct;->mark:I
    invoke-static {v1}, Lcom/cymobile/ymwork/act/PublicReportAct;->access$2(Lcom/cymobile/ymwork/act/PublicReportAct;)I

    move-result v1

    if-nez v1, :cond_0

    .line 482
    iget-object v1, p0, Lcom/cymobile/ymwork/act/PublicReportAct$1;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    #calls: Lcom/cymobile/ymwork/act/PublicReportAct;->initNames1()V
    invoke-static {v1}, Lcom/cymobile/ymwork/act/PublicReportAct;->access$3(Lcom/cymobile/ymwork/act/PublicReportAct;)V

    .line 486
    :goto_1
    iget-object v1, p0, Lcom/cymobile/ymwork/act/PublicReportAct$1;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    .line 487
    iget-object v2, p0, Lcom/cymobile/ymwork/act/PublicReportAct$1;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    iget-object v3, p0, Lcom/cymobile/ymwork/act/PublicReportAct$1;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    #getter for: Lcom/cymobile/ymwork/act/PublicReportAct;->dataset:Lorg/achartengine/model/XYMultipleSeriesDataset;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/PublicReportAct;->access$5(Lcom/cymobile/ymwork/act/PublicReportAct;)Lorg/achartengine/model/XYMultipleSeriesDataset;

    move-result-object v3

    iget-object v4, p0, Lcom/cymobile/ymwork/act/PublicReportAct$1;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    #getter for: Lcom/cymobile/ymwork/act/PublicReportAct;->renderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;
    invoke-static {v4}, Lcom/cymobile/ymwork/act/PublicReportAct;->access$6(Lcom/cymobile/ymwork/act/PublicReportAct;)Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-result-object v4

    .line 488
    sget-object v5, Lorg/achartengine/chart/BarChart$Type;->DEFAULT:Lorg/achartengine/chart/BarChart$Type;

    .line 486
    invoke-static {v2, v3, v4, v5}, Lorg/achartengine/ChartFactory;->getBarChartView(Landroid/content/Context;Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;Lorg/achartengine/chart/BarChart$Type;)Lorg/achartengine/GraphicalView;

    move-result-object v2

    #setter for: Lcom/cymobile/ymwork/act/PublicReportAct;->mChartView:Lorg/achartengine/GraphicalView;
    invoke-static {v1, v2}, Lcom/cymobile/ymwork/act/PublicReportAct;->access$7(Lcom/cymobile/ymwork/act/PublicReportAct;Lorg/achartengine/GraphicalView;)V

    .line 489
    iget-object v1, p0, Lcom/cymobile/ymwork/act/PublicReportAct$1;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    #getter for: Lcom/cymobile/ymwork/act/PublicReportAct;->layout_report:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/cymobile/ymwork/act/PublicReportAct;->access$8(Lcom/cymobile/ymwork/act/PublicReportAct;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 490
    iget-object v1, p0, Lcom/cymobile/ymwork/act/PublicReportAct$1;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    #getter for: Lcom/cymobile/ymwork/act/PublicReportAct;->layout_report:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/cymobile/ymwork/act/PublicReportAct;->access$8(Lcom/cymobile/ymwork/act/PublicReportAct;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/cymobile/ymwork/act/PublicReportAct$1;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    #getter for: Lcom/cymobile/ymwork/act/PublicReportAct;->mChartView:Lorg/achartengine/GraphicalView;
    invoke-static {v2}, Lcom/cymobile/ymwork/act/PublicReportAct;->access$9(Lcom/cymobile/ymwork/act/PublicReportAct;)Lorg/achartengine/GraphicalView;

    move-result-object v2

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 491
    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 490
    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 484
    :cond_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/PublicReportAct$1;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    #calls: Lcom/cymobile/ymwork/act/PublicReportAct;->initNames2()V
    invoke-static {v1}, Lcom/cymobile/ymwork/act/PublicReportAct;->access$4(Lcom/cymobile/ymwork/act/PublicReportAct;)V

    goto :goto_1

    .line 494
    :pswitch_1
    iget-object v1, p0, Lcom/cymobile/ymwork/act/PublicReportAct$1;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/PublicReportAct;->getTxt_title()V

    goto :goto_0

    .line 497
    :pswitch_2
    iget-object v1, p0, Lcom/cymobile/ymwork/act/PublicReportAct$1;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    #getter for: Lcom/cymobile/ymwork/act/PublicReportAct;->txt_title:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/cymobile/ymwork/act/PublicReportAct;->access$10(Lcom/cymobile/ymwork/act/PublicReportAct;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/cymobile/ymwork/act/PublicReportAct$1;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    #getter for: Lcom/cymobile/ymwork/act/PublicReportAct;->str_list_street:Ljava/lang/String;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/PublicReportAct;->access$11(Lcom/cymobile/ymwork/act/PublicReportAct;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cymobile/ymwork/act/PublicReportAct$1;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    #getter for: Lcom/cymobile/ymwork/act/PublicReportAct;->str_list_item:Ljava/lang/String;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/PublicReportAct;->access$12(Lcom/cymobile/ymwork/act/PublicReportAct;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 500
    :pswitch_3
    iget-object v1, p0, Lcom/cymobile/ymwork/act/PublicReportAct$1;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    #getter for: Lcom/cymobile/ymwork/act/PublicReportAct;->txt_title:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/cymobile/ymwork/act/PublicReportAct;->access$10(Lcom/cymobile/ymwork/act/PublicReportAct;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/cymobile/ymwork/act/PublicReportAct$1;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    #getter for: Lcom/cymobile/ymwork/act/PublicReportAct;->str_list_street:Ljava/lang/String;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/PublicReportAct;->access$11(Lcom/cymobile/ymwork/act/PublicReportAct;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cymobile/ymwork/act/PublicReportAct$1;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    #getter for: Lcom/cymobile/ymwork/act/PublicReportAct;->str_list_item:Ljava/lang/String;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/PublicReportAct;->access$12(Lcom/cymobile/ymwork/act/PublicReportAct;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 501
    iget-object v1, p0, Lcom/cymobile/ymwork/act/PublicReportAct$1;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    #getter for: Lcom/cymobile/ymwork/act/PublicReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/PublicReportAct$StateHolder;
    invoke-static {v1}, Lcom/cymobile/ymwork/act/PublicReportAct;->access$13(Lcom/cymobile/ymwork/act/PublicReportAct;)Lcom/cymobile/ymwork/act/PublicReportAct$StateHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/cymobile/ymwork/act/PublicReportAct$1;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    invoke-virtual {v1, v2}, Lcom/cymobile/ymwork/act/PublicReportAct$StateHolder;->startTask(Lcom/cymobile/ymwork/act/PublicReportAct;)V

    goto/16 :goto_0

    .line 504
    :pswitch_4
    iget-object v1, p0, Lcom/cymobile/ymwork/act/PublicReportAct$1;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/PublicReportAct;->getFilterFragment()Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublic_Report;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublic_Report;->onDataChanged(I)V

    goto/16 :goto_0

    .line 507
    :pswitch_5
    new-instance v0, Lcom/cymobile/ymwork/act/PublicReportAct$GetZoneTask;

    iget-object v1, p0, Lcom/cymobile/ymwork/act/PublicReportAct$1;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    .line 508
    iget-object v2, p0, Lcom/cymobile/ymwork/act/PublicReportAct$1;->this$0:Lcom/cymobile/ymwork/act/PublicReportAct;

    .line 507
    invoke-direct {v0, v1, v2}, Lcom/cymobile/ymwork/act/PublicReportAct$GetZoneTask;-><init>(Lcom/cymobile/ymwork/act/PublicReportAct;Lcom/cymobile/ymwork/act/PublicReportAct;)V

    .line 509
    .local v0, getZoneTask:Lcom/cymobile/ymwork/act/PublicReportAct$GetZoneTask;
    invoke-static {v0}, Lcom/cymobile/ymwork/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V

    goto/16 :goto_0

    .line 476
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
