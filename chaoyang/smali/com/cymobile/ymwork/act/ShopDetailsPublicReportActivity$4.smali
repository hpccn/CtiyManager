.class Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity$4;
.super Ljava/lang/Object;
.source "ShopDetailsPublicReportActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->loadImages()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity$4;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    const/4 v1, 0x1

    .line 277
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity$4;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;

    iget-object v0, v0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->mSwipeView:Luk/co/jasonfry/android/tools/ui/SwipeView;

    invoke-virtual {v0, v1}, Luk/co/jasonfry/android/tools/ui/SwipeView;->smoothScrollToPage(I)V

    .line 279
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity$4;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;

    iget-object v0, v0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->swipe_left:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 280
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity$4;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;

    iget-object v0, v0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->swipe_right:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 281
    return-void
.end method
