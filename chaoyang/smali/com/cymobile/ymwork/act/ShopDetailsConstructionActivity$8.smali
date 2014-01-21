.class Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity$8;
.super Ljava/lang/Object;
.source "ShopDetailsConstructionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;->ensureUi()V
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
    iput-object p1, p0, Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity$8;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;

    .line 412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x0

    .line 415
    :try_start_0
    iget-object v3, p0, Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity$8;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;

    #getter for: Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;->mShop:Lcom/cymobile/ymwork/types/ConstrustionField;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;->access$0(Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;)Lcom/cymobile/ymwork/types/ConstrustionField;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity$8;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;

    #getter for: Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;->mShop:Lcom/cymobile/ymwork/types/ConstrustionField;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;->access$0(Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;)Lcom/cymobile/ymwork/types/ConstrustionField;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cymobile/ymwork/types/ConstrustionField;->getGeox()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 416
    iget-object v3, p0, Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity$8;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;

    #getter for: Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;->mShop:Lcom/cymobile/ymwork/types/ConstrustionField;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;->access$0(Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;)Lcom/cymobile/ymwork/types/ConstrustionField;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cymobile/ymwork/types/ConstrustionField;->getGeoy()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 417
    const-string v2, "\u571f\u65b9\u5de5\u5730"

    .line 418
    .local v2, showText:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    .line 419
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "geo:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity$8;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;

    #getter for: Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;->mShop:Lcom/cymobile/ymwork/types/ConstrustionField;
    invoke-static {v5}, Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;->access$0(Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;)Lcom/cymobile/ymwork/types/ConstrustionField;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/ConstrustionField;->getGeox()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 420
    iget-object v5, p0, Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity$8;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;

    #getter for: Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;->mShop:Lcom/cymobile/ymwork/types/ConstrustionField;
    invoke-static {v5}, Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;->access$0(Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;)Lcom/cymobile/ymwork/types/ConstrustionField;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/ConstrustionField;->getGeoy()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "?q="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 421
    iget-object v5, p0, Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity$8;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;

    #getter for: Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;->mShop:Lcom/cymobile/ymwork/types/ConstrustionField;
    invoke-static {v5}, Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;->access$0(Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;)Lcom/cymobile/ymwork/types/ConstrustionField;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/ConstrustionField;->getGeox()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 422
    iget-object v5, p0, Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity$8;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;

    #getter for: Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;->mShop:Lcom/cymobile/ymwork/types/ConstrustionField;
    invoke-static {v5}, Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;->access$0(Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;)Lcom/cymobile/ymwork/types/ConstrustionField;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/ConstrustionField;->getGeoy()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 423
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 419
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 418
    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 428
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity$8;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;

    invoke-virtual {v3, v1}, Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;->startActivity(Landroid/content/Intent;)V

    .line 436
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #showText:Ljava/lang/String;
    :goto_0
    return-void

    .line 430
    :cond_0
    iget-object v3, p0, Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity$8;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;

    const v4, 0x7f0900a0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 432
    :catch_0
    move-exception v0

    .line 433
    .local v0, ee:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 434
    iget-object v3, p0, Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity$8;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;

    const v4, 0x7f0900b8

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
