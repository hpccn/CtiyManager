.class Luk/co/jasonfry/android/tools/widget/BounceSwipeView$BounceViewOnTouchListener;
.super Ljava/lang/Object;
.source "BounceSwipeView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luk/co/jasonfry/android/tools/widget/BounceSwipeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BounceViewOnTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Luk/co/jasonfry/android/tools/widget/BounceSwipeView;


# direct methods
.method private constructor <init>(Luk/co/jasonfry/android/tools/widget/BounceSwipeView;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView$BounceViewOnTouchListener;->this$0:Luk/co/jasonfry/android/tools/widget/BounceSwipeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Luk/co/jasonfry/android/tools/widget/BounceSwipeView;Luk/co/jasonfry/android/tools/widget/BounceSwipeView$BounceViewOnTouchListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 111
    invoke-direct {p0, p1}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView$BounceViewOnTouchListener;-><init>(Luk/co/jasonfry/android/tools/widget/BounceSwipeView;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "view"
    .parameter "ev"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 115
    iget-object v4, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView$BounceViewOnTouchListener;->this$0:Luk/co/jasonfry/android/tools/widget/BounceSwipeView;

    #getter for: Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->mOnTouchListener:Landroid/view/View$OnTouchListener;
    invoke-static {v4}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->access$0(Luk/co/jasonfry/android/tools/widget/BounceSwipeView;)Landroid/view/View$OnTouchListener;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView$BounceViewOnTouchListener;->this$0:Luk/co/jasonfry/android/tools/widget/BounceSwipeView;

    #getter for: Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->mOnTouchListener:Landroid/view/View$OnTouchListener;
    invoke-static {v4}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->access$0(Luk/co/jasonfry/android/tools/widget/BounceSwipeView;)Landroid/view/View$OnTouchListener;

    move-result-object v4

    invoke-interface {v4, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 175
    :goto_0
    return v2

    .line 120
    :cond_0
    iget-object v4, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView$BounceViewOnTouchListener;->this$0:Luk/co/jasonfry/android/tools/widget/BounceSwipeView;

    #getter for: Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->mBounceEnabled:Z
    invoke-static {v4}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->access$1(Luk/co/jasonfry/android/tools/widget/BounceSwipeView;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 122
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_1
    :goto_1
    move v2, v3

    .line 175
    goto :goto_0

    .line 125
    :pswitch_0
    iget-object v4, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView$BounceViewOnTouchListener;->this$0:Luk/co/jasonfry/android/tools/widget/BounceSwipeView;

    invoke-virtual {v4}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->getPageCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    iget-object v5, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView$BounceViewOnTouchListener;->this$0:Luk/co/jasonfry/android/tools/widget/BounceSwipeView;

    invoke-virtual {v5}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->getPageWidth()I

    move-result v5

    mul-int/2addr v4, v5

    iget-object v5, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView$BounceViewOnTouchListener;->this$0:Luk/co/jasonfry/android/tools/widget/BounceSwipeView;

    invoke-virtual {v5}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->getPageWidth()I

    move-result v5

    rem-int/lit8 v5, v5, 0x2

    sub-int v0, v4, v5

    .line 126
    .local v0, maxScrollAmount:I
    iget-object v4, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView$BounceViewOnTouchListener;->this$0:Luk/co/jasonfry/android/tools/widget/BounceSwipeView;

    invoke-virtual {v4}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->getScrollX()I

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView$BounceViewOnTouchListener;->this$0:Luk/co/jasonfry/android/tools/widget/BounceSwipeView;

    #getter for: Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->mAtEdge:Z
    invoke-static {v4}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->access$2(Luk/co/jasonfry/android/tools/widget/BounceSwipeView;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    iget-object v4, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView$BounceViewOnTouchListener;->this$0:Luk/co/jasonfry/android/tools/widget/BounceSwipeView;

    invoke-virtual {v4}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->getScrollX()I

    move-result v4

    if-ne v4, v0, :cond_4

    iget-object v4, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView$BounceViewOnTouchListener;->this$0:Luk/co/jasonfry/android/tools/widget/BounceSwipeView;

    #getter for: Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->mAtEdge:Z
    invoke-static {v4}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->access$2(Luk/co/jasonfry/android/tools/widget/BounceSwipeView;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 128
    :cond_3
    iget-object v4, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView$BounceViewOnTouchListener;->this$0:Luk/co/jasonfry/android/tools/widget/BounceSwipeView;

    #setter for: Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->mAtEdge:Z
    invoke-static {v4, v2}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->access$3(Luk/co/jasonfry/android/tools/widget/BounceSwipeView;Z)V

    .line 129
    iget-object v2, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView$BounceViewOnTouchListener;->this$0:Luk/co/jasonfry/android/tools/widget/BounceSwipeView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    #setter for: Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->mAtEdgeStartPosition:F
    invoke-static {v2, v4}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->access$4(Luk/co/jasonfry/android/tools/widget/BounceSwipeView;F)V

    .line 130
    iget-object v2, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView$BounceViewOnTouchListener;->this$0:Luk/co/jasonfry/android/tools/widget/BounceSwipeView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    #setter for: Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->mAtEdgePreviousPosition:F
    invoke-static {v2, v4}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->access$5(Luk/co/jasonfry/android/tools/widget/BounceSwipeView;F)V

    goto :goto_1

    .line 132
    :cond_4
    iget-object v4, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView$BounceViewOnTouchListener;->this$0:Luk/co/jasonfry/android/tools/widget/BounceSwipeView;

    invoke-virtual {v4}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->getScrollX()I

    move-result v4

    if-nez v4, :cond_5

    .line 134
    iget-object v3, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView$BounceViewOnTouchListener;->this$0:Luk/co/jasonfry/android/tools/widget/BounceSwipeView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    #setter for: Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->mAtEdgePreviousPosition:F
    invoke-static {v3, v4}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->access$5(Luk/co/jasonfry/android/tools/widget/BounceSwipeView;F)V

    .line 135
    iget-object v3, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView$BounceViewOnTouchListener;->this$0:Luk/co/jasonfry/android/tools/widget/BounceSwipeView;

    #setter for: Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->mBouncingSide:Z
    invoke-static {v3, v2}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->access$6(Luk/co/jasonfry/android/tools/widget/BounceSwipeView;Z)V

    .line 136
    iget-object v3, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView$BounceViewOnTouchListener;->this$0:Luk/co/jasonfry/android/tools/widget/BounceSwipeView;

    iget-object v4, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView$BounceViewOnTouchListener;->this$0:Luk/co/jasonfry/android/tools/widget/BounceSwipeView;

    #getter for: Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->mAtEdgePreviousPosition:F
    invoke-static {v4}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->access$7(Luk/co/jasonfry/android/tools/widget/BounceSwipeView;)F

    move-result v4

    iget-object v5, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView$BounceViewOnTouchListener;->this$0:Luk/co/jasonfry/android/tools/widget/BounceSwipeView;

    #getter for: Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->mAtEdgeStartPosition:F
    invoke-static {v5}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->access$8(Luk/co/jasonfry/android/tools/widget/BounceSwipeView;)F

    move-result v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView$BounceViewOnTouchListener;->this$0:Luk/co/jasonfry/android/tools/widget/BounceSwipeView;

    invoke-virtual {v5}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->getPaddingTop()I

    move-result v5

    iget-object v6, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView$BounceViewOnTouchListener;->this$0:Luk/co/jasonfry/android/tools/widget/BounceSwipeView;

    invoke-virtual {v6}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->getPaddingRight()I

    move-result v6

    iget-object v7, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView$BounceViewOnTouchListener;->this$0:Luk/co/jasonfry/android/tools/widget/BounceSwipeView;

    invoke-virtual {v7}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->getPaddingBottom()I

    move-result v7

    #calls: Luk/co/jasonfry/android/tools/ui/SwipeView;->setPadding(IIII)V
    invoke-static {v3, v4, v5, v6, v7}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->access$9(Luk/co/jasonfry/android/tools/widget/BounceSwipeView;IIII)V

    goto/16 :goto_0

    .line 139
    :cond_5
    iget-object v4, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView$BounceViewOnTouchListener;->this$0:Luk/co/jasonfry/android/tools/widget/BounceSwipeView;

    invoke-virtual {v4}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->getScrollX()I

    move-result v4

    if-lt v4, v0, :cond_7

    .line 141
    iget-object v4, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView$BounceViewOnTouchListener;->this$0:Luk/co/jasonfry/android/tools/widget/BounceSwipeView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    #setter for: Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->mAtEdgePreviousPosition:F
    invoke-static {v4, v5}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->access$5(Luk/co/jasonfry/android/tools/widget/BounceSwipeView;F)V

    .line 142
    iget-object v4, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView$BounceViewOnTouchListener;->this$0:Luk/co/jasonfry/android/tools/widget/BounceSwipeView;

    #setter for: Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->mBouncingSide:Z
    invoke-static {v4, v3}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->access$6(Luk/co/jasonfry/android/tools/widget/BounceSwipeView;Z)V

    .line 144
    iget-object v3, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView$BounceViewOnTouchListener;->this$0:Luk/co/jasonfry/android/tools/widget/BounceSwipeView;

    #getter for: Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->mAtEdgeStartPosition:F
    invoke-static {v3}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->access$8(Luk/co/jasonfry/android/tools/widget/BounceSwipeView;)F

    move-result v3

    iget-object v4, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView$BounceViewOnTouchListener;->this$0:Luk/co/jasonfry/android/tools/widget/BounceSwipeView;

    #getter for: Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->mAtEdgePreviousPosition:F
    invoke-static {v4}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->access$7(Luk/co/jasonfry/android/tools/widget/BounceSwipeView;)F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    div-int/lit8 v1, v3, 0x2

    .line 145
    .local v1, newRightPadding:I
    iget-object v3, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView$BounceViewOnTouchListener;->this$0:Luk/co/jasonfry/android/tools/widget/BounceSwipeView;

    #getter for: Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->mPaddingRight:I
    invoke-static {v3}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->access$10(Luk/co/jasonfry/android/tools/widget/BounceSwipeView;)I

    move-result v3

    if-lt v1, v3, :cond_6

    .line 147
    iget-object v3, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView$BounceViewOnTouchListener;->this$0:Luk/co/jasonfry/android/tools/widget/BounceSwipeView;

    iget-object v4, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView$BounceViewOnTouchListener;->this$0:Luk/co/jasonfry/android/tools/widget/BounceSwipeView;

    invoke-virtual {v4}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->getPaddingLeft()I

    move-result v4

    iget-object v5, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView$BounceViewOnTouchListener;->this$0:Luk/co/jasonfry/android/tools/widget/BounceSwipeView;

    invoke-virtual {v5}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->getPaddingTop()I

    move-result v5

    iget-object v6, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView$BounceViewOnTouchListener;->this$0:Luk/co/jasonfry/android/tools/widget/BounceSwipeView;

    invoke-virtual {v6}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->getPaddingBottom()I

    move-result v6

    #calls: Luk/co/jasonfry/android/tools/ui/SwipeView;->setPadding(IIII)V
    invoke-static {v3, v4, v5, v1, v6}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->access$9(Luk/co/jasonfry/android/tools/widget/BounceSwipeView;IIII)V

    .line 154
    :goto_2
    iget-object v3, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView$BounceViewOnTouchListener;->this$0:Luk/co/jasonfry/android/tools/widget/BounceSwipeView;

    int-to-float v4, v0

    iget-object v5, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView$BounceViewOnTouchListener;->this$0:Luk/co/jasonfry/android/tools/widget/BounceSwipeView;

    #getter for: Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->mAtEdgeStartPosition:F
    invoke-static {v5}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->access$8(Luk/co/jasonfry/android/tools/widget/BounceSwipeView;)F

    move-result v5

    iget-object v6, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView$BounceViewOnTouchListener;->this$0:Luk/co/jasonfry/android/tools/widget/BounceSwipeView;

    #getter for: Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->mAtEdgePreviousPosition:F
    invoke-static {v6}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->access$7(Luk/co/jasonfry/android/tools/widget/BounceSwipeView;)F

    move-result v6

    sub-float/2addr v5, v6

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v5, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView$BounceViewOnTouchListener;->this$0:Luk/co/jasonfry/android/tools/widget/BounceSwipeView;

    invoke-virtual {v5}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->getScrollY()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->scrollTo(II)V

    goto/16 :goto_0

    .line 151
    :cond_6
    iget-object v3, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView$BounceViewOnTouchListener;->this$0:Luk/co/jasonfry/android/tools/widget/BounceSwipeView;

    iget-object v4, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView$BounceViewOnTouchListener;->this$0:Luk/co/jasonfry/android/tools/widget/BounceSwipeView;

    invoke-virtual {v4}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->getPaddingLeft()I

    move-result v4

    iget-object v5, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView$BounceViewOnTouchListener;->this$0:Luk/co/jasonfry/android/tools/widget/BounceSwipeView;

    invoke-virtual {v5}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->getPaddingTop()I

    move-result v5

    iget-object v6, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView$BounceViewOnTouchListener;->this$0:Luk/co/jasonfry/android/tools/widget/BounceSwipeView;

    #getter for: Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->mPaddingRight:I
    invoke-static {v6}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->access$10(Luk/co/jasonfry/android/tools/widget/BounceSwipeView;)I

    move-result v6

    iget-object v7, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView$BounceViewOnTouchListener;->this$0:Luk/co/jasonfry/android/tools/widget/BounceSwipeView;

    invoke-virtual {v7}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->getPaddingBottom()I

    move-result v7

    #calls: Luk/co/jasonfry/android/tools/ui/SwipeView;->setPadding(IIII)V
    invoke-static {v3, v4, v5, v6, v7}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->access$9(Luk/co/jasonfry/android/tools/widget/BounceSwipeView;IIII)V

    goto :goto_2

    .line 159
    .end local v1           #newRightPadding:I
    :cond_7
    iget-object v2, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView$BounceViewOnTouchListener;->this$0:Luk/co/jasonfry/android/tools/widget/BounceSwipeView;

    #setter for: Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->mAtEdge:Z
    invoke-static {v2, v3}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->access$3(Luk/co/jasonfry/android/tools/widget/BounceSwipeView;Z)V

    goto/16 :goto_1

    .line 164
    .end local v0           #maxScrollAmount:I
    :pswitch_1
    iget-object v4, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView$BounceViewOnTouchListener;->this$0:Luk/co/jasonfry/android/tools/widget/BounceSwipeView;

    #getter for: Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->mAtEdge:Z
    invoke-static {v4}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->access$2(Luk/co/jasonfry/android/tools/widget/BounceSwipeView;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 166
    iget-object v4, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView$BounceViewOnTouchListener;->this$0:Luk/co/jasonfry/android/tools/widget/BounceSwipeView;

    #setter for: Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->mAtEdge:Z
    invoke-static {v4, v3}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->access$3(Luk/co/jasonfry/android/tools/widget/BounceSwipeView;Z)V

    .line 167
    iget-object v3, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView$BounceViewOnTouchListener;->this$0:Luk/co/jasonfry/android/tools/widget/BounceSwipeView;

    #setter for: Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->mAtEdgePreviousPosition:F
    invoke-static {v3, v5}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->access$5(Luk/co/jasonfry/android/tools/widget/BounceSwipeView;F)V

    .line 168
    iget-object v3, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView$BounceViewOnTouchListener;->this$0:Luk/co/jasonfry/android/tools/widget/BounceSwipeView;

    #setter for: Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->mAtEdgeStartPosition:F
    invoke-static {v3, v5}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->access$4(Luk/co/jasonfry/android/tools/widget/BounceSwipeView;F)V

    .line 169
    iget-object v3, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView$BounceViewOnTouchListener;->this$0:Luk/co/jasonfry/android/tools/widget/BounceSwipeView;

    #calls: Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->doBounceBackEaseAnimation()V
    invoke-static {v3}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->access$11(Luk/co/jasonfry/android/tools/widget/BounceSwipeView;)V

    goto/16 :goto_0

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
