.class public Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstructionReport;
.super Lcom/cymobile/ymwork/widget/ShopReportFragment;
.source "RangeFilterFragmentConstructionReport.java"

# interfaces
.implements Lcom/cymobile/ymwork/widget/ShopRangeReportGroup$OnRangeReportChangeListener;


# instance fields
.field private btnRangeFilter:Landroid/widget/Button;

.field private rangeGroup:Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;

.field private rangeLayout:Landroid/view/View;

.field private selectedRange:Lcom/cymobile/ymwork/types/Pair;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/cymobile/ymwork/widget/ShopReportFragment;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstructionReport;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstructionReport;->dismissRange(Z)V

    return-void
.end method

.method static synthetic access$1(Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstructionReport;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstructionReport;->rangeLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2(Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstructionReport;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstructionReport;->showRange()V

    return-void
.end method

.method private checkRangeable(Lcom/cymobile/ymwork/types/Pair;)Z
    .locals 1
    .parameter "pair"

    .prologue
    .line 30
    const/4 v0, 0x1

    return v0
.end method

.method private dismissRange(Z)V
    .locals 3
    .parameter "paramBoolean"

    .prologue
    const/4 v2, 0x0

    .line 34
    if-eqz p1, :cond_0

    .line 35
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstructionReport;->rangeLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstructionReport;->animPushTopOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstructionReport;->btnRangeFilter:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 37
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstructionReport;->btnRangeFilter:Landroid/widget/Button;

    iget-object v1, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstructionReport;->mNormalArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 39
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstructionReport;->rangeLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 40
    return-void
.end method

.method private filterRangeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "str"

    .prologue
    .line 43
    if-nez p1, :cond_0

    .line 44
    const-string v0, ""

    .line 45
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
    .line 49
    iput-object p1, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstructionReport;->selectedRange:Lcom/cymobile/ymwork/types/Pair;

    .line 50
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstructionReport;->selectedRange:Lcom/cymobile/ymwork/types/Pair;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstructionReport;->btnRangeFilter:Landroid/widget/Button;

    iget-object v1, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstructionReport;->selectedRange:Lcom/cymobile/ymwork/types/Pair;

    .line 52
    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/Pair;->name()Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-direct {p0, v1}, Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstructionReport;->filterRangeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstructionReport;->rangeGroup:Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;

    .line 54
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstructionReport;->selectedRange:Lcom/cymobile/ymwork/types/Pair;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v1

    invoke-static {v1}, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->pairToRangeType(I)I

    move-result v1

    .line 53
    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->setRangeType(I)V

    .line 56
    :cond_0
    return-void
.end method

.method private showRange()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 59
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstructionReport;->rangeLayout:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstructionReport;->prepareShowLayout(Landroid/view/View;)V

    .line 60
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstructionReport;->btnRangeFilter:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 61
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstructionReport;->btnRangeFilter:Landroid/widget/Button;

    .line 62
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstructionReport;->mSelectedArrow:Landroid/graphics/drawable/Drawable;

    .line 61
    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 63
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstructionReport;->rangeLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 64
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstructionReport;->rangeLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstructionReport;->animPushTopIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 65
    return-void
.end method


# virtual methods
.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "layoutInflater"
    .parameter "viewGroup"

    .prologue
    .line 69
    const v0, 0x7f03002d

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
    invoke-super {p0, p1}, Lcom/cymobile/ymwork/widget/ShopReportFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 74
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstructionReport;->rangeGroup:Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;

    invoke-virtual {v0, p0}, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->setOnRangeReportChangeListener(Lcom/cymobile/ymwork/widget/ShopRangeReportGroup$OnRangeReportChangeListener;)V

    .line 75
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstructionReport;->shopListDataSource:Lcom/cymobile/ymwork/adapter/ReportDataSource;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/adapter/ReportDataSource;->curRange()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstructionReport;->rangeGroup:Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;

    .line 77
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstructionReport;->shopListDataSource:Lcom/cymobile/ymwork/adapter/ReportDataSource;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/adapter/ReportDataSource;->curRange()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v1

    invoke-static {v1}, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->pairToRangeType(I)I

    move-result v1

    .line 76
    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->setRangeType(I)V

    .line 78
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstructionReport;->btnRangeFilter:Landroid/widget/Button;

    iget-object v1, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstructionReport;->shopListDataSource:Lcom/cymobile/ymwork/adapter/ReportDataSource;

    .line 79
    invoke-virtual {v1}, Lcom/cymobile/ymwork/adapter/ReportDataSource;->curRange()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/Pair;->name()Ljava/lang/String;

    move-result-object v1

    .line 78
    invoke-direct {p0, v1}, Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstructionReport;->filterRangeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstructionReport;->shopListDataSource:Lcom/cymobile/ymwork/adapter/ReportDataSource;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/adapter/ReportDataSource;->curRange()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstructionReport;->setRange(Lcom/cymobile/ymwork/types/Pair;)V

    .line 82
    return-void
.end method

.method public onBackPressed(Z)Z
    .locals 2
    .parameter "paramBoolean"

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/cymobile/ymwork/widget/ShopReportFragment;->onBackPressed(Z)Z

    move-result v0

    .line 86
    .local v0, bool:Z
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstructionReport;->rangeLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 87
    const/4 v0, 0x1

    .line 88
    invoke-direct {p0, p1}, Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstructionReport;->dismissRange(Z)V

    .line 90
    :cond_0
    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "layoutInflater"
    .parameter "viewGroup"
    .parameter "bundle"

    .prologue
    .line 95
    invoke-super {p0, p1, p2, p3}, Lcom/cymobile/ymwork/widget/ShopReportFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 97
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0800b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstructionReport;->rangeLayout:Landroid/view/View;

    .line 98
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstructionReport;->rangeLayout:Landroid/view/View;

    new-instance v2, Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstructionReport$1;

    invoke-direct {v2, p0}, Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstructionReport$1;-><init>(Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstructionReport;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    const v1, 0x7f0800d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;

    iput-object v1, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstructionReport;->rangeGroup:Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;

    .line 104
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstructionReport;->rangeGroup:Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;

    const v2, 0x7f02001b

    invoke-virtual {v1, v2}, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->setBackgroundResource(I)V

    .line 105
    const v1, 0x7f0800b1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstructionReport;->btnRangeFilter:Landroid/widget/Button;

    .line 106
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstructionReport;->btnRangeFilter:Landroid/widget/Button;

    new-instance v2, Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstructionReport$2;

    invoke-direct {v2, p0}, Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstructionReport$2;-><init>(Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstructionReport;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    return-object v0
.end method

.method public onDataChanged(I)V
    .locals 2
    .parameter "data"

    .prologue
    .line 119
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstructionReport;->shopListDataSource:Lcom/cymobile/ymwork/adapter/ReportDataSource;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/adapter/ReportDataSource;->curRange()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstructionReport;->setRange(Lcom/cymobile/ymwork/types/Pair;)V

    .line 120
    invoke-super {p0, p1}, Lcom/cymobile/ymwork/widget/ShopReportFragment;->onDataChanged(I)V

    .line 122
    invoke-virtual {p0}, Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstructionReport;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;

    .line 123
    .local v0, nearbySearchActivity:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->getStateHolder()Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$StateHolder;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 124
    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->getStateHolder()Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$StateHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$StateHolder;->getIsRunningTask()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->getStateHolder()Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$StateHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$StateHolder;->cancel()V

    .line 127
    :cond_0
    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->getStateHolder()Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$StateHolder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$StateHolder;->startTask(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)V

    .line 129
    :cond_1
    return-void
.end method

.method public onRangeReportChanged(I)V
    .locals 2
    .parameter "paramInt"

    .prologue
    .line 133
    invoke-static {p1}, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->rangeTypeToPair(I)Lcom/cymobile/ymwork/types/Pair;

    move-result-object v0

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstructionReport;->selectedRange:Lcom/cymobile/ymwork/types/Pair;

    .line 134
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstructionReport;->shopListDataSource:Lcom/cymobile/ymwork/adapter/ReportDataSource;

    iget-object v1, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstructionReport;->selectedRange:Lcom/cymobile/ymwork/types/Pair;

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/adapter/ReportDataSource;->setCurRange(Lcom/cymobile/ymwork/types/Pair;)Z

    .line 138
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstructionReport;->dismissRange(Z)V

    .line 140
    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstructionReport;->onDataChanged(I)V

    .line 141
    return-void
.end method

.method public onRangeSelChanged(I)V
    .locals 0
    .parameter "range"

    .prologue
    .line 144
    return-void
.end method

.method protected prepareShowLayout(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 147
    invoke-super {p0, p1}, Lcom/cymobile/ymwork/widget/ShopReportFragment;->prepareShowLayout(Landroid/view/View;)V

    .line 148
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstructionReport;->rangeLayout:Landroid/view/View;

    if-eq p1, v0, :cond_0

    .line 149
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstructionReport;->dismissRange(Z)V

    .line 150
    :cond_0
    return-void
.end method

.method protected selectionChanged(Z)V
    .locals 2
    .parameter "changed"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstructionReport;->shopListDataSource:Lcom/cymobile/ymwork/adapter/ReportDataSource;

    iget-object v1, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstructionReport;->selectedRange:Lcom/cymobile/ymwork/types/Pair;

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/adapter/ReportDataSource;->setCurRange(Lcom/cymobile/ymwork/types/Pair;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    const/4 p1, 0x1

    .line 155
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstructionReport;->selectedRange:Lcom/cymobile/ymwork/types/Pair;

    invoke-direct {p0, v0}, Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstructionReport;->checkRangeable(Lcom/cymobile/ymwork/types/Pair;)Z

    .line 157
    :cond_0
    invoke-super {p0, p1}, Lcom/cymobile/ymwork/widget/ShopReportFragment;->selectionChanged(Z)V

    .line 158
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstructionReport;->onDataChanged(I)V

    .line 159
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 162
    invoke-super {p0, p1}, Lcom/cymobile/ymwork/widget/ShopReportFragment;->setEnabled(Z)V

    .line 163
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstructionReport;->btnRangeFilter:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 164
    return-void
.end method
