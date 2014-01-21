.class public Lcom/cymobile/ymwork/act/FireServiceReportAct;
.super Lcom/cymobile/ymwork/widget/LoadableListFragmentWithViewAndHeaderFireReport;
.source "FireServiceReportAct.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cymobile/ymwork/act/FireServiceReportAct$GetZoneTask;,
        Lcom/cymobile/ymwork/act/FireServiceReportAct$StateHolder;,
        Lcom/cymobile/ymwork/act/FireServiceReportAct$TaskShops;
    }
.end annotation


# static fields
.field private static final MESSAGE_Intent_init_direct_search:I = 0x4

.field private static final MESSAGE_Intent_init_search:I = 0x3


# instance fields
.field private final DISMANTLE_REPORT:I

.field private final MESSAGE_CITY:I

.field private final MESSAGE_ISVISIBLE_STREET:I

.field private final MESSAGE_STREET:I

.field private final MESSAGE_UPDATE_REPORT:I

.field private final PROCEDURES_SETTLEMENT_REPORT:I

.field private final RANKING_REPORT:I

.field private final REVERSION_REPORT:I

.field private STREET_NO:I

.field private Spinner_Street:Landroid/widget/Spinner;

.field private btn_Street:Landroid/widget/RelativeLayout;

.field private btn_title:Landroid/widget/RelativeLayout;

.field private category:Ljava/lang/String;

.field contexts:Landroid/content/Context;

.field private dataset:Lorg/achartengine/model/XYMultipleSeriesDataset;

.field private flag:Z

.field private layout_report:Landroid/widget/LinearLayout;

.field private mChartView:Lorg/achartengine/GraphicalView;

.field mHandler:Landroid/os/Handler;

.field private mIsRunningTask:Z

.field private mLayoutEmpty:Landroid/view/ViewGroup;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mShops:Lcom/cymobile/ymwork/types/BuildingReport;

.field private mSpinner:Landroid/widget/Spinner;

.field private mStateHolder:Lcom/cymobile/ymwork/act/FireServiceReportAct$StateHolder;

.field private mark:I

.field private renderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

.field private str_address:Ljava/lang/String;

.field private str_list_item:Ljava/lang/String;

