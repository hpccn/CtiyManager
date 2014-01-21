.class public Lcom/cymobile/ymwork/widget/RangeFilterFragment;
.super Lcom/cymobile/ymwork/widget/ShopFilterFragment;
.source "RangeFilterFragment.java"

# interfaces
.implements Lcom/cymobile/ymwork/widget/ShopRangeSelGroup$OnRangeSelChangeListener;


# instance fields
.field private btnRangeFilter:Landroid/widget/Button;

.field private rangeGroup:Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;

.field private rangeLayout:Landroid/view/View;

.field private selectedRange:Lcom/cymobile/ymwork/types/Pair;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/cymobile/ymwork/widget/ShopFilterFragment;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/cymobile/ymwork/widget/RangeFilterFragment;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/cymobile/ymwork/widget/RangeFilterFragment;->dismissRange(Z)V

    return-void
.end method

.method static synthetic access$1(Lcom/cymobile/ymwork/widget/RangeFilterFragment;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragment;->rangeLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2(Lcom/cymobile/ymwork/widget/RangeFilterFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/cymobile/ymwork/widget/RangeFilterFragment;->showRange()V

    return-void
.end method

.method private checkRangeable(Lcom/cymobile/ymwork/types/Pair;)Z
    .locals 1
    .parameter "pair"

    .prologue
    .line 32
    const/4 v0, 0x1

    return v0
.end method

.method private dismissRange(Z)V
    .locals 3
    .parameter "paramBoolean"

    .prologue
    const/4 v2, 0x0

    .line 36
    if-eqz p1, :cond_0

    .line 37
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragment;->rangeLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragment;->animPushTopOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragment;->btnRangeFilter:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 39
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragment;->btnRangeFilter:Landroid/widget/Button;

    iget-object v1, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragment;->mNormalArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 41
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragment;->rangeLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 42
    return-void
.end method

.method private filterRangeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "str"

    .prologue
    .line 45
    if-nez p1, :cond_0

    .line 46
    const-string v0, ""

    .line 47
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "\u9644\u8fd1"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u5468\u8fb9"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private setRange(Lcom/cymobile/ymwork/types/Pair;)V
    .locals 2
    .parameter "pair"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragment;->selectedRange:Lcom/cymobile/ymwork/types/Pair;

    .line 52
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragment;->selectedRange:Lcom/cymobile/ymwork/types/Pair;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragment;->btnRangeFilter:Landroid/widget/Button;

    iget-object v1, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragment;->selectedRange:Lcom/cymobile/ymwork/types/Pair;

    .line 54
    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/Pair;->name()Ljava/lang/String;

    move-result-object v1

    .line 53
    invoke-direct {p0, v1}, Lcom/cymobile/ymwork/widget/RangeFilterFragment;->filterRangeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragment;->rangeGroup:Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;

    .line 56
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragment;->selectedRange:Lcom/cymobile/ymwork/types/Pair;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v1

    invoke-static {v1}, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->pairToRangeType(I)I

    move-result v1

    .line 55
    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->setRangeType(I)V

    .line 58
    :cond_0
    return-void
.end method

.method private showRange()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 61
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragment;->rangeLayout:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/widget/RangeFilterFragment;->prepareShowLayout(Landroid/view/View;)V

    .line 62
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragment;->btnRangeFilter:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 63
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragment;->btnRangeFilter:Landroid/widget/Button;

    .line 64
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragment;->mSelectedArrow:Landroid/graphics/drawable/Drawable;

    .line 63
    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 65
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragment;->rangeLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 66
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragment;->rangeLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragment;->animPushTopIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 67
    return-void
.end method


# virtual methods
.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "layoutInflater"
    .parameter "viewGroup"

    .prologue
    .line 71
    const v0, 0x7f03002c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "paramBundle"

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/cymobile/ymwork/widget/ShopFilterFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 76
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragment;->rangeGroup:Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;

    invoke-virtual {v0, p0}, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->setOnRangeSelChangeListener(Lcom/cymobile/ymwork/widget/ShopRangeSelGroup$OnRangeSelChangeListener;)V

    .line 77
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragment;->shopListDataSource:Lcom/cymobile/ymwork/adapter/FilterDataSource;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/adapter/FilterDataSource;->curRange()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragment;->rangeGroup:Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;

    .line 79
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragment;->shopListDataSource:Lcom/cymobile/ymwork/adapter/FilterDataSource;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/adapter/FilterDataSource;->curRange()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v1

    invoke-static {v1}, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->pairToRangeType(I)I

    move-result v1

    .line 78
    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->setRangeType(I)V

    .line 80
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragment;->btnRangeFilter:Landroid/widget/Button;

    iget-object v1, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragment;->shopListDataSource:Lcom/cymobile/ymwork/adapter/FilterDataSource;

    .line 81
    invoke-virtual {v1}, Lcom/cymobile/ymwork/adapter/FilterDataSource;->curRange()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/Pair;->name()Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-direct {p0, v1}, Lcom/cymobile/ymwork/widget/RangeFilterFragment;->filterRangeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragment;->shopListDataSource:Lcom/cymobile/ymwork/adapter/FilterDataSource;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/adapter/FilterDataSource;->curRange()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cymobile/ymwork/widget/RangeFilterFragment;->setRange(Lcom/cymobile/ymwork/types/Pair;)V

    .line 84
    return-void
.end method

.method public onBackPressed(Z)Z
    .locals 2
    .parameter "paramBoolean"

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/cymobile/ymwork/widget/ShopFilterFragment;->onBackPressed(Z)Z

    move-result v0

    .line 88
    .local v0, bool:Z
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragment;->rangeLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 89
    const/4 v0, 0x1

    .line 90
    invoke-direct {p0, p1}, Lcom/cymobile/ymwork/widget/RangeFilterFragment;->dismissRange(Z)V

    .line 92
    :cond_0
    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "layoutInflater"
    .parameter "viewGroup"
    .parameter "bundle"

    .prologue
    .line 97
    invoke-super {p0, p1, p2, p3}, Lcom/cymobile/ymwork/widget/ShopFilterFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 99
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0800b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragment;->rangeLayout:Landroid/view/View;

    .line 100
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragment;->rangeLayout:Landroid/view/View;

    new-instance v2, Lcom/cymobile/ymwork/widget/RangeFilterFragment$1;

    invoke-direct {v2, p0}, Lcom/cymobile/ymwork/widget/RangeFilterFragment$1;-><init>(Lcom/cymobile/ymwork/widget/RangeFilterFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    const v1, 0x7f0800d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;

    iput-object v1, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragment;->rangeGroup:Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;

    .line 106
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragment;->rangeGroup:Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;

    const v2, 0x7f02001b

    invoke-virtual {v1, v2}, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->setBackgroundResource(I)V

    .line 107
    const v1, 0x7f0800b1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragment;->btnRangeFilter:Landroid/widget/Button;

    .line 108
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragment;->btnRangeFilter:Landroid/widget/Button;

    new-instance v2, Lcom/cymobile/ymwork/widget/RangeFilterFragment$2;

    invoke-direct {v2, p0}, Lcom/cymobile/ymwork/widget/RangeFilterFragment$2;-><init>(Lcom/cymobile/ymwork/widget/RangeFilterFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    return-object v0
.end method

.method public onDataChanged(I)V
    .locals 2
    .parameter "data"

    .prologue
    .line 121
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragment;->shopListDataSource:Lcom/cymobile/ymwork/adapter/FilterDataSource;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/adapter/FilterDataSource;->curRange()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/cymobile/ymwork/widget/RangeFilterFragment;->setRange(Lcom/cymobile/ymwork/types/Pair;)V

    .line 122
    invoke-super {p0, p1}, Lcom/cymobile/ymwork/widget/ShopFilterFragment;->onDataChanged(I)V

    .line 124
    invoke-virtual {p0}, Lcom/cymobile/ymwork/widget/RangeFilterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/cymobile/ymwork/act/NearbySearchActivity;

    .line 125
    .local v0, nearbySearchActivity:Lcom/cymobile/ymwork/act/NearbySearchActivity;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->getStateHolder()Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 126
    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->getStateHolder()Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;->getIsRunningTask()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->getStateHolder()Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;->cancel()V

    .line 129
    :cond_0
    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->getStateHolder()Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;->startTask(Lcom/cymobile/ymwork/act/NearbySearchActivity;)V

    .line 131
    :cond_1
    return-void
.end method

.method public onRangeSelChanged(I)V
    .locals 2
    .parameter "range"

    .prologue
    .line 134
    invoke-static {p1}, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->rangeTypeToPair(I)Lcom/cymobile/ymwork/types/Pair;

    move-result-object v0

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragment;->selectedRange:Lcom/cymobile/ymwork/types/Pair;

    .line 135
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragment;->shopListDataSource:Lcom/cymobile/ymwork/adapter/FilterDataSource;

    iget-object v1, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragment;->selectedRange:Lcom/cymobile/ymwork/types/Pair;

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/adapter/FilterDataSource;->setCurRange(Lcom/cymobile/ymwork/types/Pair;)Z

    .line 139
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/cymobile/ymwork/widget/RangeFilterFragment;->dismissRange(Z)V

    .line 141
    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/widget/RangeFilterFragment;->onDataChanged(I)V

    .line 142
    return-void
.end method

.method protected prepareShowLayout(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 145
    invoke-super {p0, p1}, Lcom/cymobile/ymwork/widget/ShopFilterFragment;->prepareShowLayout(Landroid/view/View;)V

    .line 146
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragment;->rangeLayout:Landroid/view/View;

    if-eq p1, v0, :cond_0

    .line 147
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/cymobile/ymwork/widget/RangeFilterFragment;->dismissRange(Z)V

    .line 148
    :cond_0
    return-void
.end method

.method protected selectionChanged(Z)V
    .locals 2
    .parameter "changed"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragment;->shopListDataSource:Lcom/cymobile/ymwork/adapter/FilterDataSource;

    iget-object v1, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragment;->selectedRange:Lcom/cymobile/ymwork/types/Pair;

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/adapter/FilterDataSource;->setCurRange(Lcom/cymobile/ymwork/types/Pair;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    const/4 p1, 0x1

    .line 153
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragment;->selectedRange:Lcom/cymobile/ymwork/types/Pair;

    invoke-direct {p0, v0}, Lcom/cymobile/ymwork/widget/RangeFilterFragment;->checkRangeable(Lcom/cymobile/ymwork/types/Pair;)Z

    .line 155
    :cond_0
    invoke-super {p0, p1}, Lcom/cymobile/ymwork/widget/ShopFilterFragment;->selectionChanged(Z)V

    .line 156
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/widget/RangeFilterFragment;->onDataChanged(I)V

    .line 157
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 160
    invoke-super {p0, p1}, Lcom/cymobile/ymwork/widget/ShopFilterFragment;->setEnabled(Z)V

    .line 161
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragment;->btnRangeFilter:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 162
    return-void
.end method
