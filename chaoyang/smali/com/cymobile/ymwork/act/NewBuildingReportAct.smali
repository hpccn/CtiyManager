.class public Lcom/cymobile/ymwork/act/NewBuildingReportAct;
.super Lcom/cymobile/ymwork/widget/LoadableListFragmentWithViewAndHeaderReport;
.source "NewBuildingReportAct.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cymobile/ymwork/act/NewBuildingReportAct$GetZoneTask;,
        Lcom/cymobile/ymwork/act/NewBuildingReportAct$StateHolder;,
        Lcom/cymobile/ymwork/act/NewBuildingReportAct$TaskShops;
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

.field private mStateHolder:Lcom/cymobile/ymwork/act/NewBuildingReportAct$StateHolder;

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
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 59
    invoke-direct {p0}, Lcom/cymobile/ymwork/widget/LoadableListFragmentWithViewAndHeaderReport;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->RANKING_REPORT:I

    .line 63
    iput v1, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->DISMANTLE_REPORT:I

    .line 64
    iput v2, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->PROCEDURES_SETTLEMENT_REPORT:I

    .line 65
    const/4 v0, 0x3

    iput v0, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->REVERSION_REPORT:I

    .line 66
    iput v1, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->MESSAGE_UPDATE_REPORT:I

    .line 67
    iput v2, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->MESSAGE_ISVISIBLE_STREET:I

    .line 70
    const/4 v0, 0x5

    iput v0, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->MESSAGE_CITY:I

    .line 71
    const/4 v0, 0x6

    iput v0, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->MESSAGE_STREET:I

    .line 72
    iput v1, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->STREET_NO:I

    .line 441
    new-instance v0, Lcom/cymobile/ymwork/act/NewBuildingReportAct$1;

    invoke-direct {v0, p0}, Lcom/cymobile/ymwork/act/NewBuildingReportAct$1;-><init>(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->mHandler:Landroid/os/Handler;

    .line 59
    return-void
.end method

.method static synthetic access$0(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->category:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)I
    .locals 1
    .parameter

    .prologue
    .line 72
    iget v0, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->STREET_NO:I

    return v0
.end method

.method static synthetic access$10(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)Lorg/achartengine/model/XYMultipleSeriesDataset;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->dataset:Lorg/achartengine/model/XYMultipleSeriesDataset;

    return-object v0
.end method

.method static synthetic access$11(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)Lorg/achartengine/renderer/XYMultipleSeriesRenderer;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->renderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    return-object v0
.end method

.method static synthetic access$12(Lcom/cymobile/ymwork/act/NewBuildingReportAct;Lorg/achartengine/GraphicalView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->mChartView:Lorg/achartengine/GraphicalView;

    return-void
.end method

.method static synthetic access$13(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->layout_report:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$14(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)Lorg/achartengine/GraphicalView;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->mChartView:Lorg/achartengine/GraphicalView;

    return-object v0
.end method

.method static synthetic access$15(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->str_list_street:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$16(Lcom/cymobile/ymwork/act/NewBuildingReportAct;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->mIsRunningTask:Z

    return-void
.end method

.method static synthetic access$17(Lcom/cymobile/ymwork/act/NewBuildingReportAct;Lcom/cymobile/ymwork/types/BuildingReport;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->mShops:Lcom/cymobile/ymwork/types/BuildingReport;

    return-void
.end method

.method static synthetic access$18(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)Lcom/cymobile/ymwork/types/BuildingReport;
    .locals 1
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->mShops:Lcom/cymobile/ymwork/types/BuildingReport;

    return-object v0
.end method

.method static synthetic access$19(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)Z
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->mIsRunningTask:Z

    return v0
.end method

.method static synthetic access$2(Lcom/cymobile/ymwork/act/NewBuildingReportAct;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->str_address:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$20(Lcom/cymobile/ymwork/act/NewBuildingReportAct;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->category:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$21(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->userZoneId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$22(Lcom/cymobile/ymwork/act/NewBuildingReportAct;Lcom/cymobile/ymwork/types/BuildingReport;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 413
    invoke-direct {p0, p1, p2}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->onTaskComplete(Lcom/cymobile/ymwork/types/BuildingReport;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$23(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$24(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)Landroid/widget/Spinner;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->mSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$25(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)Landroid/widget/Spinner;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->Spinner_Street:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$26(Lcom/cymobile/ymwork/act/NewBuildingReportAct;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->str_list_item:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$27(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)Lcom/cymobile/ymwork/act/NewBuildingReportAct$StateHolder;
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/NewBuildingReportAct$StateHolder;

    return-object v0
.end method

.method static synthetic access$28(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)Z
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->flag:Z

    return v0
.end method

.method static synthetic access$29(Lcom/cymobile/ymwork/act/NewBuildingReportAct;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->str_list_street:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->txt_title:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$30(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->txt_Street:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$31(Lcom/cymobile/ymwork/act/NewBuildingReportAct;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 72
    iput p1, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->STREET_NO:I

    return-void
.end method

.method static synthetic access$32(Lcom/cymobile/ymwork/act/NewBuildingReportAct;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->flag:Z

    return-void
.end method

.method static synthetic access$4(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->str_address:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->str_list_item:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->btn_Street:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$7(Lcom/cymobile/ymwork/act/NewBuildingReportAct;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->renderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    return-void
.end method

.method static synthetic access$8(Lcom/cymobile/ymwork/act/NewBuildingReportAct;Lorg/achartengine/model/XYMultipleSeriesDataset;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->dataset:Lorg/achartengine/model/XYMultipleSeriesDataset;

    return-void
.end method

.method static synthetic access$9(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)V
    .locals 0
    .parameter

    .prologue
    .line 577
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->initNames()V

    return-void
.end method

.method private initNames()V
    .locals 5

    .prologue
    .line 578
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->mShops:Lcom/cymobile/ymwork/types/BuildingReport;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/BuildingReport;->getItems()Lcom/cymobile/ymwork/types/Group;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 581
    return-void

    .line 579
    :cond_0
    iget-object v2, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->renderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    add-int/lit8 v1, v0, 0x1

    int-to-double v3, v1

    iget-object v1, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->mShops:Lcom/cymobile/ymwork/types/BuildingReport;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/BuildingReport;->getItems()Lcom/cymobile/ymwork/types/Group;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cymobile/ymwork/types/Group;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/types/BuildingReportItem;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/BuildingReportItem;->getName()Ljava/lang/String;

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

    .line 414
    iput-boolean v2, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->mIsRunningTask:Z

    .line 415
    invoke-virtual {p0, v2}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->setProgressBarIndeterminateVisibility(Z)V

    .line 416
    if-eqz p2, :cond_0

    .line 417
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 418
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->mLayoutEmpty:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->setEmptyView(Landroid/view/View;)V

    .line 427
    :goto_0
    return-void

    .line 420
    :cond_0
    const v1, 0x1020004

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 421
    .local v0, loadableListHolder:Landroid/widget/LinearLayout;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 422
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->layout_report:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 423
    iput-object p1, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->mShops:Lcom/cymobile/ymwork/types/BuildingReport;

    .line 425
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->mHandler:Landroid/os/Handler;

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

    .line 245
    const v4, 0x7f08002d

    invoke-virtual {p0, v4}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    .line 246
    .local v3, leftBtn:Landroid/widget/ImageButton;
    new-instance v4, Lcom/cymobile/ymwork/act/NewBuildingReportAct$6;

    invoke-direct {v4, p0}, Lcom/cymobile/ymwork/act/NewBuildingReportAct$6;-><init>(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 255
    .local v2, inflater:Landroid/view/LayoutInflater;
    invoke-static {}, Lcom/cymobile/ymwork/utils/UiUtil;->sdkVersion()I

    move-result v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_0

    .line 257
    const v4, 0x7f03003d

    .line 256
    invoke-virtual {v2, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ScrollView;

    iput-object v4, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->mLayoutEmpty:Landroid/view/ViewGroup;

    .line 262
    :goto_0
    iget-object v4, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->mLayoutEmpty:Landroid/view/ViewGroup;

    .line 263
    const v5, 0x7f08010f

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 262
    check-cast v0, Landroid/widget/Button;

    .line 264
    .local v0, btnAddFriends:Landroid/widget/Button;
    new-instance v4, Lcom/cymobile/ymwork/act/NewBuildingReportAct$7;

    invoke-direct {v4, p0}, Lcom/cymobile/ymwork/act/NewBuildingReportAct$7;-><init>(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    iget-object v4, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->mLayoutEmpty:Landroid/view/ViewGroup;

    .line 270
    const v5, 0x7f080110

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 269
    check-cast v1, Landroid/widget/Button;

    .line 271
    .local v1, btnFriendRequests:Landroid/widget/Button;
    new-instance v4, Lcom/cymobile/ymwork/act/NewBuildingReportAct$8;

    invoke-direct {v4, p0}, Lcom/cymobile/ymwork/act/NewBuildingReportAct$8;-><init>(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    iget-object v4, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->mLayoutEmpty:Landroid/view/ViewGroup;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 278
    invoke-direct {v5, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 276
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 280
    return-void

    .line 260
    .end local v0           #btnAddFriends:Landroid/widget/Button;
    .end local v1           #btnFriendRequests:Landroid/widget/Button;
    :cond_0
    const v4, 0x7f03003e

    .line 259
    invoke-virtual {v2, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ScrollView;

    iput-object v4, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->mLayoutEmpty:Landroid/view/ViewGroup;

    goto :goto_0
.end method

.method public getBarChart()V
    .locals 5

    .prologue
    .line 565
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->getBarRenderer()Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-result-object v0

    iput-object v0, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->renderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    .line 566
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->getBarDataset()Lorg/achartengine/model/XYMultipleSeriesDataset;

    move-result-object v0

    iput-object v0, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->dataset:Lorg/achartengine/model/XYMultipleSeriesDataset;

    .line 567
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->initNames()V

    .line 568
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->dataset:Lorg/achartengine/model/XYMultipleSeriesDataset;

    iget-object v1, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->renderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    .line 569
    sget-object v2, Lorg/achartengine/chart/BarChart$Type;->DEFAULT:Lorg/achartengine/chart/BarChart$Type;

    .line 568
    invoke-static {p0, v0, v1, v2}, Lorg/achartengine/ChartFactory;->getBarChartView(Landroid/content/Context;Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;Lorg/achartengine/chart/BarChart$Type;)Lorg/achartengine/GraphicalView;

    move-result-object v0

    iput-object v0, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->mChartView:Lorg/achartengine/GraphicalView;

    .line 570
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->layout_report:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->mChartView:Lorg/achartengine/GraphicalView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .line 571
    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 570
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 572
    return-void
.end method

.method public getBarDataset()Lorg/achartengine/model/XYMultipleSeriesDataset;
    .locals 5

    .prologue
    .line 584
    new-instance v1, Lorg/achartengine/model/XYMultipleSeriesDataset;

    invoke-direct {v1}, Lorg/achartengine/model/XYMultipleSeriesDataset;-><init>()V

    .line 585
    .local v1, dataset:Lorg/achartengine/model/XYMultipleSeriesDataset;
    new-instance v0, Lorg/achartengine/model/CategorySeries;

    const-string v3, "\u53d1\u6848\u6570"

    invoke-direct {v0, v3}, Lorg/achartengine/model/CategorySeries;-><init>(Ljava/lang/String;)V

    .line 586
    .local v0, barSeries:Lorg/achartengine/model/CategorySeries;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v3, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->mShops:Lcom/cymobile/ymwork/types/BuildingReport;

    invoke-virtual {v3}, Lcom/cymobile/ymwork/types/BuildingReport;->getItems()Lcom/cymobile/ymwork/types/Group;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 589
    invoke-virtual {v0}, Lorg/achartengine/model/CategorySeries;->toXYSeries()Lorg/achartengine/model/XYSeries;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/achartengine/model/XYMultipleSeriesDataset;->addSeries(Lorg/achartengine/model/XYSeries;)V

    .line 590
    return-object v1

    .line 587
    :cond_0
    iget-object v3, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->mShops:Lcom/cymobile/ymwork/types/BuildingReport;

    invoke-virtual {v3}, Lcom/cymobile/ymwork/types/BuildingReport;->getItems()Lcom/cymobile/ymwork/types/Group;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/cymobile/ymwork/types/Group;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cymobile/ymwork/types/BuildingReportItem;

    invoke-virtual {v3}, Lcom/cymobile/ymwork/types/BuildingReportItem;->getNumber()I

    move-result v3

    int-to-double v3, v3

    invoke-virtual {v0, v3, v4}, Lorg/achartengine/model/CategorySeries;->add(D)V

    .line 586
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getBarRenderer()Lorg/achartengine/renderer/XYMultipleSeriesRenderer;
    .locals 14

    .prologue
    const/4 v13, -0x1

    const-wide/high16 v11, 0x3fe0

    const/4 v10, 0x0

    const/high16 v9, 0x41c0

    const/4 v8, 0x1

    .line 594
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->getFilterFragment()Lcom/cymobile/ymwork/widget/RangeFilterFragmentReport;

    move-result-object v6

    invoke-virtual {v6}, Lcom/cymobile/ymwork/widget/RangeFilterFragmentReport;->getReportDataSource()Lcom/cymobile/ymwork/adapter/ReportDataSource;

    move-result-object v3

    .line 596
    .local v3, rs:Lcom/cymobile/ymwork/adapter/ReportDataSource;
    invoke-virtual {v3}, Lcom/cymobile/ymwork/adapter/ReportDataSource;->curRange()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v6

    invoke-virtual {v6}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v6

    .line 595
    invoke-static {v6}, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->rangeTypeToPair(I)Lcom/cymobile/ymwork/types/Pair;

    move-result-object v6

    .line 596
    invoke-virtual {v6}, Lcom/cymobile/ymwork/types/Pair;->name()Ljava/lang/String;

    move-result-object v5

    .line 598
    .local v5, str_day:Ljava/lang/String;
    new-instance v2, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-direct {v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;-><init>()V

    .line 599
    .local v2, renderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;
    new-instance v4, Lorg/achartengine/renderer/SimpleSeriesRenderer;

    invoke-direct {v4}, Lorg/achartengine/renderer/SimpleSeriesRenderer;-><init>()V

    .line 600
    .local v4, simpleRenderer:Lorg/achartengine/renderer/SimpleSeriesRenderer;
    const/high16 v6, -0x1

    invoke-virtual {v4, v6}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->setColor(I)V

    .line 601
    invoke-virtual {v2, v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->addSeriesRenderer(Lorg/achartengine/renderer/SimpleSeriesRenderer;)V

    .line 602
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->str_address:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\u65b0\u589e\u5efa\u7b51"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 603
    iget-object v7, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->mShops:Lcom/cymobile/ymwork/types/BuildingReport;

    invoke-virtual {v7}, Lcom/cymobile/ymwork/types/BuildingReport;->getNumber_all()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\u4ef6\uff0c\u65b0\u589e\u5efa\u7b51\u9762\u79ef"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->mShops:Lcom/cymobile/ymwork/types/BuildingReport;

    invoke-virtual {v7}, Lcom/cymobile/ymwork/types/BuildingReport;->getArea_all()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 604
    const-string v7, "\u5e73\u7c73"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 602
    invoke-virtual {v2, v6}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setChartTitle(Ljava/lang/String;)V

    .line 605
    const-string v6, "\u53d1\u6848\u6570\uff08\u4ef6\uff09"

    invoke-virtual {v2, v6}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setYTitle(Ljava/lang/String;)V

    .line 606
    invoke-virtual {v2, v9}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setAxisTitleTextSize(F)V

    .line 607
    const/high16 v6, 0x41e0

    invoke-virtual {v2, v6}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setChartTitleTextSize(F)V

    .line 608
    invoke-virtual {v2, v9}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setLabelsTextSize(F)V

    .line 609
    invoke-virtual {v2, v9}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setLegendTextSize(F)V

    .line 610
    invoke-virtual {v2, v9}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setChartValuesTextSize(F)V

    .line 612
    invoke-virtual {v2, v13}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setAxesColor(I)V

    .line 613
    invoke-virtual {v2, v13}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setLabelsColor(I)V

    .line 616
    invoke-virtual {v2, v8}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setApplyBackgroundColor(Z)V

    .line 617
    const/high16 v6, -0x100

    invoke-virtual {v2, v6}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setBackgroundColor(I)V

    .line 620
    const-wide v6, 0x3fc999999999999aL

    invoke-virtual {v2, v6, v7}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXAxisMin(D)V

    .line 622
    const-wide/high16 v6, 0x3ff0

    invoke-virtual {v2, v6, v7}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setBarSpacing(D)V

    .line 623
    iget-object v6, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->mShops:Lcom/cymobile/ymwork/types/BuildingReport;

    invoke-virtual {v6}, Lcom/cymobile/ymwork/types/BuildingReport;->getItems()Lcom/cymobile/ymwork/types/Group;

    move-result-object v6

    invoke-virtual {v6}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v1

    .line 624
    .local v1, mSize:I
    const/16 v6, 0xa

    if-le v1, v6, :cond_0

    .line 625
    const-wide/high16 v6, 0x4025

    invoke-virtual {v2, v6, v7}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXAxisMax(D)V

    .line 633
    :goto_0
    const-wide/16 v6, 0x0

    invoke-virtual {v2, v6, v7}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setYAxisMin(D)V

    .line 634
    iget-object v6, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->mShops:Lcom/cymobile/ymwork/types/BuildingReport;

    invoke-virtual {v6}, Lcom/cymobile/ymwork/types/BuildingReport;->getMaxnum()I

    move-result v6

    mul-int/lit8 v6, v6, 0x4

    div-int/lit8 v0, v6, 0x3

    .line 635
    .local v0, Maxnum:I
    int-to-double v6, v0

    invoke-virtual {v2, v6, v7}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setYAxisMax(D)V

    .line 637
    invoke-virtual {v2, v8}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setZoomButtonsVisible(Z)V

    .line 639
    invoke-virtual {v2, v8}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setZoomEnabled(Z)V

    .line 641
    invoke-virtual {v2, v8}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setAntialiasing(Z)V

    .line 643
    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v6}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXLabelsAlign(Landroid/graphics/Paint$Align;)V

    .line 645
    sget-object v6, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v6}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setYLabelsAlign(Landroid/graphics/Paint$Align;)V

    .line 647
    const/4 v6, 0x4

    new-array v6, v6, [I

    fill-array-data v6, :array_0

    invoke-virtual {v2, v6}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setMargins([I)V

    .line 649
    invoke-virtual {v2, v8, v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setPanEnabled(ZZ)V

    .line 651
    invoke-virtual {v2, v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getSeriesRendererAt(I)Lorg/achartengine/renderer/SimpleSeriesRenderer;

    move-result-object v6

    invoke-virtual {v6, v8}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->setDisplayChartValues(Z)V

    .line 653
    invoke-virtual {v2, v8}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setShowGrid(Z)V

    .line 656
    invoke-virtual {v2, v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXLabels(I)V

    .line 658
    const/high16 v6, -0x3e90

    invoke-virtual {v2, v6}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXLabelsAngle(F)V

    .line 659
    return-object v2

    .line 626
    .end local v0           #Maxnum:I
    :cond_0
    if-ne v1, v8, :cond_1

    .line 627
    int-to-double v6, v1

    add-double/2addr v6, v11

    invoke-virtual {v2, v6, v7}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXAxisMax(D)V

    .line 628
    const/high16 v6, 0x41f0

    invoke-virtual {v2, v6}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setBarWidth(F)V

    goto :goto_0

    .line 630
    :cond_1
    int-to-double v6, v1

    add-double/2addr v6, v11

    invoke-virtual {v2, v6, v7}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXAxisMax(D)V

    goto :goto_0

    .line 647
    nop

    :array_0
    .array-data 0x4
        0x19t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public getQueryTitle()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 430
    const-class v0, Lcom/cymobile/ymwork/SettingBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 431
    const/4 v1, 0x2

    .line 430
    invoke-virtual {p0, v0, v1}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->mPrefs:Landroid/content/SharedPreferences;

    .line 432
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "key_GlobalZoneId"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->userZoneId:Ljava/lang/String;

    .line 433
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "key_GlobalZoneName"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->userZoneName:Ljava/lang/String;

    .line 436
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->userZoneId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 437
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->userZoneId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x6

    if-ne v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 438
    const v3, 0x7f090078

    .line 437
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 435
    :goto_0
    invoke-static {v1, v2, v0}, Lcom/cymobile/ymwork/adapter/ReportDataSource;->resetTOPCategory(JLjava/lang/String;)V

    .line 439
    return-void

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->userZoneName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getStateHolder()Lcom/cymobile/ymwork/act/NewBuildingReportAct$StateHolder;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/NewBuildingReportAct$StateHolder;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    .line 95
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->requestWindowFeature(I)Z

    .line 96
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->getQueryTitle()V

    .line 97
    const v10, 0x7f030027

    invoke-virtual {p0, v10}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->setContentView(I)V

    .line 98
    invoke-super {p0, p1}, Lcom/cymobile/ymwork/widget/LoadableListFragmentWithViewAndHeaderReport;->onCreate(Landroid/os/Bundle;)V

    .line 99
    iput-object p0, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->contexts:Landroid/content/Context;

    .line 100
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 101
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/cymobile/ymwork/act/NewBuildingReportAct$StateHolder;

    iput-object v10, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/NewBuildingReportAct$StateHolder;

    .line 102
    iget-object v10, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/NewBuildingReportAct$StateHolder;

    invoke-virtual {v10, p0}, Lcom/cymobile/ymwork/act/NewBuildingReportAct$StateHolder;->setActivity(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)V

    .line 106
    :goto_0
    const v10, 0x7f0800a5

    invoke-virtual {p0, v10}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    iput-object v10, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->layout_report:Landroid/widget/LinearLayout;

    .line 107
    const v10, 0x7f080032

    invoke-virtual {p0, v10}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout;

    iput-object v10, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->btn_title:Landroid/widget/RelativeLayout;

    .line 108
    const v10, 0x7f080035

    invoke-virtual {p0, v10}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout;

    iput-object v10, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->btn_Street:Landroid/widget/RelativeLayout;

    .line 109
    const v10, 0x7f080033

    invoke-virtual {p0, v10}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->txt_title:Landroid/widget/TextView;

    .line 110
    const v10, 0x7f080036

    invoke-virtual {p0, v10}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->txt_Street:Landroid/widget/TextView;

    .line 111
    const v10, 0x7f080034

    invoke-virtual {p0, v10}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Spinner;

    iput-object v10, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->mSpinner:Landroid/widget/Spinner;

    .line 112
    const v10, 0x7f080037

    invoke-virtual {p0, v10}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Spinner;

    iput-object v10, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->Spinner_Street:Landroid/widget/Spinner;

    .line 113
    iget-object v10, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v10}, Landroid/widget/Spinner;->showContextMenu()Z

    .line 114
    iget-object v10, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->Spinner_Street:Landroid/widget/Spinner;

    invoke-virtual {v10}, Landroid/widget/Spinner;->showContextMenu()Z

    .line 115
    iget-object v10, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->userZoneId:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x6

    if-ne v10, v11, :cond_3

    .line 116
    iget-object v10, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->btn_Street:Landroid/widget/RelativeLayout;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 120
    :goto_1
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->ensureUi()V

    .line 121
    iget-object v10, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->mPrefs:Landroid/content/SharedPreferences;

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

    iput-boolean v10, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->flag:Z

    .line 128
    iget-object v10, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x4

    .line 129
    const-wide/16 v12, 0x32

    .line 128
    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 135
    :goto_2
    iget-object v10, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->btn_title:Landroid/widget/RelativeLayout;

    new-instance v11, Lcom/cymobile/ymwork/act/NewBuildingReportAct$2;

    invoke-direct {v11, p0}, Lcom/cymobile/ymwork/act/NewBuildingReportAct$2;-><init>(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)V

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v10, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->btn_Street:Landroid/widget/RelativeLayout;

    new-instance v11, Lcom/cymobile/ymwork/act/NewBuildingReportAct$3;

    invoke-direct {v11, p0}, Lcom/cymobile/ymwork/act/NewBuildingReportAct$3;-><init>(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)V

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f050009

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 152
    .local v4, mItem:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 153
    const v11, 0x7f05000e

    .line 152
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 154
    .local v7, streenItme:[Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    array-length v10, v4

    if-lt v2, v10, :cond_5

    .line 166
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 167
    const v10, 0x1090009

    .line 166
    invoke-direct {v0, p0, v10, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 168
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    new-instance v1, Landroid/widget/ArrayAdapter;

    .line 169
    const v10, 0x1090009

    .line 168
    invoke-direct {v1, p0, v10, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 170
    .local v1, adapter_street:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v10, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 171
    iget-object v10, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->Spinner_Street:Landroid/widget/Spinner;

    invoke-virtual {v10, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 173
    new-instance v5, Lcom/cymobile/ymwork/act/NewBuildingReportAct$4;

    invoke-direct {v5, p0, v3}, Lcom/cymobile/ymwork/act/NewBuildingReportAct$4;-><init>(Lcom/cymobile/ymwork/act/NewBuildingReportAct;Ljava/util/List;)V

    .line 204
    .local v5, oisl:Landroid/widget/AdapterView$OnItemSelectedListener;,"Landroid/widget/AdapterView$OnItemSelectedListener;"
    new-instance v8, Lcom/cymobile/ymwork/act/NewBuildingReportAct$5;

    invoke-direct {v8, p0, v7}, Lcom/cymobile/ymwork/act/NewBuildingReportAct$5;-><init>(Lcom/cymobile/ymwork/act/NewBuildingReportAct;[Ljava/lang/String;)V

    .line 239
    .local v8, street_oisl:Landroid/widget/AdapterView$OnItemSelectedListener;,"Landroid/widget/AdapterView$OnItemSelectedListener;"
    iget-object v10, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v10, v5}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 240
    iget-object v10, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->Spinner_Street:Landroid/widget/Spinner;

    invoke-virtual {v10, v8}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 242
    return-void

    .line 104
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
    new-instance v10, Lcom/cymobile/ymwork/act/NewBuildingReportAct$StateHolder;

    invoke-direct {v10, p0}, Lcom/cymobile/ymwork/act/NewBuildingReportAct$StateHolder;-><init>(Lcom/cymobile/ymwork/act/NewBuildingReportAct;)V

    iput-object v10, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/NewBuildingReportAct$StateHolder;

    goto/16 :goto_0

    .line 118
    :cond_3
    iget-object v10, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->btn_Street:Landroid/widget/RelativeLayout;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 131
    .restart local v9       #zonecode:Ljava/lang/String;
    :cond_4
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->flag:Z

    .line 132
    iget-object v10, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x3

    const-wide/16 v12, 0xa

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    .line 157
    .restart local v2       #i:I
    .restart local v3       #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4       #mItem:[Ljava/lang/String;
    .restart local v7       #streenItme:[Ljava/lang/String;
    :cond_5
    const/4 v6, 0x0

    .line 158
    .local v6, str:Ljava/lang/String;
    aget-object v6, v4, v2

    .line 164
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
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

    .line 283
    invoke-virtual {p0, v6}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 284
    .local v0, loadableListHolder:Landroid/widget/LinearLayout;
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 285
    iget-object v2, p0, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->layout_report:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 286
    invoke-virtual {p0, v6}, Lcom/cymobile/ymwork/act/NewBuildingReportAct;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 288
    .local v1, parent:Landroid/widget/LinearLayout;
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 290
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-le v2, v4, :cond_0

    .line 291
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 293
    :cond_0
    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 294
    return-void
.end method
