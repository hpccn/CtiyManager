.class public Lcom/cymobile/ymwork/widget/PullToRefreshListView;
.super Landroid/widget/ListView;
.source "PullToRefreshListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cymobile/ymwork/widget/PullToRefreshListView$OnAddMoreListener;,
        Lcom/cymobile/ymwork/widget/PullToRefreshListView$OnClickAddMoreListener;,
        Lcom/cymobile/ymwork/widget/PullToRefreshListView$OnClickRefreshListener;,
        Lcom/cymobile/ymwork/widget/PullToRefreshListView$OnRefreshListener;
    }
.end annotation


# static fields
.field private static final ADDMOREing:I = 0xe

.field private static final PULL_TO_ADDMORE:I = 0xc

.field private static final PULL_TO_REFRESH:I = 0x2

.field private static final REFRESHING:I = 0x4

.field private static final RELEASE_TO_ADDMORE:I = 0xd

.field private static final RELEASE_TO_REFRESH:I = 0x3

.field private static final TAG:Ljava/lang/String; = "PullToRefreshListView"

.field private static final TAP_TO_ADDMORE:I = 0xb

.field private static final TAP_TO_REFRESH:I = 0x1


# instance fields
.field private mAddMoreState:I

.field private mBounceHack:Z

.field private mBounceHackFooter:Z

.field private mCurrentScrollState:I

.field private mFlipAnimation:Landroid/view/animation/RotateAnimation;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLastMotionY:I

.field private mOnAddMoreListener:Lcom/cymobile/ymwork/widget/PullToRefreshListView$OnAddMoreListener;

.field private mOnRefreshListener:Lcom/cymobile/ymwork/widget/PullToRefreshListView$OnRefreshListener;

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mRefreshOriginalTopPadding:I

.field private mRefreshOriginalTopPaddingFooter:I

.field private mRefreshState:I

.field private mRefreshView:Landroid/widget/RelativeLayout;

.field private mRefreshViewFooter:Landroid/widget/RelativeLayout;

.field private mRefreshViewHeight:I

.field private mRefreshViewHeightFooter:I

.field private mRefreshViewImage:Landroid/widget/ImageView;

.field private mRefreshViewImageFooter:Landroid/widget/ImageView;

.field private mRefreshViewLastUpdated:Landroid/widget/TextView;

.field private mRefreshViewProgress:Landroid/widget/ProgressBar;

.field private mRefreshViewProgressFooter:Landroid/widget/ProgressBar;

.field private mRefreshViewText:Landroid/widget/TextView;

.field private mRefreshViewTextFooter:Landroid/widget/TextView;

