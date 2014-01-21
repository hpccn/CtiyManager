.class public Luk/co/jasonfry/android/tools/ui/SwipeView;
.super Landroid/widget/HorizontalScrollView;
.source "SwipeView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luk/co/jasonfry/android/tools/ui/SwipeView$OnPageChangedListener;,
        Luk/co/jasonfry/android/tools/ui/SwipeView$SwipeOnTouchListener;
    }
.end annotation


# static fields
.field private static DEFAULT_SWIPE_THRESHOLD:I


# instance fields
.field private SCREEN_WIDTH:I

.field protected mCallScrollToPageInOnLayout:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentPage:I

.field private mJustInterceptedAndIgnored:Z

.field private mLinearLayout:Landroid/widget/LinearLayout;

.field private mMostlyScrollingInX:Z

.field private mMostlyScrollingInY:Z

.field private mMotionStartX:I

.field private mMotionStartY:I

.field private mOnPageChangedListener:Luk/co/jasonfry/android/tools/ui/SwipeView$OnPageChangedListener;

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mPageControl:Luk/co/jasonfry/android/tools/ui/PageControl;

.field private mPageWidth:I

.field private mSwipeOnTouchListener:Luk/co/jasonfry/android/tools/ui/SwipeView$SwipeOnTouchListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/16 v0, 0x3c

    sput v0, Luk/co/jasonfry/android/tools/ui/SwipeView;->DEFAULT_SWIPE_THRESHOLD:I

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 48
    iput-boolean v0, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->mMostlyScrollingInX:Z

    .line 49
    iput-boolean v0, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->mMostlyScrollingInY:Z

    .line 50
    iput-boolean v0, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->mJustInterceptedAndIgnored:Z

    .line 51
    iput-boolean v0, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->mCallScrollToPageInOnLayout:Z

    .line 52
    iput v0, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->mCurrentPage:I

    .line 53
    iput v0, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->mPageWidth:I

    .line 54
    iput-object v1, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->mOnPageChangedListener:Luk/co/jasonfry/android/tools/ui/SwipeView$OnPageChangedListener;

    .line 57
    iput-object v1, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->mPageControl:Luk/co/jasonfry/android/tools/ui/PageControl;

    .line 65
    iput-object p1, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->mContext:Landroid/content/Context;

    .line 66
    invoke-direct {p0}, Luk/co/jasonfry/android/tools/ui/SwipeView;->initSwipeView()V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    iput-boolean v0, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->mMostlyScrollingInX:Z

    .line 49
    iput-boolean v0, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->mMostlyScrollingInY:Z

    .line 50
    iput-boolean v0, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->mJustInterceptedAndIgnored:Z

    .line 51
    iput-boolean v0, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->mCallScrollToPageInOnLayout:Z

    .line 52
    iput v0, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->mCurrentPage:I

    .line 53
    iput v0, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->mPageWidth:I

    .line 54
    iput-object v1, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->mOnPageChangedListener:Luk/co/jasonfry/android/tools/ui/SwipeView$OnPageChangedListener;

    .line 57
    iput-object v1, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->mPageControl:Luk/co/jasonfry/android/tools/ui/PageControl;

    .line 75
    iput-object p1, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->mContext:Landroid/content/Context;

    .line 76
    invoke-direct {p0}, Luk/co/jasonfry/android/tools/ui/SwipeView;->initSwipeView()V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    iput-boolean v0, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->mMostlyScrollingInX:Z

    .line 49
    iput-boolean v0, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->mMostlyScrollingInY:Z

    .line 50
    iput-boolean v0, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->mJustInterceptedAndIgnored:Z

    .line 51
    iput-boolean v0, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->mCallScrollToPageInOnLayout:Z

    .line 52
    iput v0, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->mCurrentPage:I

    .line 53
    iput v0, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->mPageWidth:I

    .line 54
    iput-object v1, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->mOnPageChangedListener:Luk/co/jasonfry/android/tools/ui/SwipeView$OnPageChangedListener;

    .line 57
    iput-object v1, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->mPageControl:Luk/co/jasonfry/android/tools/ui/PageControl;

    .line 85
    iput-object p1, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->mContext:Landroid/content/Context;

    .line 86
    invoke-direct {p0}, Luk/co/jasonfry/android/tools/ui/SwipeView;->initSwipeView()V

    .line 87
    return-void
