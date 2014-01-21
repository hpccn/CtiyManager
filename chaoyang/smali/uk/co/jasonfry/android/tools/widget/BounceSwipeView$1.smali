.class Luk/co/jasonfry/android/tools/widget/BounceSwipeView$1;
.super Landroid/os/Handler;
.source "BounceSwipeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->initBounceSwipeView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Luk/co/jasonfry/android/tools/widget/BounceSwipeView;


# direct methods
.method constructor <init>(Luk/co/jasonfry/android/tools/widget/BounceSwipeView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView$1;->this$0:Luk/co/jasonfry/android/tools/widget/BounceSwipeView;

    .line 63
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 67
    iget-object v1, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView$1;->this$0:Luk/co/jasonfry/android/tools/widget/BounceSwipeView;

    #getter for: Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->mCurrentAnimationFrame:I
    invoke-static {v1}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->access$12(Luk/co/jasonfry/android/tools/widget/BounceSwipeView;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView$1;->this$0:Luk/co/jasonfry/android/tools/widget/BounceSwipeView;

    #getter for: Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->mPaddingStartValue:I
    invoke-static {v2}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->access$13(Luk/co/jasonfry/android/tools/widget/BounceSwipeView;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView$1;->this$0:Luk/co/jasonfry/android/tools/widget/BounceSwipeView;

    #getter for: Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->mPaddingChange:I
    invoke-static {v3}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->access$14(Luk/co/jasonfry/android/tools/widget/BounceSwipeView;)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    const/high16 v4, 0x4080

    invoke-static {v1, v2, v3, v4}, Luk/co/jasonfry/android/tools/util/AnimationUtil;->quadraticOutEase(FFFF)I

    move-result v0

    .line 69
    .local v0, newPadding:I
    iget-object v1, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView$1;->this$0:Luk/co/jasonfry/android/tools/widget/BounceSwipeView;

    #getter for: Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->mBouncingSide:Z
    invoke-static {v1}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->access$15(Luk/co/jasonfry/android/tools/widget/BounceSwipeView;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 71
    iget-object v1, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView$1;->this$0:Luk/co/jasonfry/android/tools/widget/BounceSwipeView;

    iget-object v2, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView$1;->this$0:Luk/co/jasonfry/android/tools/widget/BounceSwipeView;

    invoke-virtual {v2}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView$1;->this$0:Luk/co/jasonfry/android/tools/widget/BounceSwipeView;

    invoke-virtual {v3}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView$1;->this$0:Luk/co/jasonfry/android/tools/widget/BounceSwipeView;

    invoke-virtual {v4}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->getPaddingBottom()I

    move-result v4

    #calls: Luk/co/jasonfry/android/tools/ui/SwipeView;->setPadding(IIII)V
    invoke-static {v1, v0, v2, v3, v4}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->access$9(Luk/co/jasonfry/android/tools/widget/BounceSwipeView;IIII)V

    .line 78
    :cond_0
    :goto_0
    iget-object v1, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView$1;->this$0:Luk/co/jasonfry/android/tools/widget/BounceSwipeView;

    #getter for: Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->mCurrentAnimationFrame:I
    invoke-static {v1}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->access$12(Luk/co/jasonfry/android/tools/widget/BounceSwipeView;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    #setter for: Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->mCurrentAnimationFrame:I
    invoke-static {v1, v2}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->access$16(Luk/co/jasonfry/android/tools/widget/BounceSwipeView;I)V

    .line 79
    iget-object v1, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView$1;->this$0:Luk/co/jasonfry/android/tools/widget/BounceSwipeView;

    #getter for: Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->mCurrentAnimationFrame:I
    invoke-static {v1}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->access$12(Luk/co/jasonfry/android/tools/widget/BounceSwipeView;)I

    move-result v1

    const/4 v2, 0x4

    if-gt v1, v2, :cond_1

    .line 81
    iget-object v1, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView$1;->this$0:Luk/co/jasonfry/android/tools/widget/BounceSwipeView;

    iget-object v1, v1, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->mEaseAnimationFrameHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    const-wide/16 v3, 0x1e

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 83
    :cond_1
    return-void

    .line 73
    :cond_2
    iget-object v1, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView$1;->this$0:Luk/co/jasonfry/android/tools/widget/BounceSwipeView;

    #getter for: Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->mBouncingSide:Z
    invoke-static {v1}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->access$15(Luk/co/jasonfry/android/tools/widget/BounceSwipeView;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 75
    iget-object v1, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView$1;->this$0:Luk/co/jasonfry/android/tools/widget/BounceSwipeView;

    iget-object v2, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView$1;->this$0:Luk/co/jasonfry/android/tools/widget/BounceSwipeView;

    invoke-virtual {v2}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView$1;->this$0:Luk/co/jasonfry/android/tools/widget/BounceSwipeView;

    invoke-virtual {v3}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView$1;->this$0:Luk/co/jasonfry/android/tools/widget/BounceSwipeView;

    invoke-virtual {v4}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->getPaddingBottom()I

    move-result v4

    #calls: Luk/co/jasonfry/android/tools/ui/SwipeView;->setPadding(IIII)V
    invoke-static {v1, v2, v3, v0, v4}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->access$9(Luk/co/jasonfry/android/tools/widget/BounceSwipeView;IIII)V

    goto :goto_0
.end method
