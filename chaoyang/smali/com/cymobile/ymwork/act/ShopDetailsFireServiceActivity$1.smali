.class Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity$1;
.super Ljava/lang/Object;
.source "ShopDetailsFireServiceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;
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
    iput-object p1, p0, Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity$1;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;

    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 340
    iget-object v3, p0, Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity$1;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;

    #getter for: Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;->mShop:Lcom/cymobile/ymwork/types/ConstrustionField;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;->access$0(Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;)Lcom/cymobile/ymwork/types/ConstrustionField;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 341
    iget-object v3, p0, Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity$1;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;

    #getter for: Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;->mShop:Lcom/cymobile/ymwork/types/ConstrustionField;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;->access$0(Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;)Lcom/cymobile/ymwork/types/ConstrustionField;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cymobile/ymwork/types/ConstrustionField;->getImgUrl()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity$1;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;

    #getter for: Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;->mShop:Lcom/cymobile/ymwork/types/ConstrustionField;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;->access$0(Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;)Lcom/cymobile/ymwork/types/ConstrustionField;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cymobile/ymwork/types/ConstrustionField;->getImgUrl1()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 342
    :cond_0
    iget-object v3, p0, Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity$1;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;

    iget-object v3, v3, Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;->mSwipeView:Luk/co/jasonfry/android/tools/ui/SwipeView;

    invoke-virtual {v3}, Luk/co/jasonfry/android/tools/ui/SwipeView;->getCurrentPage()I

    move-result v0

    .line 344
    .local v0, current:I
    if-lez v0, :cond_3

    .line 345
    iget-object v3, p0, Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity$1;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;

    #getter for: Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;->mShop:Lcom/cymobile/ymwork/types/ConstrustionField;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;->access$0(Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;)Lcom/cymobile/ymwork/types/ConstrustionField;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cymobile/ymwork/types/ConstrustionField;->getImgUrl1()Ljava/lang/String;

    move-result-object v1

    .line 354
    .local v1, imageUrl:Ljava/lang/String;
    :cond_1
    :goto_0
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity$1;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;

    .line 355
    const-class v4, Lcom/cymobile/ymwork/act/FetchImageForViewIntent;

    .line 354
    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 356
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "com.cymobile.ymwork.act.FetchImageForViewIntent.IMAGE_URL"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 358
    const-string v3, "com.cymobile.ymwork.act.FetchImageForViewIntent.PROGRESS_BAR_MESSAGE"

    .line 359
    iget-object v4, p0, Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity$1;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;

    invoke-virtual {v4}, Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 361
    const v5, 0x7f090020

    .line 360
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 357
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 362
    iget-object v3, p0, Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity$1;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;

    invoke-virtual {v3, v2}, Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;->startActivity(Landroid/content/Intent;)V

    .line 364
    .end local v0           #current:I
    .end local v1           #imageUrl:Ljava/lang/String;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_2
    return-void

    .line 347
    .restart local v0       #current:I
    :cond_3
    iget-object v3, p0, Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity$1;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;

    #getter for: Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;->mShop:Lcom/cymobile/ymwork/types/ConstrustionField;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;->access$0(Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;)Lcom/cymobile/ymwork/types/ConstrustionField;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cymobile/ymwork/types/ConstrustionField;->getImgUrl()Ljava/lang/String;

    move-result-object v1

    .line 349
    .restart local v1       #imageUrl:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 350
    iget-object v3, p0, Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity$1;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;

    #getter for: Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;->mShop:Lcom/cymobile/ymwork/types/ConstrustionField;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;->access$0(Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;)Lcom/cymobile/ymwork/types/ConstrustionField;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cymobile/ymwork/types/ConstrustionField;->getImgUrl1()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
