.class public Lcom/cymobile/ymwork/act/AnalysisActivity;
.super Landroid/app/Activity;
.source "AnalysisActivity.java"


# static fields
.field public static final DEBUG:Z = true

.field public static final TAG:Ljava/lang/String; = "AnalysisActivity"


# instance fields
.field private mPrefs:Landroid/content/SharedPreferences;

.field shopClass1:Landroid/widget/Button;

.field shopClass2:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private ensureUi()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 78
    const v3, 0x7f08002d

    invoke-virtual {p0, v3}, Lcom/cymobile/ymwork/act/AnalysisActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 79
    .local v0, leftbtn:Landroid/widget/ImageButton;
    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 80
    new-instance v3, Lcom/cymobile/ymwork/act/AnalysisActivity$1;

    invoke-direct {v3, p0}, Lcom/cymobile/ymwork/act/AnalysisActivity$1;-><init>(Lcom/cymobile/ymwork/act/AnalysisActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    const v3, 0x7f080030

    invoke-virtual {p0, v3}, Lcom/cymobile/ymwork/act/AnalysisActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 87
    .local v1, rightbtn:Landroid/widget/Button;
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 90
    const v3, 0x7f08002f

    invoke-virtual {p0, v3}, Lcom/cymobile/ymwork/act/AnalysisActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 91
    .local v2, title:Landroid/widget/TextView;
    const v3, 0x7f090011

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 94
    const v3, 0x7f08001b

    invoke-virtual {p0, v3}, Lcom/cymobile/ymwork/act/AnalysisActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/cymobile/ymwork/act/AnalysisActivity;->shopClass1:Landroid/widget/Button;

    .line 95
    const v3, 0x7f08001c

    invoke-virtual {p0, v3}, Lcom/cymobile/ymwork/act/AnalysisActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/cymobile/ymwork/act/AnalysisActivity;->shopClass2:Landroid/widget/Button;

    .line 98
    iget-object v3, p0, Lcom/cymobile/ymwork/act/AnalysisActivity;->shopClass1:Landroid/widget/Button;

    new-instance v4, Lcom/cymobile/ymwork/act/AnalysisActivity$2;

    invoke-direct {v4, p0}, Lcom/cymobile/ymwork/act/AnalysisActivity$2;-><init>(Lcom/cymobile/ymwork/act/AnalysisActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v3, p0, Lcom/cymobile/ymwork/act/AnalysisActivity;->shopClass2:Landroid/widget/Button;

    new-instance v4, Lcom/cymobile/ymwork/act/AnalysisActivity$3;

    invoke-direct {v4, p0}, Lcom/cymobile/ymwork/act/AnalysisActivity$3;-><init>(Lcom/cymobile/ymwork/act/AnalysisActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/AnalysisActivity;->requestWindowFeature(I)Z

    .line 50
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/AnalysisActivity;->setContentView(I)V

    .line 51
    const-class v0, Lcom/cymobile/ymwork/SettingBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/cymobile/ymwork/act/AnalysisActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/cymobile/ymwork/act/AnalysisActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 54
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/AnalysisActivity;->ensureUi()V

    .line 57
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 71
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 72
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 66
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 67
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 61
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 62
    return-void
.end method
