.class Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity$SwipeImageLoader;
.super Ljava/lang/Object;
.source "ShopDetailsFireServiceActivity.java"

# interfaces
.implements Luk/co/jasonfry/android/tools/ui/SwipeView$OnPageChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SwipeImageLoader"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;


# direct methods
.method private constructor <init>(Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity$SwipeImageLoader;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity$SwipeImageLoader;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity$SwipeImageLoader;-><init>(Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;)V

    return-void
.end method


# virtual methods
.method public onPageChanged(II)V
    .locals 7
    .parameter "oldPage"
    .parameter "newPage"

    .prologue
    const v6, 0x7f0800e9

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 100
    const-string v1, "onPageChanged"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "newPage"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "oldPage"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    if-nez p2, :cond_1

    .line 102
    iget-object v1, p0, Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity$SwipeImageLoader;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;

    invoke-virtual {v1, v6}, Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 103
    .local v0, photoType:Landroid/widget/TextView;
    const v1, 0x7f09009e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 104
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 106
    iget-object v1, p0, Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity$SwipeImageLoader;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;

    iget-object v1, v1, Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;->swipe_left:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 107
    iget-object v1, p0, Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity$SwipeImageLoader;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;

    iget-object v1, v1, Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;->swipe_right:Landroid/widget/ImageButton;

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 117
    .end local v0           #photoType:Landroid/widget/TextView;
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    if-ne p2, v5, :cond_0

    .line 109
    iget-object v1, p0, Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity$SwipeImageLoader;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;

    invoke-virtual {v1, v6}, Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 110
    .restart local v0       #photoType:Landroid/widget/TextView;
    const v1, 0x7f09009f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 111
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 112
    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 113
    iget-object v1, p0, Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity$SwipeImageLoader;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;

    iget-object v1, v1, Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;->swipe_left:Landroid/widget/ImageButton;

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 114
    iget-object v1, p0, Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity$SwipeImageLoader;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;

    iget-object v1, v1, Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;->swipe_right:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0
.end method
