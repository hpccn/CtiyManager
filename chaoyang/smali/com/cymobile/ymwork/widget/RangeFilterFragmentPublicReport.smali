.class public Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublicReport;
.super Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;
.source "RangeFilterFragmentPublicReport.java"

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
    .line 15
    invoke-direct {p0}, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublicReport;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublicReport;->dismissRange(Z)V

    return-void
.end method

.method static synthetic access$1(Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublicReport;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublicReport;->rangeLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2(Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublicReport;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublicReport;->showRange()V

    return-void
.end method

.method private checkRangeable(Lcom/cymobile/ymwork/types/Pair;)Z
    .locals 1
    .parameter "pair"

    .prologue
    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method private dismissRange(Z)V
    .locals 3
    .parameter "paramBoolean"

    .prologue
    const/4 v2, 0x0

    .line 35
    if-eqz p1, :cond_0

    .line 36
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublicReport;->rangeLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublicReport;->animPushTopOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublicReport;->btnRangeFilter:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 38
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublicReport;->btnRangeFilter:Landroid/widget/Button;

    iget-object v1, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublicReport;->mNormalArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 40
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublicReport;->rangeLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 41
    return-void
.end method

.method private filterRangeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "str"

    .prologue
    .line 44
    if-nez p1, :cond_0

    .line 45
    const-string v0, ""

    .line 46
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
    .line 50
    iput-object p1, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublicReport;->selectedRange:Lcom/cymobile/ymwork/types/Pair;

    .line 51
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublicReport;->selectedRange:Lcom/cymobile/ymwork/types/Pair;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublicReport;->btnRangeFilter:Landroid/widget/Button;

    iget-object v1, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublicReport;->selectedRange:Lcom/cymobile/ymwork/types/Pair;

    .line 53
    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/Pair;->name()Ljava/lang/String;

    move-result-object v1

    .line 52
    invoke-direct {p0, v1}, Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublicReport;->filterRangeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublicReport;->rangeGroup:Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;

    .line 55
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublicReport;->selectedRange:Lcom/cymobile/ymwork/types/Pair;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v1

    invoke-static {v1}, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->pairToRangeType(I)I

    move-result v1

    .line 54
    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->setRangeType(I)V

    .line 57
    :cond_0
    return-void
.end method

.method private showRange()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 60
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublicReport;->rangeLayout:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublicReport;->prepareShowLayout(Landroid/view/View;)V

    .line 61
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublicReport;->btnRangeFilter:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 62
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublicReport;->btnRangeFilter:Landroid/widget/Button;

    .line 63
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublicReport;->mSelectedArrow:Landroid/graphics/drawable/Drawable;

    .line 62
    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 64
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublicReport;->rangeLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 65
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublicReport;->rangeLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublicReport;->animPushTopIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 66
    return-void
.end method


# virtual methods
.method protected classChanged(Z)V
    .locals 2
    .parameter "changed"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublicReport;->shopListDataSource:Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;

    iget-object v1, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublicReport;->selectedRange:Lcom/cymobile/ymwork/types/Pair;

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->setCurRange(Lcom/cymobile/ymwork/types/Pair;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    const/4 p1, 0x1

    .line 160
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublicReport;->selectedRange:Lcom/cymobile/ymwork/types/Pair;

    invoke-direct {p0, v0}, Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublicReport;->checkRangeable(Lcom/cymobile/ymwork/types/Pair;)Z

    .line 162
    :cond_0
    invoke-super {p0, p1}, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->classChanged(Z)V

    .line 163
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublicReport;->onDataChanged(I)V

    .line 164
    return-void
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "layoutInflater"
    .parameter "viewGroup"

    .prologue
    .line 70
    const v0, 0x7f03002b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "paramBundle"

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->onActivityCreated(Landroid/os/Bundle;)V

    .line 74
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublicReport;->rangeGroup:Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;

    invoke-virtual {v0, p0}, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->setOnRangeSelChangeListener(Lcom/cymobile/ymwork/widget/ShopRangeSelGroup$OnRangeSelChangeListener;)V

    .line 75
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublicReport;->shopListDataSource:Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->curRange()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublicReport;->rangeGroup:Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;

    .line 77
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublicReport;->shopListDataSource:Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->curRange()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v1

    invoke-static {v1}, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->pairToRangeType(I)I

    move-result v1

    .line 76
    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->setRangeType(I)V

    .line 78
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublicReport;->btnRangeFilter:Landroid/widget/Button;

    iget-object v1, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublicReport;->shopListDataSource:Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;

    .line 79
    invoke-virtual {v1}, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->curRange()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/Pair;->name()Ljava/lang/String;

    move-result-object v1

    .line 78
    invoke-direct {p0, v1}, Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublicReport;->filterRangeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublicReport;->shopListDataSource:Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->curRange()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublicReport;->setRange(Lcom/cymobile/ymwork/types/Pair;)V

    .line 82
    return-void
.end method

.method public onBackPressed(Z)Z
    .locals 2
    .parameter "paramBoolean"

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->onBackPressed(Z)Z

    move-result v0

    .line 87
    .local v0, bool:Z
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublicReport;->rangeLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 88
    const/4 v0, 0x1

    .line 89
    invoke-direct {p0, p1}, Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublicReport;->dismissRange(Z)V

    .line 91
    :cond_0
    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "layoutInflater"
    .parameter "viewGroup"
    .parameter "bundle"

    .prologue
    .line 96
    invoke-super {p0, p1, p2, p3}, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 98
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0800b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublicReport;->rangeLayout:Landroid/view/View;

    .line 99
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublicReport;->rangeLayout:Landroid/view/View;

    new-instance v2, Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublicReport$1;

    invoke-direct {v2, p0}, Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublicReport$1;-><init>(Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublicReport;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    const v1, 0x7f0800d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;

    iput-object v1, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublicReport;->rangeGroup:Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;

    .line 105
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublicReport;->rangeGroup:Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;

    const v2, 0x7f02001b

    invoke-virtual {v1, v2}, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->setBackgroundResource(I)V

    .line 106
    const v1, 0x7f0800b1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublicReport;->btnRangeFilter:Landroid/widget/Button;

    .line 107
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublicReport;->btnRangeFilter:Landroid/widget/Button;

    new-instance v2, Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublicReport$2;

    invoke-direct {v2, p0}, Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublicReport$2;-><init>(Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublicReport;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    return-object v0
.end method

.method public onDataChanged(I)V
    .locals 2
    .parameter "data"

    .prologue
    .line 120
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublicReport;->shopListDataSource:Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->curRange()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublicReport;->setRange(Lcom/cymobile/ymwork/types/Pair;)V

    .line 121
    invoke-super {p0, p1}, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->onDataChanged(I)V

    .line 123
    invoke-virtual {p0}, Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublicReport;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;

    .line 124
    .local v0, nearbySearchActivity:Lcom/cymobile/ymwork/act/MainClassPublicReportAct;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->getStateHolder()Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 125
    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->getStateHolder()Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;->getIsRunningTask()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->getStateHolder()Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;->cancel()V

    .line 128
    :cond_0
    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->getStateHolder()Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;->startTask(Lcom/cymobile/ymwork/act/MainClassPublicReportAct;)V

    .line 130
    :cond_1
    return-void
.end method

.method public onRangeSelChanged(I)V
    .locals 2
    .parameter "range"

    .prologue
    .line 133
    invoke-static {p1}, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->rangeTypeToPair(I)Lcom/cymobile/ymwork/types/Pair;

    move-result-object v0

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublicReport;->selectedRange:Lcom/cymobile/ymwork/types/Pair;

    .line 134
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublicReport;->shopListDataSource:Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;

    iget-object v1, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublicReport;->selectedRange:Lcom/cymobile/ymwork/types/Pair;

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->setCurRange(Lcom/cymobile/ymwork/types/Pair;)Z

    .line 138
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublicReport;->dismissRange(Z)V

    .line 140
    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublicReport;->onDataChanged(I)V

    .line 141
    return-void
.end method

.method protected prepareShowLayout(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 144
    invoke-super {p0, p1}, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->prepareShowLayout(Landroid/view/View;)V

    .line 145
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublicReport;->rangeLayout:Landroid/view/View;

    if-eq p1, v0, :cond_0

    .line 146
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublicReport;->dismissRange(Z)V

    .line 147
    :cond_0
    return-void
.end method

.method protected selectionChanged(Z)V
    .locals 2
    .parameter "changed"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublicReport;->shopListDataSource:Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;

    iget-object v1, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublicReport;->selectedRange:Lcom/cymobile/ymwork/types/Pair;

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->setCurRange(Lcom/cymobile/ymwork/types/Pair;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    const/4 p1, 0x1

    .line 152
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublicReport;->selectedRange:Lcom/cymobile/ymwork/types/Pair;

    invoke-direct {p0, v0}, Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublicReport;->checkRangeable(Lcom/cymobile/ymwork/types/Pair;)Z

    .line 154
    :cond_0
    invoke-super {p0, p1}, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->selectionChanged(Z)V

    .line 155
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublicReport;->onDataChanged(I)V

    .line 156
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 166
    invoke-super {p0, p1}, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->setEnabled(Z)V

    .line 167
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublicReport;->btnRangeFilter:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 168
    return-void
.end method
