.class Lcom/cymobile/ymwork/act/ShopDetailsActivity$1;
.super Ljava/lang/Object;
.source "ShopDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/act/ShopDetailsActivity;
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
    iput-object p1, p0, Lcom/cymobile/ymwork/act/ShopDetailsActivity$1;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsActivity;

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 344
    iget-object v3, p0, Lcom/cymobile/ymwork/act/ShopDetailsActivity$1;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsActivity;

    #getter for: Lcom/cymobile/ymwork/act/ShopDetailsActivity;->mShop:Lcom/cymobile/ymwork/types/Building;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->access$0(Lcom/cymobile/ymwork/act/ShopDetailsActivity;)Lcom/cymobile/ymwork/types/Building;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 345
    iget-object v3, p0, Lcom/cymobile/ymwork/act/ShopDetailsActivity$1;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsActivity;

    #getter for: Lcom/cymobile/ymwork/act/ShopDetailsActivity;->mShop:Lcom/cymobile/ymwork/types/Building;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->access$0(Lcom/cymobile/ymwork/act/ShopDetailsActivity;)Lcom/cymobile/ymwork/types/Building;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cymobile/ymwork/types/Building;->getImgUrl()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/cymobile/ymwork/act/ShopDetailsActivity$1;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsActivity;

    #getter for: Lcom/cymobile/ymwork/act/ShopDetailsActivity;->mShop:Lcom/cymobile/ymwork/types/Building;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->access$0(Lcom/cymobile/ymwork/act/ShopDetailsActivity;)Lcom/cymobile/ymwork/types/Building;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cymobile/ymwork/types/Building;->getImgUrl1()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 346
    :cond_0
    iget-object v3, p0, Lcom/cymobile/ymwork/act/ShopDetailsActivity$1;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsActivity;

    iget-object v3, v3, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->mSwipeView:Luk/co/jasonfry/android/tools/ui/SwipeView;

    invoke-virtual {v3}, Luk/co/jasonfry/android/tools/ui/SwipeView;->getCurrentPage()I

    move-result v0

    .line 348
    .local v0, current:I
    if-lez v0, :cond_3

    .line 349
    iget-object v3, p0, Lcom/cymobile/ymwork/act/ShopDetailsActivity$1;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsActivity;

    #getter for: Lcom/cymobile/ymwork/act/ShopDetailsActivity;->mShop:Lcom/cymobile/ymwork/types/Building;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->access$0(Lcom/cymobile/ymwork/act/ShopDetailsActivity;)Lcom/cymobile/ymwork/types/Building;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cymobile/ymwork/types/Building;->getImgUrl1()Ljava/lang/String;

    move-result-object v1

    .line 358
    .local v1, imageUrl:Ljava/lang/String;
    :cond_1
    :goto_0
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/cymobile/ymwork/act/ShopDetailsActivity$1;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsActivity;

    .line 359
    const-class v4, Lcom/cymobile/ymwork/act/FetchImageForViewIntent;

    .line 358
    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 360
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "com.cymobile.ymwork.act.FetchImageForViewIntent.IMAGE_URL"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 362
    const-string v3, "com.cymobile.ymwork.act.FetchImageForViewIntent.PROGRESS_BAR_MESSAGE"

    .line 363
    iget-object v4, p0, Lcom/cymobile/ymwork/act/ShopDetailsActivity$1;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsActivity;

    invoke-virtual {v4}, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 365
    const v5, 0x7f090020

    .line 364
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 361
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 366
    iget-object v3, p0, Lcom/cymobile/ymwork/act/ShopDetailsActivity$1;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsActivity;

    invoke-virtual {v3, v2}, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->startActivity(Landroid/content/Intent;)V

    .line 368
    .end local v0           #current:I
    .end local v1           #imageUrl:Ljava/lang/String;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_2
    return-void

    .line 351
    .restart local v0       #current:I
    :cond_3
    iget-object v3, p0, Lcom/cymobile/ymwork/act/ShopDetailsActivity$1;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsActivity;

    #getter for: Lcom/cymobile/ymwork/act/ShopDetailsActivity;->mShop:Lcom/cymobile/ymwork/types/Building;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->access$0(Lcom/cymobile/ymwork/act/ShopDetailsActivity;)Lcom/cymobile/ymwork/types/Building;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cymobile/ymwork/types/Building;->getImgUrl()Ljava/lang/String;

    move-result-object v1

    .line 353
    .restart local v1       #imageUrl:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 354
    iget-object v3, p0, Lcom/cymobile/ymwork/act/ShopDetailsActivity$1;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsActivity;

    #getter for: Lcom/cymobile/ymwork/act/ShopDetailsActivity;->mShop:Lcom/cymobile/ymwork/types/Building;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->access$0(Lcom/cymobile/ymwork/act/ShopDetailsActivity;)Lcom/cymobile/ymwork/types/Building;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cymobile/ymwork/types/Building;->getImgUrl1()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
