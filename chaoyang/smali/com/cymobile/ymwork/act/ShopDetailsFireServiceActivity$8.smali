.class Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity$8;
.super Ljava/lang/Object;
.source "ShopDetailsFireServiceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;->ensureUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity$8;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;

    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x0

    .line 413
    :try_start_0
    iget-object v3, p0, Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity$8;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;

    #getter for: Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;->mShop:Lcom/cymobile/ymwork/types/ConstrustionField;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;->access$0(Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;)Lcom/cymobile/ymwork/types/ConstrustionField;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity$8;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;

    #getter for: Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;->mShop:Lcom/cymobile/ymwork/types/ConstrustionField;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;->access$0(Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;)Lcom/cymobile/ymwork/types/ConstrustionField;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cymobile/ymwork/types/ConstrustionField;->getGeox()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 414
    iget-object v3, p0, Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity$8;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;

    #getter for: Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;->mShop:Lcom/cymobile/ymwork/types/ConstrustionField;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;->access$0(Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;)Lcom/cymobile/ymwork/types/ConstrustionField;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cymobile/ymwork/types/ConstrustionField;->getGeoy()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 415
    iget-object v3, p0, Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity$8;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;

    invoke-virtual {v3}, Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;->setshowText()Ljava/lang/String;

    move-result-object v2

    .line 416
    .local v2, showText:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    .line 417
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "geo:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity$8;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;

    #getter for: Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;->mShop:Lcom/cymobile/ymwork/types/ConstrustionField;
    invoke-static {v5}, Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;->access$0(Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;)Lcom/cymobile/ymwork/types/ConstrustionField;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/ConstrustionField;->getGeox()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 418
    iget-object v5, p0, Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity$8;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;

    #getter for: Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;->mShop:Lcom/cymobile/ymwork/types/ConstrustionField;
    invoke-static {v5}, Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;->access$0(Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;)Lcom/cymobile/ymwork/types/ConstrustionField;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/ConstrustionField;->getGeoy()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "?q="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 419
    iget-object v5, p0, Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity$8;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;

    #getter for: Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;->mShop:Lcom/cymobile/ymwork/types/ConstrustionField;
    invoke-static {v5}, Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;->access$0(Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;)Lcom/cymobile/ymwork/types/ConstrustionField;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/ConstrustionField;->getGeox()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 420
    iget-object v5, p0, Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity$8;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;

    #getter for: Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;->mShop:Lcom/cymobile/ymwork/types/ConstrustionField;
    invoke-static {v5}, Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;->access$0(Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;)Lcom/cymobile/ymwork/types/ConstrustionField;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/ConstrustionField;->getGeoy()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 421
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 417
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 416
    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 426
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity$8;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;

    invoke-virtual {v3, v1}, Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;->startActivity(Landroid/content/Intent;)V

    .line 434
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #showText:Ljava/lang/String;
    :goto_0
    return-void

    .line 428
    :cond_0
    iget-object v3, p0, Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity$8;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;

    const v4, 0x7f0900a0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 430
    :catch_0
    move-exception v0

    .line 431
    .local v0, ee:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 432
    iget-object v3, p0, Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity$8;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;

    const v4, 0x7f0900b8

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
