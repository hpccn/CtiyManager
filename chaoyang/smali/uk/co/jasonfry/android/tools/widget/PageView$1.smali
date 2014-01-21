.class Luk/co/jasonfry/android/tools/widget/PageView$1;
.super Ljava/lang/Object;
.source "PageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Luk/co/jasonfry/android/tools/widget/PageView;->setAdapter(Landroid/widget/BaseAdapter;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Luk/co/jasonfry/android/tools/widget/PageView;

.field private final synthetic val$startPosition:I


# direct methods
.method constructor <init>(Luk/co/jasonfry/android/tools/widget/PageView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Luk/co/jasonfry/android/tools/widget/PageView$1;->this$0:Luk/co/jasonfry/android/tools/widget/PageView;

    iput p2, p0, Luk/co/jasonfry/android/tools/widget/PageView$1;->val$startPosition:I

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Luk/co/jasonfry/android/tools/widget/PageView$1;->this$0:Luk/co/jasonfry/android/tools/widget/PageView;

    #getter for: Luk/co/jasonfry/android/tools/widget/PageView;->mCarouselMode:Z
    invoke-static {v0}, Luk/co/jasonfry/android/tools/widget/PageView;->access$0(Luk/co/jasonfry/android/tools/widget/PageView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Luk/co/jasonfry/android/tools/widget/PageView$1;->val$startPosition:I

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Luk/co/jasonfry/android/tools/widget/PageView$1;->this$0:Luk/co/jasonfry/android/tools/widget/PageView;

    const/4 v1, 0x0

    #calls: Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->scrollToPage(I)V
    invoke-static {v0, v1}, Luk/co/jasonfry/android/tools/widget/PageView;->access$1(Luk/co/jasonfry/android/tools/widget/PageView;I)V

    .line 100
    :goto_0
    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Luk/co/jasonfry/android/tools/widget/PageView$1;->this$0:Luk/co/jasonfry/android/tools/widget/PageView;

    #getter for: Luk/co/jasonfry/android/tools/widget/PageView;->mCarouselMode:Z
    invoke-static {v0}, Luk/co/jasonfry/android/tools/widget/PageView;->access$0(Luk/co/jasonfry/android/tools/widget/PageView;)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Luk/co/jasonfry/android/tools/widget/PageView$1;->val$startPosition:I

    iget-object v1, p0, Luk/co/jasonfry/android/tools/widget/PageView$1;->this$0:Luk/co/jasonfry/android/tools/widget/PageView;

    #getter for: Luk/co/jasonfry/android/tools/widget/PageView;->mAdapter:Landroid/widget/Adapter;
    invoke-static {v1}, Luk/co/jasonfry/android/tools/widget/PageView;->access$2(Luk/co/jasonfry/android/tools/widget/PageView;)Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    .line 94
    iget-object v0, p0, Luk/co/jasonfry/android/tools/widget/PageView$1;->this$0:Luk/co/jasonfry/android/tools/widget/PageView;

    const/4 v1, 0x2

    #calls: Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->scrollToPage(I)V
    invoke-static {v0, v1}, Luk/co/jasonfry/android/tools/widget/PageView;->access$1(Luk/co/jasonfry/android/tools/widget/PageView;I)V

    goto :goto_0

    .line 98
    :cond_1
    iget-object v0, p0, Luk/co/jasonfry/android/tools/widget/PageView$1;->this$0:Luk/co/jasonfry/android/tools/widget/PageView;

    const/4 v1, 0x1

    #calls: Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->scrollToPage(I)V
    invoke-static {v0, v1}, Luk/co/jasonfry/android/tools/widget/PageView;->access$1(Luk/co/jasonfry/android/tools/widget/PageView;I)V

    goto :goto_0
.end method
