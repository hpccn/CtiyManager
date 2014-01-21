.class public Lcom/cymobile/ymwork/act/PublicReportAct;
.super Lcom/cymobile/ymwork/widget/LoadableListFragmentWithViewAndHeaderPublicReport1;
.source "PublicReportAct.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cymobile/ymwork/act/PublicReportAct$GetZoneTask;,
        Lcom/cymobile/ymwork/act/PublicReportAct$StateHolder;,
        Lcom/cymobile/ymwork/act/PublicReportAct$TaskShops;
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

.field private final RANKING_REPORT:I

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

.field private mStateHolder:Lcom/cymobile/ymwork/act/PublicReportAct$StateHolder;

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
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 60
    invoke-direct {p0}, Lcom/cymobile/ymwork/widget/LoadableListFragmentWithViewAndHeaderPublicReport1;-><init>()V

    .line 63
    iput v2, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->RANKING_REPORT:I

    .line 64
    iput v1, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->DISMANTLE_REPORT:I

    .line 65
    iput v1, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->MESSAGE_UPDATE_REPORT:I

    .line 66
    const/4 v0, 0x2

    iput v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->MESSAGE_ISVISIBLE_STREET:I

    .line 69
    const/4 v0, 0x5

    iput v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->MESSAGE_CITY:I

    .line 70
    const/4 v0, 0x6

    iput v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->MESSAGE_STREET:I

    .line 71
    iput v2, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->mark:I

    .line 72
    iput v1, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->STREET_NO:I

    .line 474
    new-instance v0, Lcom/cymobile/ymwork/act/PublicReportAct$1;

    invoke-direct {v0, p0}, Lcom/cymobile/ymwork/act/PublicReportAct$1;-><init>(Lcom/cymobile/ymwork/act/PublicReportAct;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->mHandler:Landroid/os/Handler;

    .line 60
    return-void
.end method

.method static synthetic access$0(Lcom/cymobile/ymwork/act/PublicReportAct;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->renderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    return-void
.end method

.method static synthetic access$1(Lcom/cymobile/ymwork/act/PublicReportAct;Lorg/achartengine/model/XYMultipleSeriesDataset;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->dataset:Lorg/achartengine/model/XYMultipleSeriesDataset;

    return-void
.end method

.method static synthetic access$10(Lcom/cymobile/ymwork/act/PublicReportAct;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->txt_title:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$11(Lcom/cymobile/ymwork/act/PublicReportAct;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->str_list_street:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$12(Lcom/cymobile/ymwork/act/PublicReportAct;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->str_list_item:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$13(Lcom/cymobile/ymwork/act/PublicReportAct;)Lcom/cymobile/ymwork/act/PublicReportAct$StateHolder;
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/PublicReportAct$StateHolder;

    return-object v0
.end method

.method static synthetic access$14(Lcom/cymobile/ymwork/act/PublicReportAct;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->mIsRunningTask:Z

    return-void
.end method

.method static synthetic access$15(Lcom/cymobile/ymwork/act/PublicReportAct;Lcom/cymobile/ymwork/types/BuildingReport;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->mShops:Lcom/cymobile/ymwork/types/BuildingReport;

    return-void
.end method

.method static synthetic access$16(Lcom/cymobile/ymwork/act/PublicReportAct;)Lcom/cymobile/ymwork/types/BuildingReport;
    .locals 1
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->mShops:Lcom/cymobile/ymwork/types/BuildingReport;

    return-object v0
.end method

.method static synthetic access$17(Lcom/cymobile/ymwork/act/PublicReportAct;)Z
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->mIsRunningTask:Z

    return v0
.end method

.method static synthetic access$18(Lcom/cymobile/ymwork/act/PublicReportAct;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->category:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$19(Lcom/cymobile/ymwork/act/PublicReportAct;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->category:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/cymobile/ymwork/act/PublicReportAct;)I
    .locals 1
    .parameter

    .prologue
    .line 71
    iget v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->mark:I

    return v0
.end method

.method static synthetic access$20(Lcom/cymobile/ymwork/act/PublicReportAct;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->userZoneId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$21(Lcom/cymobile/ymwork/act/PublicReportAct;)I
    .locals 1
    .parameter

    .prologue
    .line 72
    iget v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->STREET_NO:I

    return v0
.end method

.method static synthetic access$22(Lcom/cymobile/ymwork/act/PublicReportAct;Lcom/cymobile/ymwork/types/BuildingReport;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 431
    invoke-direct {p0, p1, p2}, Lcom/cymobile/ymwork/act/PublicReportAct;->onTaskComplete(Lcom/cymobile/ymwork/types/BuildingReport;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$23(Lcom/cymobile/ymwork/act/PublicReportAct;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$24(Lcom/cymobile/ymwork/act/PublicReportAct;)Landroid/widget/Spinner;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->mSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$25(Lcom/cymobile/ymwork/act/PublicReportAct;)Landroid/widget/Spinner;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->Spinner_Street:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$26(Lcom/cymobile/ymwork/act/PublicReportAct;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 71
    iput p1, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->mark:I

    return-void
.end method

.method static synthetic access$27(Lcom/cymobile/ymwork/act/PublicReportAct;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->str_list_item:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$28(Lcom/cymobile/ymwork/act/PublicReportAct;)Z
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->flag:Z

    return v0
.end method

.method static synthetic access$29(Lcom/cymobile/ymwork/act/PublicReportAct;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->str_list_street:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Lcom/cymobile/ymwork/act/PublicReportAct;)V
    .locals 0
    .parameter

    .prologue
    .line 578
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/PublicReportAct;->initNames1()V

    return-void
.end method

.method static synthetic access$30(Lcom/cymobile/ymwork/act/PublicReportAct;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->txt_Street:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$31(Lcom/cymobile/ymwork/act/PublicReportAct;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 72
    iput p1, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->STREET_NO:I

    return-void
.end method

.method static synthetic access$32(Lcom/cymobile/ymwork/act/PublicReportAct;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->flag:Z

    return-void
.end method

.method static synthetic access$4(Lcom/cymobile/ymwork/act/PublicReportAct;)V
    .locals 0
    .parameter

    .prologue
    .line 583
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/PublicReportAct;->initNames2()V

    return-void
.end method

.method static synthetic access$5(Lcom/cymobile/ymwork/act/PublicReportAct;)Lorg/achartengine/model/XYMultipleSeriesDataset;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->dataset:Lorg/achartengine/model/XYMultipleSeriesDataset;

    return-object v0
.end method

.method static synthetic access$6(Lcom/cymobile/ymwork/act/PublicReportAct;)Lorg/achartengine/renderer/XYMultipleSeriesRenderer;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->renderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    return-object v0
.end method

.method static synthetic access$7(Lcom/cymobile/ymwork/act/PublicReportAct;Lorg/achartengine/GraphicalView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->mChartView:Lorg/achartengine/GraphicalView;

    return-void
.end method

.method static synthetic access$8(Lcom/cymobile/ymwork/act/PublicReportAct;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->layout_report:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$9(Lcom/cymobile/ymwork/act/PublicReportAct;)Lorg/achartengine/GraphicalView;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->mChartView:Lorg/achartengine/GraphicalView;

    return-object v0
.end method

.method private initNames1()V
    .locals 5

    .prologue
    .line 579
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->mShops:Lcom/cymobile/ymwork/types/BuildingReport;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/BuildingReport;->getItems()Lcom/cymobile/ymwork/types/Group;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 582
    return-void

    .line 580
    :cond_0
    iget-object v2, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->renderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    add-int/lit8 v1, v0, 0x1

    int-to-double v3, v1

    iget-object v1, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->mShops:Lcom/cymobile/ymwork/types/BuildingReport;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/BuildingReport;->getItems()Lcom/cymobile/ymwork/types/Group;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cymobile/ymwork/types/Group;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/types/BuildingReportItem;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/BuildingReportItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->addTextLabel(DLjava/lang/String;)V

    .line 579
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private initNames2()V
    .locals 5

    .prologue
    .line 584
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->mShops:Lcom/cymobile/ymwork/types/BuildingReport;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/BuildingReport;->getAvgs()Lcom/cymobile/ymwork/types/Group;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 587
    return-void

    .line 585
    :cond_0
    iget-object v2, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->renderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    add-int/lit8 v1, v0, 0x1

    int-to-double v3, v1

    iget-object v1, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->mShops:Lcom/cymobile/ymwork/types/BuildingReport;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/BuildingReport;->getAvgs()Lcom/cymobile/ymwork/types/Group;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cymobile/ymwork/types/Group;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/types/ConstrustionFieldAvgItem;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/ConstrustionFieldAvgItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->addTextLabel(DLjava/lang/String;)V

    .line 584
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private onTaskComplete(Lcom/cymobile/ymwork/types/BuildingReport;Ljava/lang/Exception;)V
    .locals 3
    .parameter "report"
    .parameter "ex"

    .prologue
    const/4 v2, 0x0

    .line 432
    iput-boolean v2, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->mIsRunningTask:Z

    .line 433
    invoke-virtual {p0, v2}, Lcom/cymobile/ymwork/act/PublicReportAct;->setProgressBarIndeterminateVisibility(Z)V

    .line 434
    if-eqz p2, :cond_0

    .line 435
    iget-object v1, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 436
    iget-object v1, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->mLayoutEmpty:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/PublicReportAct;->setEmptyView(Landroid/view/View;)V

    .line 444
    :goto_0
    return-void

    .line 438
    :cond_0
    const v1, 0x1020004

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/PublicReportAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 439
    .local v0, loadableListHolder:Landroid/widget/LinearLayout;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 440
    iget-object v1, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->layout_report:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 441
    iput-object p1, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->mShops:Lcom/cymobile/ymwork/types/BuildingReport;

    .line 442
    iget-object v1, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->mHandler:Landroid/os/Handler;

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

    .line 257
    const v4, 0x7f08002d

    invoke-virtual {p0, v4}, Lcom/cymobile/ymwork/act/PublicReportAct;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    .line 258
    .local v3, leftBtn:Landroid/widget/ImageButton;
    new-instance v4, Lcom/cymobile/ymwork/act/PublicReportAct$6;

    invoke-direct {v4, p0}, Lcom/cymobile/ymwork/act/PublicReportAct$6;-><init>(Lcom/cymobile/ymwork/act/PublicReportAct;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 266
    .local v2, inflater:Landroid/view/LayoutInflater;
    invoke-static {}, Lcom/cymobile/ymwork/utils/UiUtil;->sdkVersion()I

    move-result v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_0

    .line 268
    const v4, 0x7f03003d

    .line 267
    invoke-virtual {v2, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ScrollView;

    iput-object v4, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->mLayoutEmpty:Landroid/view/ViewGroup;

    .line 273
    :goto_0
    iget-object v4, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->mLayoutEmpty:Landroid/view/ViewGroup;

    .line 274
    const v5, 0x7f08010f

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 273
    check-cast v0, Landroid/widget/Button;

    .line 275
    .local v0, btnAddFriends:Landroid/widget/Button;
    new-instance v4, Lcom/cymobile/ymwork/act/PublicReportAct$7;

    invoke-direct {v4, p0}, Lcom/cymobile/ymwork/act/PublicReportAct$7;-><init>(Lcom/cymobile/ymwork/act/PublicReportAct;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    iget-object v4, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->mLayoutEmpty:Landroid/view/ViewGroup;

    .line 281
    const v5, 0x7f080110

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 280
    check-cast v1, Landroid/widget/Button;

    .line 282
    .local v1, btnFriendRequests:Landroid/widget/Button;
    new-instance v4, Lcom/cymobile/ymwork/act/PublicReportAct$8;

    invoke-direct {v4, p0}, Lcom/cymobile/ymwork/act/PublicReportAct$8;-><init>(Lcom/cymobile/ymwork/act/PublicReportAct;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    iget-object v4, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->mLayoutEmpty:Landroid/view/ViewGroup;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 289
    invoke-direct {v5, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 287
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 291
    return-void

    .line 271
    .end local v0           #btnAddFriends:Landroid/widget/Button;
    .end local v1           #btnFriendRequests:Landroid/widget/Button;
    :cond_0
    const v4, 0x7f03003e

    .line 270
    invoke-virtual {v2, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ScrollView;

    iput-object v4, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->mLayoutEmpty:Landroid/view/ViewGroup;

    goto :goto_0
.end method

.method public getBarDataset()Lorg/achartengine/model/XYMultipleSeriesDataset;
    .locals 10

    .prologue
    .line 590
    new-instance v3, Lorg/achartengine/model/XYMultipleSeriesDataset;

    invoke-direct {v3}, Lorg/achartengine/model/XYMultipleSeriesDataset;-><init>()V

    .line 591
    .local v3, dataset:Lorg/achartengine/model/XYMultipleSeriesDataset;
    const/4 v0, 0x0

    .line 592
    .local v0, barSeries:Lorg/achartengine/model/CategorySeries;
    iget v6, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->mark:I

    if-nez v6, :cond_2

    .line 593
    new-instance v0, Lorg/achartengine/model/CategorySeries;

    .end local v0           #barSeries:Lorg/achartengine/model/CategorySeries;
    const-string v6, "\u53d1\u6848\u6570"

    invoke-direct {v0, v6}, Lorg/achartengine/model/CategorySeries;-><init>(Ljava/lang/String;)V

    .line 594
    .restart local v0       #barSeries:Lorg/achartengine/model/CategorySeries;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    iget-object v6, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->mShops:Lcom/cymobile/ymwork/types/BuildingReport;

    invoke-virtual {v6}, Lcom/cymobile/ymwork/types/BuildingReport;->getItems()Lcom/cymobile/ymwork/types/Group;

    move-result-object v6

    invoke-virtual {v6}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v6

    if-lt v5, v6, :cond_1

    .line 605
    .end local v5           #i:I
    :cond_0
    invoke-virtual {v0}, Lorg/achartengine/model/CategorySeries;->toXYSeries()Lorg/achartengine/model/XYSeries;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/achartengine/model/XYMultipleSeriesDataset;->addSeries(Lorg/achartengine/model/XYSeries;)V

    .line 606
    return-object v3

    .line 595
    .restart local v5       #i:I
    :cond_1
    iget-object v6, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->mShops:Lcom/cymobile/ymwork/types/BuildingReport;

    invoke-virtual {v6}, Lcom/cymobile/ymwork/types/BuildingReport;->getItems()Lcom/cymobile/ymwork/types/Group;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/cymobile/ymwork/types/Group;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cymobile/ymwork/types/BuildingReportItem;

    invoke-virtual {v6}, Lcom/cymobile/ymwork/types/BuildingReportItem;->getNumber()I

    move-result v6

    int-to-double v6, v6

    invoke-virtual {v0, v6, v7}, Lorg/achartengine/model/CategorySeries;->add(D)V

    .line 594
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 597
    .end local v5           #i:I
    :cond_2
    iget v6, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->mark:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 598
    new-instance v0, Lorg/achartengine/model/CategorySeries;

    .end local v0           #barSeries:Lorg/achartengine/model/CategorySeries;
    const-string v6, "\u7ed3\u6848\u7387"

    invoke-direct {v0, v6}, Lorg/achartengine/model/CategorySeries;-><init>(Ljava/lang/String;)V

    .line 599
    .restart local v0       #barSeries:Lorg/achartengine/model/CategorySeries;
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_1
    iget-object v6, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->mShops:Lcom/cymobile/ymwork/types/BuildingReport;

    invoke-virtual {v6}, Lcom/cymobile/ymwork/types/BuildingReport;->getAvgs()Lcom/cymobile/ymwork/types/Group;

    move-result-object v6

    invoke-virtual {v6}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 600
    iget-object v6, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->mShops:Lcom/cymobile/ymwork/types/BuildingReport;

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

    .line 601
    .local v1, d:D
    new-instance v4, Ljava/text/DecimalFormat;

    const-string v6, "###.0"

    invoke-direct {v4, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 602
    .local v4, df:Ljava/text/DecimalFormat;
    invoke-virtual {v4, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lorg/achartengine/model/CategorySeries;->add(D)V

    .line 599
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method public getBarRenderer()Lorg/achartengine/renderer/XYMultipleSeriesRenderer;
    .locals 14

    .prologue
    .line 610
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/PublicReportAct;->getFilterFragment()Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublic_Report;

    move-result-object v10

    invoke-virtual {v10}, Lcom/cymobile/ymwork/widget/RangeFilterFragmentPublic_Report;->getReportDataSource()Lcom/cymobile/ymwork/adapter/ReportDataSource;

    move-result-object v7

    .line 612
    .local v7, rs:Lcom/cymobile/ymwork/adapter/ReportDataSource;
    invoke-virtual {v7}, Lcom/cymobile/ymwork/adapter/ReportDataSource;->curRange()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v10

    invoke-virtual {v10}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v10

    .line 611
    invoke-static {v10}, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->rangeTypeToPair(I)Lcom/cymobile/ymwork/types/Pair;

    move-result-object v10

    .line 612
    invoke-virtual {v10}, Lcom/cymobile/ymwork/types/Pair;->name()Ljava/lang/String;

    move-result-object v9

    .line 614
    .local v9, str_day:Ljava/lang/String;
    new-instance v6, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-direct {v6}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;-><init>()V

    .line 615
    .local v6, renderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;
    new-instance v8, Lorg/achartengine/renderer/SimpleSeriesRenderer;

    invoke-direct {v8}, Lorg/achartengine/renderer/SimpleSeriesRenderer;-><init>()V

    .line 616
    .local v8, simpleRenderer:Lorg/achartengine/renderer/SimpleSeriesRenderer;
    const/high16 v10, -0x1

    invoke-virtual {v8, v10}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->setColor(I)V

    .line 617
    invoke-virtual {v6, v8}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->addSeriesRenderer(Lorg/achartengine/renderer/SimpleSeriesRenderer;)V

    .line 619
    const/high16 v10, 0x41c0

    invoke-virtual {v6, v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setAxisTitleTextSize(F)V

    .line 620
    const/high16 v10, 0x41e0

    invoke-virtual {v6, v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setChartTitleTextSize(F)V

    .line 621
    const/high16 v10, 0x41c0

    invoke-virtual {v6, v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setLabelsTextSize(F)V

    .line 622
    const/high16 v10, 0x41c0

    invoke-virtual {v6, v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setLegendTextSize(F)V

    .line 623
    const/high16 v10, 0x41c0

    invoke-virtual {v6, v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setChartValuesTextSize(F)V

    .line 625
    const/4 v10, -0x1

    invoke-virtual {v6, v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setAxesColor(I)V

    .line 626
    const/4 v10, -0x1

    invoke-virtual {v6, v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setLabelsColor(I)V

    .line 629
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setApplyBackgroundColor(Z)V

    .line 630
    const/high16 v10, -0x100

    invoke-virtual {v6, v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setBackgroundColor(I)V

    .line 633
    const-wide v10, 0x3fc999999999999aL

    invoke-virtual {v6, v10, v11}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXAxisMin(D)V

    .line 635
    const-wide/high16 v10, 0x3ff0

    invoke-virtual {v6, v10, v11}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setBarSpacing(D)V

    .line 636
    const/4 v4, 0x0

    .line 638
    .local v4, mSize:I
    iget v10, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->mark:I

    if-nez v10, :cond_2

    .line 639
    const-string v10, "\u53d1\u6848\u6570\uff08\u4ef6\uff09"

    invoke-virtual {v6, v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setYTitle(Ljava/lang/String;)V

    .line 640
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->str_address:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\u516c\u4f17\u4e3e\u62a5\u6295\u8bc9\u53d1\u6848\u6570"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 641
    iget-object v11, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->mShops:Lcom/cymobile/ymwork/types/BuildingReport;

    invoke-virtual {v11}, Lcom/cymobile/ymwork/types/BuildingReport;->getNumber_all()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\u4ef6"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 640
    invoke-virtual {v6, v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setChartTitle(Ljava/lang/String;)V

    .line 643
    :try_start_0
    iget-object v10, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->mShops:Lcom/cymobile/ymwork/types/BuildingReport;

    invoke-virtual {v10}, Lcom/cymobile/ymwork/types/BuildingReport;->getItems()Lcom/cymobile/ymwork/types/Group;

    move-result-object v10

    invoke-virtual {v10}, Lcom/cymobile/ymwork/types/Group;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 660
    :cond_0
    :goto_0
    const/16 v10, 0xa

    if-le v4, v10, :cond_3

    .line 661
    const-wide/high16 v10, 0x4025

    invoke-virtual {v6, v10, v11}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXAxisMax(D)V

    .line 670
    :goto_1
    const-wide/16 v10, 0x0

    invoke-virtual {v6, v10, v11}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setYAxisMin(D)V

    .line 671
    iget-object v10, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->mShops:Lcom/cymobile/ymwork/types/BuildingReport;

    invoke-virtual {v10}, Lcom/cymobile/ymwork/types/BuildingReport;->getMaxnum()I

    move-result v0

    .line 672
    .local v0, Maxnum:I
    iget v10, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->mark:I

    if-nez v10, :cond_5

    .line 673
    mul-int/lit8 v10, v0, 0x4

    div-int/lit8 v5, v10, 0x3

    .line 674
    .local v5, max:I
    int-to-double v10, v5

    invoke-virtual {v6, v10, v11}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setYAxisMax(D)V

    .line 679
    .end local v5           #max:I
    :cond_1
    :goto_2
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setZoomButtonsVisible(Z)V

    .line 681
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setZoomEnabled(Z)V

    .line 683
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setAntialiasing(Z)V

    .line 685
    sget-object v10, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXLabelsAlign(Landroid/graphics/Paint$Align;)V

    .line 687
    sget-object v10, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setYLabelsAlign(Landroid/graphics/Paint$Align;)V

    .line 689
    const/4 v10, 0x4

    new-array v10, v10, [I

    fill-array-data v10, :array_0

    invoke-virtual {v6, v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setMargins([I)V

    .line 691
    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v11}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setPanEnabled(ZZ)V

    .line 692
    invoke-virtual {v6}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isPanXEnabled()Z

    .line 694
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getSeriesRendererAt(I)Lorg/achartengine/renderer/SimpleSeriesRenderer;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->setDisplayChartValues(Z)V

    .line 696
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setShowGrid(Z)V

    .line 699
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXLabels(I)V

    .line 701
    const/high16 v10, -0x3e90

    invoke-virtual {v6, v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXLabelsAngle(F)V

    .line 702
    return-object v6

    .line 644
    .end local v0           #Maxnum:I
    :catch_0
    move-exception v3

    .line 645
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 647
    .end local v3           #e:Ljava/lang/Exception;
    :cond_2
    iget v10, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->mark:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    .line 648
    iget-object v10, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->mShops:Lcom/cymobile/ymwork/types/BuildingReport;

    invoke-virtual {v10}, Lcom/cymobile/ymwork/types/BuildingReport;->getAvgsum()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    const-wide/high16 v12, 0x4059

    mul-double v1, v10, v12

    .line 651
    .local v1, d:D
    const-string v10, "\u7ed3\u6848\u7387\uff08%\uff09"

    invoke-virtual {v6, v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setYTitle(Ljava/lang/String;)V

    .line 652
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->str_address:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\u516c\u4f17\u4e3e\u62a5\u6295\u8bc9\u7ed3\u6848\u7387"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 653
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

    .line 652
    invoke-virtual {v6, v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setChartTitle(Ljava/lang/String;)V

    .line 655
    :try_start_1
    iget-object v10, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->mShops:Lcom/cymobile/ymwork/types/BuildingReport;

    invoke-virtual {v10}, Lcom/cymobile/ymwork/types/BuildingReport;->getAvgs()Lcom/cymobile/ymwork/types/Group;

    move-result-object v10

    invoke-virtual {v10}, Lcom/cymobile/ymwork/types/Group;->size()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    goto/16 :goto_0

    .line 656
    :catch_1
    move-exception v3

    .line 657
    .restart local v3       #e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 662
    .end local v1           #d:D
    .end local v3           #e:Ljava/lang/Exception;
    :cond_3
    const/4 v10, 0x1

    if-ne v4, v10, :cond_4

    .line 663
    int-to-double v10, v4

    const-wide/high16 v12, 0x3fe0

    add-double/2addr v10, v12

    invoke-virtual {v6, v10, v11}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXAxisMax(D)V

    .line 664
    const/high16 v10, 0x41f0

    invoke-virtual {v6, v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setBarWidth(F)V

    goto/16 :goto_1

    .line 666
    :cond_4
    int-to-double v10, v4

    const-wide/high16 v12, 0x3fe0

    add-double/2addr v10, v12

    invoke-virtual {v6, v10, v11}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXAxisMax(D)V

    goto/16 :goto_1

    .line 675
    .restart local v0       #Maxnum:I
    :cond_5
    iget v10, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->mark:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    .line 676
    const-wide v10, 0x405b800000000000L

    invoke-virtual {v6, v10, v11}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setYAxisMax(D)V

    goto/16 :goto_2

    .line 689
    nop

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
    .line 248
    :try_start_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/PublicReportAct$StateHolder;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/PublicReportAct$StateHolder;->getIsRunningTask()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 249
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/PublicReportAct;->getStateHolder()Lcom/cymobile/ymwork/act/PublicReportAct$StateHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/PublicReportAct$StateHolder;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getQueryTitle()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 447
    const-class v0, Lcom/cymobile/ymwork/SettingBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 448
    const/4 v1, 0x2

    .line 447
    invoke-virtual {p0, v0, v1}, Lcom/cymobile/ymwork/act/PublicReportAct;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->mPrefs:Landroid/content/SharedPreferences;

    .line 449
    iget-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "key_GlobalZoneId"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->userZoneId:Ljava/lang/String;

    .line 450
    iget-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "key_GlobalZoneName"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->userZoneName:Ljava/lang/String;

    .line 452
    iget-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->userZoneId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 453
    iget-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->userZoneId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x6

    if-ne v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/PublicReportAct;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f090078

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 452
    :goto_0
    invoke-static {v1, v2, v0}, Lcom/cymobile/ymwork/adapter/ReportDataSource;->resetTOPCategory(JLjava/lang/String;)V

    .line 454
    return-void

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->userZoneName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getStateHolder()Lcom/cymobile/ymwork/act/PublicReportAct$StateHolder;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/PublicReportAct$StateHolder;

    return-object v0
.end method

.method public getTxt_title()V
    .locals 3

    .prologue
    .line 457
    iget-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->category:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 458
    iget v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->STREET_NO:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 459
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/PublicReportAct;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 460
    const v1, 0x7f0900d1

    .line 459
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->str_address:Ljava/lang/String;

    .line 465
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->txt_title:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->str_address:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->str_list_item:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 466
    iget-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->btn_Street:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 472
    :goto_1
    return-void

    .line 461
    :cond_1
    iget v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->STREET_NO:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 462
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/PublicReportAct;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 463
    const v1, 0x7f0900eb

    .line 462
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->str_address:Ljava/lang/String;

    goto :goto_0

    .line 468
    :cond_2
    sget-object v0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->street_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->str_address:Ljava/lang/String;

    .line 469
    iget-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->txt_title:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->str_address:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->str_list_item:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 470
    iget-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->btn_Street:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    .line 95
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/cymobile/ymwork/act/PublicReportAct;->requestWindowFeature(I)Z

    .line 96
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/PublicReportAct;->getQueryTitle()V

    .line 97
    const v10, 0x7f030027

    invoke-virtual {p0, v10}, Lcom/cymobile/ymwork/act/PublicReportAct;->setContentView(I)V

    .line 98
    invoke-super {p0, p1}, Lcom/cymobile/ymwork/widget/LoadableListFragmentWithViewAndHeaderPublicReport1;->onCreate(Landroid/os/Bundle;)V

    .line 99
    iput-object p0, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->contexts:Landroid/content/Context;

    .line 100
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/PublicReportAct;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 101
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/PublicReportAct;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/cymobile/ymwork/act/PublicReportAct$StateHolder;

    iput-object v10, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/PublicReportAct$StateHolder;

    .line 102
    iget-object v10, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/PublicReportAct$StateHolder;

    invoke-virtual {v10, p0}, Lcom/cymobile/ymwork/act/PublicReportAct$StateHolder;->setActivity(Lcom/cymobile/ymwork/act/PublicReportAct;)V

    .line 106
    :goto_0
    const v10, 0x7f0800a5

    invoke-virtual {p0, v10}, Lcom/cymobile/ymwork/act/PublicReportAct;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    iput-object v10, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->layout_report:Landroid/widget/LinearLayout;

    .line 107
    const v10, 0x7f080032

    invoke-virtual {p0, v10}, Lcom/cymobile/ymwork/act/PublicReportAct;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout;

    iput-object v10, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->btn_title:Landroid/widget/RelativeLayout;

    .line 108
    const v10, 0x7f080035

    invoke-virtual {p0, v10}, Lcom/cymobile/ymwork/act/PublicReportAct;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout;

    iput-object v10, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->btn_Street:Landroid/widget/RelativeLayout;

    .line 109
    const v10, 0x7f080033

    invoke-virtual {p0, v10}, Lcom/cymobile/ymwork/act/PublicReportAct;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->txt_title:Landroid/widget/TextView;

    .line 110
    const v10, 0x7f080036

    invoke-virtual {p0, v10}, Lcom/cymobile/ymwork/act/PublicReportAct;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->txt_Street:Landroid/widget/TextView;

    .line 111
    const v10, 0x7f080034

    invoke-virtual {p0, v10}, Lcom/cymobile/ymwork/act/PublicReportAct;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Spinner;

    iput-object v10, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->mSpinner:Landroid/widget/Spinner;

    .line 112
    const v10, 0x7f080037

    invoke-virtual {p0, v10}, Lcom/cymobile/ymwork/act/PublicReportAct;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Spinner;

    iput-object v10, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->Spinner_Street:Landroid/widget/Spinner;

    .line 113
    iget-object v10, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v10}, Landroid/widget/Spinner;->showContextMenu()Z

    .line 114
    iget-object v10, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->Spinner_Street:Landroid/widget/Spinner;

    invoke-virtual {v10}, Landroid/widget/Spinner;->showContextMenu()Z

    .line 115
    iget-object v10, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->userZoneId:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x6

    if-ne v10, v11, :cond_3

    .line 116
    iget-object v10, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->btn_Street:Landroid/widget/RelativeLayout;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 120
    :goto_1
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/PublicReportAct;->ensureUi()V

    .line 121
    iget-object v10, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->mPrefs:Landroid/content/SharedPreferences;

    const-string v11, "key_GlobalZoneId"

    .line 122
    const/4 v12, 0x0

    .line 121
    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 123
    .local v9, zonecode:Ljava/lang/String;
    if-eqz v9, :cond_0

    .line 124
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0xc

    if-eq v10, v11, :cond_1

    .line 125
    :cond_0
    invoke-static {}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getSubZone()Lcom/cymobile/ymwork/types/Group;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 126
    invoke-static {}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getSubZone()Lcom/cymobile/ymwork/types/Group;

    move-result-object v10

    invoke-virtual {v10}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v10

    if-lez v10, :cond_4

    .line 127
    :cond_1
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->flag:Z

    .line 128
    iget-object v10, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x4

    .line 129
    const-wide/16 v12, 0x32

    .line 128
    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 135
    :goto_2
    iget-object v10, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->btn_title:Landroid/widget/RelativeLayout;

    new-instance v11, Lcom/cymobile/ymwork/act/PublicReportAct$2;

    invoke-direct {v11, p0}, Lcom/cymobile/ymwork/act/PublicReportAct$2;-><init>(Lcom/cymobile/ymwork/act/PublicReportAct;)V

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v10, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->btn_Street:Landroid/widget/RelativeLayout;

    new-instance v11, Lcom/cymobile/ymwork/act/PublicReportAct$3;

    invoke-direct {v11, p0}, Lcom/cymobile/ymwork/act/PublicReportAct$3;-><init>(Lcom/cymobile/ymwork/act/PublicReportAct;)V

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/PublicReportAct;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 152
    const v11, 0x7f05000e

    .line 151
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 153
    .local v7, streenItme:[Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/String;

    .line 155
    .local v4, mItem:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/PublicReportAct;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f05000d

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 157
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    array-length v10, v4

    if-lt v2, v10, :cond_5

    .line 168
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 169
    const v10, 0x1090009

    .line 168
    invoke-direct {v0, p0, v10, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 170
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    new-instance v1, Landroid/widget/ArrayAdapter;

    .line 171
    const v10, 0x1090009

    .line 170
    invoke-direct {v1, p0, v10, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 172
    .local v1, adapter_street:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v10, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 173
    iget-object v10, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->Spinner_Street:Landroid/widget/Spinner;

    invoke-virtual {v10, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 176
    new-instance v5, Lcom/cymobile/ymwork/act/PublicReportAct$4;

    invoke-direct {v5, p0, v3}, Lcom/cymobile/ymwork/act/PublicReportAct$4;-><init>(Lcom/cymobile/ymwork/act/PublicReportAct;Ljava/util/List;)V

    .line 213
    .local v5, oisl2:Landroid/widget/AdapterView$OnItemSelectedListener;,"Landroid/widget/AdapterView$OnItemSelectedListener;"
    new-instance v8, Lcom/cymobile/ymwork/act/PublicReportAct$5;

    invoke-direct {v8, p0, v7}, Lcom/cymobile/ymwork/act/PublicReportAct$5;-><init>(Lcom/cymobile/ymwork/act/PublicReportAct;[Ljava/lang/String;)V

    .line 243
    .local v8, street_oisl:Landroid/widget/AdapterView$OnItemSelectedListener;,"Landroid/widget/AdapterView$OnItemSelectedListener;"
    iget-object v10, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v10, v5}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 244
    iget-object v10, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->Spinner_Street:Landroid/widget/Spinner;

    invoke-virtual {v10, v8}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 245
    return-void

    .line 104
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
    new-instance v10, Lcom/cymobile/ymwork/act/PublicReportAct$StateHolder;

    invoke-direct {v10, p0}, Lcom/cymobile/ymwork/act/PublicReportAct$StateHolder;-><init>(Lcom/cymobile/ymwork/act/PublicReportAct;)V

    iput-object v10, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/PublicReportAct$StateHolder;

    goto/16 :goto_0

    .line 118
    :cond_3
    iget-object v10, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->btn_Street:Landroid/widget/RelativeLayout;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 131
    .restart local v9       #zonecode:Ljava/lang/String;
    :cond_4
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->flag:Z

    .line 132
    iget-object v10, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x3

    const-wide/16 v12, 0xa

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_2

    .line 158
    .restart local v2       #i:I
    .restart local v3       #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4       #mItem:[Ljava/lang/String;
    .restart local v7       #streenItme:[Ljava/lang/String;
    :cond_5
    const/4 v6, 0x0

    .line 159
    .local v6, str:Ljava/lang/String;
    aget-object v6, v4, v2

    .line 165
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 713
    invoke-super {p0}, Lcom/cymobile/ymwork/widget/LoadableListFragmentWithViewAndHeaderPublicReport1;->onDestroy()V

    .line 716
    :try_start_0
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/PublicReportAct;->getStateHolder()Lcom/cymobile/ymwork/act/PublicReportAct$StateHolder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 717
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/PublicReportAct;->getStateHolder()Lcom/cymobile/ymwork/act/PublicReportAct$StateHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/PublicReportAct$StateHolder;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 722
    :cond_0
    :goto_0
    return-void

    .line 719
    :catch_0
    move-exception v0

    .line 720
    .local v0, ee:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 707
    invoke-super {p0}, Lcom/cymobile/ymwork/widget/LoadableListFragmentWithViewAndHeaderPublicReport1;->onPause()V

    .line 708
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/PublicReportAct;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 709
    iget-object v0, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/PublicReportAct$StateHolder;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/PublicReportAct$StateHolder;->cancel()V

    .line 711
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

    .line 294
    invoke-virtual {p0, v6}, Lcom/cymobile/ymwork/act/PublicReportAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 295
    .local v0, loadableListHolder:Landroid/widget/LinearLayout;
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 296
    iget-object v2, p0, Lcom/cymobile/ymwork/act/PublicReportAct;->layout_report:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 297
    invoke-virtual {p0, v6}, Lcom/cymobile/ymwork/act/PublicReportAct;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 299
    .local v1, parent:Landroid/widget/LinearLayout;
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 301
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-le v2, v4, :cond_0

    .line 302
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 304
    :cond_0
    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 305
    return-void
.end method
