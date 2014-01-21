.class public Luk/co/jasonfry/android/tools/widget/PageView;
.super Luk/co/jasonfry/android/tools/widget/BounceSwipeView;
.source "PageView.java"


# instance fields
.field private mAdapter:Landroid/widget/Adapter;

.field private mCarouselMode:Z

.field private mCurrentPage:I

.field private mOffset:I

.field private mOnPageChangedListener:Luk/co/jasonfry/android/tools/ui/SwipeView$OnPageChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;-><init>(Landroid/content/Context;)V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mCarouselMode:Z

    .line 25
    invoke-direct {p0}, Luk/co/jasonfry/android/tools/widget/PageView;->initView()V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mCarouselMode:Z

    .line 31
    invoke-direct {p0}, Luk/co/jasonfry/android/tools/widget/PageView;->initView()V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mCarouselMode:Z

    .line 37
    invoke-direct {p0}, Luk/co/jasonfry/android/tools/widget/PageView;->initView()V

    .line 38
    return-void
.end method

.method static synthetic access$0(Luk/co/jasonfry/android/tools/widget/PageView;)Z
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-boolean v0, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mCarouselMode:Z

    return v0
.end method

.method static synthetic access$1(Luk/co/jasonfry/android/tools/widget/PageView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-super {p0, p1}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->scrollToPage(I)V

    return-void
.end method

.method static synthetic access$2(Luk/co/jasonfry/android/tools/widget/PageView;)Landroid/widget/Adapter;
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mAdapter:Landroid/widget/Adapter;

    return-object v0
.end method

.method static synthetic access$3(Luk/co/jasonfry/android/tools/widget/PageView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-super {p0, p1}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->smoothScrollToPage(I)V

    return-void
.end method

.method private backwardsMove()V
    .locals 1

    .prologue
    .line 373
    iget v0, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mCurrentPage:I

    if-lez v0, :cond_0

    .line 375
    iget v0, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mCurrentPage:I

    .line 382
    :goto_0
    iget v0, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mCurrentPage:I

    if-lez v0, :cond_1

    .line 384
    iget v0, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Luk/co/jasonfry/android/tools/widget/PageView;->backwardsRearrange(I)V

    .line 390
    :goto_1
    return-void

    .line 379
    :cond_0
    invoke-direct {p0}, Luk/co/jasonfry/android/tools/widget/PageView;->getAdapterPageCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mCurrentPage:I

    goto :goto_0

    .line 388
    :cond_1
    invoke-direct {p0}, Luk/co/jasonfry/android/tools/widget/PageView;->getAdapterPageCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Luk/co/jasonfry/android/tools/widget/PageView;->backwardsRearrange(I)V

    goto :goto_1
.end method

.method private backwardsRearrange(I)V
    .locals 3
    .parameter "backPageToLoad"

    .prologue
    const/4 v2, 0x2

    .line 403
    invoke-virtual {p0}, Luk/co/jasonfry/android/tools/widget/PageView;->getChildContainer()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 404
    .local v0, convertView:Landroid/view/View;
    invoke-virtual {p0}, Luk/co/jasonfry/android/tools/widget/PageView;->getChildContainer()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 405
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Luk/co/jasonfry/android/tools/widget/PageView;->loadPage(IILandroid/view/View;)V

    .line 406
    invoke-direct {p0}, Luk/co/jasonfry/android/tools/widget/PageView;->resetMargins()V

    .line 407
    return-void
.end method

.method private emptyCarousel()V
    .locals 1

    .prologue
    .line 137
    invoke-virtual {p0}, Luk/co/jasonfry/android/tools/widget/PageView;->getChildContainer()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 138
    return-void
.end method

.method private fillCarousel(I)V
    .locals 5
    .parameter "page"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 142
    invoke-direct {p0}, Luk/co/jasonfry/android/tools/widget/PageView;->emptyCarousel()V

    .line 143
    iget-object v0, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 145
    invoke-direct {p0, v2, v2, v1}, Luk/co/jasonfry/android/tools/widget/PageView;->loadPage(IILandroid/view/View;)V

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    iget-object v0, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    if-ne v0, v4, :cond_4

    .line 149
    iget-boolean v0, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mCarouselMode:Z

    if-nez v0, :cond_2

    .line 151
    invoke-direct {p0, v2, v2, v1}, Luk/co/jasonfry/android/tools/widget/PageView;->loadPage(IILandroid/view/View;)V

    .line 152
    invoke-direct {p0, v3, v3, v1}, Luk/co/jasonfry/android/tools/widget/PageView;->loadPage(IILandroid/view/View;)V

    goto :goto_0

    .line 154
    :cond_2
    if-nez p1, :cond_3

    .line 156
    invoke-direct {p0, v3, v2, v1}, Luk/co/jasonfry/android/tools/widget/PageView;->loadPage(IILandroid/view/View;)V

    .line 157
    invoke-direct {p0, v2, v3, v1}, Luk/co/jasonfry/android/tools/widget/PageView;->loadPage(IILandroid/view/View;)V

    .line 158
    invoke-direct {p0, v3, v4, v1}, Luk/co/jasonfry/android/tools/widget/PageView;->loadPage(IILandroid/view/View;)V

    goto :goto_0

    .line 162
    :cond_3
    invoke-direct {p0, v2, v2, v1}, Luk/co/jasonfry/android/tools/widget/PageView;->loadPage(IILandroid/view/View;)V

    .line 163
    invoke-direct {p0, v3, v3, v1}, Luk/co/jasonfry/android/tools/widget/PageView;->loadPage(IILandroid/view/View;)V

    .line 164
    invoke-direct {p0, v2, v4, v1}, Luk/co/jasonfry/android/tools/widget/PageView;->loadPage(IILandroid/view/View;)V

    goto :goto_0

    .line 167
    :cond_4
    iget-object v0, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    if-le v0, v4, :cond_0

    .line 169
    if-nez p1, :cond_5

    iget-boolean v0, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mCarouselMode:Z

    if-eqz v0, :cond_5

    .line 171
    iget-object v0, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0, v2, v1}, Luk/co/jasonfry/android/tools/widget/PageView;->loadPage(IILandroid/view/View;)V

    .line 172
    invoke-direct {p0, v2, v3, v1}, Luk/co/jasonfry/android/tools/widget/PageView;->loadPage(IILandroid/view/View;)V

    .line 173
    invoke-direct {p0, v3, v4, v1}, Luk/co/jasonfry/android/tools/widget/PageView;->loadPage(IILandroid/view/View;)V

    .line 199
    :goto_1
    invoke-direct {p0}, Luk/co/jasonfry/android/tools/widget/PageView;->resetMargins()V

    goto :goto_0

    .line 175
    :cond_5
    if-nez p1, :cond_6

    iget-boolean v0, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mCarouselMode:Z

    if-nez v0, :cond_6

    .line 177
    invoke-direct {p0, v2, v2, v1}, Luk/co/jasonfry/android/tools/widget/PageView;->loadPage(IILandroid/view/View;)V

    .line 178
    invoke-direct {p0, v3, v3, v1}, Luk/co/jasonfry/android/tools/widget/PageView;->loadPage(IILandroid/view/View;)V

    .line 179
    invoke-direct {p0, v4, v4, v1}, Luk/co/jasonfry/android/tools/widget/PageView;->loadPage(IILandroid/view/View;)V

    goto :goto_1

    .line 181
    :cond_6
    iget-object v0, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_7

    iget-boolean v0, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mCarouselMode:Z

    if-eqz v0, :cond_7

    .line 183
    add-int/lit8 v0, p1, -0x1

    invoke-direct {p0, v0, v2, v1}, Luk/co/jasonfry/android/tools/widget/PageView;->loadPage(IILandroid/view/View;)V

    .line 184
    iget-object v0, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0, v3, v1}, Luk/co/jasonfry/android/tools/widget/PageView;->loadPage(IILandroid/view/View;)V

    .line 185
    invoke-direct {p0, v2, v4, v1}, Luk/co/jasonfry/android/tools/widget/PageView;->loadPage(IILandroid/view/View;)V

    goto :goto_1

    .line 187
    :cond_7
    iget-object v0, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_8

    iget-boolean v0, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mCarouselMode:Z

    if-nez v0, :cond_8

    .line 189
    iget-object v0, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    invoke-direct {p0, v0, v2, v1}, Luk/co/jasonfry/android/tools/widget/PageView;->loadPage(IILandroid/view/View;)V

    .line 190
    iget-object v0, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-direct {p0, v0, v3, v1}, Luk/co/jasonfry/android/tools/widget/PageView;->loadPage(IILandroid/view/View;)V

    .line 191
    iget-object v0, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0, v4, v1}, Luk/co/jasonfry/android/tools/widget/PageView;->loadPage(IILandroid/view/View;)V

    goto :goto_1

    .line 195
    :cond_8
    add-int/lit8 v0, p1, -0x1

    invoke-direct {p0, v0, v2, v1}, Luk/co/jasonfry/android/tools/widget/PageView;->loadPage(IILandroid/view/View;)V

    .line 196
    invoke-direct {p0, p1, v3, v1}, Luk/co/jasonfry/android/tools/widget/PageView;->loadPage(IILandroid/view/View;)V

    .line 197
    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0, v4, v1}, Luk/co/jasonfry/android/tools/widget/PageView;->loadPage(IILandroid/view/View;)V

    goto :goto_1
