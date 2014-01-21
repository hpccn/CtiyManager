.class Lcom/cymobile/ymwork/act/ShopDetailsActivity$10;
.super Ljava/lang/Object;
.source "ShopDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/ShopDetailsActivity;->loadShop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/ShopDetailsActivity;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/ShopDetailsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/ShopDetailsActivity$10;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsActivity;

    .line 655
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "arg0"

    .prologue
    const/4 v6, 0x0

    .line 658
    iget-object v3, p0, Lcom/cymobile/ymwork/act/ShopDetailsActivity$10;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsActivity;

    #getter for: Lcom/cymobile/ymwork/act/ShopDetailsActivity;->mShop:Lcom/cymobile/ymwork/types/Building;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->access$0(Lcom/cymobile/ymwork/act/ShopDetailsActivity;)Lcom/cymobile/ymwork/types/Building;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cymobile/ymwork/types/Building;->getGeoX()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/cymobile/ymwork/act/ShopDetailsActivity$10;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsActivity;

    #getter for: Lcom/cymobile/ymwork/act/ShopDetailsActivity;->mShop:Lcom/cymobile/ymwork/types/Building;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->access$0(Lcom/cymobile/ymwork/act/ShopDetailsActivity;)Lcom/cymobile/ymwork/types/Building;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cymobile/ymwork/types/Building;->getGeoY()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 660
    :try_start_0
    const-string v2, "\u5efa\u7b51\u5730\u5740"

    .line 661
    .local v2, showText:Ljava/lang/String;
    iget-object v3, p0, Lcom/cymobile/ymwork/act/ShopDetailsActivity$10;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsActivity;

    #getter for: Lcom/cymobile/ymwork/act/ShopDetailsActivity;->mShop:Lcom/cymobile/ymwork/types/Building;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->access$0(Lcom/cymobile/ymwork/act/ShopDetailsActivity;)Lcom/cymobile/ymwork/types/Building;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cymobile/ymwork/types/Building;->getGeoX()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/cymobile/ymwork/act/ShopDetailsActivity$10;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsActivity;

    #getter for: Lcom/cymobile/ymwork/act/ShopDetailsActivity;->mShop:Lcom/cymobile/ymwork/types/Building;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->access$0(Lcom/cymobile/ymwork/act/ShopDetailsActivity;)Lcom/cymobile/ymwork/types/Building;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cymobile/ymwork/types/Building;->getGeoY()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 662
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    .line 663
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "geo:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/cymobile/ymwork/act/ShopDetailsActivity$10;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsActivity;

    #getter for: Lcom/cymobile/ymwork/act/ShopDetailsActivity;->mShop:Lcom/cymobile/ymwork/types/Building;
    invoke-static {v5}, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->access$0(Lcom/cymobile/ymwork/act/ShopDetailsActivity;)Lcom/cymobile/ymwork/types/Building;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/Building;->getGeoY()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 664
    iget-object v5, p0, Lcom/cymobile/ymwork/act/ShopDetailsActivity$10;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsActivity;

    #getter for: Lcom/cymobile/ymwork/act/ShopDetailsActivity;->mShop:Lcom/cymobile/ymwork/types/Building;
    invoke-static {v5}, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->access$0(Lcom/cymobile/ymwork/act/ShopDetailsActivity;)Lcom/cymobile/ymwork/types/Building;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/Building;->getGeoX()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "?q="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 665
    iget-object v5, p0, Lcom/cymobile/ymwork/act/ShopDetailsActivity$10;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsActivity;

    #getter for: Lcom/cymobile/ymwork/act/ShopDetailsActivity;->mShop:Lcom/cymobile/ymwork/types/Building;
    invoke-static {v5}, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->access$0(Lcom/cymobile/ymwork/act/ShopDetailsActivity;)Lcom/cymobile/ymwork/types/Building;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/Building;->getGeoY()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 666
    iget-object v5, p0, Lcom/cymobile/ymwork/act/ShopDetailsActivity$10;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsActivity;

    #getter for: Lcom/cymobile/ymwork/act/ShopDetailsActivity;->mShop:Lcom/cymobile/ymwork/types/Building;
    invoke-static {v5}, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->access$0(Lcom/cymobile/ymwork/act/ShopDetailsActivity;)Lcom/cymobile/ymwork/types/Building;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/Building;->getGeoX()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 667
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 663
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 662
    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 668
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/cymobile/ymwork/act/ShopDetailsActivity$10;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsActivity;

    invoke-virtual {v3, v1}, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->startActivity(Landroid/content/Intent;)V

    .line 677
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #showText:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 670
    .restart local v2       #showText:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/cymobile/ymwork/act/ShopDetailsActivity$10;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsActivity;

    const v4, 0x7f0900a0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 672
    .end local v2           #showText:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 673
    .local v0, ee:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 674
    iget-object v3, p0, Lcom/cymobile/ymwork/act/ShopDetailsActivity$10;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsActivity;

    const v4, 0x7f0900b8

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
