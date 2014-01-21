.class Lcom/cymobile/ymwork/act/NewBuildingReportAct$1;
.super Landroid/os/Handler;
.source "NewBuildingReportAct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/act/NewBuildingReportAct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$1;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    .line 441
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 443
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 502
    :goto_0
    return-void

    .line 445
    :pswitch_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$1;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    #getter for: Lcom/cymobile/ymwork/act/NewBuildingReportAct;->category:Ljava/lang/String;
    invoke-static {v1}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->access$0(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v6, :cond_2

    .line 446
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$1;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    #getter for: Lcom/cymobile/ymwork/act/NewBuildingReportAct;->STREET_NO:I
    invoke-static {v1}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->access$1(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 447
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$1;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    iget-object v2, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$1;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    invoke-virtual {v2}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 448
    const v3, 0x7f0900d1

    .line 447
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/cymobile/ymwork/act/NewBuildingReportAct;->str_address:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->access$2(Lcom/cymobile/ymwork/act/NewBuildingReportAct;Ljava/lang/String;)V

    .line 453
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$1;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    #getter for: Lcom/cymobile/ymwork/act/NewBuildingReportAct;->txt_title:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->access$3(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$1;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    #getter for: Lcom/cymobile/ymwork/act/NewBuildingReportAct;->str_address:Ljava/lang/String;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->access$4(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$1;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    #getter for: Lcom/cymobile/ymwork/act/NewBuildingReportAct;->str_list_item:Ljava/lang/String;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->access$5(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 454
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$1;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    #getter for: Lcom/cymobile/ymwork/act/NewBuildingReportAct;->btn_Street:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->access$6(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 460
    :goto_2
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$1;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    iget-object v2, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$1;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    invoke-virtual {v2}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->getBarRenderer()Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-result-object v2

    #setter for: Lcom/cymobile/ymwork/act/NewBuildingReportAct;->renderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;
    invoke-static {v1, v2}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->access$7(Lcom/cymobile/ymwork/act/NewBuildingReportAct;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)V

    .line 461
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$1;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    iget-object v2, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$1;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    invoke-virtual {v2}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->getBarDataset()Lorg/achartengine/model/XYMultipleSeriesDataset;

    move-result-object v2

    #setter for: Lcom/cymobile/ymwork/act/NewBuildingReportAct;->dataset:Lorg/achartengine/model/XYMultipleSeriesDataset;
    invoke-static {v1, v2}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->access$8(Lcom/cymobile/ymwork/act/NewBuildingReportAct;Lorg/achartengine/model/XYMultipleSeriesDataset;)V

    .line 462
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$1;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    #calls: Lcom/cymobile/ymwork/act/NewBuildingReportAct;->initNames()V
    invoke-static {v1}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->access$9(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)V

    .line 463
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$1;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    .line 464
    iget-object v2, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$1;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    iget-object v3, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$1;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    #getter for: Lcom/cymobile/ymwork/act/NewBuildingReportAct;->dataset:Lorg/achartengine/model/XYMultipleSeriesDataset;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->access$10(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)Lorg/achartengine/model/XYMultipleSeriesDataset;

    move-result-object v3

    iget-object v4, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$1;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    #getter for: Lcom/cymobile/ymwork/act/NewBuildingReportAct;->renderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;
    invoke-static {v4}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->access$11(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-result-object v4

    .line 465
    sget-object v5, Lorg/achartengine/chart/BarChart$Type;->DEFAULT:Lorg/achartengine/chart/BarChart$Type;

    .line 463
    invoke-static {v2, v3, v4, v5}, Lorg/achartengine/ChartFactory;->getBarChartView(Landroid/content/Context;Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;Lorg/achartengine/chart/BarChart$Type;)Lorg/achartengine/GraphicalView;

    move-result-object v2

    #setter for: Lcom/cymobile/ymwork/act/NewBuildingReportAct;->mChartView:Lorg/achartengine/GraphicalView;
    invoke-static {v1, v2}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->access$12(Lcom/cymobile/ymwork/act/NewBuildingReportAct;Lorg/achartengine/GraphicalView;)V

    .line 466
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$1;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    #getter for: Lcom/cymobile/ymwork/act/NewBuildingReportAct;->layout_report:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->access$13(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 467
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$1;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    #getter for: Lcom/cymobile/ymwork/act/NewBuildingReportAct;->layout_report:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->access$13(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$1;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    #getter for: Lcom/cymobile/ymwork/act/NewBuildingReportAct;->mChartView:Lorg/achartengine/GraphicalView;
    invoke-static {v2}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->access$14(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)Lorg/achartengine/GraphicalView;

    move-result-object v2

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 468
    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 467
    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 449
    :cond_1
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$1;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    #getter for: Lcom/cymobile/ymwork/act/NewBuildingReportAct;->STREET_NO:I
    invoke-static {v1}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->access$1(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 450
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$1;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    iget-object v2, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$1;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    invoke-virtual {v2}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 451
    const v3, 0x7f0900eb

    .line 450
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/cymobile/ymwork/act/NewBuildingReportAct;->str_address:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->access$2(Lcom/cymobile/ymwork/act/NewBuildingReportAct;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 456
    :cond_2
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$1;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    sget-object v2, Lcom/cymobile/ymwork/widget/ShopReportFragment;->street_name:Ljava/lang/String;

    #setter for: Lcom/cymobile/ymwork/act/NewBuildingReportAct;->str_address:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->access$2(Lcom/cymobile/ymwork/act/NewBuildingReportAct;Ljava/lang/String;)V

    .line 457
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$1;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    #getter for: Lcom/cymobile/ymwork/act/NewBuildingReportAct;->txt_title:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->access$3(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$1;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    #getter for: Lcom/cymobile/ymwork/act/NewBuildingReportAct;->str_address:Ljava/lang/String;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->access$4(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$1;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    #getter for: Lcom/cymobile/ymwork/act/NewBuildingReportAct;->str_list_item:Ljava/lang/String;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->access$5(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 458
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$1;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    #getter for: Lcom/cymobile/ymwork/act/NewBuildingReportAct;->btn_Street:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->access$6(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_2

    .line 471
    :pswitch_1
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$1;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    #getter for: Lcom/cymobile/ymwork/act/NewBuildingReportAct;->category:Ljava/lang/String;
    invoke-static {v1}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->access$0(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v6, :cond_5

    .line 472
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$1;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    #getter for: Lcom/cymobile/ymwork/act/NewBuildingReportAct;->STREET_NO:I
    invoke-static {v1}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->access$1(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)I

    move-result v1

    if-ne v1, v2, :cond_4

    .line 473
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$1;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    iget-object v2, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$1;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    invoke-virtual {v2}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 474
    const v3, 0x7f0900d1

    .line 473
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/cymobile/ymwork/act/NewBuildingReportAct;->str_address:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->access$2(Lcom/cymobile/ymwork/act/NewBuildingReportAct;Ljava/lang/String;)V

    .line 479
    :cond_3
    :goto_3
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$1;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    #getter for: Lcom/cymobile/ymwork/act/NewBuildingReportAct;->txt_title:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->access$3(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$1;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    #getter for: Lcom/cymobile/ymwork/act/NewBuildingReportAct;->str_address:Ljava/lang/String;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->access$4(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$1;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    #getter for: Lcom/cymobile/ymwork/act/NewBuildingReportAct;->str_list_item:Ljava/lang/String;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->access$5(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 480
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$1;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    #getter for: Lcom/cymobile/ymwork/act/NewBuildingReportAct;->btn_Street:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->access$6(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 475
    :cond_4
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$1;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    #getter for: Lcom/cymobile/ymwork/act/NewBuildingReportAct;->STREET_NO:I
    invoke-static {v1}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->access$1(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)I

    move-result v1

    if-ne v1, v3, :cond_3

    .line 476
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$1;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    iget-object v2, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$1;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    invoke-virtual {v2}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 477
    const v3, 0x7f0900eb

    .line 476
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/cymobile/ymwork/act/NewBuildingReportAct;->str_address:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->access$2(Lcom/cymobile/ymwork/act/NewBuildingReportAct;Ljava/lang/String;)V

    goto :goto_3

    .line 482
    :cond_5
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$1;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    sget-object v2, Lcom/cymobile/ymwork/widget/ShopReportFragment;->street_name:Ljava/lang/String;

    #setter for: Lcom/cymobile/ymwork/act/NewBuildingReportAct;->str_address:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->access$2(Lcom/cymobile/ymwork/act/NewBuildingReportAct;Ljava/lang/String;)V

    .line 483
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$1;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    #getter for: Lcom/cymobile/ymwork/act/NewBuildingReportAct;->txt_title:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->access$3(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$1;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    #getter for: Lcom/cymobile/ymwork/act/NewBuildingReportAct;->str_address:Ljava/lang/String;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->access$4(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$1;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    #getter for: Lcom/cymobile/ymwork/act/NewBuildingReportAct;->str_list_item:Ljava/lang/String;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->access$5(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 484
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$1;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    #getter for: Lcom/cymobile/ymwork/act/NewBuildingReportAct;->btn_Street:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->access$6(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 488
    :pswitch_2
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$1;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    #getter for: Lcom/cymobile/ymwork/act/NewBuildingReportAct;->txt_title:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->access$3(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$1;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    #getter for: Lcom/cymobile/ymwork/act/NewBuildingReportAct;->str_list_street:Ljava/lang/String;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->access$15(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$1;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    #getter for: Lcom/cymobile/ymwork/act/NewBuildingReportAct;->str_list_item:Ljava/lang/String;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->access$5(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 491
    :pswitch_3
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$1;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    #getter for: Lcom/cymobile/ymwork/act/NewBuildingReportAct;->txt_title:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->access$3(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$1;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    #getter for: Lcom/cymobile/ymwork/act/NewBuildingReportAct;->str_list_street:Ljava/lang/String;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->access$15(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$1;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    #getter for: Lcom/cymobile/ymwork/act/NewBuildingReportAct;->str_list_item:Ljava/lang/String;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->access$5(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 494
    :pswitch_4
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$1;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->getFilterFragment()Lcom/cymobile/ymwork/widget/RangeFilterFragmentReport;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/cymobile/ymwork/widget/RangeFilterFragmentReport;->onDataChanged(I)V

    goto/16 :goto_0

    .line 497
    :pswitch_5
    new-instance v0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$GetZoneTask;

    iget-object v1, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$1;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    .line 498
    iget-object v2, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$1;->this$0:Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    .line 497
    invoke-direct {v0, v1, v2}, Lcom/cymobile/ymwork/act/NewBuildingReportAct$GetZoneTask;-><init>(Lcom/cymobile/ymwork/act/NewBuildingReportAct;Lcom/cymobile/ymwork/act/NewBuildingReportAct;)V

    .line 499
    .local v0, getZoneTask:Lcom/cymobile/ymwork/act/NewBuildingReportAct$GetZoneTask;
    invoke-static {v0}, Lcom/cymobile/ymwork/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V

    goto/16 :goto_0

    .line 443
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
