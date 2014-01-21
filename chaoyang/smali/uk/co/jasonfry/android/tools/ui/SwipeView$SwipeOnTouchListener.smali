.class Luk/co/jasonfry/android/tools/ui/SwipeView$SwipeOnTouchListener;
.super Ljava/lang/Object;
.source "SwipeView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luk/co/jasonfry/android/tools/ui/SwipeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SwipeOnTouchListener"
.end annotation


# instance fields
.field private mDistanceX:I

.field private mFirstMotionEvent:Z

.field private mPreviousDirection:I

.field private mSendingDummyMotionEvent:Z

.field final synthetic this$0:Luk/co/jasonfry/android/tools/ui/SwipeView;


# direct methods
.method private constructor <init>(Luk/co/jasonfry/android/tools/ui/SwipeView;)V
    .locals 1
    .parameter

    .prologue
    .line 473
    iput-object p1, p0, Luk/co/jasonfry/android/tools/ui/SwipeView$SwipeOnTouchListener;->this$0:Luk/co/jasonfry/android/tools/ui/SwipeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 475
    const/4 v0, 0x0

    iput-boolean v0, p0, Luk/co/jasonfry/android/tools/ui/SwipeView$SwipeOnTouchListener;->mSendingDummyMotionEvent:Z

    .line 478
    const/4 v0, 0x1

    iput-boolean v0, p0, Luk/co/jasonfry/android/tools/ui/SwipeView$SwipeOnTouchListener;->mFirstMotionEvent:Z

    return-void
.end method