.end method

.method private forwardsMove()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 352
    iget v0, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mCurrentPage:I

    invoke-direct {p0}, Luk/co/jasonfry/android/tools/widget/PageView;->getAdapterPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 354
    iget v0, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mCurrentPage:I

    .line 361
    :goto_0
    iget v0, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mCurrentPage:I

    invoke-direct {p0}, Luk/co/jasonfry/android/tools/widget/PageView;->getAdapterPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 363
    iget v0, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Luk/co/jasonfry/android/tools/widget/PageView;->forwardsRearrange(I)V

    .line 369
    :goto_1
    return-void

    .line 358
    :cond_0
    iput v2, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mCurrentPage:I

    goto :goto_0

    .line 367
    :cond_1
    invoke-direct {p0, v2}, Luk/co/jasonfry/android/tools/widget/PageView;->forwardsRearrange(I)V

    goto :goto_1
.end method

.method private forwardsRearrange(I)V
    .locals 3
    .parameter "frontPageToLoad"

    .prologue
    const/4 v2, 0x0

    .line 395
    invoke-virtual {p0}, Luk/co/jasonfry/android/tools/widget/PageView;->getChildContainer()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 396
    .local v0, convertView:Landroid/view/View;
    invoke-virtual {p0}, Luk/co/jasonfry/android/tools/widget/PageView;->getChildContainer()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 397
    const/4 v1, 0x2

    invoke-direct {p0, p1, v1, v0}, Luk/co/jasonfry/android/tools/widget/PageView;->loadPage(IILandroid/view/View;)V

    .line 398
    invoke-direct {p0}, Luk/co/jasonfry/android/tools/widget/PageView;->resetMargins()V

    .line 399
    return-void
