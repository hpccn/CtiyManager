.class Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$1;
.super Landroid/os/Handler;
.source "MapConstrustionFragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    .line 559
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v10, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v9, 0x0

    .line 561
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 562
    iget v3, p1, Landroid/os/Message;->what:I

    if-eqz v3, :cond_21

    .line 563
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 712
    :goto_0
    return-void

    .line 565
    :sswitch_0
    iget-object v3, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->bd:Landroid/os/Bundle;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$0(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_0

    .line 567
    :try_start_0
    iget-object v3, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    new-instance v4, Lcom/cymobile/ymwork/act/MapConstrustionDetailFragment;

    invoke-direct {v4}, Lcom/cymobile/ymwork/act/MapConstrustionDetailFragment;-><init>()V

    iput-object v4, v3, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->mapFragment:Lcom/cymobile/ymwork/act/MapConstrustionDetailFragment;

    .line 568
    iget-object v3, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    invoke-virtual {v3}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    .line 569
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    .line 570
    const v4, 0x7f080010

    iget-object v5, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    iget-object v5, v5, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->mapFragment:Lcom/cymobile/ymwork/act/MapConstrustionDetailFragment;

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    .line 571
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 576
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    iget-object v3, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    const v5, 0x7f08002f

    invoke-virtual {v3, v5}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    #setter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->commonTitle:Landroid/widget/TextView;
    invoke-static {v4, v3}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$1(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;Landroid/widget/TextView;)V

    .line 577
    iget-object v3, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->commonTitle:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$2(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Landroid/widget/TextView;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 578
    iget-object v3, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->AreaName:Ljava/lang/String;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$3(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 579
    iget-object v3, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    const-string v4, ""

    #setter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->AreaName:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$4(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;Ljava/lang/String;)V

    .line 582
    :cond_1
    iget-object v3, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->shops:Lcom/cymobile/ymwork/types/Group;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$5(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Lcom/cymobile/ymwork/types/Group;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cymobile/ymwork/types/Group;->getNumber()I

    move-result v3

    if-nez v3, :cond_11

    .line 583
    invoke-static {}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$6()I

    move-result v3

    if-nez v3, :cond_3

    .line 584
    iget-object v3, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->commonTitle:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$2(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Landroid/widget/TextView;

    move-result-object v3

    const-string v4, "\u65b0\u589e\u5efa\u7b51"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 668
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #calls: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->resetPaginate()V
    invoke-static {v3}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$8(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)V

    goto :goto_0

    .line 572
    :catch_0
    move-exception v2

    .line 573
    .local v2, ee:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 585
    .end local v2           #ee:Ljava/lang/Exception;
    :cond_3
    invoke-static {}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$6()I

    move-result v3

    if-ne v3, v6, :cond_4

    .line 586
    iget-object v3, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->commonTitle:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$2(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Landroid/widget/TextView;

    move-result-object v3

    const-string v4, "\u7591\u4f3c\u65b0\u589e\u5efa\u7b51"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 587
    :cond_4
    invoke-static {}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$6()I

    move-result v3

    if-ne v3, v7, :cond_5

    .line 588
    iget-object v3, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->commonTitle:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$2(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Landroid/widget/TextView;

    move-result-object v3

    const-string v4, "\u516c\u4f17\u4e3e\u62a5\u8fdd\u5efa"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 589
    :cond_5
    invoke-static {}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$6()I

    move-result v3

    if-ne v3, v8, :cond_6

    .line 590
    iget-object v3, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->commonTitle:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$2(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Landroid/widget/TextView;

    move-result-object v3

    const-string v4, "\u571f\u65b9\u5de5\u5730"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 591
    :cond_6
    invoke-static {}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$6()I

    move-result v3

    if-ne v3, v10, :cond_9

    .line 592
    iget-object v3, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->mark:Ljava/lang/String;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$7(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 593
    iget-object v3, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->commonTitle:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$2(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Landroid/widget/TextView;

    move-result-object v3

    const-string v4, "\u91cd\u70b9\u5355\u4f4d\u6d88\u9632\u9690\u60a3"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 594
    :cond_7
    iget-object v3, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->mark:Ljava/lang/String;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$7(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 595
    iget-object v3, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->commonTitle:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$2(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Landroid/widget/TextView;

    move-result-object v3

    const-string v4, "\u4e00\u822c\u5355\u4f4d\u6d88\u9632\u9690\u60a3"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 597
    :cond_8
    iget-object v3, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->commonTitle:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$2(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Landroid/widget/TextView;

    move-result-object v3

    const-string v4, "\u6d88\u9632\u9690\u60a3"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 599
    :cond_9
    invoke-static {}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$6()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_a

    .line 600
    iget-object v3, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->commonTitle:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$2(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Landroid/widget/TextView;

    move-result-object v3

    const-string v4, "\u516c\u4f17\u4e3e\u62a5\u6295\u8bc9"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 601
    :cond_a
    invoke-static {}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$6()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_b

    .line 602
    iget-object v3, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->commonTitle:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$2(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Landroid/widget/TextView;

    move-result-object v3

    const-string v4, "\u9884\u9632\u7164\u6c14\u4e2d\u6bd2\u5b89\u5168"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 603
    :cond_b
    invoke-static {}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$6()I

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_c

    .line 604
    iget-object v3, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->commonTitle:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$2(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Landroid/widget/TextView;

    move-result-object v3

    const-string v4, "\u8fdd\u6cd5\u5efa\u8bbe"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 605
    :cond_c
    invoke-static {}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$6()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_d

    .line 606
    iget-object v3, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->commonTitle:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$2(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Landroid/widget/TextView;

    move-result-object v3

    const-string v4, "\u51fa\u79df\u623f\u5c4b"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 607
    :cond_d
    invoke-static {}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$6()I

    move-result v3

    const/16 v4, 0xb

    if-ne v3, v4, :cond_e

    .line 608
    iget-object v3, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->commonTitle:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$2(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Landroid/widget/TextView;

    move-result-object v3

    const-string v4, "\u4eba\u53e3\u7ba1\u7406"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 609
    :cond_e
    invoke-static {}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$6()I

    move-result v3

    const/16 v4, 0xc

    if-ne v3, v4, :cond_f

    .line 610
    iget-object v3, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->commonTitle:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$2(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Landroid/widget/TextView;

    move-result-object v3

    const-string v4, "\u98df\u54c1\u5b89\u5168"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 611
    :cond_f
    invoke-static {}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$6()I

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_10

    .line 612
    iget-object v3, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->commonTitle:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$2(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Landroid/widget/TextView;

    move-result-object v3

    const-string v4, "\u8bc1\u7167\u8d44\u8d28"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 613
    :cond_10
    invoke-static {}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$6()I

    move-result v3

    const/16 v4, 0xe

    if-ne v3, v4, :cond_2

    .line 614
    iget-object v3, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->commonTitle:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$2(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Landroid/widget/TextView;

    move-result-object v3

    const-string v4, "\u5176\u4ed6"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 618
    :cond_11
    invoke-static {}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$6()I

    move-result v3

    if-nez v3, :cond_12

    .line 619
    iget-object v3, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->commonTitle:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$2(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u65b0\u589e\u5efa\u7b51\u3010\u5171"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->shops:Lcom/cymobile/ymwork/types/Group;
    invoke-static {v5}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$5(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Lcom/cymobile/ymwork/types/Group;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/Group;->getNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 620
    const-string v5, "\u4ef6\u3011"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 619
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 621
    :cond_12
    invoke-static {}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$6()I

    move-result v3

    if-ne v3, v6, :cond_13

    .line 622
    iget-object v3, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->commonTitle:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$2(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u7591\u4f3c\u65b0\u589e\u5efa\u7b51\u3010\u5171"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->shops:Lcom/cymobile/ymwork/types/Group;
    invoke-static {v5}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$5(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Lcom/cymobile/ymwork/types/Group;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/Group;->getNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 623
    const-string v5, "\u4ef6\u3011"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 622
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 624
    :cond_13
    invoke-static {}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$6()I

    move-result v3

    if-ne v3, v7, :cond_14

    .line 625
    iget-object v3, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->commonTitle:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$2(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u516c\u4f17\u4e3e\u62a5\u8fdd\u5efa\u3010\u5171"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->shops:Lcom/cymobile/ymwork/types/Group;
    invoke-static {v5}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$5(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Lcom/cymobile/ymwork/types/Group;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/Group;->getNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 626
    const-string v5, "\u4ef6\u3011"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 625
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 627
    :cond_14
    invoke-static {}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$6()I

    move-result v3

    if-ne v3, v8, :cond_15

    .line 628
    iget-object v3, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->commonTitle:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$2(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u571f\u65b9\u5de5\u5730\u3010\u5171"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->shops:Lcom/cymobile/ymwork/types/Group;
    invoke-static {v5}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$5(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Lcom/cymobile/ymwork/types/Group;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/Group;->getNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 629
    const-string v5, "\u4ef6\u3011"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 628
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 630
    :cond_15
    invoke-static {}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$6()I

    move-result v3

    if-ne v3, v10, :cond_18

    .line 631
    iget-object v3, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->mark:Ljava/lang/String;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$7(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 632
    iget-object v3, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->commonTitle:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$2(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u91cd\u70b9\u5355\u4f4d\u6d88\u9632\u9690\u60a3\u3010\u5171"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->shops:Lcom/cymobile/ymwork/types/Group;
    invoke-static {v5}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$5(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Lcom/cymobile/ymwork/types/Group;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/Group;->getNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 633
    const-string v5, "\u4ef6\u3011"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 632
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 634
    :cond_16
    iget-object v3, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->mark:Ljava/lang/String;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$7(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 635
    iget-object v3, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->commonTitle:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$2(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u4e00\u822c\u5355\u4f4d\u6d88\u9632\u9690\u60a3\u3010\u5171"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->shops:Lcom/cymobile/ymwork/types/Group;
    invoke-static {v5}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$5(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Lcom/cymobile/ymwork/types/Group;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/Group;->getNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 636
    const-string v5, "\u4ef6\u3011"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 635
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 638
    :cond_17
    iget-object v3, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->commonTitle:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$2(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u6d88\u9632\u9690\u60a3\u3010\u5171"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->shops:Lcom/cymobile/ymwork/types/Group;
    invoke-static {v5}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$5(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Lcom/cymobile/ymwork/types/Group;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/Group;->getNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 639
    const-string v5, "\u4ef6\u3011"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 638
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 641
    :cond_18
    invoke-static {}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$6()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_19

    .line 642
    iget-object v3, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->commonTitle:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$2(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u516c\u4f17\u4e3e\u62a5\u6295\u8bc9\u3010\u5171"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->shops:Lcom/cymobile/ymwork/types/Group;
    invoke-static {v5}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$5(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Lcom/cymobile/ymwork/types/Group;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/Group;->getNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 643
    const-string v5, "\u4ef6\u3011"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 642
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 644
    :cond_19
    invoke-static {}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$6()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1a

    .line 645
    iget-object v3, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->commonTitle:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$2(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u9884\u9632\u7164\u6c14\u4e2d\u6bd2\u5b89\u5168\u3010\u5171"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->shops:Lcom/cymobile/ymwork/types/Group;
    invoke-static {v5}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$5(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Lcom/cymobile/ymwork/types/Group;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/Group;->getNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 646
    const-string v5, "\u4ef6\u3011"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 645
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 647
    :cond_1a
    invoke-static {}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$6()I

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_1b

    .line 648
    iget-object v3, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->commonTitle:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$2(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u8fdd\u6cd5\u5efa\u8bbe\u3010\u5171"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->shops:Lcom/cymobile/ymwork/types/Group;
    invoke-static {v5}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$5(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Lcom/cymobile/ymwork/types/Group;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/Group;->getNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 649
    const-string v5, "\u4ef6\u3011"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 648
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 650
    :cond_1b
    invoke-static {}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$6()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_1c

    .line 651
    iget-object v3, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->commonTitle:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$2(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u51fa\u79df\u623f\u5c4b\u3010\u5171"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->shops:Lcom/cymobile/ymwork/types/Group;
    invoke-static {v5}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$5(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Lcom/cymobile/ymwork/types/Group;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/Group;->getNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 652
    const-string v5, "\u4ef6\u3011"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 651
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 653
    :cond_1c
    invoke-static {}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$6()I

    move-result v3

    const/16 v4, 0xb

    if-ne v3, v4, :cond_1d

    .line 654
    iget-object v3, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->commonTitle:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$2(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u4eba\u53e3\u7ba1\u7406\u3010\u5171"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->shops:Lcom/cymobile/ymwork/types/Group;
    invoke-static {v5}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$5(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Lcom/cymobile/ymwork/types/Group;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/Group;->getNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 655
    const-string v5, "\u4ef6\u3011"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 654
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 656
    :cond_1d
    invoke-static {}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$6()I

    move-result v3

    const/16 v4, 0xc

    if-ne v3, v4, :cond_1e

    .line 657
    iget-object v3, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->commonTitle:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$2(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u98df\u54c1\u5b89\u5168\u3010\u5171"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->shops:Lcom/cymobile/ymwork/types/Group;
    invoke-static {v5}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$5(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Lcom/cymobile/ymwork/types/Group;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/Group;->getNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 658
    const-string v5, "\u4ef6\u3011"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 657
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 659
    :cond_1e
    invoke-static {}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$6()I

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_1f

    .line 660
    iget-object v3, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->commonTitle:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$2(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u8bc1\u7167\u8d44\u8d28\u3010\u5171"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->shops:Lcom/cymobile/ymwork/types/Group;
    invoke-static {v5}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$5(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Lcom/cymobile/ymwork/types/Group;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/Group;->getNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 661
    const-string v5, "\u4ef6\u3011"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 660
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 662
    :cond_1f
    invoke-static {}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$6()I

    move-result v3

    const/16 v4, 0xe

    if-ne v3, v4, :cond_2

    .line 663
    iget-object v3, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->commonTitle:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$2(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u5176\u4ed6\u3010\u5171"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->shops:Lcom/cymobile/ymwork/types/Group;
    invoke-static {v5}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$5(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Lcom/cymobile/ymwork/types/Group;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/Group;->getNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 664
    const-string v5, "\u4ef6\u3011"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 663
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 672
    :sswitch_1
    iget-object v3, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    iget-object v3, v3, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->mapFragment:Lcom/cymobile/ymwork/act/MapConstrustionDetailFragment;

    invoke-virtual {v3}, Lcom/cymobile/ymwork/act/MapConstrustionDetailFragment;->setUpMap()V

    .line 673
    iget-object v3, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #calls: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->resetPaginate()V
    invoke-static {v3}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$8(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)V

    goto/16 :goto_0

    .line 676
    :sswitch_2
    iget-object v3, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->mLocation:Landroid/location/Location;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$9(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Landroid/location/Location;

    move-result-object v3

    if-nez v3, :cond_20

    .line 678
    iget-object v3, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->aMap:Lcom/amap/api/maps/AMap;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$10(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Lcom/amap/api/maps/AMap;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amap/api/maps/AMap;->getCameraPosition()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v3

    iget v0, v3, Lcom/amap/api/maps/model/CameraPosition;->zoom:F

    .line 679
    .local v0, a:F
    iget-object v3, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->aMap:Lcom/amap/api/maps/AMap;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$10(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Lcom/amap/api/maps/AMap;

    move-result-object v3

    .line 680
    new-instance v4, Lcom/amap/api/maps/model/LatLng;

    const-wide v5, 0x4043f61f85d744f6L

    const-wide v7, 0x405d1c60a2014728L

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    .line 679
    invoke-static {v4, v0}, Lcom/amap/api/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/amap/api/maps/model/LatLng;F)Lcom/amap/api/maps/CameraUpdate;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amap/api/maps/AMap;->animateCamera(Lcom/amap/api/maps/CameraUpdate;)V

    .line 682
    iget-object v3, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->isProgressShowing:Z
    invoke-static {v3}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$11(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 683
    iget-object v3, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    const/16 v4, 0x14

    invoke-virtual {v3, v4}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->dismissDialog(I)V

    .line 684
    iget-object v3, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #setter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->isProgressShowing:Z
    invoke-static {v3, v9}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$12(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;Z)V

    .line 688
    .end local v0           #a:F
    :cond_20
    :try_start_1
    iget-object v3, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->managerProxy:Lcom/amap/api/location/LocationManagerProxy;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$13(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Lcom/amap/api/location/LocationManagerProxy;

    move-result-object v3

    iget-object v4, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    iget-object v4, v4, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->listener:Lcom/amap/api/location/AMapLocationListener;

    invoke-virtual {v3, v4}, Lcom/amap/api/location/LocationManagerProxy;->removeUpdates(Lcom/amap/api/location/AMapLocationListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 689
    :catch_1
    move-exception v1

    .line 690
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 696
    .end local v1           #e:Ljava/lang/Exception;
    :cond_21
    iget-object v4, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/location/Location;

    #setter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->mLocation:Landroid/location/Location;
    invoke-static {v4, v3}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$14(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;Landroid/location/Location;)V

    .line 697
    iget-object v3, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->aMap:Lcom/amap/api/maps/AMap;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$10(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Lcom/amap/api/maps/AMap;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amap/api/maps/AMap;->getCameraPosition()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v3

    iget v0, v3, Lcom/amap/api/maps/model/CameraPosition;->zoom:F

    .line 698
    .restart local v0       #a:F
    iget-object v3, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->aMap:Lcom/amap/api/maps/AMap;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$10(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Lcom/amap/api/maps/AMap;

    move-result-object v3

    .line 699
    new-instance v4, Lcom/amap/api/maps/model/LatLng;

    iget-object v5, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->mLocation:Landroid/location/Location;
    invoke-static {v5}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$9(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Landroid/location/Location;

    move-result-object v5

    invoke-virtual {v5}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    iget-object v7, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->mLocation:Landroid/location/Location;
    invoke-static {v7}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$9(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Landroid/location/Location;

    move-result-object v7

    .line 700
    invoke-virtual {v7}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    .line 699
    invoke-direct {v4, v5, v6, v7, v8}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    .line 698
    invoke-static {v4, v0}, Lcom/amap/api/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/amap/api/maps/model/LatLng;F)Lcom/amap/api/maps/CameraUpdate;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amap/api/maps/AMap;->animateCamera(Lcom/amap/api/maps/CameraUpdate;)V

    .line 702
    iget-object v3, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->isProgressShowing:Z
    invoke-static {v3}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$11(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 703
    iget-object v3, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    const/16 v4, 0x14

    invoke-virtual {v3, v4}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->dismissDialog(I)V

    .line 704
    iget-object v3, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #setter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->isProgressShowing:Z
    invoke-static {v3, v9}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$12(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;Z)V

    .line 707
    :cond_22
    :try_start_2
    iget-object v3, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->managerProxy:Lcom/amap/api/location/LocationManagerProxy;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$13(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Lcom/amap/api/location/LocationManagerProxy;

    move-result-object v3

    iget-object v4, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    iget-object v4, v4, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->listener:Lcom/amap/api/location/AMapLocationListener;

    invoke-virtual {v3, v4}, Lcom/amap/api/location/LocationManagerProxy;->removeUpdates(Lcom/amap/api/location/AMapLocationListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 708
    :catch_2
    move-exception v1

    .line 709
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 563
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0xa -> :sswitch_0
        0x65 -> :sswitch_2
    .end sparse-switch
.end method