.method synthetic constructor <init>(Luk/co/jasonfry/android/tools/ui/SwipeView;Luk/co/jasonfry/android/tools/ui/SwipeView$SwipeOnTouchListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 473
    invoke-direct {p0, p1}, Luk/co/jasonfry/android/tools/ui/SwipeView$SwipeOnTouchListener;-><init>(Luk/co/jasonfry/android/tools/ui/SwipeView;)V

    return-void
.end method

.method private actionDown(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 517
    iget-object v0, p0, Luk/co/jasonfry/android/tools/ui/SwipeView$SwipeOnTouchListener;->this$0:Luk/co/jasonfry/android/tools/ui/SwipeView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    #setter for: Luk/co/jasonfry/android/tools/ui/SwipeView;->mMotionStartX:I
    invoke-static {v0, v1}, Luk/co/jasonfry/android/tools/ui/SwipeView;->access$2(Luk/co/jasonfry/android/tools/ui/SwipeView;I)V

    .line 518
    iget-object v0, p0, Luk/co/jasonfry/android/tools/ui/SwipeView$SwipeOnTouchListener;->this$0:Luk/co/jasonfry/android/tools/ui/SwipeView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    #setter for: Luk/co/jasonfry/android/tools/ui/SwipeView;->mMotionStartY:I
    invoke-static {v0, v1}, Luk/co/jasonfry/android/tools/ui/SwipeView;->access$3(Luk/co/jasonfry/android/tools/ui/SwipeView;I)V

    .line 519
    iput-boolean v2, p0, Luk/co/jasonfry/android/tools/ui/SwipeView$SwipeOnTouchListener;->mFirstMotionEvent:Z

    .line 520
    return v2
.end method

.method private actionMove(Landroid/view/MotionEvent;)Z
    .locals 19
    .parameter "event"

    .prologue
    .line 525
    move-object/from16 v0, p0

    iget-object v2, v0, Luk/co/jasonfry/android/tools/ui/SwipeView$SwipeOnTouchListener;->this$0:Luk/co/jasonfry/android/tools/ui/SwipeView;

    #getter for: Luk/co/jasonfry/android/tools/ui/SwipeView;->mMotionStartX:I
    invoke-static {v2}, Luk/co/jasonfry/android/tools/ui/SwipeView;->access$4(Luk/co/jasonfry/android/tools/ui/SwipeView;)I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    sub-int v17, v2, v3

    .line 528
    .local v17, newDistance:I
    if-gez v17, :cond_1

    .line 530
    move-object/from16 v0, p0

    iget v2, v0, Luk/co/jasonfry/android/tools/ui/SwipeView$SwipeOnTouchListener;->mDistanceX:I

    add-int/lit8 v2, v2, 0x4

    move/from16 v0, v17

    if-gt v2, v0, :cond_0

    const/16 v16, 0x1

    .line 538
    .local v16, newDirection:I
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Luk/co/jasonfry/android/tools/ui/SwipeView$SwipeOnTouchListener;->mPreviousDirection:I

    move/from16 v0, v16

    if-eq v0, v2, :cond_3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Luk/co/jasonfry/android/tools/ui/SwipeView$SwipeOnTouchListener;->mFirstMotionEvent:Z

    if-nez v2, :cond_3

    .line 540
    move-object/from16 v0, p0

    iget-object v2, v0, Luk/co/jasonfry/android/tools/ui/SwipeView$SwipeOnTouchListener;->this$0:Luk/co/jasonfry/android/tools/ui/SwipeView;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    #setter for: Luk/co/jasonfry/android/tools/ui/SwipeView;->mMotionStartX:I
    invoke-static {v2, v3}, Luk/co/jasonfry/android/tools/ui/SwipeView;->access$2(Luk/co/jasonfry/android/tools/ui/SwipeView;I)V

    .line 541
    move-object/from16 v0, p0

    iget-object v2, v0, Luk/co/jasonfry/android/tools/ui/SwipeView$SwipeOnTouchListener;->this$0:Luk/co/jasonfry/android/tools/ui/SwipeView;

    #getter for: Luk/co/jasonfry/android/tools/ui/SwipeView;->mMotionStartX:I
    invoke-static {v2}, Luk/co/jasonfry/android/tools/ui/SwipeView;->access$4(Luk/co/jasonfry/android/tools/ui/SwipeView;)I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Luk/co/jasonfry/android/tools/ui/SwipeView$SwipeOnTouchListener;->mDistanceX:I

    .line 548
    :goto_1
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Luk/co/jasonfry/android/tools/ui/SwipeView$SwipeOnTouchListener;->mPreviousDirection:I

    .line 550
    move-object/from16 v0, p0

    iget-object v2, v0, Luk/co/jasonfry/android/tools/ui/SwipeView$SwipeOnTouchListener;->this$0:Luk/co/jasonfry/android/tools/ui/SwipeView;

    #getter for: Luk/co/jasonfry/android/tools/ui/SwipeView;->mJustInterceptedAndIgnored:Z
    invoke-static {v2}, Luk/co/jasonfry/android/tools/ui/SwipeView;->access$1(Luk/co/jasonfry/android/tools/ui/SwipeView;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 552
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Luk/co/jasonfry/android/tools/ui/SwipeView$SwipeOnTouchListener;->mSendingDummyMotionEvent:Z

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Luk/co/jasonfry/android/tools/ui/SwipeView$SwipeOnTouchListener;->this$0:Luk/co/jasonfry/android/tools/ui/SwipeView;

    move-object/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Luk/co/jasonfry/android/tools/ui/SwipeView$SwipeOnTouchListener;->this$0:Luk/co/jasonfry/android/tools/ui/SwipeView;

    #getter for: Luk/co/jasonfry/android/tools/ui/SwipeView;->mMotionStartX:I
    invoke-static {v7}, Luk/co/jasonfry/android/tools/ui/SwipeView;->access$4(Luk/co/jasonfry/android/tools/ui/SwipeView;)I

    move-result v7

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget-object v8, v0, Luk/co/jasonfry/android/tools/ui/SwipeView$SwipeOnTouchListener;->this$0:Luk/co/jasonfry/android/tools/ui/SwipeView;

    #getter for: Luk/co/jasonfry/android/tools/ui/SwipeView;->mMotionStartY:I
    invoke-static {v8}, Luk/co/jasonfry/android/tools/ui/SwipeView;->access$5(Luk/co/jasonfry/android/tools/ui/SwipeView;)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSize()F

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v15

    invoke-static/range {v2 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Luk/co/jasonfry/android/tools/ui/SwipeView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 554
    move-object/from16 v0, p0

    iget-object v2, v0, Luk/co/jasonfry/android/tools/ui/SwipeView$SwipeOnTouchListener;->this$0:Luk/co/jasonfry/android/tools/ui/SwipeView;

    const/4 v3, 0x0

    #setter for: Luk/co/jasonfry/android/tools/ui/SwipeView;->mJustInterceptedAndIgnored:Z
    invoke-static {v2, v3}, Luk/co/jasonfry/android/tools/ui/SwipeView;->access$6(Luk/co/jasonfry/android/tools/ui/SwipeView;Z)V

    .line 556
    const/4 v2, 0x1

    .line 558
    :goto_2
    return v2

    .line 530
    .end local v16           #newDirection:I
    :cond_0
    const/16 v16, -0x1

    goto/16 :goto_0

    .line 534
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Luk/co/jasonfry/android/tools/ui/SwipeView$SwipeOnTouchListener;->mDistanceX:I

    add-int/lit8 v2, v2, -0x4

    move/from16 v0, v17

    if-gt v2, v0, :cond_2

    const/16 v16, 0x1

    .restart local v16       #newDirection:I
    :goto_3
    goto/16 :goto_0

    .end local v16           #newDirection:I
    :cond_2
    const/16 v16, -0x1

    goto :goto_3

    .line 545
    .restart local v16       #newDirection:I
    :cond_3
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Luk/co/jasonfry/android/tools/ui/SwipeView$SwipeOnTouchListener;->mDistanceX:I

    goto :goto_1

    .line 558
    :cond_4
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private actionUp(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/high16 v6, 0x3f80

    .line 563
    iget-object v4, p0, Luk/co/jasonfry/android/tools/ui/SwipeView$SwipeOnTouchListener;->this$0:Luk/co/jasonfry/android/tools/ui/SwipeView;

    invoke-virtual {v4}, Luk/co/jasonfry/android/tools/ui/SwipeView;->getScrollX()I

    move-result v4

    int-to-float v2, v4

    .line 564
    .local v2, fingerUpPosition:F
    iget-object v4, p0, Luk/co/jasonfry/android/tools/ui/SwipeView$SwipeOnTouchListener;->this$0:Luk/co/jasonfry/android/tools/ui/SwipeView;

    #getter for: Luk/co/jasonfry/android/tools/ui/SwipeView;->mLinearLayout:Landroid/widget/LinearLayout;
    invoke-static {v4}, Luk/co/jasonfry/android/tools/ui/SwipeView;->access$7(Luk/co/jasonfry/android/tools/ui/SwipeView;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v4

    iget-object v5, p0, Luk/co/jasonfry/android/tools/ui/SwipeView$SwipeOnTouchListener;->this$0:Luk/co/jasonfry/android/tools/ui/SwipeView;

    #getter for: Luk/co/jasonfry/android/tools/ui/SwipeView;->mPageWidth:I
    invoke-static {v5}, Luk/co/jasonfry/android/tools/ui/SwipeView;->access$8(Luk/co/jasonfry/android/tools/ui/SwipeView;)I

    move-result v5

    div-int/2addr v4, v5

    int-to-float v3, v4

    .line 565
    .local v3, numberOfPages:F
    iget-object v4, p0, Luk/co/jasonfry/android/tools/ui/SwipeView$SwipeOnTouchListener;->this$0:Luk/co/jasonfry/android/tools/ui/SwipeView;

    #getter for: Luk/co/jasonfry/android/tools/ui/SwipeView;->mPageWidth:I
    invoke-static {v4}, Luk/co/jasonfry/android/tools/ui/SwipeView;->access$8(Luk/co/jasonfry/android/tools/ui/SwipeView;)I

    move-result v4

    int-to-float v4, v4

    div-float v1, v2, v4

    .line 566
    .local v1, fingerUpPage:F
    const/4 v0, 0x0

    .line 568
    .local v0, edgePosition:F
    iget v4, p0, Luk/co/jasonfry/android/tools/ui/SwipeView$SwipeOnTouchListener;->mPreviousDirection:I

    if-ne v4, v8, :cond_3

    .line 570
    iget v4, p0, Luk/co/jasonfry/android/tools/ui/SwipeView$SwipeOnTouchListener;->mDistanceX:I

    invoke-static {}, Luk/co/jasonfry/android/tools/ui/SwipeView;->access$9()I

    move-result v5

    if-le v4, v5, :cond_1

    .line 572
    iget-object v4, p0, Luk/co/jasonfry/android/tools/ui/SwipeView$SwipeOnTouchListener;->this$0:Luk/co/jasonfry/android/tools/ui/SwipeView;

    #getter for: Luk/co/jasonfry/android/tools/ui/SwipeView;->mCurrentPage:I
    invoke-static {v4}, Luk/co/jasonfry/android/tools/ui/SwipeView;->access$10(Luk/co/jasonfry/android/tools/ui/SwipeView;)I

    move-result v4

    int-to-float v4, v4

    sub-float v5, v3, v6

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 574
    add-float v4, v1, v6

    float-to-int v4, v4

    iget-object v5, p0, Luk/co/jasonfry/android/tools/ui/SwipeView$SwipeOnTouchListener;->this$0:Luk/co/jasonfry/android/tools/ui/SwipeView;

    #getter for: Luk/co/jasonfry/android/tools/ui/SwipeView;->mPageWidth:I
    invoke-static {v5}, Luk/co/jasonfry/android/tools/ui/SwipeView;->access$8(Luk/co/jasonfry/android/tools/ui/SwipeView;)I

    move-result v5

    mul-int/2addr v4, v5

    int-to-float v0, v4

    .line 620
    :goto_0
    iget-object v4, p0, Luk/co/jasonfry/android/tools/ui/SwipeView$SwipeOnTouchListener;->this$0:Luk/co/jasonfry/android/tools/ui/SwipeView;

    float-to-int v5, v0

    iget-object v6, p0, Luk/co/jasonfry/android/tools/ui/SwipeView$SwipeOnTouchListener;->this$0:Luk/co/jasonfry/android/tools/ui/SwipeView;

    #getter for: Luk/co/jasonfry/android/tools/ui/SwipeView;->mPageWidth:I
    invoke-static {v6}, Luk/co/jasonfry/android/tools/ui/SwipeView;->access$8(Luk/co/jasonfry/android/tools/ui/SwipeView;)I

    move-result v6

    div-int/2addr v5, v6

    invoke-virtual {v4, v5}, Luk/co/jasonfry/android/tools/ui/SwipeView;->smoothScrollToPage(I)V

    .line 621
    iput-boolean v8, p0, Luk/co/jasonfry/android/tools/ui/SwipeView$SwipeOnTouchListener;->mFirstMotionEvent:Z

    .line 622
    iput v7, p0, Luk/co/jasonfry/android/tools/ui/SwipeView$SwipeOnTouchListener;->mDistanceX:I

    .line 623
    iget-object v4, p0, Luk/co/jasonfry/android/tools/ui/SwipeView$SwipeOnTouchListener;->this$0:Luk/co/jasonfry/android/tools/ui/SwipeView;

    #setter for: Luk/co/jasonfry/android/tools/ui/SwipeView;->mMostlyScrollingInX:Z
    invoke-static {v4, v7}, Luk/co/jasonfry/android/tools/ui/SwipeView;->access$11(Luk/co/jasonfry/android/tools/ui/SwipeView;Z)V

    .line 624
    iget-object v4, p0, Luk/co/jasonfry/android/tools/ui/SwipeView$SwipeOnTouchListener;->this$0:Luk/co/jasonfry/android/tools/ui/SwipeView;

    #setter for: Luk/co/jasonfry/android/tools/ui/SwipeView;->mMostlyScrollingInY:Z
    invoke-static {v4, v7}, Luk/co/jasonfry/android/tools/ui/SwipeView;->access$12(Luk/co/jasonfry/android/tools/ui/SwipeView;Z)V

    .line 626
    return v8

    .line 578
    :cond_0
    iget-object v4, p0, Luk/co/jasonfry/android/tools/ui/SwipeView$SwipeOnTouchListener;->this$0:Luk/co/jasonfry/android/tools/ui/SwipeView;

    #getter for: Luk/co/jasonfry/android/tools/ui/SwipeView;->mCurrentPage:I
    invoke-static {v4}, Luk/co/jasonfry/android/tools/ui/SwipeView;->access$10(Luk/co/jasonfry/android/tools/ui/SwipeView;)I

    move-result v4

    iget-object v5, p0, Luk/co/jasonfry/android/tools/ui/SwipeView$SwipeOnTouchListener;->this$0:Luk/co/jasonfry/android/tools/ui/SwipeView;

    #getter for: Luk/co/jasonfry/android/tools/ui/SwipeView;->mPageWidth:I
    invoke-static {v5}, Luk/co/jasonfry/android/tools/ui/SwipeView;->access$8(Luk/co/jasonfry/android/tools/ui/SwipeView;)I

    move-result v5

    mul-int/2addr v4, v5

    int-to-float v0, v4

    goto :goto_0

    .line 583
    :cond_1
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    sub-float v5, v3, v6

    cmpl-float v4, v4, v5

    if-nez v4, :cond_2

    .line 588
    add-float v4, v1, v6

    float-to-int v4, v4

    iget-object v5, p0, Luk/co/jasonfry/android/tools/ui/SwipeView$SwipeOnTouchListener;->this$0:Luk/co/jasonfry/android/tools/ui/SwipeView;

    #getter for: Luk/co/jasonfry/android/tools/ui/SwipeView;->mPageWidth:I
    invoke-static {v5}, Luk/co/jasonfry/android/tools/ui/SwipeView;->access$8(Luk/co/jasonfry/android/tools/ui/SwipeView;)I

    move-result v5

    mul-int/2addr v4, v5

    int-to-float v0, v4

    goto :goto_0

    .line 592
    :cond_2
    iget-object v4, p0, Luk/co/jasonfry/android/tools/ui/SwipeView$SwipeOnTouchListener;->this$0:Luk/co/jasonfry/android/tools/ui/SwipeView;

    #getter for: Luk/co/jasonfry/android/tools/ui/SwipeView;->mCurrentPage:I
    invoke-static {v4}, Luk/co/jasonfry/android/tools/ui/SwipeView;->access$10(Luk/co/jasonfry/android/tools/ui/SwipeView;)I

    move-result v4

    iget-object v5, p0, Luk/co/jasonfry/android/tools/ui/SwipeView$SwipeOnTouchListener;->this$0:Luk/co/jasonfry/android/tools/ui/SwipeView;

    #getter for: Luk/co/jasonfry/android/tools/ui/SwipeView;->mPageWidth:I
    invoke-static {v5}, Luk/co/jasonfry/android/tools/ui/SwipeView;->access$8(Luk/co/jasonfry/android/tools/ui/SwipeView;)I

    move-result v5

    mul-int/2addr v4, v5

    int-to-float v0, v4

    goto :goto_0

    .line 599
    :cond_3
    iget v4, p0, Luk/co/jasonfry/android/tools/ui/SwipeView$SwipeOnTouchListener;->mDistanceX:I

    invoke-static {}, Luk/co/jasonfry/android/tools/ui/SwipeView;->access$9()I

    move-result v5

    neg-int v5, v5

    if-ge v4, v5, :cond_4

    .line 601
    float-to-int v4, v1

    iget-object v5, p0, Luk/co/jasonfry/android/tools/ui/SwipeView$SwipeOnTouchListener;->this$0:Luk/co/jasonfry/android/tools/ui/SwipeView;

    #getter for: Luk/co/jasonfry/android/tools/ui/SwipeView;->mPageWidth:I
    invoke-static {v5}, Luk/co/jasonfry/android/tools/ui/SwipeView;->access$8(Luk/co/jasonfry/android/tools/ui/SwipeView;)I

    move-result v5

    mul-int/2addr v4, v5

    int-to-float v0, v4

    goto :goto_0

    .line 605
    :cond_4
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v4

    if-nez v4, :cond_5

    .line 610
    float-to-int v4, v1

    iget-object v5, p0, Luk/co/jasonfry/android/tools/ui/SwipeView$SwipeOnTouchListener;->this$0:Luk/co/jasonfry/android/tools/ui/SwipeView;

    #getter for: Luk/co/jasonfry/android/tools/ui/SwipeView;->mPageWidth:I
    invoke-static {v5}, Luk/co/jasonfry/android/tools/ui/SwipeView;->access$8(Luk/co/jasonfry/android/tools/ui/SwipeView;)I

    move-result v5

    mul-int/2addr v4, v5

    int-to-float v0, v4

    goto :goto_0

    .line 614
    :cond_5
    iget-object v4, p0, Luk/co/jasonfry/android/tools/ui/SwipeView$SwipeOnTouchListener;->this$0:Luk/co/jasonfry/android/tools/ui/SwipeView;

    #getter for: Luk/co/jasonfry/android/tools/ui/SwipeView;->mCurrentPage:I
    invoke-static {v4}, Luk/co/jasonfry/android/tools/ui/SwipeView;->access$10(Luk/co/jasonfry/android/tools/ui/SwipeView;)I

    move-result v4

    iget-object v5, p0, Luk/co/jasonfry/android/tools/ui/SwipeView$SwipeOnTouchListener;->this$0:Luk/co/jasonfry/android/tools/ui/SwipeView;

    #getter for: Luk/co/jasonfry/android/tools/ui/SwipeView;->mPageWidth:I
    invoke-static {v5}, Luk/co/jasonfry/android/tools/ui/SwipeView;->access$8(Luk/co/jasonfry/android/tools/ui/SwipeView;)I

    move-result v5

    mul-int/2addr v4, v5

    int-to-float v0, v4

    goto/16 :goto_0
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 482
    iget-object v2, p0, Luk/co/jasonfry/android/tools/ui/SwipeView$SwipeOnTouchListener;->this$0:Luk/co/jasonfry/android/tools/ui/SwipeView;

    #getter for: Luk/co/jasonfry/android/tools/ui/SwipeView;->mOnTouchListener:Landroid/view/View$OnTouchListener;
    invoke-static {v2}, Luk/co/jasonfry/android/tools/ui/SwipeView;->access$0(Luk/co/jasonfry/android/tools/ui/SwipeView;)Landroid/view/View$OnTouchListener;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Luk/co/jasonfry/android/tools/ui/SwipeView$SwipeOnTouchListener;->this$0:Luk/co/jasonfry/android/tools/ui/SwipeView;

    #getter for: Luk/co/jasonfry/android/tools/ui/SwipeView;->mJustInterceptedAndIgnored:Z
    invoke-static {v2}, Luk/co/jasonfry/android/tools/ui/SwipeView;->access$1(Luk/co/jasonfry/android/tools/ui/SwipeView;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Luk/co/jasonfry/android/tools/ui/SwipeView$SwipeOnTouchListener;->this$0:Luk/co/jasonfry/android/tools/ui/SwipeView;

    #getter for: Luk/co/jasonfry/android/tools/ui/SwipeView;->mOnTouchListener:Landroid/view/View$OnTouchListener;
    invoke-static {v2}, Luk/co/jasonfry/android/tools/ui/SwipeView;->access$0(Luk/co/jasonfry/android/tools/ui/SwipeView;)Landroid/view/View$OnTouchListener;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Luk/co/jasonfry/android/tools/ui/SwipeView$SwipeOnTouchListener;->mSendingDummyMotionEvent:Z

    if-eqz v2, :cond_3

    .line 484
    :cond_1
    iget-object v2, p0, Luk/co/jasonfry/android/tools/ui/SwipeView$SwipeOnTouchListener;->this$0:Luk/co/jasonfry/android/tools/ui/SwipeView;

    #getter for: Luk/co/jasonfry/android/tools/ui/SwipeView;->mOnTouchListener:Landroid/view/View$OnTouchListener;
    invoke-static {v2}, Luk/co/jasonfry/android/tools/ui/SwipeView;->access$0(Luk/co/jasonfry/android/tools/ui/SwipeView;)Landroid/view/View$OnTouchListener;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 486
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 489
    invoke-direct {p0, p2}, Luk/co/jasonfry/android/tools/ui/SwipeView$SwipeOnTouchListener;->actionUp(Landroid/view/MotionEvent;)Z

    .line 512
    :cond_2
    :goto_0
    return v0

    .line 495
    :cond_3
    iget-boolean v0, p0, Luk/co/jasonfry/android/tools/ui/SwipeView$SwipeOnTouchListener;->mSendingDummyMotionEvent:Z

    if-eqz v0, :cond_4

    .line 497
    iput-boolean v1, p0, Luk/co/jasonfry/android/tools/ui/SwipeView$SwipeOnTouchListener;->mSendingDummyMotionEvent:Z

    move v0, v1

    .line 498
    goto :goto_0

    .line 501
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 512
    goto :goto_0

    .line 504
    :pswitch_0
    invoke-direct {p0, p2}, Luk/co/jasonfry/android/tools/ui/SwipeView$SwipeOnTouchListener;->actionDown(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 507
    :pswitch_1
    invoke-direct {p0, p2}, Luk/co/jasonfry/android/tools/ui/SwipeView$SwipeOnTouchListener;->actionMove(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 510
    :pswitch_2
    invoke-direct {p0, p2}, Luk/co/jasonfry/android/tools/ui/SwipeView$SwipeOnTouchListener;->actionUp(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 501
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