.end method

.method private getAdapterPageCount()I
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mCarouselMode:Z

    if-eqz v0, :cond_0

    .line 122
    const/4 v0, 0x4

    .line 131
    :goto_0
    return v0

    .line 126
    :cond_0
    iget-object v0, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    goto :goto_0

    .line 131
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Luk/co/jasonfry/android/tools/widget/PageView;->setBounceEnabled(Z)V

    .line 43
    return-void
.end method

.method private loadPage(IILandroid/view/View;)V
    .locals 2
    .parameter "page"
    .parameter "position"
    .parameter "convertView"

    .prologue
    .line 217
    iget-object v0, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    .line 219
    add-int/lit8 p1, p1, -0x2

    .line 221
    :cond_0
    iget-object v0, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mAdapter:Landroid/widget/Adapter;

    invoke-virtual {p0}, Luk/co/jasonfry/android/tools/widget/PageView;->getChildContainer()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-interface {v0, p1, p3, v1}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0, p2}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->addView(Landroid/view/View;I)V

    .line 222
    return-void
.end method

.method private notifiyAssignedOnPageChangedListener(I)V
    .locals 5
    .parameter "newPage"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 253
    iget-object v0, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mOnPageChangedListener:Luk/co/jasonfry/android/tools/ui/SwipeView$OnPageChangedListener;

    if-eqz v0, :cond_0

    .line 255
    iget-boolean v0, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mCarouselMode:Z

    if-eqz v0, :cond_1

    iget v0, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mCurrentPage:I

    if-nez v0, :cond_1

    if-ne p1, v4, :cond_1

    .line 257
    iget-object v0, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mOnPageChangedListener:Luk/co/jasonfry/android/tools/ui/SwipeView$OnPageChangedListener;

    iget-object v1, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mCurrentPage:I

    invoke-interface {v0, v1, v2}, Luk/co/jasonfry/android/tools/ui/SwipeView$OnPageChangedListener;->onPageChanged(II)V

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    iget-boolean v0, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mCarouselMode:Z

    if-eqz v0, :cond_2

    iget v0, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mCurrentPage:I

    iget-object v1, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_2

    if-nez p1, :cond_2

    .line 261
    iget-object v0, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mOnPageChangedListener:Luk/co/jasonfry/android/tools/ui/SwipeView$OnPageChangedListener;

    iget v1, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mCurrentPage:I

    invoke-interface {v0, v3, v1}, Luk/co/jasonfry/android/tools/ui/SwipeView$OnPageChangedListener;->onPageChanged(II)V

    goto :goto_0

    .line 263
    :cond_2
    iget-boolean v0, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mCarouselMode:Z

    if-nez v0, :cond_3

    iget v0, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mCurrentPage:I

    if-ne v0, v2, :cond_3

    if-ne p1, v2, :cond_3

    .line 265
    iget-object v0, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mOnPageChangedListener:Luk/co/jasonfry/android/tools/ui/SwipeView$OnPageChangedListener;

    invoke-interface {v0, v3, v2}, Luk/co/jasonfry/android/tools/ui/SwipeView$OnPageChangedListener;->onPageChanged(II)V

    goto :goto_0

    .line 267
    :cond_3
    iget-boolean v0, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mCarouselMode:Z

    if-nez v0, :cond_4

    iget v0, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mCurrentPage:I

    iget-object v1, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_4

    .line 269
    iget-object v0, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mOnPageChangedListener:Luk/co/jasonfry/android/tools/ui/SwipeView$OnPageChangedListener;

    iget v1, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mCurrentPage:I

    iget-object v2, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-interface {v0, v1, v2}, Luk/co/jasonfry/android/tools/ui/SwipeView$OnPageChangedListener;->onPageChanged(II)V

    goto :goto_0

    .line 271
    :cond_4
    if-ne p1, v4, :cond_5

    .line 273
    iget-object v0, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mOnPageChangedListener:Luk/co/jasonfry/android/tools/ui/SwipeView$OnPageChangedListener;

    iget v1, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mCurrentPage:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mCurrentPage:I

    invoke-interface {v0, v1, v2}, Luk/co/jasonfry/android/tools/ui/SwipeView$OnPageChangedListener;->onPageChanged(II)V

    goto :goto_0

    .line 277
    :cond_5
    iget-object v0, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mOnPageChangedListener:Luk/co/jasonfry/android/tools/ui/SwipeView$OnPageChangedListener;

    iget v1, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mCurrentPage:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mCurrentPage:I

    invoke-interface {v0, v1, v2}, Luk/co/jasonfry/android/tools/ui/SwipeView$OnPageChangedListener;->onPageChanged(II)V

    goto :goto_0
