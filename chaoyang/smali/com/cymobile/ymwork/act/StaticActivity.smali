.class public Lcom/cymobile/ymwork/act/StaticActivity;
.super Landroid/app/Activity;
.source "StaticActivity.java"


# static fields
.field public static final DEBUG:Z = true

.field public static final TAG:Ljava/lang/String; = "StaticActivity"


# instance fields
.field private mPrefs:Landroid/content/SharedPreferences;

.field shopClass1:Landroid/widget/Button;

.field shopClass2:Landroid/widget/Button;

.field shopClass3:Landroid/widget/Button;

.field public shopClass31:Landroid/widget/Button;

.field shopClass32:Landroid/widget/Button;

.field shopClass4:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private ensureUi()V
    .locals 7

    .prologue
    const/16 v5, 0x8

    .line 81
    const v4, 0x7f08002d

    invoke-virtual {p0, v4}, Lcom/cymobile/ymwork/act/StaticActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 82
    .local v0, leftbtn:Landroid/widget/ImageButton;
    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 83
    new-instance v4, Lcom/cymobile/ymwork/act/StaticActivity$1;

    invoke-direct {v4, p0}, Lcom/cymobile/ymwork/act/StaticActivity$1;-><init>(Lcom/cymobile/ymwork/act/StaticActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    const v4, 0x7f080030

    invoke-virtual {p0, v4}, Lcom/cymobile/ymwork/act/StaticActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 90
    .local v2, rightbtn:Landroid/widget/Button;
    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 93
    const v4, 0x7f08002f

    invoke-virtual {p0, v4}, Lcom/cymobile/ymwork/act/StaticActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 94
    .local v3, title:Landroid/widget/TextView;
    const v4, 0x7f090010

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 97
    const v4, 0x7f08001b

    invoke-virtual {p0, v4}, Lcom/cymobile/ymwork/act/StaticActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/cymobile/ymwork/act/StaticActivity;->shopClass1:Landroid/widget/Button;

    .line 98
    const v4, 0x7f08001c

    invoke-virtual {p0, v4}, Lcom/cymobile/ymwork/act/StaticActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/cymobile/ymwork/act/StaticActivity;->shopClass2:Landroid/widget/Button;

    .line 99
    const v4, 0x7f08001d

    invoke-virtual {p0, v4}, Lcom/cymobile/ymwork/act/StaticActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/cymobile/ymwork/act/StaticActivity;->shopClass3:Landroid/widget/Button;

    .line 100
    const v4, 0x7f080117

    invoke-virtual {p0, v4}, Lcom/cymobile/ymwork/act/StaticActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/cymobile/ymwork/act/StaticActivity;->shopClass31:Landroid/widget/Button;

    .line 101
    const v4, 0x7f08001e

    invoke-virtual {p0, v4}, Lcom/cymobile/ymwork/act/StaticActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/cymobile/ymwork/act/StaticActivity;->shopClass4:Landroid/widget/Button;

    .line 102
    iget-object v4, p0, Lcom/cymobile/ymwork/act/StaticActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v5, "key_newGlobalUserPhone"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, phone_num:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v4, "13910611195"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    const-string v4, "18601097192"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "13900000000"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 104
    :cond_1
    iget-object v4, p0, Lcom/cymobile/ymwork/act/StaticActivity;->shopClass31:Landroid/widget/Button;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 109
    :goto_0
    iget-object v4, p0, Lcom/cymobile/ymwork/act/StaticActivity;->shopClass1:Landroid/widget/Button;

    new-instance v5, Lcom/cymobile/ymwork/act/StaticActivity$2;

    invoke-direct {v5, p0}, Lcom/cymobile/ymwork/act/StaticActivity$2;-><init>(Lcom/cymobile/ymwork/act/StaticActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v4, p0, Lcom/cymobile/ymwork/act/StaticActivity;->shopClass2:Landroid/widget/Button;

    new-instance v5, Lcom/cymobile/ymwork/act/StaticActivity$3;

    invoke-direct {v5, p0}, Lcom/cymobile/ymwork/act/StaticActivity$3;-><init>(Lcom/cymobile/ymwork/act/StaticActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v4, p0, Lcom/cymobile/ymwork/act/StaticActivity;->shopClass3:Landroid/widget/Button;

    new-instance v5, Lcom/cymobile/ymwork/act/StaticActivity$4;

    invoke-direct {v5, p0}, Lcom/cymobile/ymwork/act/StaticActivity$4;-><init>(Lcom/cymobile/ymwork/act/StaticActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v4, p0, Lcom/cymobile/ymwork/act/StaticActivity;->shopClass31:Landroid/widget/Button;

    new-instance v5, Lcom/cymobile/ymwork/act/StaticActivity$5;

    invoke-direct {v5, p0}, Lcom/cymobile/ymwork/act/StaticActivity$5;-><init>(Lcom/cymobile/ymwork/act/StaticActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v4, p0, Lcom/cymobile/ymwork/act/StaticActivity;->shopClass4:Landroid/widget/Button;

    new-instance v5, Lcom/cymobile/ymwork/act/StaticActivity$6;

    invoke-direct {v5, p0}, Lcom/cymobile/ymwork/act/StaticActivity$6;-><init>(Lcom/cymobile/ymwork/act/StaticActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    return-void

    .line 106
    :cond_2
    iget-object v4, p0, Lcom/cymobile/ymwork/act/StaticActivity;->shopClass31:Landroid/widget/Button;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
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

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/StaticActivity;->requestWindowFeature(I)Z

    .line 50
    const v0, 0x7f030044

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/StaticActivity;->setContentView(I)V

    .line 51
    const-class v0, Lcom/cymobile/ymwork/SettingBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/cymobile/ymwork/act/StaticActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/cymobile/ymwork/act/StaticActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 53
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/StaticActivity;->ensureUi()V

    .line 56
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 70
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 71
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 65
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 66
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 60
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 61
    return-void
.end method
