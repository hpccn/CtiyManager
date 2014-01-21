.class public Luk/co/jasonfry/android/tools/widget/BounceSwipeView;
.super Luk/co/jasonfry/android/tools/ui/SwipeView;
.source "BounceSwipeView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luk/co/jasonfry/android/tools/widget/BounceSwipeView$BounceViewOnTouchListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x78

.field private static final BOUNCING_ON_LEFT:Z = true

.field private static final BOUNCING_ON_RIGHT:Z = false

.field private static final FRAME_DURATION:I = 0x1e

.field private static final NUMBER_OF_FRAMES:I = 0x4


# instance fields
.field private mAtEdge:Z

.field private mAtEdgePreviousPosition:F

.field private mAtEdgeStartPosition:F

.field private mBounceEnabled:Z

.field private mBouncingSide:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentAnimationFrame:I

.field mEaseAnimationFrameHandler:Landroid/os/Handler;

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mPaddingChange:I

.field private mPaddingLeft:I

.field private mPaddingRight:I

.field private mPaddingStartValue:I

.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Luk/co/jasonfry/android/tools/ui/SwipeView;-><init>(Landroid/content/Context;)V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->mAtEdge:Z

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->mBounceEnabled:Z

    .line 41
    iput-object p1, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->mContext:Landroid/content/Context;

    .line 42
    invoke-direct {p0}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->initBounceSwipeView()V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Luk/co/jasonfry/android/tools/ui/SwipeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->mAtEdge:Z

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->mBounceEnabled:Z

    .line 48
    iput-object p1, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->mContext:Landroid/content/Context;

    .line 49
    invoke-direct {p0}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->initBounceSwipeView()V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Luk/co/jasonfry/android/tools/ui/SwipeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->mAtEdge:Z

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->mBounceEnabled:Z

    .line 55
    iput-object p1, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->mContext:Landroid/content/Context;

    .line 56
    invoke-direct {p0}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->initBounceSwipeView()V

    .line 57
    return-void
.end method

.method static synthetic access$0(Luk/co/jasonfry/android/tools/widget/BounceSwipeView;)Landroid/view/View$OnTouchListener;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method static synthetic access$1(Luk/co/jasonfry/android/tools/widget/BounceSwipeView;)Z
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-boolean v0, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->mBounceEnabled:Z

    return v0
.end method

.method static synthetic access$10(Luk/co/jasonfry/android/tools/widget/BounceSwipeView;)I
    .locals 1
    .parameter

    .prologue
    .line 27
    iget v0, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$11(Luk/co/jasonfry/android/tools/widget/BounceSwipeView;)V
    .locals 0
    .parameter

    .prologue
    .line 179
    invoke-direct {p0}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->doBounceBackEaseAnimation()V

    return-void
.end method

.method static synthetic access$12(Luk/co/jasonfry/android/tools/widget/BounceSwipeView;)I
    .locals 1
    .parameter

    .prologue
    .line 31
    iget v0, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->mCurrentAnimationFrame:I

    return v0
.end method

.method static synthetic access$13(Luk/co/jasonfry/android/tools/widget/BounceSwipeView;)I
    .locals 1
    .parameter

    .prologue
    .line 29
    iget v0, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->mPaddingStartValue:I

    return v0
.end method

.method static synthetic access$14(Luk/co/jasonfry/android/tools/widget/BounceSwipeView;)I
    .locals 1
    .parameter

    .prologue
    .line 32
    iget v0, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->mPaddingChange:I

    return v0
.end method

.method static synthetic access$15(Luk/co/jasonfry/android/tools/widget/BounceSwipeView;)Z
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-boolean v0, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->mBouncingSide:Z

    return v0
.end method