.end method

.method private rearrangePages(IIZ)V
    .locals 5
    .parameter "oldPage"
    .parameter "newPage"
    .parameter "smooth"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 285
    invoke-direct {p0}, Luk/co/jasonfry/android/tools/widget/PageView;->getAdapterPageCount()I

    move-result v1

    if-le v1, v4, :cond_1

    .line 288
    add-int/lit8 v1, p1, 0x1

    if-lt p2, v1, :cond_4

    .line 290
    iget-boolean v1, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mCarouselMode:Z

    if-nez v1, :cond_0

    iget v1, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mCurrentPage:I

    invoke-direct {p0}, Luk/co/jasonfry/android/tools/widget/PageView;->getAdapterPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    if-ge v1, v2, :cond_2

    iget v1, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mCurrentPage:I

    if-lez v1, :cond_2

    .line 292
    :cond_0
    iput-boolean v3, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mCallScrollToPageInOnLayout:Z

    .line 293
    invoke-virtual {p0}, Luk/co/jasonfry/android/tools/widget/PageView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Luk/co/jasonfry/android/tools/widget/PageView;->getPageWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1, v3}, Luk/co/jasonfry/android/tools/widget/PageView;->scrollTo(II)V

    .line 294
    invoke-direct {p0}, Luk/co/jasonfry/android/tools/widget/PageView;->forwardsMove()V

    .line 295
    const/4 v0, 0x1

    .line 333
    .local v0, pageToScrollTo:I
    :goto_0
    new-instance v1, Luk/co/jasonfry/android/tools/widget/PageView$2;

    invoke-direct {v1, p0, p3, v0}, Luk/co/jasonfry/android/tools/widget/PageView$2;-><init>(Luk/co/jasonfry/android/tools/widget/PageView;ZI)V

    invoke-virtual {p0, v1}, Luk/co/jasonfry/android/tools/widget/PageView;->post(Ljava/lang/Runnable;)Z

    .line 348
    .end local v0           #pageToScrollTo:I
    :cond_1
    return-void

    .line 297
    :cond_2
    iget v1, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mCurrentPage:I

    if-gtz v1, :cond_3

    .line 299
    iput v4, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mCurrentPage:I

    .line 300
    const/4 v0, 0x1

    .restart local v0       #pageToScrollTo:I
    goto :goto_0

    .line 304
    .end local v0           #pageToScrollTo:I
    :cond_3
    invoke-direct {p0}, Luk/co/jasonfry/android/tools/widget/PageView;->getAdapterPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mCurrentPage:I

    .line 305
    const/4 v0, 0x2

    .restart local v0       #pageToScrollTo:I
    goto :goto_0

    .line 308
    .end local v0           #pageToScrollTo:I
    :cond_4
    add-int/lit8 v1, p1, -0x1

    if-gt p2, v1, :cond_8

    .line 310
    iget-boolean v1, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mCarouselMode:Z

    if-nez v1, :cond_5

    iget v1, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mCurrentPage:I

    if-le v1, v4, :cond_6

    iget v1, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mCurrentPage:I

    invoke-direct {p0}, Luk/co/jasonfry/android/tools/widget/PageView;->getAdapterPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_6

    .line 312
    :cond_5
    iput-boolean v3, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mCallScrollToPageInOnLayout:Z

    .line 313
    invoke-virtual {p0}, Luk/co/jasonfry/android/tools/widget/PageView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Luk/co/jasonfry/android/tools/widget/PageView;->getPageWidth()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v1, v3}, Luk/co/jasonfry/android/tools/widget/PageView;->scrollTo(II)V

    .line 314
    invoke-direct {p0}, Luk/co/jasonfry/android/tools/widget/PageView;->backwardsMove()V

    .line 315
    const/4 v0, 0x1

    .restart local v0       #pageToScrollTo:I
    goto :goto_0

    .line 317
    .end local v0           #pageToScrollTo:I
    :cond_6
    iget v1, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mCurrentPage:I

    invoke-direct {p0}, Luk/co/jasonfry/android/tools/widget/PageView;->getAdapterPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v1, v2, :cond_7

    .line 319
    invoke-direct {p0}, Luk/co/jasonfry/android/tools/widget/PageView;->getAdapterPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    iput v1, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mCurrentPage:I

    .line 320
    const/4 v0, 0x1

    .restart local v0       #pageToScrollTo:I
    goto :goto_0

    .line 324
    .end local v0           #pageToScrollTo:I
    :cond_7
    iput v3, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mCurrentPage:I

    .line 325
    const/4 v0, 0x0

    .restart local v0       #pageToScrollTo:I
    goto :goto_0

    .line 330
    .end local v0           #pageToScrollTo:I
    :cond_8
    const/4 v0, 0x1

    .restart local v0       #pageToScrollTo:I
    goto :goto_0
