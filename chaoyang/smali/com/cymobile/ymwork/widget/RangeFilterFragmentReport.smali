.class public Lcom/cymobile/ymwork/widget/RangeFilterFragmentReport;
.super Lcom/cymobile/ymwork/widget/ShopReportFragment;
.source "RangeFilterFragmentReport.java"

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
    .line 13
    invoke-direct {p0}, Lcom/cymobile/ymwork/widget/ShopReportFragment;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/cymobile/ymwork/widget/RangeFilterFragmentReport;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/cymobile/ymwork/widget/RangeFilterFragmentReport;->dismissRange(Z)V

    return-void
.end method

.method static synthetic access$1(Lcom/cymobile/ymwork/widget/RangeFilterFragmentReport;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentReport;->rangeLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2(Lcom/cymobile/ymwork/widget/RangeFilterFragmentReport;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/cymobile/ymwork/widget/RangeFilterFragmentReport;->showRange()V

    return-void
.end method

.method private checkRangeable(Lcom/cymobile/ymwork/types/Pair;)Z
    .locals 1
    .parameter "pair"

    .prologue
    .line 29
    const/4 v0, 0x1

    return v0
.end method

.method private dismissRange(Z)V
    .locals 3
    .parameter "paramBoolean"

    .prologue
    const/4 v2, 0x0

    .line 33
    if-eqz p1, :cond_0

    .line 34
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentReport;->rangeLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentReport;->animPushTopOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentReport;->btnRangeFilter:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 36
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentReport;->btnRangeFilter:Landroid/widget/Button;

    iget-object v1, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentReport;->mNormalArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 38
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentReport;->rangeLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 39
    return-void
.end method

.method private filterRangeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "str"

    .prologue
    .line 42
    if-nez p1, :cond_0

    .line 43
    const-string v0, ""

    .line 44
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
    .line 48
    iput-object p1, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentReport;->selectedRange:Lcom/cymobile/ymwork/types/Pair;

    .line 49
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentReport;->selectedRange:Lcom/cymobile/ymwork/types/Pair;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentReport;->btnRangeFilter:Landroid/widget/Button;

    iget-object v1, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentReport;->selectedRange:Lcom/cymobile/ymwork/types/Pair;

    .line 51
    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/Pair;->name()Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-direct {p0, v1}, Lcom/cymobile/ymwork/widget/RangeFilterFragmentReport;->filterRangeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentReport;->rangeGroup:Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;

    .line 53
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentReport;->selectedRange:Lcom/cymobile/ymwork/types/Pair;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v1

    invoke-static {v1}, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->pairToRangeType(I)I

    move-result v1

    .line 52
    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->setRangeType(I)V

    .line 55
    :cond_0
    return-void
.end method

.method private showRange()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 58
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentReport;->rangeLayout:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/widget/RangeFilterFragmentReport;->prepareShowLayout(Landroid/view/View;)V

    .line 59
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentReport;->btnRangeFilter:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 60
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentReport;->btnRangeFilter:Landroid/widget/Button;

    .line 61
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentReport;->mSelectedArrow:Landroid/graphics/drawable/Drawable;

    .line 60
    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 62
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentReport;->rangeLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 63
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentReport;->rangeLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentReport;->animPushTopIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 64
    return-void
.end method


# virtual methods
.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "layoutInflater"
    .parameter "viewGroup"

    .prologue
    .line 68
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
    .line 72
    invoke-super {p0, p1}, Lcom/cymobile/ymwork/widget/ShopReportFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 73
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentReport;->rangeGroup:Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;

    invoke-virtual {v0, p0}, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->setOnRangeReportChangeListener(Lcom/cymobile/ymwork/widget/ShopRangeReportGroup$OnRangeReportChangeListener;)V

    .line 74
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentReport;->shopListDataSource:Lcom/cymobile/ymwork/adapter/ReportDataSource;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/adapter/ReportDataSource;->curRange()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentReport;->rangeGroup:Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;

    .line 76
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentReport;->shopListDataSource:Lcom/cymobile/ymwork/adapter/ReportDataSource;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/adapter/ReportDataSource;->curRange()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v1

    invoke-static {v1}, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->pairToRangeType(I)I

    move-result v1

    .line 75
    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->setRangeType(I)V

    .line 77
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentReport;->btnRangeFilter:Landroid/widget/Button;

    iget-object v1, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentReport;->shopListDataSource:Lcom/cymobile/ymwork/adapter/ReportDataSource;

    .line 78
    invoke-virtual {v1}, Lcom/cymobile/ymwork/adapter/ReportDataSource;->curRange()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/Pair;->name()Ljava/lang/String;

    move-result-object v1

    .line 77
    invoke-direct {p0, v1}, Lcom/cymobile/ymwork/widget/RangeFilterFragmentReport;->filterRangeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentReport;->shopListDataSource:Lcom/cymobile/ymwork/adapter/ReportDataSource;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/adapter/ReportDataSource;->curRange()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cymobile/ymwork/widget/RangeFilterFragmentReport;->setRange(Lcom/cymobile/ymwork/types/Pair;)V

    .line 81
    return-void
.end method

.method public onBackPressed(Z)Z
    .locals 2
    .parameter "paramBoolean"

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/cymobile/ymwork/widget/ShopReportFragment;->onBackPressed(Z)Z

    move-result v0

    .line 85
    .local v0, bool:Z
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentReport;->rangeLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 86
    const/4 v0, 0x1

    .line 87
    invoke-direct {p0, p1}, Lcom/cymobile/ymwork/widget/RangeFilterFragmentReport;->dismissRange(Z)V

    .line 89
    :cond_0
    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "layoutInflater"
    .parameter "viewGroup"
    .parameter "bundle"

    .prologue
    .line 94
    invoke-super {p0, p1, p2, p3}, Lcom/cymobile/ymwork/widget/ShopReportFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 96
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0800b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentReport;->rangeLayout:Landroid/view/View;

    .line 97
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentReport;->rangeLayout:Landroid/view/View;

    new-instance v2, Lcom/cymobile/ymwork/widget/RangeFilterFragmentReport$1;

    invoke-direct {v2, p0}, Lcom/cymobile/ymwork/widget/RangeFilterFragmentReport$1;-><init>(Lcom/cymobile/ymwork/widget/RangeFilterFragmentReport;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    const v1, 0x7f0800d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;

    iput-object v1, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentReport;->rangeGroup:Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;

    .line 103
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentReport;->rangeGroup:Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;

    const v2, 0x7f02001b

    invoke-virtual {v1, v2}, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->setBackgroundResource(I)V

    .line 104
    const v1, 0x7f0800b1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentReport;->btnRangeFilter:Landroid/widget/Button;

    .line 105
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentReport;->btnRangeFilter:Landroid/widget/Button;

    new-instance v2, Lcom/cymobile/ymwork/widget/RangeFilterFragmentReport$2;

    invoke-direct {v2, p0}, Lcom/cymobile/ymwork/widget/RangeFilterFragmentReport$2;-><init>(Lcom/cymobile/ymwork/widget/RangeFilterFragmentReport;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    return-object v0
.end method

.method public onDataChanged(I)V
    .locals 2
    .parameter "data"

    .prologue
    .line 118
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentReport;->shopListDataSource:Lcom/cymobile/ymwork/adapter/ReportDataSource;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/adapter/ReportDataSource;->curRange()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/cymobile/ymwork/widget/RangeFilterFragmentReport;->setRange(Lcom/cymobile/ymwork/types/Pair;)V

    .line 119
    invoke-super {p0, p1}, Lcom/cymobile/ymwork/widget/ShopReportFragment;->onDataChanged(I)V

    .line 121
    invoke-virtual {p0}, Lcom/cymobile/ymwork/widget/RangeFilterFragmentReport;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    .line 122
    .local v0, nearbySearchActivity:Lcom/cymobile/ymwork/act/NewBuildingReportAct;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->getStateHolder()Lcom/cymobile/ymwork/act/NewBuildingReportAct$StateHolder;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 123
    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->getStateHolder()Lcom/cymobile/ymwork/act/NewBuildingReportAct$StateHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/NewBuildingReportAct$StateHolder;->getIsRunningTask()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->getStateHolder()Lcom/cymobile/ymwork/act/NewBuildingReportAct$StateHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/NewBuildingReportAct$StateHolder;->cancel()V

    .line 126
    :cond_0
    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->getStateHolder()Lcom/cymobile/ymwork/act/NewBuildingReportAct$StateHolder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cymobile/ymwork/act/NewBuildingReportAct$StateHolder;->startTask(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)V

    .line 128
    :cond_1
    return-void
.end method

.method public onRangeReportChanged(I)V
    .locals 2
    .parameter "paramInt"

    .prologue
    .line 132
    invoke-static {p1}, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->rangeTypeToPair(I)Lcom/cymobile/ymwork/types/Pair;

    move-result-object v0

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentReport;->selectedRange:Lcom/cymobile/ymwork/types/Pair;

    .line 133
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentReport;->shopListDataSource:Lcom/cymobile/ymwork/adapter/ReportDataSource;

    iget-object v1, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentReport;->selectedRange:Lcom/cymobile/ymwork/types/Pair;

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/adapter/ReportDataSource;->setCurRange(Lcom/cymobile/ymwork/types/Pair;)Z

    .line 137
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/cymobile/ymwork/widget/RangeFilterFragmentReport;->dismissRange(Z)V

    .line 139
    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/widget/RangeFilterFragmentReport;->onDataChanged(I)V

    .line 140
    return-void
.end method

.method public onRangeSelChanged(I)V
    .locals 0
    .parameter "range"

    .prologue
    .line 143
    return-void
.end method

.method protected prepareShowLayout(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 146
    invoke-super {p0, p1}, Lcom/cymobile/ymwork/widget/ShopReportFragment;->prepareShowLayout(Landroid/view/View;)V

    .line 147
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentReport;->rangeLayout:Landroid/view/View;

    if-eq p1, v0, :cond_0

    .line 148
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/cymobile/ymwork/widget/RangeFilterFragmentReport;->dismissRange(Z)V

    .line 149
    :cond_0
    return-void
.end method

.method protected selectionChanged(Z)V
    .locals 2
    .parameter "changed"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentReport;->shopListDataSource:Lcom/cymobile/ymwork/adapter/ReportDataSource;

    iget-object v1, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentReport;->selectedRange:Lcom/cymobile/ymwork/types/Pair;

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/adapter/ReportDataSource;->setCurRange(Lcom/cymobile/ymwork/types/Pair;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    const/4 p1, 0x1

    .line 154
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentReport;->selectedRange:Lcom/cymobile/ymwork/types/Pair;

    invoke-direct {p0, v0}, Lcom/cymobile/ymwork/widget/RangeFilterFragmentReport;->checkRangeable(Lcom/cymobile/ymwork/types/Pair;)Z

    .line 156
    :cond_0
    invoke-super {p0, p1}, Lcom/cymobile/ymwork/widget/ShopReportFragment;->selectionChanged(Z)V

    .line 157
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/widget/RangeFilterFragmentReport;->onDataChanged(I)V

    .line 158
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 161
    invoke-super {p0, p1}, Lcom/cymobile/ymwork/widget/ShopReportFragment;->setEnabled(Z)V

    .line 162
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentReport;->btnRangeFilter:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 163
    return-void
.end method