.field private str_list_street:Ljava/lang/String;

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


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 60
    invoke-direct {p0}, Lcom/cymobile/ymwork/widget/LoadableListFragmentWithViewAndHeaderFireReport;-><init>()V

    .line 63
    iput v2, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->RANKING_REPORT:I

    .line 64
    iput v1, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->DISMANTLE_REPORT:I

    .line 65
    iput v3, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->PROCEDURES_SETTLEMENT_REPORT:I

    .line 66
    const/4 v0, 0x3

    iput v0, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->REVERSION_REPORT:I

    .line 67
    iput v1, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->MESSAGE_UPDATE_REPORT:I

    .line 68
    iput v3, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->MESSAGE_ISVISIBLE_STREET:I

    .line 71
    const/4 v0, 0x5

    iput v0, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->MESSAGE_CITY:I

    .line 72
    const/4 v0, 0x6

    iput v0, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->MESSAGE_STREET:I

    .line 73
    iput v2, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->mark:I

    .line 74
    iput v1, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->STREET_NO:I

    .line 468
    new-instance v0, Lcom/cymobile/ymwork/act/FireServiceReportAct$1;

    invoke-direct {v0, p0}, Lcom/cymobile/ymwork/act/FireServiceReportAct$1;-><init>(Lcom/cymobile/ymwork/act/FireServiceReportAct;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->mHandler:Landroid/os/Handler;

    .line 60
    return-void
.end method

.method static synthetic access$0(Lcom/cymobile/ymwork/act/FireServiceReportAct;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->renderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    return-void
.end method

.method static synthetic access$1(Lcom/cymobile/ymwork/act/FireServiceReportAct;Lorg/achartengine/model/XYMultipleSeriesDataset;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->dataset:Lorg/achartengine/model/XYMultipleSeriesDataset;

    return-void
.end method

.method static synthetic access$10(Lcom/cymobile/ymwork/act/FireServiceReportAct;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->txt_title:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$11(Lcom/cymobile/ymwork/act/FireServiceReportAct;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->str_list_street:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$12(Lcom/cymobile/ymwork/act/FireServiceReportAct;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->str_list_item:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$13(Lcom/cymobile/ymwork/act/FireServiceReportAct;)Lcom/cymobile/ymwork/act/FireServiceReportAct$StateHolder;
    .locals 1
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/FireServiceReportAct$StateHolder;

    return-object v0
.end method

.method static synthetic access$14(Lcom/cymobile/ymwork/act/FireServiceReportAct;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->mIsRunningTask:Z

    return-void
.end method

.method static synthetic access$15(Lcom/cymobile/ymwork/act/FireServiceReportAct;Lcom/cymobile/ymwork/types/BuildingReport;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->mShops:Lcom/cymobile/ymwork/types/BuildingReport;

    return-void
.end method

.method static synthetic access$16(Lcom/cymobile/ymwork/act/FireServiceReportAct;)Lcom/cymobile/ymwork/types/BuildingReport;
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->mShops:Lcom/cymobile/ymwork/types/BuildingReport;

    return-object v0
.end method

.method static synthetic access$17(Lcom/cymobile/ymwork/act/FireServiceReportAct;)Z
    .locals 1
    .parameter

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->mIsRunningTask:Z

    return v0
.end method

.method static synthetic access$18(Lcom/cymobile/ymwork/act/FireServiceReportAct;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->category:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$19(Lcom/cymobile/ymwork/act/FireServiceReportAct;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->category:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/cymobile/ymwork/act/FireServiceReportAct;)I
    .locals 1
    .parameter

    .prologue
    .line 73
    iget v0, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->mark:I

    return v0
.end method

.method static synthetic access$20(Lcom/cymobile/ymwork/act/FireServiceReportAct;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->userZoneId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$21(Lcom/cymobile/ymwork/act/FireServiceReportAct;)I
    .locals 1
    .parameter

    .prologue
    .line 74
    iget v0, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->STREET_NO:I

    return v0
.end method

.method static synthetic access$22(Lcom/cymobile/ymwork/act/FireServiceReportAct;Lcom/cymobile/ymwork/types/BuildingReport;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 425
    invoke-direct {p0, p1, p2}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->onTaskComplete(Lcom/cymobile/ymwork/types/BuildingReport;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$23(Lcom/cymobile/ymwork/act/FireServiceReportAct;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$24(Lcom/cymobile/ymwork/act/FireServiceReportAct;)Landroid/widget/Spinner;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->mSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$25(Lcom/cymobile/ymwork/act/FireServiceReportAct;)Landroid/widget/Spinner;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->Spinner_Street:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$26(Lcom/cymobile/ymwork/act/FireServiceReportAct;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    iput p1, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->mark:I

    return-void
.end method

.method static synthetic access$27(Lcom/cymobile/ymwork/act/FireServiceReportAct;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->str_list_item:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$28(Lcom/cymobile/ymwork/act/FireServiceReportAct;)Z
    .locals 1
    .parameter

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->flag:Z

    return v0
.end method

.method static synthetic access$29(Lcom/cymobile/ymwork/act/FireServiceReportAct;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->str_list_street:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Lcom/cymobile/ymwork/act/FireServiceReportAct;)V
    .locals 0
    .parameter

    .prologue
    .line 572
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->initNames1()V

    return-void
.end method

.method static synthetic access$30(Lcom/cymobile/ymwork/act/FireServiceReportAct;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->txt_Street:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$31(Lcom/cymobile/ymwork/act/FireServiceReportAct;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 74
    iput p1, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->STREET_NO:I

    return-void
.end method

.method static synthetic access$32(Lcom/cymobile/ymwork/act/FireServiceReportAct;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->flag:Z

    return-void
.end method

.method static synthetic access$4(Lcom/cymobile/ymwork/act/FireServiceReportAct;)V
    .locals 0
    .parameter

    .prologue
    .line 577
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->initNames2()V

    return-void
.end method

.method static synthetic access$5(Lcom/cymobile/ymwork/act/FireServiceReportAct;)Lorg/achartengine/model/XYMultipleSeriesDataset;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->dataset:Lorg/achartengine/model/XYMultipleSeriesDataset;

    return-object v0
.end method

.method static synthetic access$6(Lcom/cymobile/ymwork/act/FireServiceReportAct;)Lorg/achartengine/renderer/XYMultipleSeriesRenderer;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->renderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    return-object v0
.end method

.method static synthetic access$7(Lcom/cymobile/ymwork/act/FireServiceReportAct;Lorg/achartengine/GraphicalView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->mChartView:Lorg/achartengine/GraphicalView;

    return-void
.end method

.method static synthetic access$8(Lcom/cymobile/ymwork/act/FireServiceReportAct;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->layout_report:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$9(Lcom/cymobile/ymwork/act/FireServiceReportAct;)Lorg/achartengine/GraphicalView;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->mChartView:Lorg/achartengine/GraphicalView;

    return-object v0
.end method

.method private initNames1()V
    .locals 5

    .prologue
    .line 573
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->mShops:Lcom/cymobile/ymwork/types/BuildingReport;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/BuildingReport;->getItems()Lcom/cymobile/ymwork/types/Group;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 576
    return-void

    .line 574
    :cond_0
    iget-object v2, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->renderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    add-int/lit8 v1, v0, 0x1

    int-to-double v3, v1

    iget-object v1, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->mShops:Lcom/cymobile/ymwork/types/BuildingReport;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/BuildingReport;->getItems()Lcom/cymobile/ymwork/types/Group;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cymobile/ymwork/types/Group;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/types/BuildingReportItem;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/BuildingReportItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->addTextLabel(DLjava/lang/String;)V

    .line 573
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private initNames2()V
    .locals 5

    .prologue
    .line 578
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->mShops:Lcom/cymobile/ymwork/types/BuildingReport;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/BuildingReport;->getAvgs()Lcom/cymobile/ymwork/types/Group;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 581
    return-void

    .line 579
    :cond_0
    iget-object v2, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->renderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    add-int/lit8 v1, v0, 0x1

    int-to-double v3, v1

    iget-object v1, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->mShops:Lcom/cymobile/ymwork/types/BuildingReport;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/BuildingReport;->getAvgs()Lcom/cymobile/ymwork/types/Group;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cymobile/ymwork/types/Group;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/types/ConstrustionFieldAvgItem;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/ConstrustionFieldAvgItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->addTextLabel(DLjava/lang/String;)V

    .line 578
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private onTaskComplete(Lcom/cymobile/ymwork/types/BuildingReport;Ljava/lang/Exception;)V
    .locals 3
    .parameter "report"
    .parameter "ex"

    .prologue
    const/4 v2, 0x0

    .line 426
    iput-boolean v2, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->mIsRunningTask:Z

    .line 427
    invoke-virtual {p0, v2}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->setProgressBarIndeterminateVisibility(Z)V

    .line 428
    if-eqz p2, :cond_0

    .line 429
    iget-object v1, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 430
    iget-object v1, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->mLayoutEmpty:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->setEmptyView(Landroid/view/View;)V

    .line 438
    :goto_0
    return-void

    .line 432
    :cond_0
    const v1, 0x1020004

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 433
    .local v0, loadableListHolder:Landroid/widget/LinearLayout;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 434
    iget-object v1, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->layout_report:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 435
    iput-object p1, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->mShops:Lcom/cymobile/ymwork/types/BuildingReport;

    .line 436
    iget-object v1, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method


# virtual methods
.method public ensureUi()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 253
    const v4, 0x7f08002d

    invoke-virtual {p0, v4}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    .line 254
    .local v3, leftBtn:Landroid/widget/ImageButton;
    new-instance v4, Lcom/cymobile/ymwork/act/FireServiceReportAct$6;

    invoke-direct {v4, p0}, Lcom/cymobile/ymwork/act/FireServiceReportAct$6;-><init>(Lcom/cymobile/ymwork/act/FireServiceReportAct;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 262
    .local v2, inflater:Landroid/view/LayoutInflater;
    invoke-static {}, Lcom/cymobile/ymwork/utils/UiUtil;->sdkVersion()I

    move-result v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_0

    .line 264
    const v4, 0x7f03003d

    .line 263
    invoke-virtual {v2, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ScrollView;

    iput-object v4, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->mLayoutEmpty:Landroid/view/ViewGroup;

    .line 269
    :goto_0
    iget-object v4, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->mLayoutEmpty:Landroid/view/ViewGroup;

    .line 270
    const v5, 0x7f08010f

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 269
    check-cast v0, Landroid/widget/Button;

    .line 271
    .local v0, btnAddFriends:Landroid/widget/Button;
    new-instance v4, Lcom/cymobile/ymwork/act/FireServiceReportAct$7;

    invoke-direct {v4, p0}, Lcom/cymobile/ymwork/act/FireServiceReportAct$7;-><init>(Lcom/cymobile/ymwork/act/FireServiceReportAct;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    iget-object v4, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->mLayoutEmpty:Landroid/view/ViewGroup;

    .line 277
    const v5, 0x7f080110

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 276
    check-cast v1, Landroid/widget/Button;

    .line 278
    .local v1, btnFriendRequests:Landroid/widget/Button;
    new-instance v4, Lcom/cymobile/ymwork/act/FireServiceReportAct$8;

    invoke-direct {v4, p0}, Lcom/cymobile/ymwork/act/FireServiceReportAct$8;-><init>(Lcom/cymobile/ymwork/act/FireServiceReportAct;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    iget-object v4, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->mLayoutEmpty:Landroid/view/ViewGroup;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 285
    invoke-direct {v5, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 283
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 287
    return-void

    .line 267
    .end local v0           #btnAddFriends:Landroid/widget/Button;
    .end local v1           #btnFriendRequests:Landroid/widget/Button;
    :cond_0
    const v4, 0x7f03003e

    .line 266
    invoke-virtual {v2, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ScrollView;

    iput-object v4, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->mLayoutEmpty:Landroid/view/ViewGroup;

    goto :goto_0
.end method

.method public getBarDataset()Lorg/achartengine/model/XYMultipleSeriesDataset;
    .locals 10

    .prologue
    .line 584
    new-instance v3, Lorg/achartengine/model/XYMultipleSeriesDataset;

    invoke-direct {v3}, Lorg/achartengine/model/XYMultipleSeriesDataset;-><init>()V

    .line 585
    .local v3, dataset:Lorg/achartengine/model/XYMultipleSeriesDataset;
    const/4 v0, 0x0

    .line 586
    .local v0, barSeries:Lorg/achartengine/model/CategorySeries;
    iget v6, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->mark:I

    if-nez v6, :cond_2

    .line 587
    new-instance v0, Lorg/achartengine/model/CategorySeries;

    .end local v0           #barSeries:Lorg/achartengine/model/CategorySeries;
    const-string v6, "\u53d1\u6848\u6570"

    invoke-direct {v0, v6}, Lorg/achartengine/model/CategorySeries;-><init>(Ljava/lang/String;)V

    .line 588
    .restart local v0       #barSeries:Lorg/achartengine/model/CategorySeries;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    iget-object v6, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->mShops:Lcom/cymobile/ymwork/types/BuildingReport;

    invoke-virtual {v6}, Lcom/cymobile/ymwork/types/BuildingReport;->getItems()Lcom/cymobile/ymwork/types/Group;

    move-result-object v6

    invoke-virtual {v6}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v6

    if-lt v5, v6, :cond_1

    .line 599
    .end local v5           #i:I
    :cond_0
    invoke-virtual {v0}, Lorg/achartengine/model/CategorySeries;->toXYSeries()Lorg/achartengine/model/XYSeries;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/achartengine/model/XYMultipleSeriesDataset;->addSeries(Lorg/achartengine/model/XYSeries;)V

    .line 600
    return-object v3

    .line 589
    .restart local v5       #i:I
    :cond_1
    iget-object v6, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->mShops:Lcom/cymobile/ymwork/types/BuildingReport;

    invoke-virtual {v6}, Lcom/cymobile/ymwork/types/BuildingReport;->getItems()Lcom/cymobile/ymwork/types/Group;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/cymobile/ymwork/types/Group;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cymobile/ymwork/types/BuildingReportItem;

    invoke-virtual {v6}, Lcom/cymobile/ymwork/types/BuildingReportItem;->getNumber()I

    move-result v6

    int-to-double v6, v6

    invoke-virtual {v0, v6, v7}, Lorg/achartengine/model/CategorySeries;->add(D)V

    .line 588
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 591
    .end local v5           #i:I
    :cond_2
    iget v6, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->mark:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 592
    new-instance v0, Lorg/achartengine/model/CategorySeries;

    .end local v0           #barSeries:Lorg/achartengine/model/CategorySeries;
    const-string v6, "\u6d88\u9664\u7387"

    invoke-direct {v0, v6}, Lorg/achartengine/model/CategorySeries;-><init>(Ljava/lang/String;)V

    .line 593
    .restart local v0       #barSeries:Lorg/achartengine/model/CategorySeries;
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_1
    iget-object v6, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->mShops:Lcom/cymobile/ymwork/types/BuildingReport;

    invoke-virtual {v6}, Lcom/cymobile/ymwork/types/BuildingReport;->getAvgs()Lcom/cymobile/ymwork/types/Group;

    move-result-object v6

    invoke-virtual {v6}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 594
    iget-object v6, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->mShops:Lcom/cymobile/ymwork/types/BuildingReport;

    invoke-virtual {v6}, Lcom/cymobile/ymwork/types/BuildingReport;->getAvgs()Lcom/cymobile/ymwork/types/Group;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/cymobile/ymwork/types/Group;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cymobile/ymwork/types/ConstrustionFieldAvgItem;

    invoke-virtual {v6}, Lcom/cymobile/ymwork/types/ConstrustionFieldAvgItem;->getAvg()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-wide/high16 v8, 0x4059

    mul-double v1, v6, v8

    .line 595
    .local v1, d:D
    new-instance v4, Ljava/text/DecimalFormat;

    const-string v6, "###.0"

    invoke-direct {v4, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 596
    .local v4, df:Ljava/text/DecimalFormat;
    invoke-virtual {v4, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lorg/achartengine/model/CategorySeries;->add(D)V

    .line 593
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method public getBarRenderer()Lorg/achartengine/renderer/XYMultipleSeriesRenderer;
    .locals 14

    .prologue
    .line 604
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->getFilterFragment()Lcom/cymobile/ymwork/widget/RangeFilterFragmentFireReport;

    move-result-object v10

    invoke-virtual {v10}, Lcom/cymobile/ymwork/widget/RangeFilterFragmentFireReport;->getReportDataSource()Lcom/cymobile/ymwork/adapter/ReportDataSource;

    move-result-object v7

    .line 606
    .local v7, rs:Lcom/cymobile/ymwork/adapter/ReportDataSource;
    invoke-virtual {v7}, Lcom/cymobile/ymwork/adapter/ReportDataSource;->curRange()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v10

    invoke-virtual {v10}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v10

    .line 605
    invoke-static {v10}, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->rangeTypeToPair(I)Lcom/cymobile/ymwork/types/Pair;

    move-result-object v10

    .line 606
    invoke-virtual {v10}, Lcom/cymobile/ymwork/types/Pair;->name()Ljava/lang/String;

    move-result-object v9

    .line 608
    .local v9, str_day:Ljava/lang/String;
    new-instance v6, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-direct {v6}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;-><init>()V

    .line 609
    .local v6, renderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;
    new-instance v8, Lorg/achartengine/renderer/SimpleSeriesRenderer;

    invoke-direct {v8}, Lorg/achartengine/renderer/SimpleSeriesRenderer;-><init>()V

    .line 610
    .local v8, simpleRenderer:Lorg/achartengine/renderer/SimpleSeriesRenderer;
    const/high16 v10, -0x1

    invoke-virtual {v8, v10}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->setColor(I)V

    .line 611
    invoke-virtual {v6, v8}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->addSeriesRenderer(Lorg/achartengine/renderer/SimpleSeriesRenderer;)V

    .line 613
    const/high16 v10, 0x41c0

    invoke-virtual {v6, v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setAxisTitleTextSize(F)V

    .line 614
    const/high16 v10, 0x41e0

    invoke-virtual {v6, v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setChartTitleTextSize(F)V

    .line 615
    const/high16 v10, 0x41c0

    invoke-virtual {v6, v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setLabelsTextSize(F)V

    .line 616
    const/high16 v10, 0x41c0

    invoke-virtual {v6, v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setLegendTextSize(F)V

    .line 617
    const/high16 v10, 0x41c0

    invoke-virtual {v6, v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setChartValuesTextSize(F)V

    .line 619
    const/4 v10, -0x1

    invoke-virtual {v6, v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setAxesColor(I)V

    .line 620
    const/4 v10, -0x1

    invoke-virtual {v6, v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setLabelsColor(I)V

    .line 623
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setApplyBackgroundColor(Z)V

    .line 624
    const/high16 v10, -0x100

    invoke-virtual {v6, v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setBackgroundColor(I)V

    .line 627
    const-wide v10, 0x3fc999999999999aL

    invoke-virtual {v6, v10, v11}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXAxisMin(D)V

    .line 629
    const-wide/high16 v10, 0x3ff0

    invoke-virtual {v6, v10, v11}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setBarSpacing(D)V

    .line 630
    const/4 v4, 0x0

    .line 632
    .local v4, mSize:I
    iget v10, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->mark:I

    if-nez v10, :cond_2

    .line 633
    const-string v10, "\u53d1\u6848\u6570\uff08\u4ef6\uff09"

    invoke-virtual {v6, v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setYTitle(Ljava/lang/String;)V

    .line 634
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->str_address:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\u6d88\u9632\u5b89\u5168\u53d1\u6848\u6570"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 635
    iget-object v11, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->mShops:Lcom/cymobile/ymwork/types/BuildingReport;

    invoke-virtual {v11}, Lcom/cymobile/ymwork/types/BuildingReport;->getNumber_all()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\u4ef6"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 634
    invoke-virtual {v6, v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setChartTitle(Ljava/lang/String;)V

    .line 637
    :try_start_0
    iget-object v10, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->mShops:Lcom/cymobile/ymwork/types/BuildingReport;

    invoke-virtual {v10}, Lcom/cymobile/ymwork/types/BuildingReport;->getItems()Lcom/cymobile/ymwork/types/Group;

    move-result-object v10

    invoke-virtual {v10}, Lcom/cymobile/ymwork/types/Group;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 653
    :cond_0
    :goto_0
    const/16 v10, 0xa

    if-le v4, v10, :cond_3

    .line 654
    const-wide/high16 v10, 0x4025

    invoke-virtual {v6, v10, v11}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXAxisMax(D)V

    .line 663
    :goto_1
    const-wide/16 v10, 0x0

    invoke-virtual {v6, v10, v11}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setYAxisMin(D)V

    .line 664
    iget-object v10, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->mShops:Lcom/cymobile/ymwork/types/BuildingReport;

    invoke-virtual {v10}, Lcom/cymobile/ymwork/types/BuildingReport;->getMaxnum()I

    move-result v0

    .line 665
    .local v0, Maxnum:I
    iget v10, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->mark:I

    if-nez v10, :cond_5

    .line 666
    mul-int/lit8 v10, v0, 0x4

    div-int/lit8 v5, v10, 0x3

    .line 667
    .local v5, max:I
    int-to-double v10, v5

    invoke-virtual {v6, v10, v11}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setYAxisMax(D)V

    .line 672
    .end local v5           #max:I
    :cond_1
    :goto_2
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setZoomButtonsVisible(Z)V

    .line 674
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setZoomEnabled(Z)V

    .line 676
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setAntialiasing(Z)V

    .line 678
    sget-object v10, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXLabelsAlign(Landroid/graphics/Paint$Align;)V

    .line 680
    sget-object v10, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setYLabelsAlign(Landroid/graphics/Paint$Align;)V

    .line 682
    const/4 v10, 0x4

    new-array v10, v10, [I

    fill-array-data v10, :array_0

    invoke-virtual {v6, v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setMargins([I)V

    .line 684
    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v11}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setPanEnabled(ZZ)V

    .line 685
    invoke-virtual {v6}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isPanXEnabled()Z

    .line 687
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getSeriesRendererAt(I)Lorg/achartengine/renderer/SimpleSeriesRenderer;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->setDisplayChartValues(Z)V

    .line 689
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setShowGrid(Z)V

    .line 692
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXLabels(I)V

    .line 694
    const/high16 v10, -0x3e90

    invoke-virtual {v6, v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXLabelsAngle(F)V

    .line 695
    return-object v6

    .line 638
    .end local v0           #Maxnum:I
    :catch_0
    move-exception v3

    .line 639
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 641
    .end local v3           #e:Ljava/lang/Exception;
    :cond_2
    iget v10, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->mark:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    .line 642
    const-string v10, "\u6d88\u9664\u7387\uff08%\uff09"

    invoke-virtual {v6, v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setYTitle(Ljava/lang/String;)V

    .line 643
    iget-object v10, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->mShops:Lcom/cymobile/ymwork/types/BuildingReport;

    invoke-virtual {v10}, Lcom/cymobile/ymwork/types/BuildingReport;->getAvgsum()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    const-wide/high16 v12, 0x4059

    mul-double v1, v10, v12

    .line 645
    .local v1, d:D
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->str_address:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\u6d88\u9632\u5b89\u5168\u9690\u60a3\u6d88\u9664\u7387"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 646
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v11

    invoke-virtual {v11, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "%"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 645
    invoke-virtual {v6, v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setChartTitle(Ljava/lang/String;)V

    .line 648
    :try_start_1
    iget-object v10, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->mShops:Lcom/cymobile/ymwork/types/BuildingReport;

    invoke-virtual {v10}, Lcom/cymobile/ymwork/types/BuildingReport;->getAvgs()Lcom/cymobile/ymwork/types/Group;

    move-result-object v10

    invoke-virtual {v10}, Lcom/cymobile/ymwork/types/Group;->size()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    goto/16 :goto_0

    .line 649
    :catch_1
    move-exception v3

    .line 650
    .restart local v3       #e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 655
    .end local v1           #d:D
    .end local v3           #e:Ljava/lang/Exception;
    :cond_3
    const/4 v10, 0x1

    if-ne v4, v10, :cond_4

    .line 656
    int-to-double v10, v4

    const-wide/high16 v12, 0x3fe0

    add-double/2addr v10, v12

    invoke-virtual {v6, v10, v11}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXAxisMax(D)V

    .line 657
    const/high16 v10, 0x41f0

    invoke-virtual {v6, v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setBarWidth(F)V

    goto/16 :goto_1

    .line 659
    :cond_4
    int-to-double v10, v4

    const-wide/high16 v12, 0x3fe0

    add-double/2addr v10, v12

    invoke-virtual {v6, v10, v11}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXAxisMax(D)V

    goto/16 :goto_1

    .line 668
    .restart local v0       #Maxnum:I
    :cond_5
    iget v10, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->mark:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_6

    iget v10, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->mark:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_1

    .line 669
    :cond_6
    const-wide v10, 0x405b800000000000L

    invoke-virtual {v6, v10, v11}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setYAxisMax(D)V

    goto/16 :goto_2

    .line 682
    :array_0
    .array-data 0x4
        0x19t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public getCancel()V
    .locals 2

    .prologue
    .line 244
    :try_start_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/FireServiceReportAct$StateHolder;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/FireServiceReportAct$StateHolder;->getIsRunningTask()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 245
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->getStateHolder()Lcom/cymobile/ymwork/act/FireServiceReportAct$StateHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/FireServiceReportAct$StateHolder;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 247
    :catch_0
    move-exception v0

    .line 248
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getQueryTitle()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 441
    const-class v0, Lcom/cymobile/ymwork/SettingBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 442
    const/4 v1, 0x2

    .line 441
    invoke-virtual {p0, v0, v1}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->mPrefs:Landroid/content/SharedPreferences;

    .line 443
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "key_GlobalZoneId"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->userZoneId:Ljava/lang/String;

    .line 444
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "key_GlobalZoneName"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->userZoneName:Ljava/lang/String;

    .line 446
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->userZoneId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 447
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->userZoneId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x6

    if-ne v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f090078

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 446
    :goto_0
    invoke-static {v1, v2, v0}, Lcom/cymobile/ymwork/adapter/ReportDataSource;->resetTOPCategory(JLjava/lang/String;)V

    .line 448
    return-void

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->userZoneName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getStateHolder()Lcom/cymobile/ymwork/act/FireServiceReportAct$StateHolder;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/FireServiceReportAct$StateHolder;

    return-object v0
.end method

.method public getTxt_title()V
    .locals 3

    .prologue
    .line 451
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->category:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 452
    iget v0, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->STREET_NO:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 453
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 454
    const v1, 0x7f0900d1

    .line 453
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->str_address:Ljava/lang/String;

    .line 459
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->txt_title:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->str_address:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->str_list_item:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 460
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->btn_Street:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 466
    :goto_1
    return-void

    .line 455
    :cond_1
    iget v0, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->STREET_NO:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 456
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 457
    const v1, 0x7f0900eb

    .line 456
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->str_address:Ljava/lang/String;

    goto :goto_0

    .line 462
    :cond_2
    sget-object v0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->street_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->str_address:Ljava/lang/String;

    .line 463
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->txt_title:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->str_address:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->str_list_item:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 464
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->btn_Street:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    .line 97
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->requestWindowFeature(I)Z

    .line 98
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->getQueryTitle()V

    .line 99
    const v10, 0x7f030027

    invoke-virtual {p0, v10}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->setContentView(I)V

    .line 100
    invoke-super {p0, p1}, Lcom/cymobile/ymwork/widget/LoadableListFragmentWithViewAndHeaderFireReport;->onCreate(Landroid/os/Bundle;)V

    .line 101
    iput-object p0, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->contexts:Landroid/content/Context;

    .line 102
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 103
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/cymobile/ymwork/act/FireServiceReportAct$StateHolder;

    iput-object v10, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/FireServiceReportAct$StateHolder;

    .line 104
    iget-object v10, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/FireServiceReportAct$StateHolder;

    invoke-virtual {v10, p0}, Lcom/cymobile/ymwork/act/FireServiceReportAct$StateHolder;->setActivity(Lcom/cymobile/ymwork/act/FireServiceReportAct;)V

    .line 108
    :goto_0
    const v10, 0x7f0800a5

    invoke-virtual {p0, v10}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    iput-object v10, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->layout_report:Landroid/widget/LinearLayout;

    .line 109
    const v10, 0x7f080032

    invoke-virtual {p0, v10}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout;

    iput-object v10, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->btn_title:Landroid/widget/RelativeLayout;

    .line 110
    const v10, 0x7f080035

    invoke-virtual {p0, v10}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout;

    iput-object v10, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->btn_Street:Landroid/widget/RelativeLayout;

    .line 111
    const v10, 0x7f080033

    invoke-virtual {p0, v10}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->txt_title:Landroid/widget/TextView;

    .line 112
    const v10, 0x7f080036

    invoke-virtual {p0, v10}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->txt_Street:Landroid/widget/TextView;

    .line 113
    const v10, 0x7f080034

    invoke-virtual {p0, v10}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Spinner;

    iput-object v10, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->mSpinner:Landroid/widget/Spinner;

    .line 114
    const v10, 0x7f080037

    invoke-virtual {p0, v10}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Spinner;

    iput-object v10, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->Spinner_Street:Landroid/widget/Spinner;

    .line 115
    iget-object v10, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v10}, Landroid/widget/Spinner;->showContextMenu()Z

    .line 116
    iget-object v10, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->Spinner_Street:Landroid/widget/Spinner;

    invoke-virtual {v10}, Landroid/widget/Spinner;->showContextMenu()Z

    .line 117
    iget-object v10, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->userZoneId:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x6

    if-ne v10, v11, :cond_3

    .line 118
    iget-object v10, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->btn_Street:Landroid/widget/RelativeLayout;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 122
    :goto_1
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->ensureUi()V

    .line 123
    iget-object v10, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->mPrefs:Landroid/content/SharedPreferences;

    const-string v11, "key_GlobalZoneId"

    .line 124
    const/4 v12, 0x0

    .line 123
    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 125
    .local v9, zonecode:Ljava/lang/String;
    if-eqz v9, :cond_0

    .line 126
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0xc

    if-eq v10, v11, :cond_1

    .line 127
    :cond_0
    invoke-static {}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getSubZone()Lcom/cymobile/ymwork/types/Group;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 128
    invoke-static {}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getSubZone()Lcom/cymobile/ymwork/types/Group;

    move-result-object v10

    invoke-virtual {v10}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v10

    if-lez v10, :cond_4

    .line 129
    :cond_1
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->flag:Z

    .line 130
    iget-object v10, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x4

    .line 131
    const-wide/16 v12, 0x32

    .line 130
    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 137
    :goto_2
    iget-object v10, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->btn_title:Landroid/widget/RelativeLayout;

    new-instance v11, Lcom/cymobile/ymwork/act/FireServiceReportAct$2;

    invoke-direct {v11, p0}, Lcom/cymobile/ymwork/act/FireServiceReportAct$2;-><init>(Lcom/cymobile/ymwork/act/FireServiceReportAct;)V

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v10, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->btn_Street:Landroid/widget/RelativeLayout;

    new-instance v11, Lcom/cymobile/ymwork/act/FireServiceReportAct$3;

    invoke-direct {v11, p0}, Lcom/cymobile/ymwork/act/FireServiceReportAct$3;-><init>(Lcom/cymobile/ymwork/act/FireServiceReportAct;)V

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 154
    const v11, 0x7f05000e

    .line 153
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 155
    .local v7, streenItme:[Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/String;

    .line 157
    .local v4, mItem:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f05000c

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 159
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    array-length v10, v4

    if-lt v2, v10, :cond_5

    .line 164
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 165
    const v10, 0x1090009

    .line 164
    invoke-direct {v0, p0, v10, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 166
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    new-instance v1, Landroid/widget/ArrayAdapter;

    .line 167
    const v10, 0x1090009

    .line 166
    invoke-direct {v1, p0, v10, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 168
    .local v1, adapter_street:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v10, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 169
    iget-object v10, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->Spinner_Street:Landroid/widget/Spinner;

    invoke-virtual {v10, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 172
    new-instance v5, Lcom/cymobile/ymwork/act/FireServiceReportAct$4;

    invoke-direct {v5, p0, v3}, Lcom/cymobile/ymwork/act/FireServiceReportAct$4;-><init>(Lcom/cymobile/ymwork/act/FireServiceReportAct;Ljava/util/List;)V

    .line 209
    .local v5, oisl2:Landroid/widget/AdapterView$OnItemSelectedListener;,"Landroid/widget/AdapterView$OnItemSelectedListener;"
    new-instance v8, Lcom/cymobile/ymwork/act/FireServiceReportAct$5;

    invoke-direct {v8, p0, v7}, Lcom/cymobile/ymwork/act/FireServiceReportAct$5;-><init>(Lcom/cymobile/ymwork/act/FireServiceReportAct;[Ljava/lang/String;)V

    .line 239
    .local v8, street_oisl:Landroid/widget/AdapterView$OnItemSelectedListener;,"Landroid/widget/AdapterView$OnItemSelectedListener;"
    iget-object v10, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v10, v5}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 240
    iget-object v10, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->Spinner_Street:Landroid/widget/Spinner;

    invoke-virtual {v10, v8}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 241
    return-void

    .line 106
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v1           #adapter_street:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v2           #i:I
    .end local v3           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v4           #mItem:[Ljava/lang/String;
    .end local v5           #oisl2:Landroid/widget/AdapterView$OnItemSelectedListener;,"Landroid/widget/AdapterView$OnItemSelectedListener;"
    .end local v7           #streenItme:[Ljava/lang/String;
    .end local v8           #street_oisl:Landroid/widget/AdapterView$OnItemSelectedListener;,"Landroid/widget/AdapterView$OnItemSelectedListener;"
    .end local v9           #zonecode:Ljava/lang/String;
    :cond_2
    new-instance v10, Lcom/cymobile/ymwork/act/FireServiceReportAct$StateHolder;

    invoke-direct {v10, p0}, Lcom/cymobile/ymwork/act/FireServiceReportAct$StateHolder;-><init>(Lcom/cymobile/ymwork/act/FireServiceReportAct;)V

    iput-object v10, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/FireServiceReportAct$StateHolder;

    goto/16 :goto_0

    .line 120
    :cond_3
    iget-object v10, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->btn_Street:Landroid/widget/RelativeLayout;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 133
    .restart local v9       #zonecode:Ljava/lang/String;
    :cond_4
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->flag:Z

    .line 134
    iget-object v10, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x3

    const-wide/16 v12, 0xa

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_2

    .line 160
    .restart local v2       #i:I
    .restart local v3       #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4       #mItem:[Ljava/lang/String;
    .restart local v7       #streenItme:[Ljava/lang/String;
    :cond_5
    aget-object v6, v4, v2

    .line 161
    .local v6, str:Ljava/lang/String;
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 706
    invoke-super {p0}, Lcom/cymobile/ymwork/widget/LoadableListFragmentWithViewAndHeaderFireReport;->onDestroy()V

    .line 709
    :try_start_0
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->getStateHolder()Lcom/cymobile/ymwork/act/FireServiceReportAct$StateHolder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 710
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->getStateHolder()Lcom/cymobile/ymwork/act/FireServiceReportAct$StateHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/FireServiceReportAct$StateHolder;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 715
    :cond_0
    :goto_0
    return-void

    .line 712
    :catch_0
    move-exception v0

    .line 713
    .local v0, ee:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 700
    invoke-super {p0}, Lcom/cymobile/ymwork/widget/LoadableListFragmentWithViewAndHeaderFireReport;->onPause()V

    .line 701
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 702
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/FireServiceReportAct$StateHolder;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/FireServiceReportAct$StateHolder;->cancel()V

    .line 704
    :cond_0
    return-void
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    const v6, 0x1020004

    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 290
    invoke-virtual {p0, v6}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 291
    .local v0, loadableListHolder:Landroid/widget/LinearLayout;
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 292
    iget-object v2, p0, Lcom/cymobile/ymwork/act/FireServiceReportAct;->layout_report:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 293
    invoke-virtual {p0, v6}, Lcom/cymobile/ymwork/act/FireServiceReportAct;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 295
    .local v1, parent:Landroid/widget/LinearLayout;
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 297
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-le v2, v4, :cond_0

    .line 298
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 300
    :cond_0
    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 301
    return-void
.end method
