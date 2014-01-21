.class public Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;
.super Lcom/cymobile/ymwork/widget/LoadableListFragmentWithViewAndHeaderVisitorvolumeReport;
.source "VisitorvolumeReportAct.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$GetZoneTask;,
        Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$StateHolder;,
        Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$TaskShops;
    }
.end annotation


# static fields
.field private static final MESSAGE_Intent_init_direct_search:I = 0x4

.field private static final MESSAGE_Intent_init_search:I = 0x3


# instance fields
.field private final DISMANTLE_REPORT:I

.field private final MESSAGE_ISVISIBLE_STREET:I

.field private final MESSAGE_UPDATE_REPORT:I

.field private final PROCEDURES_SETTLEMENT_REPORT:I

.field private final RANKING_REPORT:I

.field private final REVERSION_REPORT:I

.field private STREET_NO:I

.field private Spinner_Street:Landroid/widget/Spinner;

.field private a:I

.field private b:I

.field private btn_Street:Landroid/widget/RelativeLayout;

.field private btn_title:Landroid/widget/RelativeLayout;

.field private c:I

.field private category:Ljava/lang/String;

.field private colors:[I

.field context:Landroid/content/Context;

.field contexts:Landroid/content/Context;

.field private dataset:Lorg/achartengine/model/XYMultipleSeriesDataset;

.field private flag:Z

.field private layout_report:Landroid/widget/LinearLayout;

.field private mChartView:Lorg/achartengine/GraphicalView;

.field mHandler:Landroid/os/Handler;

.field private mIsRunningTask:Z

.field private mLayoutEmpty:Landroid/view/ViewGroup;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mShops:Lcom/cymobile/ymwork/types/VisitorvolumeReports;

.field private mSpinner:Landroid/widget/Spinner;

.field private mStateHolder:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$StateHolder;

.field private mark:I

.field private renderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

.field private s:I

.field private str_address:Ljava/lang/String;

.field private styles:[Lorg/achartengine/chart/PointStyle;

.field private titles:[Ljava/lang/String;

.field private txt_Street:Landroid/widget/TextView;

.field private txt_title:Landroid/widget/TextView;

.field userSubZones:Lcom/cymobile/ymwork/types/Group;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cymobile/ymwork/types/Group",
            "<",
            "Lcom/cymobile/ymwork/types/Zone;",
            ">;"
        }
    .end annotation
.end field

.field private userZoneId:Ljava/lang/String;

.field private userZoneName:Ljava/lang/String;

.field private values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[D>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Lcom/cymobile/ymwork/widget/LoadableListFragmentWithViewAndHeaderVisitorvolumeReport;-><init>()V

    .line 73
    iput v1, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->RANKING_REPORT:I

    .line 74
    iput v2, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->DISMANTLE_REPORT:I

    .line 75
    iput v3, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->PROCEDURES_SETTLEMENT_REPORT:I

    .line 76
    const/4 v0, 0x3

    iput v0, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->REVERSION_REPORT:I

    .line 77
    iput v2, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->MESSAGE_UPDATE_REPORT:I

    .line 78
    iput v3, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->MESSAGE_ISVISIBLE_STREET:I

    .line 81
    iput v1, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->mark:I

    .line 82
    iput v2, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->STREET_NO:I

    .line 451
    new-instance v0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$1;

    invoke-direct {v0, p0}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$1;-><init>(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->mHandler:Landroid/os/Handler;

    .line 547
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->values:Ljava/util/List;

    .line 549
    iput v1, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->b:I

    .line 70
    return-void
.end method

.method static synthetic access$0(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->category:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->str_address:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$10(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->userZoneId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$11(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;Lcom/cymobile/ymwork/types/VisitorvolumeReports;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 425
    invoke-direct {p0, p1, p2}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->onTaskComplete(Lcom/cymobile/ymwork/types/VisitorvolumeReports;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$12(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$13(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;)Landroid/widget/Spinner;
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->mSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$14(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;)Landroid/widget/Spinner;
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->Spinner_Street:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$15(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 81
    iput p1, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->mark:I

    return-void
.end method

.method static synthetic access$16(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->txt_title:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$17(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;)Z
    .locals 1
    .parameter

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->flag:Z

    return v0
.end method

.method static synthetic access$18(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;)Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$StateHolder;
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$StateHolder;

    return-object v0
.end method

.method static synthetic access$19(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->txt_Street:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->btn_Street:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$20(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    iput p1, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->STREET_NO:I

    return-void
.end method

.method static synthetic access$21(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->flag:Z

    return-void
.end method

.method static synthetic access$3(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;)V
    .locals 0
    .parameter

    .prologue
    .line 551
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->initTimes()V

    return-void
.end method

.method static synthetic access$4(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->mIsRunningTask:Z

    return-void
.end method

.method static synthetic access$5(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;Lcom/cymobile/ymwork/types/VisitorvolumeReports;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->mShops:Lcom/cymobile/ymwork/types/VisitorvolumeReports;

    return-void
.end method

.method static synthetic access$6(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;)Lcom/cymobile/ymwork/types/VisitorvolumeReports;
    .locals 1
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->mShops:Lcom/cymobile/ymwork/types/VisitorvolumeReports;

    return-object v0
.end method

.method static synthetic access$7(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;)Z
    .locals 1
    .parameter

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->mIsRunningTask:Z

    return v0
.end method

.method static synthetic access$8(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 300
    iput p1, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->s:I

    return-void
.end method

.method static synthetic access$9(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->category:Ljava/lang/String;

    return-void
.end method

.method private addXYSeries(Lorg/achartengine/model/XYMultipleSeriesDataset;[Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)V
    .locals 12
    .parameter "dataset"
    .parameter "titles"
    .parameter
    .parameter
    .parameter "scale"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/achartengine/model/XYMultipleSeriesDataset;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<[D>;",
            "Ljava/util/List",
            "<[D>;I)V"
        }
    .end annotation

    .prologue
    .line 754
    .local p3, xValues:Ljava/util/List;,"Ljava/util/List<[D>;"
    .local p4, yValues:Ljava/util/List;,"Ljava/util/List<[D>;"
    array-length v3, p2

    .line 755
    .local v3, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v3, :cond_0

    .line 765
    return-void

    .line 756
    :cond_0
    new-instance v4, Lorg/achartengine/model/XYSeries;

    aget-object v8, p2, v1

    move/from16 v0, p5

    invoke-direct {v4, v8, v0}, Lorg/achartengine/model/XYSeries;-><init>(Ljava/lang/String;I)V

    .line 757
    .local v4, series:Lorg/achartengine/model/XYSeries;
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [D

    .line 758
    .local v6, xV:[D
    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [D

    .line 759
    .local v7, yV:[D
    array-length v5, v6

    .line 760
    .local v5, seriesLength:I
    const/4 v2, 0x0

    .local v2, k:I
    :goto_1
    if-lt v2, v5, :cond_1

    .line 763
    invoke-virtual {p1, v4}, Lorg/achartengine/model/XYMultipleSeriesDataset;->addSeries(Lorg/achartengine/model/XYSeries;)V

    .line 755
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 761
    :cond_1
    aget-wide v8, v6, v2

    aget-wide v10, v7, v2

    invoke-virtual {v4, v8, v9, v10, v11}, Lorg/achartengine/model/XYSeries;->add(DD)V

    .line 760
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private buildDataset([Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lorg/achartengine/model/XYMultipleSeriesDataset;
    .locals 6
    .parameter "titles"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<[D>;",
            "Ljava/util/List",
            "<[D>;)",
            "Lorg/achartengine/model/XYMultipleSeriesDataset;"
        }
    .end annotation

    .prologue
    .line 745
    .local p2, xValues:Ljava/util/List;,"Ljava/util/List<[D>;"
    .local p3, yValues:Ljava/util/List;,"Ljava/util/List<[D>;"
    new-instance v1, Lorg/achartengine/model/XYMultipleSeriesDataset;

    invoke-direct {v1}, Lorg/achartengine/model/XYMultipleSeriesDataset;-><init>()V

    .line 746
    .local v1, dataset:Lorg/achartengine/model/XYMultipleSeriesDataset;
    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->addXYSeries(Lorg/achartengine/model/XYMultipleSeriesDataset;[Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)V

    .line 750
    return-object v1
.end method

.method private buildRenderer([I[Lorg/achartengine/chart/PointStyle;)Lorg/achartengine/renderer/XYMultipleSeriesRenderer;
    .locals 1
    .parameter "colors"
    .parameter "styles"

    .prologue
    .line 685
    new-instance v0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-direct {v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;-><init>()V

    .line 686
    .local v0, renderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;
    invoke-direct {p0, v0, p1, p2}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->setRenderer(Lorg/achartengine/renderer/XYMultipleSeriesRenderer;[I[Lorg/achartengine/chart/PointStyle;)V

    .line 688
    return-object v0
.end method

.method private initTimes()V
    .locals 8

    .prologue
    const/16 v7, 0x64

    const/4 v6, 0x2

    .line 552
    iget-object v4, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->mShops:Lcom/cymobile/ymwork/types/VisitorvolumeReports;

    invoke-virtual {v4}, Lcom/cymobile/ymwork/types/VisitorvolumeReports;->getItems()Lcom/cymobile/ymwork/types/Group;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v4

    new-array v3, v4, [D

    .line 553
    .local v3, visitortimes_list:[D
    iget-object v4, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->mShops:Lcom/cymobile/ymwork/types/VisitorvolumeReports;

    invoke-virtual {v4}, Lcom/cymobile/ymwork/types/VisitorvolumeReports;->getItems_regist()Lcom/cymobile/ymwork/types/Group;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v4

    new-array v2, v4, [D

    .line 554
    .local v2, visitorregisttimes_list:[D
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->mShops:Lcom/cymobile/ymwork/types/VisitorvolumeReports;

    invoke-virtual {v4}, Lcom/cymobile/ymwork/types/VisitorvolumeReports;->getItems()Lcom/cymobile/ymwork/types/Group;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v4

    if-lt v0, v4, :cond_0

    .line 559
    iget v4, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->mark:I

    if-ne v4, v6, :cond_3

    .line 560
    iget-object v4, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->mShops:Lcom/cymobile/ymwork/types/VisitorvolumeReports;

    invoke-virtual {v4}, Lcom/cymobile/ymwork/types/VisitorvolumeReports;->getMaxnum2()I

    move-result v4

    if-ge v4, v7, :cond_1

    .line 561
    const/16 v1, 0xa

    .line 565
    .local v1, p:I
    :goto_1
    iget-object v4, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->mShops:Lcom/cymobile/ymwork/types/VisitorvolumeReports;

    invoke-virtual {v4}, Lcom/cymobile/ymwork/types/VisitorvolumeReports;->getMaxnum2()I

    move-result v4

    iput v4, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->b:I

    .line 566
    iget v4, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->b:I

    div-int/2addr v4, v1

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_2

    .line 567
    iget v4, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->b:I

    div-int/2addr v4, v1

    add-int/lit8 v4, v4, 0x2

    mul-int/2addr v4, v1

    div-int/lit8 v5, v1, 0x2

    add-int/2addr v4, v5

    iput v4, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->c:I

    .line 589
    :goto_2
    const/4 v0, 0x0

    :goto_3
    iget-object v4, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->mShops:Lcom/cymobile/ymwork/types/VisitorvolumeReports;

    invoke-virtual {v4}, Lcom/cymobile/ymwork/types/VisitorvolumeReports;->getItems_regist()Lcom/cymobile/ymwork/types/Group;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v4

    if-lt v0, v4, :cond_7

    .line 594
    iget v4, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->mark:I

    if-ne v4, v6, :cond_8

    .line 595
    iget-object v4, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->values:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 596
    iget-object v4, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->values:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 607
    :goto_4
    return-void

    .line 555
    .end local v1           #p:I
    :cond_0
    iget-object v4, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->mShops:Lcom/cymobile/ymwork/types/VisitorvolumeReports;

    invoke-virtual {v4}, Lcom/cymobile/ymwork/types/VisitorvolumeReports;->getItems()Lcom/cymobile/ymwork/types/Group;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/cymobile/ymwork/types/Group;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cymobile/ymwork/types/VisitorvolumeReport;

    invoke-virtual {v4}, Lcom/cymobile/ymwork/types/VisitorvolumeReport;->getTimes()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    aput-wide v4, v3, v0

    .line 554
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 563
    :cond_1
    const/16 v1, 0x64

    .restart local v1       #p:I
    goto :goto_1

    .line 569
    :cond_2
    iget v4, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->b:I

    div-int/2addr v4, v1

    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v4, v1

    div-int/lit8 v5, v1, 0x2

    add-int/2addr v4, v5

    iput v4, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->c:I

    goto :goto_2

    .line 572
    .end local v1           #p:I
    :cond_3
    iget-object v4, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->mShops:Lcom/cymobile/ymwork/types/VisitorvolumeReports;

    invoke-virtual {v4}, Lcom/cymobile/ymwork/types/VisitorvolumeReports;->getMaxnum1()I

    move-result v4

    if-ge v4, v7, :cond_4

    .line 573
    const/16 v1, 0xa

    .line 581
    .restart local v1       #p:I
    :goto_5
    iget-object v4, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->mShops:Lcom/cymobile/ymwork/types/VisitorvolumeReports;

    invoke-virtual {v4}, Lcom/cymobile/ymwork/types/VisitorvolumeReports;->getMaxnum1()I

    move-result v4

    iput v4, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->b:I

    .line 582
    iget v4, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->b:I

    div-int/2addr v4, v1

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_6

    .line 583
    iget v4, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->b:I

    div-int/2addr v4, v1

    add-int/lit8 v4, v4, 0x2

    mul-int/2addr v4, v1

    div-int/lit8 v5, v1, 0x2

    add-int/2addr v4, v5

    iput v4, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->c:I

    goto :goto_2

    .line 575
    .end local v1           #p:I
    :cond_4
    iget-object v4, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->mShops:Lcom/cymobile/ymwork/types/VisitorvolumeReports;

    invoke-virtual {v4}, Lcom/cymobile/ymwork/types/VisitorvolumeReports;->getMaxnum1()I

    move-result v4

    const/16 v5, 0x3e8

    if-le v4, v5, :cond_5

    .line 576
    const/16 v1, 0x3e8

    .restart local v1       #p:I
    goto :goto_5

    .line 578
    .end local v1           #p:I
    :cond_5
    const/16 v1, 0x64

    .restart local v1       #p:I
    goto :goto_5

    .line 585
    :cond_6
    iget v4, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->b:I

    div-int/2addr v4, v1

    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v4, v1

    div-int/lit8 v5, v1, 0x2

    add-int/2addr v4, v5

    iput v4, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->c:I

    goto/16 :goto_2

    .line 590
    :cond_7
    iget-object v4, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->mShops:Lcom/cymobile/ymwork/types/VisitorvolumeReports;

    invoke-virtual {v4}, Lcom/cymobile/ymwork/types/VisitorvolumeReports;->getItems_regist()Lcom/cymobile/ymwork/types/Group;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/cymobile/ymwork/types/Group;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cymobile/ymwork/types/VisitorvolumeReport;

    invoke-virtual {v4}, Lcom/cymobile/ymwork/types/VisitorvolumeReport;->getRegistTimes()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 589
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    .line 598
    :cond_8
    iget v4, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->mark:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_9

    .line 599
    iget-object v4, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->values:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 600
    iget-object v4, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->values:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 602
    :cond_9
    iget-object v4, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->values:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 603
    iget-object v4, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->values:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 604
    iget-object v4, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->values:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4
.end method

.method private onTaskComplete(Lcom/cymobile/ymwork/types/VisitorvolumeReports;Ljava/lang/Exception;)V
    .locals 3
    .parameter "report"
    .parameter "ex"

    .prologue
    const/4 v2, 0x0

    .line 426
    iput-boolean v2, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->mIsRunningTask:Z

    .line 427
    invoke-virtual {p0, v2}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->setProgressBarIndeterminateVisibility(Z)V

    .line 428
    if-eqz p2, :cond_0

    .line 429
    iget-object v1, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 430
    iget-object v1, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->mLayoutEmpty:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->setEmptyView(Landroid/view/View;)V

    .line 439
    :goto_0
    return-void

    .line 432
    :cond_0
    const v1, 0x1020004

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 433
    .local v0, loadableListHolder:Landroid/widget/LinearLayout;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 434
    iget-object v1, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->layout_report:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 435
    iput-object p1, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->mShops:Lcom/cymobile/ymwork/types/VisitorvolumeReports;

    .line 437
    iget-object v1, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private setChartSettings(Lorg/achartengine/renderer/XYMultipleSeriesRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDDDII)V
    .locals 3
    .parameter "renderer"
    .parameter "title"
    .parameter "xTitle"
    .parameter "yTitle"
    .parameter "xMin"
    .parameter "xMax"
    .parameter "yMin"
    .parameter "yMax"
    .parameter "axesColor"
    .parameter "labelsColor"

    .prologue
    .line 711
    invoke-virtual {p1, p2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setChartTitle(Ljava/lang/String;)V

    .line 712
    invoke-virtual {p1, p3}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXTitle(Ljava/lang/String;)V

    .line 713
    invoke-virtual {p1, p4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setYTitle(Ljava/lang/String;)V

    .line 714
    invoke-virtual {p1, p5, p6}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXAxisMin(D)V

    .line 715
    invoke-virtual {p1, p7, p8}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXAxisMax(D)V

    .line 716
    invoke-virtual {p1, p9, p10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setYAxisMin(D)V

    .line 717
    invoke-virtual {p1, p11, p12}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setYAxisMax(D)V

    .line 718
    move/from16 v0, p13

    invoke-virtual {p1, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setAxesColor(I)V

    .line 720
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXLabels(I)V

    .line 721
    move/from16 v0, p14

    invoke-virtual {p1, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setLabelsColor(I)V

    .line 723
    const/high16 v1, 0x4180

    invoke-virtual {p1, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setAxisTitleTextSize(F)V

    .line 724
    const/high16 v1, 0x41a0

    invoke-virtual {p1, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setChartTitleTextSize(F)V

    .line 725
    const/high16 v1, 0x4170

    invoke-virtual {p1, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setLabelsTextSize(F)V

    .line 726
    const/high16 v1, 0x4170

    invoke-virtual {p1, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setLegendTextSize(F)V

    .line 727
    const/high16 v1, 0x41a0

    invoke-virtual {p1, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setChartValuesTextSize(F)V

    .line 729
    const/high16 v1, -0x3e60

    invoke-virtual {p1, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXLabelsAngle(F)V

    .line 730
    iget v1, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->mark:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 731
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getSeriesRendererAt(I)Lorg/achartengine/renderer/SimpleSeriesRenderer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->setDisplayChartValues(Z)V

    .line 740
    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setPanEnabled(ZZ)V

    .line 742
    return-void

    .line 733
    :cond_0
    iget v1, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->mark:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 734
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getSeriesRendererAt(I)Lorg/achartengine/renderer/SimpleSeriesRenderer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->setDisplayChartValues(Z)V

    goto :goto_0

    .line 736
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getSeriesRendererAt(I)Lorg/achartengine/renderer/SimpleSeriesRenderer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->setDisplayChartValues(Z)V

    .line 737
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getSeriesRendererAt(I)Lorg/achartengine/renderer/SimpleSeriesRenderer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->setDisplayChartValues(Z)V

    goto :goto_0
.end method

.method private setRenderer(Lorg/achartengine/renderer/XYMultipleSeriesRenderer;[I[Lorg/achartengine/chart/PointStyle;)V
    .locals 5
    .parameter "renderer"
    .parameter "colors"
    .parameter "styles"

    .prologue
    const/high16 v4, 0x4170

    .line 692
    const/high16 v3, 0x4180

    invoke-virtual {p1, v3}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setAxisTitleTextSize(F)V

    .line 693
    const/high16 v3, 0x41a0

    invoke-virtual {p1, v3}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setChartTitleTextSize(F)V

    .line 694
    invoke-virtual {p1, v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setLabelsTextSize(F)V

    .line 695
    invoke-virtual {p1, v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setLegendTextSize(F)V

    .line 697
    const/high16 v3, 0x40a0

    invoke-virtual {p1, v3}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setPointSize(F)V

    .line 698
    const/4 v3, 0x4

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-virtual {p1, v3}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setMargins([I)V

    .line 699
    array-length v1, p2

    .line 700
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 708
    return-void

    .line 701
    :cond_0
    new-instance v2, Lorg/achartengine/renderer/XYSeriesRenderer;

    invoke-direct {v2}, Lorg/achartengine/renderer/XYSeriesRenderer;-><init>()V

    .line 702
    .local v2, r:Lorg/achartengine/renderer/XYSeriesRenderer;
    aget v3, p2, v0

    invoke-virtual {v2, v3}, Lorg/achartengine/renderer/XYSeriesRenderer;->setColor(I)V

    .line 703
    aget-object v3, p3, v0

    invoke-virtual {v2, v3}, Lorg/achartengine/renderer/XYSeriesRenderer;->setPointStyle(Lorg/achartengine/chart/PointStyle;)V

    .line 704
    const/16 v3, 0x1e

    invoke-virtual {v2, v3}, Lorg/achartengine/renderer/XYSeriesRenderer;->setDisplayChartValuesDistance(I)V

    .line 705
    invoke-virtual {p1, v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->addSeriesRenderer(Lorg/achartengine/renderer/SimpleSeriesRenderer;)V

    .line 700
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 698
    nop

    :array_0
    .array-data 0x4
        0x14t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public ensureUi()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 251
    const v4, 0x7f08002d

    invoke-virtual {p0, v4}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    .line 252
    .local v3, leftBtn:Landroid/widget/ImageButton;
    new-instance v4, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$6;

    invoke-direct {v4, p0}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$6;-><init>(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 260
    .local v2, inflater:Landroid/view/LayoutInflater;
    invoke-static {}, Lcom/cymobile/ymwork/utils/UiUtil;->sdkVersion()I

    move-result v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_0

    .line 262
    const v4, 0x7f03003d

    .line 261
    invoke-virtual {v2, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ScrollView;

    iput-object v4, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->mLayoutEmpty:Landroid/view/ViewGroup;

    .line 267
    :goto_0
    iget-object v4, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->mLayoutEmpty:Landroid/view/ViewGroup;

    .line 268
    const v5, 0x7f08010f

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 267
    check-cast v0, Landroid/widget/Button;

    .line 269
    .local v0, btnAddFriends:Landroid/widget/Button;
    new-instance v4, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$7;

    invoke-direct {v4, p0}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$7;-><init>(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    iget-object v4, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->mLayoutEmpty:Landroid/view/ViewGroup;

    .line 275
    const v5, 0x7f080110

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 274
    check-cast v1, Landroid/widget/Button;

    .line 276
    .local v1, btnFriendRequests:Landroid/widget/Button;
    new-instance v4, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$8;

    invoke-direct {v4, p0}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$8;-><init>(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    iget-object v4, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->mLayoutEmpty:Landroid/view/ViewGroup;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 283
    invoke-direct {v5, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 281
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 285
    return-void

    .line 265
    .end local v0           #btnAddFriends:Landroid/widget/Button;
    .end local v1           #btnFriendRequests:Landroid/widget/Button;
    :cond_0
    const v4, 0x7f03003e

    .line 264
    invoke-virtual {v2, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ScrollView;

    iput-object v4, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->mLayoutEmpty:Landroid/view/ViewGroup;

    goto :goto_0
.end method

.method public getQueryTitle()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 442
    const-class v0, Lcom/cymobile/ymwork/SettingBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 443
    const/4 v1, 0x2

    .line 442
    invoke-virtual {p0, v0, v1}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->mPrefs:Landroid/content/SharedPreferences;

    .line 444
    iget-object v0, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "key_GlobalZoneId"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->userZoneId:Ljava/lang/String;

    .line 445
    iget-object v0, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "key_GlobalZoneName"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->userZoneName:Ljava/lang/String;

    .line 447
    iget-object v0, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->userZoneId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 448
    iget-object v0, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->userZoneId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x6

    if-ne v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f090078

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 447
    :goto_0
    invoke-static {v1, v2, v0}, Lcom/cymobile/ymwork/adapter/ReportDataSource;->resetTOPCategory(JLjava/lang/String;)V

    .line 449
    return-void

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->userZoneName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getStateHolder()Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$StateHolder;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$StateHolder;

    return-object v0
.end method

.method public lineChart()V
    .locals 29

    .prologue
    .line 613
    move-object/from16 v0, p0

    iget v3, v0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->mark:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_0

    .line 614
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "\u5b89\u88c5\u91cf"

    aput-object v6, v3, v5

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->titles:[Ljava/lang/String;

    .line 615
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v5, 0x0

    const v6, -0xffff01

    aput v6, v3, v5

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->colors:[I

    .line 616
    const/4 v3, 0x1

    new-array v3, v3, [Lorg/achartengine/chart/PointStyle;

    const/4 v5, 0x0

    sget-object v6, Lorg/achartengine/chart/PointStyle;->DIAMOND:Lorg/achartengine/chart/PointStyle;

    aput-object v6, v3, v5

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->styles:[Lorg/achartengine/chart/PointStyle;

    .line 628
    :goto_0
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 629
    .local v27, x:Ljava/util/List;,"Ljava/util/List<[D>;"
    const/16 v22, 0x0

    .local v22, i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->titles:[Ljava/lang/String;

    array-length v3, v3

    move/from16 v0, v22

    if-lt v0, v3, :cond_2

    .line 637
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->colors:[I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->styles:[Lorg/achartengine/chart/PointStyle;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->buildRenderer([I[Lorg/achartengine/chart/PointStyle;)Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-result-object v4

    .line 638
    .local v4, renderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;
    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getSeriesRendererCount()I

    move-result v24

    .line 639
    .local v24, length:I
    const/16 v22, 0x0

    :goto_2
    move/from16 v0, v22

    move/from16 v1, v24

    if-lt v0, v1, :cond_4

    .line 642
    move-object/from16 v0, p0

    iget v3, v0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->s:I

    const/4 v5, 0x1

    if-eq v3, v5, :cond_5

    .line 643
    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const-wide/high16 v8, 0x3fe0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->mShops:Lcom/cymobile/ymwork/types/VisitorvolumeReports;

    invoke-virtual {v3}, Lcom/cymobile/ymwork/types/VisitorvolumeReports;->getItems()Lcom/cymobile/ymwork/types/Group;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v3

    int-to-double v10, v3

    const-wide/high16 v12, 0x3fe0

    add-double/2addr v10, v12

    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->c:I

    int-to-double v14, v3

    const v16, -0x333334

    const v17, -0x333334

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v17}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->setChartSettings(Lorg/achartengine/renderer/XYMultipleSeriesRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDDDII)V

    .line 647
    :goto_3
    const/16 v22, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->mShops:Lcom/cymobile/ymwork/types/VisitorvolumeReports;

    invoke-virtual {v3}, Lcom/cymobile/ymwork/types/VisitorvolumeReports;->getItems()Lcom/cymobile/ymwork/types/Group;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v3

    move/from16 v0, v22

    if-lt v0, v3, :cond_6

    .line 666
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXLabels(I)V

    .line 667
    const/16 v3, 0xa

    invoke-virtual {v4, v3}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setYLabels(I)V

    .line 668
    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setShowGrid(Z)V

    .line 669
    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v3}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXLabelsAlign(Landroid/graphics/Paint$Align;)V

    .line 670
    sget-object v3, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v3}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setYLabelsAlign(Landroid/graphics/Paint$Align;)V

    .line 672
    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setZoomButtonsVisible(Z)V

    .line 673
    const/4 v3, 0x4

    new-array v3, v3, [D

    fill-array-data v3, :array_0

    invoke-virtual {v4, v3}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setPanLimits([D)V

    .line 674
    const/4 v3, 0x4

    new-array v3, v3, [D

    fill-array-data v3, :array_1

    invoke-virtual {v4, v3}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setZoomLimits([D)V

    .line 676
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->titles:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->values:Ljava/util/List;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v3, v1, v5}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->buildDataset([Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lorg/achartengine/model/XYMultipleSeriesDataset;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Lorg/achartengine/ChartFactory;->getLineChartView(Landroid/content/Context;Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)Lorg/achartengine/GraphicalView;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->mChartView:Lorg/achartengine/GraphicalView;

    .line 677
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->mChartView:Lorg/achartengine/GraphicalView;

    const/high16 v5, -0x100

    invoke-virtual {v3, v5}, Lorg/achartengine/GraphicalView;->setBackgroundColor(I)V

    .line 678
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->layout_report:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 679
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->layout_report:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->mChartView:Lorg/achartengine/GraphicalView;

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    .line 680
    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 679
    invoke-virtual {v3, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 682
    return-void

    .line 618
    .end local v4           #renderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;
    .end local v22           #i:I
    .end local v24           #length:I
    .end local v27           #x:Ljava/util/List;,"Ljava/util/List<[D>;"
    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->mark:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_1

    .line 619
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "\u8bbf\u95ee\u91cf"

    aput-object v6, v3, v5

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->titles:[Ljava/lang/String;

    .line 620
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v5, 0x0

    const/high16 v6, -0x1

    aput v6, v3, v5

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->colors:[I

    .line 621
    const/4 v3, 0x1

    new-array v3, v3, [Lorg/achartengine/chart/PointStyle;

    const/4 v5, 0x0

    sget-object v6, Lorg/achartengine/chart/PointStyle;->CIRCLE:Lorg/achartengine/chart/PointStyle;

    aput-object v6, v3, v5

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->styles:[Lorg/achartengine/chart/PointStyle;

    goto/16 :goto_0

    .line 623
    :cond_1
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "\u8bbf\u95ee\u91cf"

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const-string v6, "\u5b89\u88c5\u91cf"

    aput-object v6, v3, v5

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->titles:[Ljava/lang/String;

    .line 624
    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_2

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->colors:[I

    .line 625
    const/4 v3, 0x2

    new-array v3, v3, [Lorg/achartengine/chart/PointStyle;

    const/4 v5, 0x0

    sget-object v6, Lorg/achartengine/chart/PointStyle;->CIRCLE:Lorg/achartengine/chart/PointStyle;

    aput-object v6, v3, v5

    const/4 v5, 0x1

    sget-object v6, Lorg/achartengine/chart/PointStyle;->DIAMOND:Lorg/achartengine/chart/PointStyle;

    aput-object v6, v3, v5

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->styles:[Lorg/achartengine/chart/PointStyle;

    goto/16 :goto_0

    .line 630
    .restart local v22       #i:I
    .restart local v27       #x:Ljava/util/List;,"Ljava/util/List<[D>;"
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->mShops:Lcom/cymobile/ymwork/types/VisitorvolumeReports;

    invoke-virtual {v3}, Lcom/cymobile/ymwork/types/VisitorvolumeReports;->getItems()Lcom/cymobile/ymwork/types/Group;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v3

    new-array v0, v3, [D

    move-object/from16 v28, v0

    .line 631
    .local v28, x_list:[D
    invoke-interface/range {v27 .. v28}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 632
    const/16 v23, 0x1

    .local v23, j:I
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->mShops:Lcom/cymobile/ymwork/types/VisitorvolumeReports;

    invoke-virtual {v3}, Lcom/cymobile/ymwork/types/VisitorvolumeReports;->getItems()Lcom/cymobile/ymwork/types/Group;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v3

    move/from16 v0, v23

    if-le v0, v3, :cond_3

    .line 629
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_1

    .line 633
    :cond_3
    add-int/lit8 v3, v23, -0x1

    move/from16 v0, v23

    int-to-double v5, v0

    aput-wide v5, v28, v3

    .line 632
    add-int/lit8 v23, v23, 0x1

    goto :goto_5

    .line 640
    .end local v23           #j:I
    .end local v28           #x_list:[D
    .restart local v4       #renderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;
    .restart local v24       #length:I
    :cond_4
    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getSeriesRendererAt(I)Lorg/achartengine/renderer/SimpleSeriesRenderer;

    move-result-object v3

    check-cast v3, Lorg/achartengine/renderer/XYSeriesRenderer;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lorg/achartengine/renderer/XYSeriesRenderer;->setFillPoints(Z)V

    .line 639
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_2

    .line 645
    :cond_5
    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const-wide/high16 v8, 0x3fe0

    const-wide v10, 0x4038800000000000L

    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->c:I

    int-to-double v14, v3

    const v16, -0x333334

    const v17, -0x333334

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v17}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->setChartSettings(Lorg/achartengine/renderer/XYMultipleSeriesRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDDDII)V

    goto/16 :goto_3

    .line 648
    :cond_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->s:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_7

    .line 649
    new-instance v26, Ljava/text/SimpleDateFormat;

    const-string v3, "HH:mm"

    move-object/from16 v0, v26

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 650
    .local v26, sdf:Ljava/text/SimpleDateFormat;
    const-string v3, "GMT"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 651
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->mShops:Lcom/cymobile/ymwork/types/VisitorvolumeReports;

    invoke-virtual {v3}, Lcom/cymobile/ymwork/types/VisitorvolumeReports;->getItems()Lcom/cymobile/ymwork/types/Group;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Lcom/cymobile/ymwork/types/Group;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cymobile/ymwork/types/VisitorvolumeReport;

    invoke-virtual {v3}, Lcom/cymobile/ymwork/types/VisitorvolumeReport;->getTime()Ljava/lang/String;

    move-result-object v18

    .line 652
    .local v18, a:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v19

    .line 653
    .local v19, b:J
    new-instance v21, Ljava/util/Date;

    move-object/from16 v0, v21

    move-wide/from16 v1, v19

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 654
    .local v21, d:Ljava/util/Date;
    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v25

    .line 655
    .local v25, sDateTime:Ljava/lang/String;
    add-int/lit8 v3, v22, 0x1

    int-to-double v5, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v6, v3}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->addTextLabel(DLjava/lang/String;)V

    .line 647
    :goto_6
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_4

    .line 657
    .end local v18           #a:Ljava/lang/String;
    .end local v19           #b:J
    .end local v21           #d:Ljava/util/Date;
    .end local v25           #sDateTime:Ljava/lang/String;
    .end local v26           #sdf:Ljava/text/SimpleDateFormat;
    :cond_7
    new-instance v26, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy/MM/dd"

    move-object/from16 v0, v26

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 659
    .restart local v26       #sdf:Ljava/text/SimpleDateFormat;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->mShops:Lcom/cymobile/ymwork/types/VisitorvolumeReports;

    invoke-virtual {v3}, Lcom/cymobile/ymwork/types/VisitorvolumeReports;->getItems()Lcom/cymobile/ymwork/types/Group;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Lcom/cymobile/ymwork/types/Group;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cymobile/ymwork/types/VisitorvolumeReport;

    invoke-virtual {v3}, Lcom/cymobile/ymwork/types/VisitorvolumeReport;->getTime()Ljava/lang/String;

    move-result-object v18

    .line 660
    .restart local v18       #a:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v19

    .line 661
    .restart local v19       #b:J
    new-instance v21, Ljava/util/Date;

    move-object/from16 v0, v21

    move-wide/from16 v1, v19

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 662
    .restart local v21       #d:Ljava/util/Date;
    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v25

    .line 663
    .restart local v25       #sDateTime:Ljava/lang/String;
    add-int/lit8 v3, v22, 0x1

    int-to-double v5, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v6, v3}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->addTextLabel(DLjava/lang/String;)V

    goto :goto_6

    .line 673
    nop

    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x24t 0xc0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x34t 0x40t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x24t 0xc0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x44t 0x40t
    .end array-data

    .line 674
    :array_1
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x24t 0xc0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x34t 0x40t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x24t 0xc0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x44t 0x40t
    .end array-data

    .line 624
    :array_2
    .array-data 0x4
        0x0t 0x0t 0xfft 0xfft
        0xfft 0x0t 0x0t 0xfft
    .end array-data
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    .line 106
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->requestWindowFeature(I)Z

    .line 107
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->getQueryTitle()V

    .line 109
    const v10, 0x7f030027

    invoke-virtual {p0, v10}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->setContentView(I)V

    .line 110
    invoke-super {p0, p1}, Lcom/cymobile/ymwork/widget/LoadableListFragmentWithViewAndHeaderVisitorvolumeReport;->onCreate(Landroid/os/Bundle;)V

    .line 111
    iput-object p0, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->contexts:Landroid/content/Context;

    .line 112
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 113
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$StateHolder;

    iput-object v10, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$StateHolder;

    .line 114
    iget-object v10, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$StateHolder;

    invoke-virtual {v10, p0}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$StateHolder;->setActivity(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;)V

    .line 118
    :goto_0
    const v10, 0x7f0800a5

    invoke-virtual {p0, v10}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    iput-object v10, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->layout_report:Landroid/widget/LinearLayout;

    .line 119
    const v10, 0x7f080032

    invoke-virtual {p0, v10}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout;

    iput-object v10, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->btn_title:Landroid/widget/RelativeLayout;

    .line 120
    const v10, 0x7f080035

    invoke-virtual {p0, v10}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout;

    iput-object v10, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->btn_Street:Landroid/widget/RelativeLayout;

    .line 121
    const v10, 0x7f080033

    invoke-virtual {p0, v10}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->txt_title:Landroid/widget/TextView;

    .line 122
    const v10, 0x7f080036

    invoke-virtual {p0, v10}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->txt_Street:Landroid/widget/TextView;

    .line 123
    const v10, 0x7f080034

    invoke-virtual {p0, v10}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Spinner;

    iput-object v10, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->mSpinner:Landroid/widget/Spinner;

    .line 124
    const v10, 0x7f080037

    invoke-virtual {p0, v10}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Spinner;

    iput-object v10, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->Spinner_Street:Landroid/widget/Spinner;

    .line 125
    iget-object v10, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v10}, Landroid/widget/Spinner;->showContextMenu()Z

    .line 126
    iget-object v10, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->Spinner_Street:Landroid/widget/Spinner;

    invoke-virtual {v10}, Landroid/widget/Spinner;->showContextMenu()Z

    .line 127
    iget-object v10, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->userZoneId:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x6

    if-ne v10, v11, :cond_3

    .line 128
    iget-object v10, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->btn_Street:Landroid/widget/RelativeLayout;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 132
    :goto_1
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->ensureUi()V

    .line 133
    iget-object v10, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->mPrefs:Landroid/content/SharedPreferences;

    const-string v11, "key_GlobalZoneId"

    .line 134
    const/4 v12, 0x0

    .line 133
    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 135
    .local v9, zonecode:Ljava/lang/String;
    if-eqz v9, :cond_0

    .line 136
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0xc

    if-eq v10, v11, :cond_1

    .line 137
    :cond_0
    invoke-static {}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getSubZone()Lcom/cymobile/ymwork/types/Group;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 138
    invoke-static {}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getSubZone()Lcom/cymobile/ymwork/types/Group;

    move-result-object v10

    invoke-virtual {v10}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v10

    if-lez v10, :cond_4

    .line 139
    :cond_1
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->flag:Z

    .line 140
    iget-object v10, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x4

    .line 141
    const-wide/16 v12, 0x32

    .line 140
    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 147
    :goto_2
    iget-object v10, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->btn_title:Landroid/widget/RelativeLayout;

    new-instance v11, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$2;

    invoke-direct {v11, p0}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$2;-><init>(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;)V

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v10, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->btn_Street:Landroid/widget/RelativeLayout;

    new-instance v11, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$3;

    invoke-direct {v11, p0}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$3;-><init>(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;)V

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f05000b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 164
    .local v4, mItem:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 165
    const v11, 0x7f05000e

    .line 164
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 166
    .local v7, streenItme:[Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    array-length v10, v4

    if-lt v2, v10, :cond_5

    .line 178
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 179
    const v10, 0x1090009

    .line 178
    invoke-direct {v0, p0, v10, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 180
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    new-instance v1, Landroid/widget/ArrayAdapter;

    .line 181
    const v10, 0x1090009

    .line 180
    invoke-direct {v1, p0, v10, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 182
    .local v1, adapter_street:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v10, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 183
    iget-object v10, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->Spinner_Street:Landroid/widget/Spinner;

    invoke-virtual {v10, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 185
    new-instance v5, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$4;

    invoke-direct {v5, p0, v3}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$4;-><init>(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;Ljava/util/List;)V

    .line 220
    .local v5, oisl:Landroid/widget/AdapterView$OnItemSelectedListener;,"Landroid/widget/AdapterView$OnItemSelectedListener;"
    new-instance v8, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$5;

    invoke-direct {v8, p0, v7}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$5;-><init>(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;[Ljava/lang/String;)V

    .line 245
    .local v8, street_oisl:Landroid/widget/AdapterView$OnItemSelectedListener;,"Landroid/widget/AdapterView$OnItemSelectedListener;"
    iget-object v10, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v10, v5}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 246
    iget-object v10, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->Spinner_Street:Landroid/widget/Spinner;

    invoke-virtual {v10, v8}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 248
    return-void

    .line 116
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v1           #adapter_street:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v2           #i:I
    .end local v3           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v4           #mItem:[Ljava/lang/String;
    .end local v5           #oisl:Landroid/widget/AdapterView$OnItemSelectedListener;,"Landroid/widget/AdapterView$OnItemSelectedListener;"
    .end local v7           #streenItme:[Ljava/lang/String;
    .end local v8           #street_oisl:Landroid/widget/AdapterView$OnItemSelectedListener;,"Landroid/widget/AdapterView$OnItemSelectedListener;"
    .end local v9           #zonecode:Ljava/lang/String;
    :cond_2
    new-instance v10, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$StateHolder;

    invoke-direct {v10, p0}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$StateHolder;-><init>(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;)V

    iput-object v10, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$StateHolder;

    goto/16 :goto_0

    .line 130
    :cond_3
    iget-object v10, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->btn_Street:Landroid/widget/RelativeLayout;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 143
    .restart local v9       #zonecode:Ljava/lang/String;
    :cond_4
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->flag:Z

    .line 144
    iget-object v10, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x3

    const-wide/16 v12, 0xa

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    .line 169
    .restart local v2       #i:I
    .restart local v3       #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4       #mItem:[Ljava/lang/String;
    .restart local v7       #streenItme:[Ljava/lang/String;
    :cond_5
    const/4 v6, 0x0

    .line 174
    .local v6, str:Ljava/lang/String;
    aget-object v6, v4, v2

    .line 176
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    const v6, 0x1020004

    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 288
    invoke-virtual {p0, v6}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 289
    .local v0, loadableListHolder:Landroid/widget/LinearLayout;
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 290
    iget-object v2, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->layout_report:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 291
    invoke-virtual {p0, v6}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 293
    .local v1, parent:Landroid/widget/LinearLayout;
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 295
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-le v2, v4, :cond_0

    .line 296
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 298
    :cond_0
    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 299
    return-void
.end method
