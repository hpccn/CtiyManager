.class public Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;
.super Lcom/cymobile/ymwork/widget/LoadableListFragmentWithViewAndHeaderConstructionReport;
.source "ConstrustionFieldReportAct.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$GetZoneTask;,
        Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$StateHolder;,
        Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$TaskShops;
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

.field private mStateHolder:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$StateHolder;

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
    invoke-direct {p0}, Lcom/cymobile/ymwork/widget/LoadableListFragmentWithViewAndHeaderConstructionReport;-><init>()V

    .line 63
    iput v2, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->RANKING_REPORT:I

    .line 64
    iput v1, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->DISMANTLE_REPORT:I

    .line 65
    iput v3, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->PROCEDURES_SETTLEMENT_REPORT:I

    .line 66
    const/4 v0, 0x3

    iput v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->REVERSION_REPORT:I

    .line 67
    iput v1, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->MESSAGE_UPDATE_REPORT:I

    .line 68
    iput v3, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->MESSAGE_ISVISIBLE_STREET:I

    .line 71
    const/4 v0, 0x5

    iput v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->MESSAGE_CITY:I

    .line 72
    const/4 v0, 0x6

    iput v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->MESSAGE_STREET:I

    .line 73
    iput v2, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->mark:I

    .line 74
    iput v1, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->STREET_NO:I

    .line 493
    new-instance v0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$1;

    invoke-direct {v0, p0}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$1;-><init>(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->mHandler:Landroid/os/Handler;

    .line 60
    return-void
.end method

.method static synthetic access$0(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->renderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    return-void
.end method

.method static synthetic access$1(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;Lorg/achartengine/model/XYMultipleSeriesDataset;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->dataset:Lorg/achartengine/model/XYMultipleSeriesDataset;

    return-void
.end method

.method static synthetic access$10(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)Lorg/achartengine/GraphicalView;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->mChartView:Lorg/achartengine/GraphicalView;

    return-object v0
.end method

.method static synthetic access$11(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->txt_title:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$12(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->str_list_street:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$13(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->str_list_item:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$14(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$StateHolder;
    .locals 1
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$StateHolder;

    return-object v0
.end method

.method static synthetic access$15(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->mIsRunningTask:Z

    return-void
.end method

.method static synthetic access$16(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;Lcom/cymobile/ymwork/types/BuildingReport;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->mShops:Lcom/cymobile/ymwork/types/BuildingReport;

    return-void
.end method

.method static synthetic access$17(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)Lcom/cymobile/ymwork/types/BuildingReport;
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->mShops:Lcom/cymobile/ymwork/types/BuildingReport;

    return-object v0
.end method

.method static synthetic access$18(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)Z
    .locals 1
    .parameter

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->mIsRunningTask:Z

    return v0
.end method

.method static synthetic access$19(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->category:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)I
    .locals 1
    .parameter

    .prologue
    .line 73
    iget v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->mark:I

    return v0
.end method

.method static synthetic access$20(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->category:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$21(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->userZoneId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$22(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)I
    .locals 1
    .parameter

    .prologue
    .line 74
    iget v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->STREET_NO:I

    return v0
.end method

.method static synthetic access$23(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;Lcom/cymobile/ymwork/types/BuildingReport;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 450
    invoke-direct {p0, p1, p2}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->onTaskComplete(Lcom/cymobile/ymwork/types/BuildingReport;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$24(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$25(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)Landroid/widget/Spinner;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->mSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$26(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)Landroid/widget/Spinner;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->Spinner_Street:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$27(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    iput p1, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->mark:I

    return-void
.end method

.method static synthetic access$28(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->str_list_item:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$29(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)Z
    .locals 1
    .parameter

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->flag:Z

    return v0
.end method

.method static synthetic access$3(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)V
    .locals 0
    .parameter

    .prologue
    .line 599
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->initNames1()V

    return-void
.end method

.method static synthetic access$30(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->str_list_street:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$31(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->txt_Street:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$32(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 74
    iput p1, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->STREET_NO:I

    return-void
.end method

.method static synthetic access$33(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->flag:Z

    return-void
.end method

.method static synthetic access$4(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)V
    .locals 0
    .parameter

    .prologue
    .line 604
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->initNames2()V

    return-void
.end method

.method static synthetic access$5(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)V
    .locals 0
    .parameter

    .prologue
    .line 618
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->initNames4()V

    return-void
.end method

.method static synthetic access$6(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)Lorg/achartengine/model/XYMultipleSeriesDataset;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->dataset:Lorg/achartengine/model/XYMultipleSeriesDataset;

    return-object v0
.end method

.method static synthetic access$7(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)Lorg/achartengine/renderer/XYMultipleSeriesRenderer;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->renderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    return-object v0
.end method

.method static synthetic access$8(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;Lorg/achartengine/GraphicalView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->mChartView:Lorg/achartengine/GraphicalView;

    return-void
.end method

.method static synthetic access$9(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->layout_report:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private initNames1()V
    .locals 5

    .prologue
    .line 600
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->mShops:Lcom/cymobile/ymwork/types/BuildingReport;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/BuildingReport;->getItems()Lcom/cymobile/ymwork/types/Group;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 603
    return-void

    .line 601
    :cond_0
    iget-object v2, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->renderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    add-int/lit8 v1, v0, 0x1

    int-to-double v3, v1

    iget-object v1, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->mShops:Lcom/cymobile/ymwork/types/BuildingReport;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/BuildingReport;->getItems()Lcom/cymobile/ymwork/types/Group;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cymobile/ymwork/types/Group;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/types/BuildingReportItem;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/BuildingReportItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->addTextLabel(DLjava/lang/String;)V

    .line 600
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private initNames2()V
    .locals 10

    .prologue
    const/16 v9, 0x12

    .line 605
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v5, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->mShops:Lcom/cymobile/ymwork/types/BuildingReport;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/BuildingReport;->getItems()Lcom/cymobile/ymwork/types/Group;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v5

    if-lt v2, v5, :cond_0

    .line 617
    return-void

    .line 606
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->mShops:Lcom/cymobile/ymwork/types/BuildingReport;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/BuildingReport;->getItems()Lcom/cymobile/ymwork/types/Group;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/cymobile/ymwork/types/Group;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cymobile/ymwork/types/BuildingReportItem;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/BuildingReportItem;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " - "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->mShops:Lcom/cymobile/ymwork/types/BuildingReport;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/BuildingReport;->getItems()Lcom/cymobile/ymwork/types/Group;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/cymobile/ymwork/types/Group;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cymobile/ymwork/types/BuildingReportItem;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/BuildingReportItem;->getUnitname()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 607
    .local v3, reportName:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 608
    .local v0, buffer:Ljava/lang/StringBuffer;
    const-string v4, "\n"

    .line 609
    .local v4, ss:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x6

    if-le v5, v6, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v9, :cond_2

    .line 610
    iget-object v5, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->renderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    add-int/lit8 v6, v2, 0x1

    int-to-double v6, v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    invoke-virtual {v0, v8, v4}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->addTextLabel(DLjava/lang/String;)V

    .line 605
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 611
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v9, :cond_1

    .line 612
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    div-int/lit8 v5, v5, 0x3

    invoke-virtual {v0, v5, v4}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 613
    .local v1, buffer2:Ljava/lang/StringBuffer;
    iget-object v5, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->renderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    add-int/lit8 v6, v2, 0x1

    int-to-double v6, v6

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    div-int/lit8 v8, v8, 0x3

    mul-int/lit8 v8, v8, 0x2

    invoke-virtual {v0, v8, v4}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->addTextLabel(DLjava/lang/String;)V

    goto :goto_1
.end method

.method private initNames4()V
    .locals 5

    .prologue
    .line 619
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->mShops:Lcom/cymobile/ymwork/types/BuildingReport;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/BuildingReport;->getAvgs()Lcom/cymobile/ymwork/types/Group;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 622
    return-void

    .line 620
    :cond_0
    iget-object v2, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->renderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    add-int/lit8 v1, v0, 0x1

    int-to-double v3, v1

    iget-object v1, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->mShops:Lcom/cymobile/ymwork/types/BuildingReport;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/BuildingReport;->getAvgs()Lcom/cymobile/ymwork/types/Group;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cymobile/ymwork/types/Group;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/types/ConstrustionFieldAvgItem;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/ConstrustionFieldAvgItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->addTextLabel(DLjava/lang/String;)V

    .line 619
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private onTaskComplete(Lcom/cymobile/ymwork/types/BuildingReport;Ljava/lang/Exception;)V
    .locals 3
    .parameter "report"
    .parameter "ex"

    .prologue
    const/4 v2, 0x0

    .line 451
    iput-boolean v2, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->mIsRunningTask:Z

    .line 452
    invoke-virtual {p0, v2}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->setProgressBarIndeterminateVisibility(Z)V

    .line 453
    if-eqz p2, :cond_0

    .line 454
    iget-object v1, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 455
    iget-object v1, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->mLayoutEmpty:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->setEmptyView(Landroid/view/View;)V

    .line 463
    :goto_0
    return-void

    .line 457
    :cond_0
    const v1, 0x1020004

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 458
    .local v0, loadableListHolder:Landroid/widget/LinearLayout;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 459
    iget-object v1, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->layout_report:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 460
    iput-object p1, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->mShops:Lcom/cymobile/ymwork/types/BuildingReport;

    .line 461
    iget-object v1, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->mHandler:Landroid/os/Handler;

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

    .line 271
    const v4, 0x7f08002d

    invoke-virtual {p0, v4}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    .line 272
    .local v3, leftBtn:Landroid/widget/ImageButton;
    new-instance v4, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$6;

    invoke-direct {v4, p0}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$6;-><init>(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 280
    .local v2, inflater:Landroid/view/LayoutInflater;
    invoke-static {}, Lcom/cymobile/ymwork/utils/UiUtil;->sdkVersion()I

    move-result v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_0

    .line 282
    const v4, 0x7f03003d

    .line 281
    invoke-virtual {v2, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ScrollView;

    iput-object v4, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->mLayoutEmpty:Landroid/view/ViewGroup;

    .line 287
    :goto_0
    iget-object v4, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->mLayoutEmpty:Landroid/view/ViewGroup;

    .line 288
    const v5, 0x7f08010f

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 287
    check-cast v0, Landroid/widget/Button;

    .line 289
    .local v0, btnAddFriends:Landroid/widget/Button;
    new-instance v4, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$7;

    invoke-direct {v4, p0}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$7;-><init>(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    iget-object v4, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->mLayoutEmpty:Landroid/view/ViewGroup;

    .line 295
    const v5, 0x7f080110

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 294
    check-cast v1, Landroid/widget/Button;

    .line 296
    .local v1, btnFriendRequests:Landroid/widget/Button;
    new-instance v4, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$8;

    invoke-direct {v4, p0}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$8;-><init>(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    iget-object v4, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->mLayoutEmpty:Landroid/view/ViewGroup;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 303
    invoke-direct {v5, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 301
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 305
    return-void

    .line 285
    .end local v0           #btnAddFriends:Landroid/widget/Button;
    .end local v1           #btnFriendRequests:Landroid/widget/Button;
    :cond_0
    const v4, 0x7f03003e

    .line 284
    invoke-virtual {v2, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ScrollView;

    iput-object v4, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->mLayoutEmpty:Landroid/view/ViewGroup;

    goto :goto_0
.end method

.method public getBarDataset()Lorg/achartengine/model/XYMultipleSeriesDataset;
    .locals 5

    .prologue
    .line 624
    new-instance v1, Lorg/achartengine/model/XYMultipleSeriesDataset;

    invoke-direct {v1}, Lorg/achartengine/model/XYMultipleSeriesDataset;-><init>()V

    .line 625
    .local v1, dataset:Lorg/achartengine/model/XYMultipleSeriesDataset;
    new-instance v0, Lorg/achartengine/model/CategorySeries;

    const-string v3, "\u53d1\u6848\u6570"

    invoke-direct {v0, v3}, Lorg/achartengine/model/CategorySeries;-><init>(Ljava/lang/String;)V

    .line 626
    .local v0, barSeries:Lorg/achartengine/model/CategorySeries;
    iget v3, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->mark:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->mark:I

    if-nez v3, :cond_3

    .line 627
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v3, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->mShops:Lcom/cymobile/ymwork/types/BuildingReport;

    invoke-virtual {v3}, Lcom/cymobile/ymwork/types/BuildingReport;->getItems()Lcom/cymobile/ymwork/types/Group;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v3

    if-lt v2, v3, :cond_2

    .line 636
    .end local v2           #i:I
    :cond_1
    invoke-virtual {v0}, Lorg/achartengine/model/CategorySeries;->toXYSeries()Lorg/achartengine/model/XYSeries;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/achartengine/model/XYMultipleSeriesDataset;->addSeries(Lorg/achartengine/model/XYSeries;)V

    .line 637
    return-object v1

    .line 628
    .restart local v2       #i:I
    :cond_2
    iget-object v3, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->mShops:Lcom/cymobile/ymwork/types/BuildingReport;

    invoke-virtual {v3}, Lcom/cymobile/ymwork/types/BuildingReport;->getItems()Lcom/cymobile/ymwork/types/Group;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/cymobile/ymwork/types/Group;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cymobile/ymwork/types/BuildingReportItem;

    invoke-virtual {v3}, Lcom/cymobile/ymwork/types/BuildingReportItem;->getNumber()I

    move-result v3

    int-to-double v3, v3

    invoke-virtual {v0, v3, v4}, Lorg/achartengine/model/CategorySeries;->add(D)V

    .line 627
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 630
    .end local v2           #i:I
    :cond_3
    iget v3, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->mark:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 631
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1
    iget-object v3, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->mShops:Lcom/cymobile/ymwork/types/BuildingReport;

    invoke-virtual {v3}, Lcom/cymobile/ymwork/types/BuildingReport;->getAvgs()Lcom/cymobile/ymwork/types/Group;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 632
    iget-object v3, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->mShops:Lcom/cymobile/ymwork/types/BuildingReport;

    invoke-virtual {v3}, Lcom/cymobile/ymwork/types/BuildingReport;->getAvgs()Lcom/cymobile/ymwork/types/Group;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/cymobile/ymwork/types/Group;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cymobile/ymwork/types/ConstrustionFieldAvgItem;

    invoke-virtual {v3}, Lcom/cymobile/ymwork/types/ConstrustionFieldAvgItem;->getAvg()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lorg/achartengine/model/CategorySeries;->add(D)V

    .line 631
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public getBarRenderer()Lorg/achartengine/renderer/XYMultipleSeriesRenderer;
    .locals 13

    .prologue
    .line 641
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->getFilterFragment()Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstructionReport;

    move-result-object v9

    invoke-virtual {v9}, Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstructionReport;->getReportDataSource()Lcom/cymobile/ymwork/adapter/ReportDataSource;

    move-result-object v6

    .line 643
    .local v6, rs:Lcom/cymobile/ymwork/adapter/ReportDataSource;
    invoke-virtual {v6}, Lcom/cymobile/ymwork/adapter/ReportDataSource;->curRange()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v9

    invoke-virtual {v9}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v9

    .line 642
    invoke-static {v9}, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->rangeTypeToPair(I)Lcom/cymobile/ymwork/types/Pair;

    move-result-object v9

    .line 643
    invoke-virtual {v9}, Lcom/cymobile/ymwork/types/Pair;->name()Ljava/lang/String;

    move-result-object v8

    .line 645
    .local v8, str_day:Ljava/lang/String;
    new-instance v5, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-direct {v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;-><init>()V

    .line 646
    .local v5, renderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;
    new-instance v7, Lorg/achartengine/renderer/SimpleSeriesRenderer;

    invoke-direct {v7}, Lorg/achartengine/renderer/SimpleSeriesRenderer;-><init>()V

    .line 647
    .local v7, simpleRenderer:Lorg/achartengine/renderer/SimpleSeriesRenderer;
    const/high16 v9, -0x1

    invoke-virtual {v7, v9}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->setColor(I)V

    .line 648
    invoke-virtual {v5, v7}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->addSeriesRenderer(Lorg/achartengine/renderer/SimpleSeriesRenderer;)V

    .line 651
    const-string v9, "\u53d1\u6848\u6570\uff08\u4ef6\uff09"

    invoke-virtual {v5, v9}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setYTitle(Ljava/lang/String;)V

    .line 652
    const/high16 v9, 0x41c0

    invoke-virtual {v5, v9}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setAxisTitleTextSize(F)V

    .line 653
    const/high16 v9, 0x41e0

    invoke-virtual {v5, v9}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setChartTitleTextSize(F)V

    .line 654
    const/high16 v9, 0x41c0

    invoke-virtual {v5, v9}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setLabelsTextSize(F)V

    .line 655
    const/high16 v9, 0x41c0

    invoke-virtual {v5, v9}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setLegendTextSize(F)V

    .line 656
    const/high16 v9, 0x41c0

    invoke-virtual {v5, v9}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setChartValuesTextSize(F)V

    .line 658
    const/4 v9, -0x1

    invoke-virtual {v5, v9}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setAxesColor(I)V

    .line 659
    const/4 v9, -0x1

    invoke-virtual {v5, v9}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setLabelsColor(I)V

    .line 662
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setApplyBackgroundColor(Z)V

    .line 663
    const/high16 v9, -0x100

    invoke-virtual {v5, v9}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setBackgroundColor(I)V

    .line 666
    const-wide v9, 0x3fc999999999999aL

    invoke-virtual {v5, v9, v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXAxisMin(D)V

    .line 668
    const-wide/high16 v9, 0x3ff0

    invoke-virtual {v5, v9, v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setBarSpacing(D)V

    .line 669
    const/4 v4, 0x0

    .line 671
    .local v4, mSize:I
    iget v9, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->mark:I

    if-nez v9, :cond_3

    .line 672
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->str_address:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\u571f\u65b9\u5de5\u5730\u53d1\u6848\u6570"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 673
    iget-object v10, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->mShops:Lcom/cymobile/ymwork/types/BuildingReport;

    invoke-virtual {v10}, Lcom/cymobile/ymwork/types/BuildingReport;->getNumber_all()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\u4ef6"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 672
    invoke-virtual {v5, v9}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setChartTitle(Ljava/lang/String;)V

    .line 675
    :try_start_0
    iget-object v9, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->mShops:Lcom/cymobile/ymwork/types/BuildingReport;

    invoke-virtual {v9}, Lcom/cymobile/ymwork/types/BuildingReport;->getItems()Lcom/cymobile/ymwork/types/Group;

    move-result-object v9

    invoke-virtual {v9}, Lcom/cymobile/ymwork/types/Group;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 679
    :goto_0
    const/16 v9, 0xa

    if-le v4, v9, :cond_1

    .line 680
    const-wide/high16 v9, 0x4025

    invoke-virtual {v5, v9, v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXAxisMax(D)V

    .line 723
    :cond_0
    :goto_1
    const-wide/16 v9, 0x0

    invoke-virtual {v5, v9, v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setYAxisMin(D)V

    .line 724
    iget-object v9, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->mShops:Lcom/cymobile/ymwork/types/BuildingReport;

    invoke-virtual {v9}, Lcom/cymobile/ymwork/types/BuildingReport;->getMaxnum()I

    move-result v9

    mul-int/lit8 v9, v9, 0x4

    div-int/lit8 v0, v9, 0x3

    .line 736
    .local v0, Maxnum:I
    int-to-double v9, v0

    invoke-virtual {v5, v9, v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setYAxisMax(D)V

    .line 738
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setZoomButtonsVisible(Z)V

    .line 740
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setZoomEnabled(Z)V

    .line 742
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setAntialiasing(Z)V

    .line 744
    sget-object v9, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v9}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXLabelsAlign(Landroid/graphics/Paint$Align;)V

    .line 746
    sget-object v9, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v9}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setYLabelsAlign(Landroid/graphics/Paint$Align;)V

    .line 748
    const/4 v9, 0x4

    new-array v9, v9, [I

    fill-array-data v9, :array_0

    invoke-virtual {v5, v9}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setMargins([I)V

    .line 750
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setPanEnabled(ZZ)V

    .line 751
    invoke-virtual {v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isPanXEnabled()Z

    .line 753
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getSeriesRendererAt(I)Lorg/achartengine/renderer/SimpleSeriesRenderer;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->setDisplayChartValues(Z)V

    .line 755
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setShowGrid(Z)V

    .line 758
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXLabels(I)V

    .line 760
    const/high16 v9, -0x3e90

    invoke-virtual {v5, v9}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXLabelsAngle(F)V

    .line 761
    return-object v5

    .line 676
    .end local v0           #Maxnum:I
    :catch_0
    move-exception v3

    .line 677
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 681
    .end local v3           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v9, 0x1

    if-ne v4, v9, :cond_2

    .line 682
    int-to-double v9, v4

    const-wide/high16 v11, 0x3fe0

    add-double/2addr v9, v11

    invoke-virtual {v5, v9, v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXAxisMax(D)V

    .line 683
    const/high16 v9, 0x41f0

    invoke-virtual {v5, v9}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setBarWidth(F)V

    goto :goto_1

    .line 685
    :cond_2
    int-to-double v9, v4

    const-wide/high16 v11, 0x3fe0

    add-double/2addr v9, v11

    invoke-virtual {v5, v9, v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXAxisMax(D)V

    goto :goto_1

    .line 687
    :cond_3
    iget v9, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->mark:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_6

    .line 688
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->str_address:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\u5de5\u5730\u53d1\u6848\u6570"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 689
    iget-object v10, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->mShops:Lcom/cymobile/ymwork/types/BuildingReport;

    invoke-virtual {v10}, Lcom/cymobile/ymwork/types/BuildingReport;->getNumber_all()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\u4ef6"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 688
    invoke-virtual {v5, v9}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setChartTitle(Ljava/lang/String;)V

    .line 691
    :try_start_1
    iget-object v9, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->mShops:Lcom/cymobile/ymwork/types/BuildingReport;

    invoke-virtual {v9}, Lcom/cymobile/ymwork/types/BuildingReport;->getItems()Lcom/cymobile/ymwork/types/Group;

    move-result-object v9

    invoke-virtual {v9}, Lcom/cymobile/ymwork/types/Group;->size()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    .line 695
    :goto_2
    const/4 v9, 0x5

    if-le v4, v9, :cond_4

    .line 696
    const-wide/high16 v9, 0x4016

    invoke-virtual {v5, v9, v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXAxisMax(D)V

    goto/16 :goto_1

    .line 692
    :catch_1
    move-exception v3

    .line 693
    .restart local v3       #e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 697
    .end local v3           #e:Ljava/lang/Exception;
    :cond_4
    const/4 v9, 0x1

    if-ne v4, v9, :cond_5

    .line 698
    int-to-double v9, v4

    const-wide/high16 v11, 0x3fe0

    add-double/2addr v9, v11

    invoke-virtual {v5, v9, v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXAxisMax(D)V

    .line 699
    const/high16 v9, 0x41f0

    invoke-virtual {v5, v9}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setBarWidth(F)V

    goto/16 :goto_1

    .line 701
    :cond_5
    int-to-double v9, v4

    const-wide/high16 v11, 0x3fe0

    add-double/2addr v9, v11

    invoke-virtual {v5, v9, v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXAxisMax(D)V

    goto/16 :goto_1

    .line 703
    :cond_6
    iget v9, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->mark:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_0

    .line 704
    iget-object v9, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->mShops:Lcom/cymobile/ymwork/types/BuildingReport;

    invoke-virtual {v9}, Lcom/cymobile/ymwork/types/BuildingReport;->getAvgsum()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    .line 705
    .local v1, d:D
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->str_address:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\u571f\u65b9\u5de5\u5730\u5e73\u5747\u53d1\u6848\u6570"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 706
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v10

    invoke-virtual {v10, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\u4ef6"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 705
    invoke-virtual {v5, v9}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setChartTitle(Ljava/lang/String;)V

    .line 708
    :try_start_2
    iget-object v9, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->mShops:Lcom/cymobile/ymwork/types/BuildingReport;

    invoke-virtual {v9}, Lcom/cymobile/ymwork/types/BuildingReport;->getAvgs()Lcom/cymobile/ymwork/types/Group;

    move-result-object v9

    invoke-virtual {v9}, Lcom/cymobile/ymwork/types/Group;->size()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v4

    .line 712
    :goto_3
    const/16 v9, 0xa

    if-le v4, v9, :cond_7

    .line 713
    const-wide/high16 v9, 0x4025

    invoke-virtual {v5, v9, v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXAxisMax(D)V

    goto/16 :goto_1

    .line 709
    :catch_2
    move-exception v3

    .line 710
    .restart local v3       #e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 714
    .end local v3           #e:Ljava/lang/Exception;
    :cond_7
    const/4 v9, 0x1

    if-ne v4, v9, :cond_8

    .line 715
    int-to-double v9, v4

    const-wide/high16 v11, 0x3fe0

    add-double/2addr v9, v11

    invoke-virtual {v5, v9, v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXAxisMax(D)V

    .line 716
    const/high16 v9, 0x41f0

    invoke-virtual {v5, v9}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setBarWidth(F)V

    goto/16 :goto_1

    .line 718
    :cond_8
    int-to-double v9, v4

    const-wide/high16 v11, 0x3fe0

    add-double/2addr v9, v11

    invoke-virtual {v5, v9, v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXAxisMax(D)V

    goto/16 :goto_1

    .line 748
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
    .line 262
    :try_start_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$StateHolder;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$StateHolder;->getIsRunningTask()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 263
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->getStateHolder()Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$StateHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$StateHolder;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getQueryTitle()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 466
    const-class v0, Lcom/cymobile/ymwork/SettingBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 467
    const/4 v1, 0x2

    .line 466
    invoke-virtual {p0, v0, v1}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->mPrefs:Landroid/content/SharedPreferences;

    .line 468
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "key_GlobalZoneId"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->userZoneId:Ljava/lang/String;

    .line 469
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "key_GlobalZoneName"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->userZoneName:Ljava/lang/String;

    .line 471
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->userZoneId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 472
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->userZoneId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x6

    if-ne v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f090078

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 471
    :goto_0
    invoke-static {v1, v2, v0}, Lcom/cymobile/ymwork/adapter/ReportDataSource;->resetTOPCategory(JLjava/lang/String;)V

    .line 473
    return-void

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->userZoneName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getStateHolder()Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$StateHolder;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$StateHolder;

    return-object v0
.end method

.method public getTxt_title()V
    .locals 3

    .prologue
    .line 476
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->category:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 477
    iget v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->STREET_NO:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 478
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 479
    const v1, 0x7f0900d1

    .line 478
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->str_address:Ljava/lang/String;

    .line 484
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->txt_title:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->str_address:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->str_list_item:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 485
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->btn_Street:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 491
    :goto_1
    return-void

    .line 480
    :cond_1
    iget v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->STREET_NO:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 481
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 482
    const v1, 0x7f0900eb

    .line 481
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->str_address:Ljava/lang/String;

    goto :goto_0

    .line 487
    :cond_2
    sget-object v0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->street_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->str_address:Ljava/lang/String;

    .line 488
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->txt_title:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->str_address:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->str_list_item:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 489
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->btn_Street:Landroid/widget/RelativeLayout;

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

    invoke-virtual {p0, v10}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->requestWindowFeature(I)Z

    .line 98
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->getQueryTitle()V

    .line 99
    const v10, 0x7f030027

    invoke-virtual {p0, v10}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->setContentView(I)V

    .line 100
    invoke-super {p0, p1}, Lcom/cymobile/ymwork/widget/LoadableListFragmentWithViewAndHeaderConstructionReport;->onCreate(Landroid/os/Bundle;)V

    .line 101
    iput-object p0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->contexts:Landroid/content/Context;

    .line 102
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 103
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$StateHolder;

    iput-object v10, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$StateHolder;

    .line 104
    iget-object v10, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$StateHolder;

    invoke-virtual {v10, p0}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$StateHolder;->setActivity(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)V

    .line 108
    :goto_0
    const v10, 0x7f0800a5

    invoke-virtual {p0, v10}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    iput-object v10, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->layout_report:Landroid/widget/LinearLayout;

    .line 109
    const v10, 0x7f080032

    invoke-virtual {p0, v10}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout;

    iput-object v10, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->btn_title:Landroid/widget/RelativeLayout;

    .line 110
    const v10, 0x7f080035

    invoke-virtual {p0, v10}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout;

    iput-object v10, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->btn_Street:Landroid/widget/RelativeLayout;

    .line 111
    const v10, 0x7f080033

    invoke-virtual {p0, v10}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->txt_title:Landroid/widget/TextView;

    .line 112
    const v10, 0x7f080036

    invoke-virtual {p0, v10}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->txt_Street:Landroid/widget/TextView;

    .line 113
    const v10, 0x7f080034

    invoke-virtual {p0, v10}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Spinner;

    iput-object v10, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->mSpinner:Landroid/widget/Spinner;

    .line 114
    const v10, 0x7f080037

    invoke-virtual {p0, v10}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Spinner;

    iput-object v10, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->Spinner_Street:Landroid/widget/Spinner;

    .line 115
    iget-object v10, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v10}, Landroid/widget/Spinner;->showContextMenu()Z

    .line 116
    iget-object v10, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->Spinner_Street:Landroid/widget/Spinner;

    invoke-virtual {v10}, Landroid/widget/Spinner;->showContextMenu()Z

    .line 117
    iget-object v10, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->userZoneId:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x6

    if-ne v10, v11, :cond_3

    .line 118
    iget-object v10, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->btn_Street:Landroid/widget/RelativeLayout;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 122
    :goto_1
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->ensureUi()V

    .line 123
    iget-object v10, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->mPrefs:Landroid/content/SharedPreferences;

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

    iput-boolean v10, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->flag:Z

    .line 130
    iget-object v10, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x4

    .line 131
    const-wide/16 v12, 0x32

    .line 130
    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 137
    :goto_2
    iget-object v10, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->btn_title:Landroid/widget/RelativeLayout;

    new-instance v11, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$2;

    invoke-direct {v11, p0}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$2;-><init>(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)V

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v10, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->btn_Street:Landroid/widget/RelativeLayout;

    new-instance v11, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$3;

    invoke-direct {v11, p0}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$3;-><init>(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)V

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->getResources()Landroid/content/res/Resources;

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
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f05000a

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 159
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    array-length v10, v4

    if-lt v2, v10, :cond_5

    .line 170
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 171
    const v10, 0x1090009

    .line 170
    invoke-direct {v0, p0, v10, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 172
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    new-instance v1, Landroid/widget/ArrayAdapter;

    .line 173
    const v10, 0x1090009

    .line 172
    invoke-direct {v1, p0, v10, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 174
    .local v1, adapter_street:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v10, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 175
    iget-object v10, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->Spinner_Street:Landroid/widget/Spinner;

    invoke-virtual {v10, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 178
    new-instance v5, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$4;

    invoke-direct {v5, p0, v3}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$4;-><init>(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;Ljava/util/List;)V

    .line 227
    .local v5, oisl2:Landroid/widget/AdapterView$OnItemSelectedListener;,"Landroid/widget/AdapterView$OnItemSelectedListener;"
    new-instance v8, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$5;

    invoke-direct {v8, p0, v7}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$5;-><init>(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;[Ljava/lang/String;)V

    .line 257
    .local v8, street_oisl:Landroid/widget/AdapterView$OnItemSelectedListener;,"Landroid/widget/AdapterView$OnItemSelectedListener;"
    iget-object v10, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v10, v5}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 258
    iget-object v10, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->Spinner_Street:Landroid/widget/Spinner;

    invoke-virtual {v10, v8}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 259
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
    new-instance v10, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$StateHolder;

    invoke-direct {v10, p0}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$StateHolder;-><init>(Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;)V

    iput-object v10, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$StateHolder;

    goto/16 :goto_0

    .line 120
    :cond_3
    iget-object v10, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->btn_Street:Landroid/widget/RelativeLayout;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 133
    .restart local v9       #zonecode:Ljava/lang/String;
    :cond_4
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->flag:Z

    .line 134
    iget-object v10, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->mHandler:Landroid/os/Handler;

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
    const/4 v6, 0x0

    .line 161
    .local v6, str:Ljava/lang/String;
    aget-object v6, v4, v2

    .line 167
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 772
    invoke-super {p0}, Lcom/cymobile/ymwork/widget/LoadableListFragmentWithViewAndHeaderConstructionReport;->onDestroy()V

    .line 775
    :try_start_0
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->getStateHolder()Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$StateHolder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 776
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->getStateHolder()Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$StateHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$StateHolder;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 781
    :cond_0
    :goto_0
    return-void

    .line 778
    :catch_0
    move-exception v0

    .line 779
    .local v0, ee:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 766
    invoke-super {p0}, Lcom/cymobile/ymwork/widget/LoadableListFragmentWithViewAndHeaderConstructionReport;->onPause()V

    .line 767
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 768
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$StateHolder;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct$StateHolder;->cancel()V

    .line 770
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

    .line 308
    invoke-virtual {p0, v6}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 309
    .local v0, loadableListHolder:Landroid/widget/LinearLayout;
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 310
    iget-object v2, p0, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->layout_report:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 311
    invoke-virtual {p0, v6}, Lcom/cymobile/ymwork/act/ConstrustionFieldReportAct;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 313
    .local v1, parent:Landroid/widget/LinearLayout;
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 315
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-le v2, v4, :cond_0

    .line 316
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 318
    :cond_0
    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 319
    return-void
.end method