.method static synthetic access$16(Luk/co/jasonfry/android/tools/widget/BounceSwipeView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput p1, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->mCurrentAnimationFrame:I

    return-void
.end method

.method static synthetic access$2(Luk/co/jasonfry/android/tools/widget/BounceSwipeView;)Z
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-boolean v0, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->mAtEdge:Z

    return v0
.end method

.method static synthetic access$3(Luk/co/jasonfry/android/tools/widget/BounceSwipeView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    iput-boolean p1, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->mAtEdge:Z

    return-void
.end method

.method static synthetic access$4(Luk/co/jasonfry/android/tools/widget/BounceSwipeView;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput p1, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->mAtEdgeStartPosition:F

    return-void
.end method

.method static synthetic access$5(Luk/co/jasonfry/android/tools/widget/BounceSwipeView;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    iput p1, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->mAtEdgePreviousPosition:F

    return-void
.end method

.method static synthetic access$6(Luk/co/jasonfry/android/tools/widget/BounceSwipeView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    iput-boolean p1, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->mBouncingSide:Z

    return-void
.end method

.method static synthetic access$7(Luk/co/jasonfry/android/tools/widget/BounceSwipeView;)F
    .locals 1
    .parameter

    .prologue
    .line 25
    iget v0, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->mAtEdgePreviousPosition:F

    return v0
.end method

.method static synthetic access$8(Luk/co/jasonfry/android/tools/widget/BounceSwipeView;)F
    .locals 1
    .parameter

    .prologue
    .line 24
    iget v0, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->mAtEdgeStartPosition:F

    return v0
.end method

.method static synthetic access$9(Luk/co/jasonfry/android/tools/widget/BounceSwipeView;IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Luk/co/jasonfry/android/tools/ui/SwipeView;->setPadding(IIII)V

    return-void
.end method

.method private doBounceBackEaseAnimation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 181
    iget-boolean v0, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->mBouncingSide:Z

    if-eqz v0, :cond_1

    .line 183
    invoke-virtual {p0}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->mPaddingLeft:I

    sub-int/2addr v0, v1

    iput v0, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->mPaddingChange:I

    .line 184
    invoke-virtual {p0}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->getPaddingLeft()I

    move-result v0

    iput v0, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->mPaddingStartValue:I

    .line 192
    :cond_0
    :goto_0
    iput v2, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->mCurrentAnimationFrame:I

    .line 194
    iget-object v0, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->mEaseAnimationFrameHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 195
    iget-object v0, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->mEaseAnimationFrameHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 196
    return-void

    .line 186
    :cond_1
    iget-boolean v0, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->mBouncingSide:Z

    if-nez v0, :cond_0

    .line 188
    invoke-virtual {p0}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->getPaddingRight()I

    move-result v0

    iget v1, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->mPaddingRight:I

    sub-int/2addr v0, v1

    iput v0, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->mPaddingChange:I

    .line 189
    invoke-virtual {p0}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->getPaddingRight()I

    move-result v0

    iput v0, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->mPaddingStartValue:I

    goto :goto_0
.end method

.method private initBounceSwipeView()V
    .locals 2

    .prologue
    .line 61
    new-instance v0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView$BounceViewOnTouchListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView$BounceViewOnTouchListener;-><init>(Luk/co/jasonfry/android/tools/widget/BounceSwipeView;Luk/co/jasonfry/android/tools/widget/BounceSwipeView$BounceViewOnTouchListener;)V

    invoke-super {p0, v0}, Luk/co/jasonfry/android/tools/ui/SwipeView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 62
    iget-object v0, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 63
    new-instance v0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView$1;

    invoke-direct {v0, p0}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView$1;-><init>(Luk/co/jasonfry/android/tools/widget/BounceSwipeView;)V

    iput-object v0, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->mEaseAnimationFrameHandler:Landroid/os/Handler;

    .line 85
    return-void
.end method


# virtual methods
.method public doAtEdgeAnimation()V
    .locals 4

    .prologue
    .line 205
    invoke-virtual {p0}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->getCurrentPage()I

    move-result v0

    if-nez v0, :cond_1

    .line 207
    const/4 v0, 0x1

    iput-boolean v0, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->mBouncingSide:Z

    .line 208
    invoke-virtual {p0}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->getPaddingLeft()I

    move-result v0

    add-int/lit8 v0, v0, 0x32

    invoke-virtual {p0}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->getPaddingBottom()I

    move-result v3

    #calls: Luk/co/jasonfry/android/tools/ui/SwipeView;->setPadding(IIII)V
    invoke-static {p0, v0, v1, v2, v3}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->access$9(Luk/co/jasonfry/android/tools/widget/BounceSwipeView;IIII)V

    .line 217
    :cond_0
    :goto_0
    invoke-direct {p0}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->doBounceBackEaseAnimation()V

    .line 218
    return-void

    .line 210
    :cond_1
    invoke-virtual {p0}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 212
    const/4 v0, 0x0

    iput-boolean v0, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->mBouncingSide:Z

    .line 213
    invoke-virtual {p0}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->getPaddingRight()I

    move-result v2

    add-int/lit8 v2, v2, 0x32

    invoke-virtual {p0}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->getPaddingBottom()I

    move-result v3

    #calls: Luk/co/jasonfry/android/tools/ui/SwipeView;->setPadding(IIII)V
    invoke-static {p0, v0, v1, v2, v3}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->access$9(Luk/co/jasonfry/android/tools/widget/BounceSwipeView;IIII)V

    .line 214
    invoke-virtual {p0}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->getScrollX()I

    move-result v0

    add-int/lit8 v0, v0, 0x32

    invoke-virtual {p0}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->scrollTo(II)V

    goto :goto_0
.end method

.method public getBounceEnabled()Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->mBounceEnabled:Z

    return v0
.end method

.method public setBounceEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 103
    iput-boolean p1, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->mBounceEnabled:Z

    .line 104
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .parameter "onTouchListener"

    .prologue
    .line 98
    iput-object p1, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 99
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 90
    iput p1, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->mPaddingLeft:I

    .line 91
    iput p3, p0, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->mPaddingRight:I

    .line 92
    invoke-super {p0, p1, p2, p3, p4}, Luk/co/jasonfry/android/tools/ui/SwipeView;->setPadding(IIII)V

    .line 93
    return-void
.end method