.end method

.method private refill(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 450
    iget v0, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mCurrentPage:I

    if-nez v0, :cond_2

    .line 452
    invoke-direct {p0}, Luk/co/jasonfry/android/tools/widget/PageView;->getAdapterPageCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq p1, v0, :cond_0

    iget v0, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    if-gt p1, v0, :cond_1

    .line 454
    :cond_0
    iget v0, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mCurrentPage:I

    invoke-direct {p0, v0}, Luk/co/jasonfry/android/tools/widget/PageView;->fillCarousel(I)V

    .line 471
    :cond_1
    :goto_0
    return-void

    .line 457
    :cond_2
    iget v0, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mCurrentPage:I

    invoke-direct {p0}, Luk/co/jasonfry/android/tools/widget/PageView;->getAdapterPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_4

    .line 459
    iget v0, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mCurrentPage:I

    if-ge p1, v0, :cond_3

    if-nez p1, :cond_1

    .line 461
    :cond_3
    iget v0, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mCurrentPage:I

    invoke-direct {p0, v0}, Luk/co/jasonfry/android/tools/widget/PageView;->fillCarousel(I)V

    goto :goto_0

    .line 466
    :cond_4
    iget v0, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    if-lt p1, v0, :cond_1

    iget v0, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    if-gt p1, v0, :cond_1

    .line 468
    iget v0, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mCurrentPage:I

    invoke-direct {p0, v0}, Luk/co/jasonfry/android/tools/widget/PageView;->fillCarousel(I)V

    goto :goto_0
.end method

.method private resetMargins()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 411
    iget v0, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mOffset:I

    if-lez v0, :cond_0

    .line 413
    invoke-virtual {p0}, Luk/co/jasonfry/android/tools/widget/PageView;->getChildContainer()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mOffset:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 414
    invoke-virtual {p0}, Luk/co/jasonfry/android/tools/widget/PageView;->getChildContainer()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 416
    invoke-virtual {p0}, Luk/co/jasonfry/android/tools/widget/PageView;->getChildContainer()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 417
    invoke-virtual {p0}, Luk/co/jasonfry/android/tools/widget/PageView;->getChildContainer()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 419
    invoke-virtual {p0}, Luk/co/jasonfry/android/tools/widget/PageView;->getChildContainer()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 420
    invoke-virtual {p0}, Luk/co/jasonfry/android/tools/widget/PageView;->getChildContainer()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mOffset:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 422
    :cond_0
    return-void
.end method

.method private scrollToPage(IZ)V
    .locals 2
    .parameter "page"
    .parameter "smooth"

    .prologue
    .line 238
    iget-boolean v0, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mCarouselMode:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Luk/co/jasonfry/android/tools/widget/PageView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0}, Luk/co/jasonfry/android/tools/widget/PageView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Luk/co/jasonfry/android/tools/widget/PageView;->getCurrentPage()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 239
    :cond_0
    iget-boolean v0, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mCarouselMode:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Luk/co/jasonfry/android/tools/widget/PageView;->getCurrentPage()I

    move-result v0

    if-nez v0, :cond_3

    if-gtz p1, :cond_3

    .line 241
    :cond_1
    invoke-virtual {p0}, Luk/co/jasonfry/android/tools/widget/PageView;->doAtEdgeAnimation()V

    .line 248
    :cond_2
    :goto_0
    return-void

    .line 243
    :cond_3
    invoke-virtual {p0}, Luk/co/jasonfry/android/tools/widget/PageView;->getCurrentPage()I

    move-result v0

    if-eq v0, p1, :cond_2

    .line 245
    invoke-virtual {p0}, Luk/co/jasonfry/android/tools/widget/PageView;->getCurrentPage()I

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Luk/co/jasonfry/android/tools/widget/PageView;->rearrangePages(IIZ)V

    .line 246
    invoke-direct {p0, p1}, Luk/co/jasonfry/android/tools/widget/PageView;->notifiyAssignedOnPageChangedListener(I)V

    goto :goto_0
