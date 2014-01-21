.class public Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;
.super Landroid/widget/LinearLayout;
.source "ButtonCaseSearchBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$StateHolder;,
        Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$TaskSearch;,
        Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$ViewHolder;,
        Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$classspinneradapter;
    }
.end annotation


# static fields
.field public static final SEARCHBAR_MAX_LEN:I = 0x32

.field public static final SEARCH_BAR_BUTTON_CLICKED:I = 0x3

.field public static final SEARCH_BAR_EDITER_CLICKED:I = 0x1

.field public static final SEARCH_BAR_EDITER_ENTER:I = 0x2

.field public static final SEARCH_BAR_TEXT_CHANGE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SearchBar"

.field public static mCurrentSearchText:Ljava/lang/String;


# instance fields
.field private classid:I

.field classspinner:Landroid/widget/Spinner;

.field private mButtonSearch:Landroid/widget/Button;

.field private mButtonSubmit:Landroid/widget/ImageView;

.field private mButtonText:Landroid/widget/EditText;

.field private mContext:Landroid/content/Context;

.field public mDispSearchText:Ljava/lang/String;

.field mPrefs:Landroid/content/SharedPreferences;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mStateHolder:Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$StateHolder;

.field search_class_chooser:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-string v0, ""

    sput-object v0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->mCurrentSearchText:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->mDispSearchText:Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->classid:I

    .line 76
    iput-object p1, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->mContext:Landroid/content/Context;

    .line 77
    invoke-direct {p0}, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->init()V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->mDispSearchText:Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->classid:I

    .line 82
    iput-object p1, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->mContext:Landroid/content/Context;

    .line 83
    invoke-direct {p0}, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->init()V

    .line 84
    return-void
.end method

.method static synthetic access$0(Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;)V
    .locals 0
    .parameter

    .prologue
    .line 519
    invoke-direct {p0}, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->onRefreshTaskStart()V

    return-void
.end method