.field private mReverseFlipAnimation:Landroid/view/animation/RotateAnimation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 89
    invoke-direct {p0, p1}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->init(Landroid/content/Context;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 94
    invoke-direct {p0, p1}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->init(Landroid/content/Context;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 98
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 99
    invoke-direct {p0, p1}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->init(Landroid/content/Context;)V

    .line 100
    return-void
.end method

.method static synthetic access$0(Lcom/cymobile/ymwork/widget/PullToRefreshListView;)I
    .locals 1
    .parameter

    .prologue
    .line 66
    iget v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshState:I

    return v0
.end method

.method static synthetic access$1(Lcom/cymobile/ymwork/widget/PullToRefreshListView;)I
    .locals 1
    .parameter

    .prologue
    .line 68
    iget v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mAddMoreState:I

    return v0
.end method

.method private applyFooterPadding(Landroid/view/MotionEvent;)V
    .locals 14
    .parameter "ev"

    .prologue
    const/4 v13, 0x0

    .line 309
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v3

    .line 313
    .local v3, historySize:I
    const/4 v6, 0x1

    .line 315
    .local v6, pointerCount:I
    :try_start_0
    const-class v8, Landroid/view/MotionEvent;

    const-string v9, "getPointerCount"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 316
    .local v4, method:Ljava/lang/reflect/Method;
    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v4, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v6

    .line 333
    .end local v4           #method:Ljava/lang/reflect/Method;
    :goto_0
    const/4 v1, 0x0

    .local v1, h:I
    :goto_1
    if-lt v1, v3, :cond_0

    .line 377
    return-void

    .line 317
    .end local v1           #h:I
    :catch_0
    move-exception v0

    .line 318
    .local v0, e:Ljava/lang/NoSuchMethodException;
    const/4 v6, 0x1

    goto :goto_0

    .line 319
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 320
    .local v0, e:Ljava/lang/IllegalArgumentException;
    throw v0

    .line 321
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 322
    .local v0, e:Ljava/lang/IllegalAccessException;
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "unexpected "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 323
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 324
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "unexpected "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 334
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    .restart local v1       #h:I
    :cond_0
    const/4 v5, 0x0

    .local v5, p:I
    :goto_2
    if-lt v5, v6, :cond_1

    .line 333
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 338
    :cond_1
    iget v8, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mAddMoreState:I

    const/16 v9, 0xd

    if-ne v8, v9, :cond_3

    .line 339
    invoke-virtual {p0}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->isVerticalFadingEdgeEnabled()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 340
    invoke-virtual {p0, v13}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->setVerticalScrollBarEnabled(Z)V

    .line 343
    :cond_2
    const/4 v2, 0x0

    .line 346
    .local v2, historicalY:I
    :try_start_1
    const-class v8, Landroid/view/MotionEvent;

    .line 347
    const-string v9, "getHistoricalY"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    .line 346
    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 348
    .restart local v4       #method:Ljava/lang/reflect/Method;
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v4, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->intValue()I
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_7

    move-result v2

    .line 362
    .end local v4           #method:Ljava/lang/reflect/Method;
    :goto_3
    iget v8, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mLastMotionY:I

    add-int/2addr v8, v2

    .line 363
    iget v9, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshViewHeightFooter:I

    .line 362
    add-int/2addr v8, v9

    int-to-double v8, v8

    .line 363
    const-wide v10, 0x3ffb333333333333L

    .line 362
    div-double/2addr v8, v10

    double-to-int v7, v8

    .line 365
    .local v7, topPadding:I
    const-string v8, "PullToRefreshListView"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "mRefreshViewHeightFooter "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshViewHeightFooter:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " topPadding "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    invoke-direct {p0}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->resetFooterPadding()V

    .line 334
    .end local v2           #historicalY:I
    .end local v7           #topPadding:I
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 349
    .restart local v2       #historicalY:I
    :catch_4
    move-exception v0

    .line 351
    .local v0, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v8

    float-to-int v2, v8

    goto :goto_3

    .line 352
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :catch_5
    move-exception v0

    .line 353
    .local v0, e:Ljava/lang/IllegalArgumentException;
    throw v0

    .line 354
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_6
    move-exception v0

    .line 355
    .local v0, e:Ljava/lang/IllegalAccessException;
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "unexpected "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 356
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_7
    move-exception v0

    .line 357
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "unexpected "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3
.end method

.method private applyHeaderPadding(Landroid/view/MotionEvent;)V
    .locals 8
    .parameter "ev"

    .prologue
    .line 284
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v2

    .line 286
    .local v2, pointerCount:I
    const/4 v1, 0x0

    .local v1, p:I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 306
    return-void

    .line 287
    :cond_0
    iget v4, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshState:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    .line 288
    invoke-virtual {p0}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->isVerticalFadingEdgeEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 289
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->setVerticalScrollBarEnabled(Z)V

    .line 292
    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v4

    float-to-int v0, v4

    .line 296
    .local v0, historicalY:I
    iget v4, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mLastMotionY:I

    sub-int v4, v0, v4

    .line 297
    iget v5, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshViewHeight:I

    .line 296
    sub-int/2addr v4, v5

    int-to-double v4, v4

    .line 297
    const-wide v6, 0x3ffb333333333333L

    .line 296
    div-double/2addr v4, v6

    double-to-int v3, v4

    .line 299
    .local v3, topPadding:I
    iget-object v4, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    .line 300
    iget-object v5, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getPaddingLeft()I

    move-result v5

    .line 302
    iget-object v6, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getPaddingRight()I

    move-result v6

    .line 303
    iget-object v7, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getPaddingBottom()I

    move-result v7

    .line 299
    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 286
    .end local v0           #historicalY:I
    .end local v3           #topPadding:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 13
    .parameter "context"

    .prologue
    const/4 v12, 0x0

    const/4 v1, 0x0

    const/high16 v2, -0x3ccc

    const/high16 v4, 0x3f00

    const/4 v3, 0x1

    .line 104
    new-instance v0, Landroid/view/animation/RotateAnimation;

    move v5, v3

    move v6, v4

    .line 106
    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 104
    iput-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mFlipAnimation:Landroid/view/animation/RotateAnimation;

    .line 107
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mFlipAnimation:Landroid/view/animation/RotateAnimation;

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 108
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mFlipAnimation:Landroid/view/animation/RotateAnimation;

    const-wide/16 v5, 0xfa

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 109
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mFlipAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 110
    new-instance v5, Landroid/view/animation/RotateAnimation;

    move v6, v2

    move v7, v1

    move v8, v3

    move v9, v4

    move v10, v3

    move v11, v4

    .line 112
    invoke-direct/range {v5 .. v11}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 110
    iput-object v5, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mReverseFlipAnimation:Landroid/view/animation/RotateAnimation;

    .line 113
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mReverseFlipAnimation:Landroid/view/animation/RotateAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 114
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mReverseFlipAnimation:Landroid/view/animation/RotateAnimation;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 115
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mReverseFlipAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 118
    const-string v0, "layout_inflater"

    .line 117
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mInflater:Landroid/view/LayoutInflater;

    .line 120
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mInflater:Landroid/view/LayoutInflater;

    .line 121
    const v1, 0x7f03002a

    .line 120
    invoke-virtual {v0, v1, p0, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    .line 123
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    const v1, 0x7f0800af

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 122
    iput-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshViewText:Landroid/widget/TextView;

    .line 125
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    const v1, 0x7f0800ae

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 124
    iput-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshViewImage:Landroid/widget/ImageView;

    .line 127
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    const v1, 0x7f0800ad

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 126
    iput-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshViewProgress:Landroid/widget/ProgressBar;

    .line 129
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    const v1, 0x7f0800b0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 128
    iput-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshViewLastUpdated:Landroid/widget/TextView;

    .line 131
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshViewImage:Landroid/widget/ImageView;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 132
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/cymobile/ymwork/widget/PullToRefreshListView$OnClickRefreshListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/cymobile/ymwork/widget/PullToRefreshListView$OnClickRefreshListener;-><init>(Lcom/cymobile/ymwork/widget/PullToRefreshListView;Lcom/cymobile/ymwork/widget/PullToRefreshListView$OnClickRefreshListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshOriginalTopPadding:I

    .line 135
    iput v3, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshState:I

    .line 136
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->setAddMoreState(I)V

    .line 138
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->addHeaderView(Landroid/view/View;)V

    .line 140
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mInflater:Landroid/view/LayoutInflater;

    .line 141
    const v1, 0x7f030029

    .line 140
    invoke-virtual {v0, v1, p0, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshViewFooter:Landroid/widget/RelativeLayout;

    .line 143
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshViewFooter:Landroid/widget/RelativeLayout;

    const v1, 0x7f0800ab

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 142
    iput-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshViewTextFooter:Landroid/widget/TextView;

    .line 145
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshViewFooter:Landroid/widget/RelativeLayout;

    const v1, 0x7f0800aa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 144
    iput-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshViewImageFooter:Landroid/widget/ImageView;

    .line 147
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshViewFooter:Landroid/widget/RelativeLayout;

    const v1, 0x7f0800a9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 146
    iput-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshViewProgressFooter:Landroid/widget/ProgressBar;

    .line 149
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshViewFooter:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->addFooterView(Landroid/view/View;)V

    .line 151
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshViewImageFooter:Landroid/widget/ImageView;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 152
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshViewFooter:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/cymobile/ymwork/widget/PullToRefreshListView$OnClickAddMoreListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/cymobile/ymwork/widget/PullToRefreshListView$OnClickAddMoreListener;-><init>(Lcom/cymobile/ymwork/widget/PullToRefreshListView;Lcom/cymobile/ymwork/widget/PullToRefreshListView$OnClickAddMoreListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshViewFooter:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshOriginalTopPaddingFooter:I

    .line 155
    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 157
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->measureView(Landroid/view/View;)V

    .line 159
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshViewHeight:I

    .line 160
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshViewFooter:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshViewHeightFooter:I

    .line 161
    return-void
.end method

.method private measureView(Landroid/view/View;)V
    .locals 7
    .parameter "child"

    .prologue
    const/4 v6, 0x0

    .line 437
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 438
    .local v3, p:Landroid/view/ViewGroup$LayoutParams;
    if-nez v3, :cond_0

    .line 439
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 440
    .end local v3           #p:Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, -0x1

    .line 441
    const/4 v5, -0x2

    .line 439
    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 445
    .restart local v3       #p:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 444
    invoke-static {v6, v6, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 446
    .local v1, childWidthSpec:I
    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 448
    .local v2, lpHeight:I
    if-lez v2, :cond_1

    .line 449
    const/high16 v4, 0x4000

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 453
    .local v0, childHeightSpec:I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 454
    const-string v4, "PullToRefreshListView"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "child height "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    return-void

    .line 451
    .end local v0           #childHeightSpec:I
    :cond_1
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0       #childHeightSpec:I
    goto :goto_0
.end method

.method private resetFooter()V
    .locals 3

    .prologue
    const/16 v1, 0xb

    const/16 v2, 0x8

    .line 420
    iget v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mAddMoreState:I

    if-eq v0, v1, :cond_0

    .line 421
    invoke-direct {p0, v1}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->setAddMoreState(I)V

    .line 423
    invoke-direct {p0}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->resetFooterPadding()V

    .line 425
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshViewTextFooter:Landroid/widget/TextView;

    const v1, 0x7f09002e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 427
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshViewImageFooter:Landroid/widget/ImageView;

    const v1, 0x7f02004d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 429
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshViewImageFooter:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 431
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshViewImageFooter:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 432
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshViewProgressFooter:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 434
    :cond_0
    return-void
.end method

.method private resetFooterPadding()V
    .locals 5

    .prologue
    .line 391
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshViewFooter:Landroid/widget/RelativeLayout;

    .line 392
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshViewFooter:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getPaddingLeft()I

    move-result v1

    .line 393
    iget v2, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshOriginalTopPaddingFooter:I

    .line 394
    iget-object v3, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshViewFooter:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getPaddingRight()I

    move-result v3

    .line 395
    iget-object v4, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshViewFooter:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getPaddingBottom()I

    move-result v4

    .line 391
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 396
    return-void
.end method

.method private resetHeader()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x1

    .line 402
    iget v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshState:I

    if-eq v0, v1, :cond_0

    .line 403
    iput v1, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshState:I

    .line 405
    invoke-direct {p0}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->resetHeaderPadding()V

    .line 408
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshViewText:Landroid/widget/TextView;

    const v1, 0x7f09002f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 410
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshViewImage:Landroid/widget/ImageView;

    const v1, 0x7f02004d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 412
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshViewImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 414
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshViewImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 415
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshViewProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 417
    :cond_0
    return-void
.end method

.method private resetHeaderPadding()V
    .locals 5

    .prologue
    .line 383
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    .line 384
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getPaddingLeft()I

    move-result v1

    .line 385
    iget v2, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshOriginalTopPadding:I

    .line 386
    iget-object v3, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getPaddingRight()I

    move-result v3

    .line 387
    iget-object v4, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getPaddingBottom()I

    move-result v4

    .line 383
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 388
    return-void
.end method

.method private setAddMoreState(I)V
    .locals 3
    .parameter "s"

    .prologue
    .line 70
    const-string v0, "PullToRefreshListView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setAddMoreState "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iput p1, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mAddMoreState:I

    .line 72
    return-void
.end method


# virtual methods
.method public onAddMore()V
    .locals 2

    .prologue
    .line 605
    const-string v0, "PullToRefreshListView"

    const-string v1, "onAddMore"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mOnAddMoreListener:Lcom/cymobile/ymwork/widget/PullToRefreshListView$OnAddMoreListener;

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mOnAddMoreListener:Lcom/cymobile/ymwork/widget/PullToRefreshListView$OnAddMoreListener;

    invoke-interface {v0}, Lcom/cymobile/ymwork/widget/PullToRefreshListView$OnAddMoreListener;->onAddMore()V

    .line 610
    :cond_0
    return-void
.end method

.method public onAddMoreComplete()V
    .locals 2

    .prologue
    .line 649
    const-string v0, "PullToRefreshListView"

    const-string v1, "onAddMoreComplete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    invoke-direct {p0}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->resetFooter()V

    .line 651
    return-void
.end method

.method public onAddMoreComplete(Z)V
    .locals 0
    .parameter "hasMore"

    .prologue
    .line 623
    invoke-virtual {p0}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->onAddMoreComplete()V

    .line 624
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 165
    invoke-super {p0}, Landroid/widget/ListView;->onAttachedToWindow()V

    .line 166
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->setSelection(I)V

    .line 167
    return-void
.end method

.method public onLastRecordComplete()V
    .locals 2

    .prologue
    .line 653
    const-string v0, "PullToRefreshListView"

    const-string v1, "onLastRecordComplete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshViewFooter:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 655
    return-void
.end method

.method public onRefresh()V
    .locals 2

    .prologue
    .line 597
    const-string v0, "PullToRefreshListView"

    const-string v1, "onRefresh"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mOnRefreshListener:Lcom/cymobile/ymwork/widget/PullToRefreshListView$OnRefreshListener;

    if-eqz v0, :cond_0

    .line 600
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mOnRefreshListener:Lcom/cymobile/ymwork/widget/PullToRefreshListView$OnRefreshListener;

    invoke-interface {v0}, Lcom/cymobile/ymwork/widget/PullToRefreshListView$OnRefreshListener;->onRefresh()V

    .line 602
    :cond_0
    return-void
.end method

.method public onRefreshComplete(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "lastUpdated"

    .prologue
    .line 618
    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->setLastUpdated(Ljava/lang/CharSequence;)V

    .line 619
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->onRefreshComplete(Z)V

    .line 620
    return-void
.end method

.method public onRefreshComplete(Z)V
    .locals 2
    .parameter "hideFooter"

    .prologue
    .line 630
    const-string v0, "PullToRefreshListView"

    const-string v1, "onRefreshComplete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    invoke-direct {p0}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->resetHeader()V

    .line 636
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getBottom()I

    move-result v0

    if-lez v0, :cond_0

    .line 637
    invoke-virtual {p0}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->invalidateViews()V

    .line 638
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->setSelection(I)V

    .line 640
    :cond_0
    invoke-direct {p0}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->resetFooter()V

    .line 641
    if-eqz p1, :cond_1

    .line 642
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshViewFooter:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 646
    :goto_0
    return-void

    .line 644
    :cond_1
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshViewFooter:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 6
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    const/4 v1, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 462
    iget v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mCurrentScrollState:I

    if-ne v0, v2, :cond_7

    .line 463
    iget v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshState:I

    if-eq v0, v1, :cond_7

    .line 464
    if-nez p2, :cond_6

    .line 465
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshViewImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 466
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getBottom()I

    move-result v0

    iget v1, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshViewHeight:I

    add-int/lit8 v1, v1, 0x14

    if-ge v0, v1, :cond_0

    .line 467
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v0

    if-ltz v0, :cond_4

    .line 468
    :cond_0
    iget v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshState:I

    if-eq v0, v5, :cond_4

    .line 469
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshViewText:Landroid/widget/TextView;

    const v1, 0x7f090030

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 470
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshViewImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 471
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshViewImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mFlipAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 472
    iput v5, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshState:I

    .line 503
    :cond_1
    :goto_0
    iget v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mCurrentScrollState:I

    if-ne v0, v2, :cond_c

    .line 504
    iget v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mAddMoreState:I

    const/16 v1, 0xe

    if-eq v0, v1, :cond_c

    .line 506
    add-int v0, p2, p3

    if-ne v0, p4, :cond_b

    .line 507
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshViewImageFooter:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 508
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshViewFooter:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->getMeasuredHeight()I

    move-result v1

    iget v2, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshViewHeightFooter:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_9

    .line 509
    iget v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mAddMoreState:I

    const/16 v1, 0xd

    if-eq v0, v1, :cond_9

    .line 510
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshViewTextFooter:Landroid/widget/TextView;

    const v1, 0x7f0900e6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 511
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshViewImageFooter:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 512
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshViewImageFooter:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mFlipAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 514
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->setAddMoreState(I)V

    .line 541
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_3

    .line 542
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 545
    :cond_3
    return-void

    .line 473
    :cond_4
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getBottom()I

    move-result v0

    iget v1, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshViewHeight:I

    add-int/lit8 v1, v1, 0x14

    if-ge v0, v1, :cond_1

    .line 474
    iget v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshState:I

    if-eq v0, v3, :cond_1

    .line 475
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshViewText:Landroid/widget/TextView;

    const v1, 0x7f090031

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 476
    iget v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshState:I

    if-eq v0, v2, :cond_5

    .line 477
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshViewImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 478
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshViewImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mReverseFlipAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 480
    :cond_5
    iput v3, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshState:I

    goto :goto_0

    .line 489
    :cond_6
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshViewImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 490
    invoke-direct {p0}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->resetHeader()V

    goto :goto_0

    .line 492
    :cond_7
    iget v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mCurrentScrollState:I

    if-ne v0, v3, :cond_8

    .line 493
    if-lez p3, :cond_8

    if-nez p2, :cond_8

    .line 494
    iget v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshState:I

    if-eq v0, v1, :cond_8

    .line 495
    invoke-virtual {p0, v2}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->setSelection(I)V

    .line 496
    iput-boolean v2, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mBounceHack:Z

    goto/16 :goto_0

    .line 497
    :cond_8
    iget-boolean v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mBounceHack:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mCurrentScrollState:I

    if-ne v0, v3, :cond_1

    .line 498
    invoke-virtual {p0, v2}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->setSelection(I)V

    goto/16 :goto_0

    .line 515
    :cond_9
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshViewFooter:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->getMeasuredHeight()I

    move-result v1

    add-int/lit8 v1, v1, -0x14

    iget v2, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshViewHeightFooter:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_2

    .line 516
    iget v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mAddMoreState:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_2

    .line 517
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshViewTextFooter:Landroid/widget/TextView;

    const v1, 0x7f0900e7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 518
    iget v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mAddMoreState:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_a

    .line 519
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshViewImageFooter:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 520
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshViewImageFooter:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mReverseFlipAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 523
    :cond_a
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->setAddMoreState(I)V

    goto/16 :goto_1

    .line 526
    :cond_b
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshViewImageFooter:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 528
    invoke-direct {p0}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->resetFooter()V

    goto/16 :goto_1

    .line 530
    :cond_c
    iget v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mCurrentScrollState:I

    if-ne v0, v3, :cond_d

    .line 531
    add-int v0, p2, p3

    if-ne v0, p4, :cond_d

    .line 532
    iget v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mAddMoreState:I

    const/16 v1, 0xe

    if-eq v0, v1, :cond_d

    iget-boolean v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mBounceHackFooter:Z

    if-nez v0, :cond_d

    .line 534
    iput-boolean v2, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mBounceHackFooter:Z

    goto/16 :goto_1

    .line 535
    :cond_d
    iget-boolean v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mBounceHackFooter:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mCurrentScrollState:I

    if-ne v0, v3, :cond_2

    goto/16 :goto_1
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3
    .parameter "view"
    .parameter "scrollState"

    .prologue
    const/4 v2, 0x0

    .line 548
    iget-boolean v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mBounceHackFooter:Z

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 549
    iget v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mCurrentScrollState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 551
    invoke-direct {p0}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->resetFooterPadding()V

    .line 554
    :cond_0
    iput p2, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mCurrentScrollState:I

    .line 557
    iget v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mCurrentScrollState:I

    if-nez v0, :cond_1

    .line 558
    iput-boolean v2, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mBounceHack:Z

    .line 559
    iput-boolean v2, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mBounceHackFooter:Z

    .line 560
    const-string v0, "PullToRefreshListView"

    const-string v1, "onScrollStateChanged SCROLL_STATE_IDLE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    :cond_1
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_2

    .line 564
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 566
    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/4 v3, 0x4

    const/4 v7, 0x3

    const/16 v6, 0xe

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 214
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v0, v1

    .line 215
    .local v0, y:I
    iput-boolean v4, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mBounceHack:Z

    .line 216
    iput-boolean v4, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mBounceHackFooter:Z

    .line 218
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 279
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 220
    :pswitch_0
    invoke-virtual {p0}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->isVerticalScrollBarEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 221
    invoke-virtual {p0, v5}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->setVerticalScrollBarEnabled(Z)V

    .line 223
    :cond_1
    invoke-virtual {p0}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->getFirstVisiblePosition()I

    move-result v1

    if-nez v1, :cond_3

    iget v1, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshState:I

    if-eq v1, v3, :cond_3

    .line 224
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getBottom()I

    move-result v1

    iget v2, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshViewHeight:I

    if-ge v1, v2, :cond_2

    .line 225
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v1

    if-ltz v1, :cond_4

    .line 226
    :cond_2
    iget v1, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshState:I

    if-ne v1, v7, :cond_4

    .line 228
    iput v3, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshState:I

    .line 229
    invoke-virtual {p0}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->prepareForRefresh()V

    .line 230
    invoke-virtual {p0}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->onRefresh()V

    .line 239
    :cond_3
    :goto_1
    const-string v1, "onTouchEvent"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getLastVisiblePosition() "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->getLastVisiblePosition()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 240
    const-string v3, " getCount() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 241
    const-string v3, " mAddMoreState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mAddMoreState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ADDMOREing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 239
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-virtual {p0}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->getLastVisiblePosition()I

    move-result v1

    invoke-virtual {p0}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_0

    .line 243
    iget v1, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mAddMoreState:I

    if-eq v1, v6, :cond_0

    .line 244
    const-string v1, "PullToRefreshListView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " mRefreshViewFooter.getTop() "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshViewFooter:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 245
    const-string v3, " getMeasuredHeight() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 246
    const-string v3, " mRefreshViewHeightFooter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshViewHeightFooter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 244
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshViewFooter:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p0}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->getMeasuredHeight()I

    move-result v2

    iget v3, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshViewHeightFooter:I

    sub-int/2addr v2, v3

    if-gt v1, v2, :cond_6

    .line 249
    iget v1, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mAddMoreState:I

    const/16 v2, 0xd

    if-ne v1, v2, :cond_6

    .line 251
    invoke-direct {p0, v6}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->setAddMoreState(I)V

    .line 252
    const-string v1, "PullToRefreshListView"

    const-string v2, "onAddMore"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-virtual {p0}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->prepareForAddMore()V

    .line 254
    invoke-virtual {p0}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->onAddMore()V

    goto/16 :goto_0

    .line 231
    :cond_4
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getBottom()I

    move-result v1

    iget v2, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshViewHeight:I

    if-lt v1, v2, :cond_5

    .line 232
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v1

    if-gtz v1, :cond_3

    .line 234
    :cond_5
    invoke-direct {p0}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->resetHeader()V

    .line 235
    invoke-virtual {p0, v5}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->setSelection(I)V

    goto/16 :goto_1

    .line 255
    :cond_6
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshViewFooter:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p0}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->getMeasuredHeight()I

    move-result v2

    iget v3, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshViewHeightFooter:I

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_0

    .line 257
    const-string v1, "PullToRefreshListView"

    const-string v2, "resetFooter 111"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-direct {p0}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->resetFooter()V

    .line 259
    invoke-virtual {p0, v5}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->setSelection(I)V

    .line 260
    invoke-virtual {p0}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->getFooterViewsCount()I

    move-result v1

    if-lez v1, :cond_7

    .line 261
    invoke-virtual {p0}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->setSelectionFromTop(II)V

    .line 264
    :cond_7
    iget v1, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshState:I

    if-eq v1, v7, :cond_0

    .line 265
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getScrollY()I

    move-result v1

    iget v2, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshViewHeight:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v4, v1}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->scrollTo(II)V

    goto/16 :goto_0

    .line 272
    :pswitch_1
    iput v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mLastMotionY:I

    goto/16 :goto_0

    .line 275
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->applyHeaderPadding(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 218
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public prepareForAddMore()V
    .locals 2

    .prologue
    .line 583
    invoke-direct {p0}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->resetFooterPadding()V

    .line 585
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshViewImageFooter:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 587
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshViewImageFooter:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 588
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshViewProgressFooter:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 591
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshViewTextFooter:Landroid/widget/TextView;

    const v1, 0x7f090032

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 593
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->setAddMoreState(I)V

    .line 594
    return-void
.end method

.method public prepareForRefresh()V
    .locals 2

    .prologue
    .line 569
    invoke-direct {p0}, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->resetHeaderPadding()V

    .line 571
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshViewImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 573
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshViewImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 574
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshViewProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 577
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshViewText:Landroid/widget/TextView;

    const v1, 0x7f0900e8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 579
    const/4 v0, 0x4

    iput v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshState:I

    .line 580
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0
    .parameter "adapter"

    .prologue
    .line 171
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 173
    return-void
.end method

.method public setLastUpdated(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "lastUpdated"

    .prologue
    .line 204
    if-eqz p1, :cond_0

    .line 205
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshViewLastUpdated:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 206
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshViewLastUpdated:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    :goto_0
    return-void

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mRefreshViewLastUpdated:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setOnAddMoreListener(Lcom/cymobile/ymwork/widget/PullToRefreshListView$OnAddMoreListener;)V
    .locals 0
    .parameter "onAddMoreListener"

    .prologue
    .line 196
    iput-object p1, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mOnAddMoreListener:Lcom/cymobile/ymwork/widget/PullToRefreshListView$OnAddMoreListener;

    .line 197
    return-void
.end method

.method public setOnRefreshListener(Lcom/cymobile/ymwork/widget/PullToRefreshListView$OnRefreshListener;)V
    .locals 0
    .parameter "onRefreshListener"

    .prologue
    .line 192
    iput-object p1, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mOnRefreshListener:Lcom/cymobile/ymwork/widget/PullToRefreshListView$OnRefreshListener;

    .line 193
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 183
    iput-object p1, p0, Lcom/cymobile/ymwork/widget/PullToRefreshListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 184
    return-void
.end method