.end method


# virtual methods
.method public getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mAdapter:Landroid/widget/Adapter;

    return-object v0
.end method

.method public getCarouselEnabled()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mCarouselMode:Z

    return v0
.end method

.method public getOnPageChangedListener()Luk/co/jasonfry/android/tools/ui/SwipeView$OnPageChangedListener;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mOnPageChangedListener:Luk/co/jasonfry/android/tools/ui/SwipeView$OnPageChangedListener;

    return-object v0
.end method

.method public getRealCurrentPage()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mCurrentPage:I

    return v0
.end method

.method public itemAddedToAdapter(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 426
    iget v0, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mCurrentPage:I

    if-gt p1, v0, :cond_0

    .line 428
    iget v0, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mCurrentPage:I

    .line 430
    :cond_0
    iget-object v0, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 432
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Luk/co/jasonfry/android/tools/widget/PageView;->setBounceEnabled(Z)V

    .line 435
    :cond_1
    invoke-direct {p0, p1}, Luk/co/jasonfry/android/tools/widget/PageView;->refill(I)V

    .line 436
    return-void
.end method

.method public itemRemovedFromAdapter(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 440
    iget v0, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mCurrentPage:I

    if-gt p1, v0, :cond_0

    iget v0, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mCurrentPage:I

    if-eqz v0, :cond_0

    .line 442
    iget v0, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mCurrentPage:I

    .line 445
    :cond_0
    invoke-direct {p0, p1}, Luk/co/jasonfry/android/tools/widget/PageView;->refill(I)V

    .line 446
    return-void
.end method

.method public scrollToPage(I)V
    .locals 1
    .parameter "page"

    .prologue
    .line 233
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Luk/co/jasonfry/android/tools/widget/PageView;->scrollToPage(IZ)V

    .line 234
    return-void
.end method

.method public setAdapter(Landroid/widget/BaseAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Luk/co/jasonfry/android/tools/widget/PageView;->setAdapter(Landroid/widget/BaseAdapter;I)V

    .line 75
    return-void
.end method

.method public setAdapter(Landroid/widget/BaseAdapter;I)V
    .locals 2
    .parameter "adapter"
    .parameter "startPosition"

    .prologue
    const/4 v1, 0x1

    .line 79
    iput-object p1, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mAdapter:Landroid/widget/Adapter;

    .line 80
    iget-object v0, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_0

    .line 82
    iput p2, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mCurrentPage:I

    .line 83
    invoke-direct {p0, p2}, Luk/co/jasonfry/android/tools/widget/PageView;->fillCarousel(I)V

    .line 84
    new-instance v0, Luk/co/jasonfry/android/tools/widget/PageView$1;

    invoke-direct {v0, p0, p2}, Luk/co/jasonfry/android/tools/widget/PageView$1;-><init>(Luk/co/jasonfry/android/tools/widget/PageView;I)V

    invoke-virtual {p0, v0}, Luk/co/jasonfry/android/tools/widget/PageView;->post(Ljava/lang/Runnable;)Z

    .line 103
    iget-object v0, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    if-gt v0, v1, :cond_0

    .line 105
    invoke-virtual {p0, v1}, Luk/co/jasonfry/android/tools/widget/PageView;->setBounceEnabled(Z)V

    .line 108
    :cond_0
    return-void
.end method

.method public setCarouselEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 63
    iput-boolean p1, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mCarouselMode:Z

    .line 64
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Luk/co/jasonfry/android/tools/widget/PageView;->setBounceEnabled(Z)V

    .line 65
    return-void

    .line 64
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setOnPageChangedListener(Luk/co/jasonfry/android/tools/ui/SwipeView$OnPageChangedListener;)V
    .locals 0
    .parameter "onPageChangedListener"

    .prologue
    .line 206
    iput-object p1, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mOnPageChangedListener:Luk/co/jasonfry/android/tools/ui/SwipeView$OnPageChangedListener;

    .line 207
    return-void
.end method

.method public setPageWidth(I)I
    .locals 1
    .parameter "pageWidth"

    .prologue
    .line 57
    invoke-super {p0, p1}, Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->setPageWidth(I)I

    move-result v0

    iput v0, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mOffset:I

    .line 58
    iget v0, p0, Luk/co/jasonfry/android/tools/widget/PageView;->mOffset:I

    return v0
.end method

.method public smoothScrollToPage(I)V
    .locals 1
    .parameter "page"

    .prologue
    .line 227
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Luk/co/jasonfry/android/tools/widget/PageView;->scrollToPage(IZ)V

    .line 228
    return-void
.end method
