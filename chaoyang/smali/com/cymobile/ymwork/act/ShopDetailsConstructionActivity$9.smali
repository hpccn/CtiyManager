.class Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity$9;
.super Ljava/lang/Object;
.source "ShopDetailsConstructionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;->loadShop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity$9;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;

    .line 576
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    .line 580
    iget-object v2, p0, Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity$9;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;

    #getter for: Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;->mShop:Lcom/cymobile/ymwork/types/ConstrustionField;
    invoke-static {v2}, Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;->access$0(Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;)Lcom/cymobile/ymwork/types/ConstrustionField;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity$9;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;

    #getter for: Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;->mShop:Lcom/cymobile/ymwork/types/ConstrustionField;
    invoke-static {v2}, Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;->access$0(Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;)Lcom/cymobile/ymwork/types/ConstrustionField;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cymobile/ymwork/types/ConstrustionField;->getLastReply()Lcom/cymobile/ymwork/types/Reply;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 581
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity$9;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;

    const-class v3, Lcom/cymobile/ymwork/act/ReplyListActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 582
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "caseid"

    iget-object v3, p0, Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity$9;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;

    #getter for: Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;->mCaseid:Ljava/lang/String;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;->access$2(Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 583
    iget-object v2, p0, Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity$9;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;

    invoke-virtual {v2, v0}, Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;->startActivity(Landroid/content/Intent;)V

    .line 605
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 585
    :cond_0
    iget-object v2, p0, Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity$9;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;

    #getter for: Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;->mHomeApplication:Lcom/cymobile/ymwork/HomeApplication;
    invoke-static {v2}, Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;->access$6(Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;)Lcom/cymobile/ymwork/HomeApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cymobile/ymwork/HomeApplication;->isLogined()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 586
    iget-object v2, p0, Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity$9;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;

    #getter for: Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;->mShop:Lcom/cymobile/ymwork/types/ConstrustionField;
    invoke-static {v2}, Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;->access$0(Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;)Lcom/cymobile/ymwork/types/ConstrustionField;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cymobile/ymwork/types/ConstrustionField;->getLastReply()Lcom/cymobile/ymwork/types/Reply;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 587
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity$9;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;

    const-class v3, Lcom/cymobile/ymwork/act/ReplyListActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 588
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "caseid"

    iget-object v3, p0, Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity$9;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;

    #getter for: Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;->mCaseid:Ljava/lang/String;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;->access$2(Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 589
    iget-object v2, p0, Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity$9;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;

    invoke-virtual {v2, v0}, Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 591
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    iget-object v2, p0, Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity$9;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;

    iget-object v2, v2, Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "key_GlobalZoneId"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 592
    .local v1, userZoneid:Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    .line 593
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity$9;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;

    const-class v3, Lcom/cymobile/ymwork/act/AddReplay;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 594
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "caseid"

    iget-object v3, p0, Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity$9;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;

    #getter for: Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;->mCaseid:Ljava/lang/String;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;->access$2(Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 595
    const-string v2, "classid"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 596
    iget-object v2, p0, Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity$9;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;

    invoke-virtual {v2, v0}, Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 598
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    iget-object v2, p0, Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity$9;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;

    const v3, 0x7f0900cd

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 602
    .end local v1           #userZoneid:Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity$9;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;->showDialog(I)V

    goto :goto_0
.end method