.end method

.method static synthetic access$0(Luk/co/jasonfry/android/tools/ui/SwipeView;)Landroid/view/View$OnTouchListener;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method static synthetic access$1(Luk/co/jasonfry/android/tools/ui/SwipeView;)Z
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-boolean v0, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->mJustInterceptedAndIgnored:Z

    return v0
.end method

.method static synthetic access$10(Luk/co/jasonfry/android/tools/ui/SwipeView;)I
    .locals 1
    .parameter

    .prologue
    .line 52
    iget v0, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->mCurrentPage:I

    return v0
.end method

.method static synthetic access$11(Luk/co/jasonfry/android/tools/ui/SwipeView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    iput-boolean p1, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->mMostlyScrollingInX:Z

    return-void
.end method

.method static synthetic access$12(Luk/co/jasonfry/android/tools/ui/SwipeView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    iput-boolean p1, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->mMostlyScrollingInY:Z

    return-void
.end method

.method static synthetic access$2(Luk/co/jasonfry/android/tools/ui/SwipeView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput p1, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->mMotionStartX:I

    return-void
.end method

.method static synthetic access$3(Luk/co/jasonfry/android/tools/ui/SwipeView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    iput p1, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->mMotionStartY:I

    return-void
.end method

.method static synthetic access$4(Luk/co/jasonfry/android/tools/ui/SwipeView;)I
    .locals 1
    .parameter

    .prologue
    .line 46
    iget v0, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->mMotionStartX:I

    return v0
.end method

.method static synthetic access$5(Luk/co/jasonfry/android/tools/ui/SwipeView;)I
    .locals 1
    .parameter

    .prologue
    .line 47
    iget v0, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->mMotionStartY:I

    return v0
.end method

.method static synthetic access$6(Luk/co/jasonfry/android/tools/ui/SwipeView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    iput-boolean p1, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->mJustInterceptedAndIgnored:Z

    return-void
.end method

.method static synthetic access$7(Luk/co/jasonfry/android/tools/ui/SwipeView;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->mLinearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$8(Luk/co/jasonfry/android/tools/ui/SwipeView;)I
    .locals 1
    .parameter

    .prologue
    .line 53
    iget v0, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->mPageWidth:I

    return v0
.end method

.method static synthetic access$9()I
    .locals 1

    .prologue
    .line 41
    sget v0, Luk/co/jasonfry/android/tools/ui/SwipeView;->DEFAULT_SWIPE_THRESHOLD:I

    return v0
.end method

.method private detectMostlyScrollingDirection(Landroid/view/MotionEvent;)V
    .locals 6
    .parameter "ev"

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x40a0

    .line 457
    iget-boolean v2, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->mMostlyScrollingInX:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->mMostlyScrollingInY:Z

    if-nez v2, :cond_0

    .line 459
    iget v2, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->mMotionStartX:I

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 460
    .local v0, xDistance:F
    iget v2, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->mMotionStartY:I

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 462
    .local v1, yDistance:F
    add-float v2, v0, v4

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    .line 464
    iput-boolean v5, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->mMostlyScrollingInY:Z

    .line 471
    .end local v0           #xDistance:F
    .end local v1           #yDistance:F
    :cond_0
    :goto_0
    return-void

    .line 466
    .restart local v0       #xDistance:F
    .restart local v1       #yDistance:F
    :cond_1
    add-float v2, v1, v4

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    .line 468
    iput-boolean v5, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->mMostlyScrollingInX:Z

    goto :goto_0
.end method

.method private initSwipeView()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 91
    const-string v1, "uk.co.jasonfry.android.tools.ui.SwipeView"

    const-string v2, "Initialising SwipeView"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 93
    iget-object v1, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 94
    iget-object v1, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->mLinearLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-super {p0, v1, v4, v2}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 96
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Luk/co/jasonfry/android/tools/ui/SwipeView;->setSmoothScrollingEnabled(Z)V

    .line 97
    invoke-virtual {p0, v3}, Luk/co/jasonfry/android/tools/ui/SwipeView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 98
    invoke-virtual {p0, v3}, Luk/co/jasonfry/android/tools/ui/SwipeView;->setHorizontalScrollBarEnabled(Z)V

    .line 101
    invoke-virtual {p0}, Luk/co/jasonfry/android/tools/ui/SwipeView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 102
    .local v0, d:F
    const/high16 v1, 0x433b

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->SCREEN_WIDTH:I

    .line 103
    iget v1, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->SCREEN_WIDTH:I

    iput v1, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->mPageWidth:I

    .line 104
    iput v3, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->mCurrentPage:I

    .line 106
    new-instance v1, Luk/co/jasonfry/android/tools/ui/SwipeView$SwipeOnTouchListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Luk/co/jasonfry/android/tools/ui/SwipeView$SwipeOnTouchListener;-><init>(Luk/co/jasonfry/android/tools/ui/SwipeView;Luk/co/jasonfry/android/tools/ui/SwipeView$SwipeOnTouchListener;)V

    iput-object v1, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->mSwipeOnTouchListener:Luk/co/jasonfry/android/tools/ui/SwipeView$SwipeOnTouchListener;

    .line 107
    iget-object v1, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->mSwipeOnTouchListener:Luk/co/jasonfry/android/tools/ui/SwipeView$SwipeOnTouchListener;

    invoke-super {p0, v1}, Landroid/widget/HorizontalScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 108
    return-void
.end method

.method private scrollToPage(IZ)V
    .locals 3
    .parameter "page"
    .parameter "smooth"

    .prologue
    const/4 v1, 0x0

    .line 280
    iget v0, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->mCurrentPage:I

    .line 281
    .local v0, oldPage:I
    invoke-virtual {p0}, Luk/co/jasonfry/android/tools/ui/SwipeView;->getPageCount()I

    move-result v2

    if-lt p1, v2, :cond_3

    invoke-virtual {p0}, Luk/co/jasonfry/android/tools/ui/SwipeView;->getPageCount()I

    move-result v2

    if-lez v2, :cond_3

    .line 283
    add-int/lit8 p1, p1, -0x1

    .line 290
    :cond_0
    :goto_0
    if-eqz p2, :cond_4

    .line 292
    iget v2, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->mPageWidth:I

    mul-int/2addr v2, p1

    invoke-virtual {p0, v2, v1}, Luk/co/jasonfry/android/tools/ui/SwipeView;->smoothScrollTo(II)V

    .line 298
    :goto_1
    iput p1, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->mCurrentPage:I

    .line 300
    iget-object v2, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->mOnPageChangedListener:Luk/co/jasonfry/android/tools/ui/SwipeView$OnPageChangedListener;

    if-eqz v2, :cond_1

    if-eq v0, p1, :cond_1

    .line 302
    iget-object v2, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->mOnPageChangedListener:Luk/co/jasonfry/android/tools/ui/SwipeView$OnPageChangedListener;

    invoke-interface {v2, v0, p1}, Luk/co/jasonfry/android/tools/ui/SwipeView$OnPageChangedListener;->onPageChanged(II)V

    .line 304
    :cond_1
    iget-object v2, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->mPageControl:Luk/co/jasonfry/android/tools/ui/PageControl;

    if-eqz v2, :cond_2

    if-eq v0, p1, :cond_2

    .line 306
    iget-object v2, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->mPageControl:Luk/co/jasonfry/android/tools/ui/PageControl;

    invoke-virtual {v2, p1}, Luk/co/jasonfry/android/tools/ui/PageControl;->setCurrentPage(I)V

    .line 309
    :cond_2
    iget-boolean v2, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->mCallScrollToPageInOnLayout:Z

    if-eqz v2, :cond_5

    :goto_2
    iput-boolean v1, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->mCallScrollToPageInOnLayout:Z

    .line 310
    return-void

    .line 285
    :cond_3
    if-gez p1, :cond_0

    .line 287
    const/4 p1, 0x0

    goto :goto_0

    .line 296
    :cond_4
    iget v2, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->mPageWidth:I

    mul-int/2addr v2, p1

    invoke-virtual {p0, v2, v1}, Luk/co/jasonfry/android/tools/ui/SwipeView;->scrollTo(II)V

    goto :goto_1

    .line 309
    :cond_5
    const/4 v1, 0x1

    goto :goto_2
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 140
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Luk/co/jasonfry/android/tools/ui/SwipeView;->addView(Landroid/view/View;I)V

    .line 141
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 3
    .parameter "child"
    .parameter "index"

    .prologue
    .line 150
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_0

    .line 152
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->mPageWidth:I

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 159
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Luk/co/jasonfry/android/tools/ui/SwipeView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 160
    return-void

    .line 156
    .end local v0           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 157
    .restart local v0       #params:Landroid/view/ViewGroup$LayoutParams;
    iget v1, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->mPageWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 178
    invoke-virtual {p0}, Luk/co/jasonfry/android/tools/ui/SwipeView;->requestLayout()V

    .line 179
    invoke-virtual {p0}, Luk/co/jasonfry/android/tools/ui/SwipeView;->invalidate()V

    .line 180
    iget-object v0, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 181
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "child"
    .parameter "params"

    .prologue
    .line 168
    iget v0, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->mPageWidth:I

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 169
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Luk/co/jasonfry/android/tools/ui/SwipeView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 170
    return-void
.end method

.method public calculatePageSize(Landroid/view/ViewGroup$MarginLayoutParams;)I
    .locals 2
    .parameter "childLayoutParams"

    .prologue
    .line 337
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    add-int/2addr v0, v1

    iget v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Luk/co/jasonfry/android/tools/ui/SwipeView;->setPageWidth(I)I

    move-result v0

    return v0
.end method

.method public getChildContainer()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->mLinearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->mCurrentPage:I

    return v0
.end method

.method public getOnPageChangedListener()Luk/co/jasonfry/android/tools/ui/SwipeView$OnPageChangedListener;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->mOnPageChangedListener:Luk/co/jasonfry/android/tools/ui/SwipeView$OnPageChangedListener;

    return-object v0
.end method

.method public getPageControl()Luk/co/jasonfry/android/tools/ui/PageControl;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->mPageControl:Luk/co/jasonfry/android/tools/ui/PageControl;

    return-object v0
.end method

.method public getPageCount()I
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getPageWidth()I
    .locals 1

    .prologue
    .line 347
    iget v0, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->mPageWidth:I

    return v0
.end method

.method public getSwipeThreshold()I
    .locals 1

    .prologue
    .line 225
    sget v0, Luk/co/jasonfry/android/tools/ui/SwipeView;->DEFAULT_SWIPE_THRESHOLD:I

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "ev"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 425
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 427
    .local v0, result:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2

    .line 429
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->mMotionStartX:I

    .line 430
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->mMotionStartY:I

    .line 431
    iget-boolean v3, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->mJustInterceptedAndIgnored:Z

    if-nez v3, :cond_0

    .line 433
    iput-boolean v1, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->mMostlyScrollingInX:Z

    .line 434
    iput-boolean v1, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->mMostlyScrollingInY:Z

    .line 442
    :cond_0
    :goto_0
    iget-boolean v3, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->mMostlyScrollingInY:Z

    if-eqz v3, :cond_3

    move v0, v1

    .line 452
    .end local v0           #result:Z
    :cond_1
    :goto_1
    return v0

    .line 437
    .restart local v0       #result:Z
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 439
    invoke-direct {p0, p1}, Luk/co/jasonfry/android/tools/ui/SwipeView;->detectMostlyScrollingDirection(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 446
    :cond_3
    iget-boolean v1, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->mMostlyScrollingInX:Z

    if-eqz v1, :cond_1

    .line 448
    iput-boolean v2, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->mJustInterceptedAndIgnored:Z

    move v0, v2

    .line 449
    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 189
    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    .line 190
    iget-boolean v0, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->mCallScrollToPageInOnLayout:Z

    if-eqz v0, :cond_0

    .line 192
    iget v0, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Luk/co/jasonfry/android/tools/ui/SwipeView;->scrollToPage(I)V

    .line 193
    const/4 v0, 0x0

    iput-boolean v0, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->mCallScrollToPageInOnLayout:Z

    .line 195
    :cond_0
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 117
    const/4 v0, 0x1

    return v0
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 131
    invoke-virtual {p0}, Luk/co/jasonfry/android/tools/ui/SwipeView;->requestFocus()Z

    .line 132
    return-void
.end method

.method public scrollToPage(I)V
    .locals 1
    .parameter "page"

    .prologue
    .line 265
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Luk/co/jasonfry/android/tools/ui/SwipeView;->scrollToPage(IZ)V

    .line 266
    return-void
.end method

.method public setOnPageChangedListener(Luk/co/jasonfry/android/tools/ui/SwipeView$OnPageChangedListener;)V
    .locals 0
    .parameter "onPageChangedListener"

    .prologue
    .line 409
    iput-object p1, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->mOnPageChangedListener:Luk/co/jasonfry/android/tools/ui/SwipeView$OnPageChangedListener;

    .line 410
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .parameter "onTouchListener"

    .prologue
    .line 203
    iput-object p1, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 204
    return-void
.end method

.method public setPageControl(Luk/co/jasonfry/android/tools/ui/PageControl;)V
    .locals 1
    .parameter "pageControl"

    .prologue
    .line 357
    iput-object p1, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->mPageControl:Luk/co/jasonfry/android/tools/ui/PageControl;

    .line 359
    invoke-virtual {p0}, Luk/co/jasonfry/android/tools/ui/SwipeView;->getPageCount()I

    move-result v0

    invoke-virtual {p1, v0}, Luk/co/jasonfry/android/tools/ui/PageControl;->setPageCount(I)V

    .line 360
    iget v0, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->mCurrentPage:I

    invoke-virtual {p1, v0}, Luk/co/jasonfry/android/tools/ui/PageControl;->setCurrentPage(I)V

    .line 361
    new-instance v0, Luk/co/jasonfry/android/tools/ui/SwipeView$1;

    invoke-direct {v0, p0}, Luk/co/jasonfry/android/tools/ui/SwipeView$1;-><init>(Luk/co/jasonfry/android/tools/ui/SwipeView;)V

    invoke-virtual {p1, v0}, Luk/co/jasonfry/android/tools/ui/PageControl;->setOnPageControlClickListener(Luk/co/jasonfry/android/tools/ui/PageControl$OnPageControlClickListener;)V

    .line 373
    return-void
.end method

.method public setPageWidth(I)I
    .locals 2
    .parameter "pageWidth"

    .prologue
    .line 322
    iput p1, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->mPageWidth:I

    .line 323
    iget v0, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->SCREEN_WIDTH:I

    iget v1, p0, Luk/co/jasonfry/android/tools/ui/SwipeView;->mPageWidth:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public setSwipeThreshold(I)V
    .locals 0
    .parameter "swipeThreshold"

    .prologue
    .line 235
    sput p1, Luk/co/jasonfry/android/tools/ui/SwipeView;->DEFAULT_SWIPE_THRESHOLD:I

    .line 236
    return-void
.end method

.method public smoothScrollToPage(I)V
    .locals 1
    .parameter "page"

    .prologue
    .line 275
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Luk/co/jasonfry/android/tools/ui/SwipeView;->scrollToPage(IZ)V

    .line 276
    return-void
.end method