.method static synthetic access$1(Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;Lcom/cymobile/ymwork/types/Building;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 528
    invoke-direct {p0, p1, p2}, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->onTaskComplete(Lcom/cymobile/ymwork/types/Building;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$2(Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->mButtonText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3(Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4(Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;)I
    .locals 1
    .parameter

    .prologue
    .line 70
    iget v0, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->classid:I

    return v0
.end method

.method static synthetic access$5(Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    iput p1, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->classid:I

    return-void
.end method

.method static synthetic access$6(Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->mButtonSubmit:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;)Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$StateHolder;
    .locals 1
    .parameter

    .prologue
    .line 399
    iget-object v0, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->mStateHolder:Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$StateHolder;

    return-object v0
.end method

.method private dismissProgressDialog()V
    .locals 1

    .prologue
    .line 274
    :try_start_0
    iget-object v0, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    :goto_0
    return-void

    .line 275
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 87
    const-string v0, "SearchBar"

    const-string v1, "SearchBar init()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual {p0}, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/cymobile/ymwork/act/MainActivity;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/MainActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 89
    const v1, 0x7f030010

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 90
    invoke-direct {p0}, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->initButtonText()V

    .line 91
    iget-object v0, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->mContext:Landroid/content/Context;

    const-class v1, Lcom/cymobile/ymwork/SettingBase;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 92
    const/4 v2, 0x2

    .line 91
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->mPrefs:Landroid/content/SharedPreferences;

    .line 93
    new-instance v0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$StateHolder;

    invoke-direct {v0, p0}, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$StateHolder;-><init>(Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->mStateHolder:Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$StateHolder;

    .line 96
    return-void
.end method

.method private initButtonText()V
    .locals 3

    .prologue
    .line 99
    const-string v0, "SearchBar"

    const-string v1, "SearchBar initEditText()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const v0, 0x7f080026

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->mButtonText:Landroid/widget/EditText;

    .line 101
    const v0, 0x7f080042

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->mButtonSubmit:Landroid/widget/ImageView;

    .line 102
    const v0, 0x7f080040

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->search_class_chooser:Landroid/widget/ImageView;

    .line 103
    const v0, 0x7f080041

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->classspinner:Landroid/widget/Spinner;

    .line 109
    iget-object v0, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->search_class_chooser:Landroid/widget/ImageView;

    new-instance v1, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$1;

    invoke-direct {v1, p0}, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$1;-><init>(Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v0, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->classspinner:Landroid/widget/Spinner;

    new-instance v1, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$classspinneradapter;

    invoke-virtual {p0}, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$classspinneradapter;-><init>(Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 118
    iget-object v0, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->classspinner:Landroid/widget/Spinner;

    new-instance v1, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$2;

    invoke-direct {v1, p0}, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$2;-><init>(Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 157
    iget-object v0, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->mButtonText:Landroid/widget/EditText;

    new-instance v1, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$3;

    invoke-direct {v1, p0}, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$3;-><init>(Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v0, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->mButtonText:Landroid/widget/EditText;

    new-instance v1, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$4;

    invoke-direct {v1, p0}, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$4;-><init>(Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 199
    iget-object v0, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->mButtonText:Landroid/widget/EditText;

    new-instance v1, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$5;

    invoke-direct {v1, p0}, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$5;-><init>(Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 217
    iget-object v0, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->mButtonSubmit:Landroid/widget/ImageView;

    new-instance v1, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$6;

    invoke-direct {v1, p0}, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$6;-><init>(Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    return-void
.end method

.method private onRefreshTaskStart()V
    .locals 0

    .prologue
    .line 521
    invoke-virtual {p0}, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->setLoadingView()V

    .line 522
    return-void
.end method

.method private onTaskComplete(Lcom/cymobile/ymwork/types/Building;Ljava/lang/Exception;)V
    .locals 8
    .parameter "shop"
    .parameter "ex"

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 529
    iget-object v3, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->mStateHolder:Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$StateHolder;

    invoke-virtual {v3, v4}, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$StateHolder;->setRanOnce(Z)V

    .line 530
    iget-object v3, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->mStateHolder:Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$StateHolder;

    invoke-virtual {v3, v7}, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$StateHolder;->setIsRunningTask(Z)V

    .line 531
    invoke-direct {p0}, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->dismissProgressDialog()V

    .line 534
    if-eqz p1, :cond_4

    .line 535
    iget-object v3, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->mStateHolder:Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$StateHolder;

    invoke-virtual {v3, p1}, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$StateHolder;->setSearchResult(Lcom/cymobile/ymwork/types/Building;)V

    .line 550
    :cond_0
    iget-object v3, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->mStateHolder:Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$StateHolder;

    invoke-virtual {v3}, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$StateHolder;->getSearchResult()Lcom/cymobile/ymwork/types/Building;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 551
    const/4 v1, 0x0

    .line 552
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Lcom/cymobile/ymwork/types/Building;->getclassid()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/cymobile/ymwork/types/Building;->getclassid()I

    move-result v3

    if-eq v3, v4, :cond_1

    invoke-virtual {p1}, Lcom/cymobile/ymwork/types/Building;->getclassid()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    .line 553
    :cond_1
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->mContext:Landroid/content/Context;

    const-class v4, Lcom/cymobile/ymwork/act/ShopDetailsActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 561
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_2
    :goto_0
    const-string v3, "caseid"

    invoke-virtual {p1}, Lcom/cymobile/ymwork/types/Building;->getCaseId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 562
    const-string v3, "classid"

    invoke-virtual {p1}, Lcom/cymobile/ymwork/types/Building;->getclassid()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 563
    iget-object v3, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 565
    .end local v1           #intent:Landroid/content/Intent;
    :cond_3
    :goto_1
    return-void

    .line 536
    :cond_4
    if-eqz p2, :cond_0

    .line 537
    iget-object v3, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->mButtonText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->mDispSearchText:Ljava/lang/String;

    .line 538
    .local v0, caseNumber:Ljava/lang/String;
    iget-object v3, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->mStateHolder:Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$StateHolder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$StateHolder;->setSearchResult(Lcom/cymobile/ymwork/types/Building;)V

    .line 539
    instance-of v3, p2, Lcom/cymobile/ymwork/server/error/ServerException;

    if-eqz v3, :cond_5

    move-object v2, p2

    .line 540
    check-cast v2, Lcom/cymobile/ymwork/server/error/ServerException;

    .line 541
    .local v2, se:Lcom/cymobile/ymwork/server/error/ServerException;
    invoke-virtual {v2}, Lcom/cymobile/ymwork/server/error/ServerException;->getErrorCode()I

    move-result v3

    const/16 v4, 0x14

    if-ne v3, v4, :cond_5

    .line 542
    iget-object v3, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->mContext:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0900ac

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 546
    .end local v2           #se:Lcom/cymobile/ymwork/server/error/ServerException;
    :cond_5
    iget-object v3, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->mContext:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0900ad

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 554
    .end local v0           #caseNumber:Ljava/lang/String;
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_6
    invoke-virtual {p1}, Lcom/cymobile/ymwork/types/Building;->getclassid()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_7

    .line 555
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->mContext:Landroid/content/Context;

    const-class v4, Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v1       #intent:Landroid/content/Intent;
    goto/16 :goto_0

    .line 556
    :cond_7
    invoke-virtual {p1}, Lcom/cymobile/ymwork/types/Building;->getclassid()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_8

    .line 557
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->mContext:Landroid/content/Context;

    const-class v4, Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v1       #intent:Landroid/content/Intent;
    goto/16 :goto_0

    .line 558
    :cond_8
    invoke-virtual {p1}, Lcom/cymobile/ymwork/types/Building;->getclassid()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2

    .line 559
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->mContext:Landroid/content/Context;

    const-class v4, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v1       #intent:Landroid/content/Intent;
    goto/16 :goto_0
.end method

.method private showProgressDialog()Landroid/app/ProgressDialog;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 332
    iget-object v1, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v1, :cond_0

    .line 333
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 334
    .local v0, dialog:Landroid/app/ProgressDialog;
    const v1, 0x7f0900a3

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 335
    iget-object v1, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->mContext:Landroid/content/Context;

    const v2, 0x7f0900a4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 336
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 337
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 338
    iput-object v0, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 340
    .end local v0           #dialog:Landroid/app/ProgressDialog;
    :cond_0
    iget-object v1, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 341
    iget-object v1, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v1
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyEvent"

    .prologue
    .line 257
    const-string v1, "SearchBar"

    const-string v2, "SearchBar dispatchKeyEvent()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x42

    if-ne v1, v2, :cond_0

    .line 260
    iget-object v1, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->mButtonText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->mCurrentSearchText:Ljava/lang/String;

    .line 261
    sget-object v1, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->mCurrentSearchText:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->mCurrentSearchText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 262
    iget-object v1, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 263
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->mButtonText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 264
    iget-object v2, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->mStateHolder:Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$StateHolder;

    iget-object v1, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/cymobile/ymwork/act/MainActivity;

    invoke-virtual {v2, v1}, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$StateHolder;->startTask(Lcom/cymobile/ymwork/act/MainActivity;)V

    .line 269
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public getButton()Landroid/widget/EditText;
    .locals 2

    .prologue
    .line 345
    const-string v0, "SearchBar"

    const-string v1, "SearchBar getEditText()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object v0, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->mButtonText:Landroid/widget/EditText;

    return-object v0
.end method

.method public getSearchEditText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 350
    const-string v0, "SearchBar"

    const-string v1, "SearchBar getSearchEditText()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object v0, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->mButtonText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method setCurrentSearchText(Ljava/lang/String;)V
    .locals 4
    .parameter "text"

    .prologue
    const/16 v3, 0x32

    .line 355
    const-string v0, "SearchBar"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SearchBar setCurrentSearchText()"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    sput-object p1, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->mCurrentSearchText:Ljava/lang/String;

    .line 357
    iget-object v0, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->mButtonText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 358
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_0

    .line 359
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 362
    :cond_0
    return-void
.end method

.method public setLoadingView()V
    .locals 0

    .prologue
    .line 525
    invoke-direct {p0}, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->showProgressDialog()Landroid/app/ProgressDialog;

    .line 526
    return-void
.end method

.method public setSearchBarEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 374
    const-string v0, "SearchBar"

    const-string v1, "SearchBar setSearchBarEnabled()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object v0, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->mButtonSearch:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 377
    return-void
.end method

.method public setSearchEditText(Ljava/lang/String;)V
    .locals 4
    .parameter "text"

    .prologue
    .line 380
    const-string v1, "SearchBar"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SearchBar setSearchEditText()"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 382
    :cond_0
    iget-object v1, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->mButtonText:Landroid/widget/EditText;

    const v2, 0x7f090013

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(I)V

    .line 396
    :goto_0
    return-void

    .line 385
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 386
    .local v0, length:I
    const/16 v1, 0x32

    if-le v0, v1, :cond_2

    .line 387
    const/16 v0, 0x32

    .line 388
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 392
    :cond_2
    iget-object v1, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->mButtonText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->mCurrentSearchText:Ljava/lang/String;

    goto :goto_0
.end method
