.class Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity$3;
.super Ljava/lang/Object;
.source "ShopDetailsConstructionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;->loadImages()V
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
    iput-object p1, p0, Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity$3;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    const/4 v1, 0x0

    .line 269
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity$3;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;

    iget-object v0, v0, Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;->mSwipeView:Luk/co/jasonfry/android/tools/ui/SwipeView;

    invoke-virtual {v0, v1}, Luk/co/jasonfry/android/tools/ui/SwipeView;->smoothScrollToPage(I)V

    .line 270
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity$3;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;

    iget-object v0, v0, Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;->swipe_left:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 271
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity$3;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;

    iget-object v0, v0, Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;->swipe_right:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 272
    return-void
.end method
