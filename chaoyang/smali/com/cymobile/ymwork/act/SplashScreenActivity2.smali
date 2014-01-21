.class public Lcom/cymobile/ymwork/act/SplashScreenActivity2;
.super Landroid/app/Activity;
.source "SplashScreenActivity2.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SplashScreenActivity"


# instance fields
.field homeApplication:Lcom/cymobile/ymwork/HomeApplication;

.field public iSystemService:Lcom/cymobile/ymwork/ISystemService;

.field logo:Landroid/widget/ImageView;

.field mPrefs:Landroid/content/SharedPreferences;

.field photo:Landroid/widget/ImageView;

.field private final serviceConnection:Landroid/content/ServiceConnection;

.field word:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cymobile/ymwork/act/SplashScreenActivity2;->mPrefs:Landroid/content/SharedPreferences;

    .line 176
    new-instance v0, Lcom/cymobile/ymwork/act/SplashScreenActivity2$1;

    invoke-direct {v0, p0}, Lcom/cymobile/ymwork/act/SplashScreenActivity2$1;-><init>(Lcom/cymobile/ymwork/act/SplashScreenActivity2;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/SplashScreenActivity2;->serviceConnection:Landroid/content/ServiceConnection;

    .line 38
    return-void
.end method

.method static synthetic access$0(Lcom/cymobile/ymwork/act/SplashScreenActivity2;)V
    .locals 0
    .parameter

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/SplashScreenActivity2;->gotoNext()V

    return-void
.end method

.method private gotoNext()V
    .locals 3

    .prologue
    .line 167
    iget-object v1, p0, Lcom/cymobile/ymwork/act/SplashScreenActivity2;->homeApplication:Lcom/cymobile/ymwork/HomeApplication;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/HomeApplication;->isLogined()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cymobile/ymwork/act/MainActivityGroup;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 169
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/SplashScreenActivity2;->startActivity(Landroid/content/Intent;)V

    .line 173
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/SplashScreenActivity2;->finish()V

    .line 174
    return-void

    .line 171
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/cymobile/ymwork/act/SetZoneActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/SplashScreenActivity2;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/16 v3, 0x400

    const/4 v2, 0x4

    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/SplashScreenActivity2;->requestWindowFeature(I)Z

    .line 50
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/SplashScreenActivity2;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 51
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cymobile/ymwork/SystemService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 54
    .local v0, serviceIntent:Landroid/content/Intent;
    const v1, 0x7f030042

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/SplashScreenActivity2;->setContentView(I)V

    .line 55
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/SplashScreenActivity2;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/HomeApplication;

    iput-object v1, p0, Lcom/cymobile/ymwork/act/SplashScreenActivity2;->homeApplication:Lcom/cymobile/ymwork/HomeApplication;

    .line 57
    const v1, 0x7f080114

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/SplashScreenActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/cymobile/ymwork/act/SplashScreenActivity2;->photo:Landroid/widget/ImageView;

    .line 58
    const v1, 0x7f080115

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/SplashScreenActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/cymobile/ymwork/act/SplashScreenActivity2;->word:Landroid/widget/ImageView;

    .line 59
    const v1, 0x7f080116

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/SplashScreenActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/cymobile/ymwork/act/SplashScreenActivity2;->logo:Landroid/widget/ImageView;

    .line 60
    iget-object v1, p0, Lcom/cymobile/ymwork/act/SplashScreenActivity2;->word:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 61
    iget-object v1, p0, Lcom/cymobile/ymwork/act/SplashScreenActivity2;->logo:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 62
    return-void
.end method

.method public onResume()V
    .locals 18

    .prologue
    .line 68
    invoke-super/range {p0 .. p0}, Landroid/app/Activity;->onResume()V

    .line 70
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cymobile/ymwork/act/SplashScreenActivity2;->logo:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 71
    invoke-virtual/range {p0 .. p0}, Lcom/cymobile/ymwork/act/SplashScreenActivity2;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    .line 72
    .local v10, display:Landroid/view/Display;
    invoke-virtual {v10}, Landroid/view/Display;->getWidth()I

    move-result v17

    .line 73
    .local v17, width:I
    invoke-virtual {v10}, Landroid/view/Display;->getHeight()I

    move-result v11

    .line 75
    .local v11, height:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cymobile/ymwork/act/SplashScreenActivity2;->logo:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTop()I

    move-result v14

    .line 76
    .local v14, logoOrigTop:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cymobile/ymwork/act/SplashScreenActivity2;->logo:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLeft()I

    move-result v13

    .line 77
    .local v13, logoOrigLeft:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cymobile/ymwork/act/SplashScreenActivity2;->logo:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v15

    .line 78
    .local v15, logoOrigWidth:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cymobile/ymwork/act/SplashScreenActivity2;->logo:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v12

    .line 80
    .local v12, logoOrigHeight:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cymobile/ymwork/act/SplashScreenActivity2;->logo:Landroid/widget/ImageView;

    sub-int v3, v17, v15

    add-int/lit8 v4, v11, -0x19

    sub-int/2addr v4, v12

    add-int/lit8 v5, v11, -0x19

    move/from16 v0, v17

    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/widget/ImageView;->layout(IIII)V

    .line 81
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cymobile/ymwork/act/SplashScreenActivity2;->logo:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->invalidate()V

    .line 82
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cymobile/ymwork/act/SplashScreenActivity2;->logo:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->refreshDrawableState()V

    .line 83
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cymobile/ymwork/act/SplashScreenActivity2;->logo:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 86
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/high16 v2, 0x3f00

    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f00

    const/high16 v5, 0x3f80

    const/4 v6, 0x1

    const/high16 v7, 0x3f00

    const/4 v8, 0x1

    const/high16 v9, 0x3f00

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 87
    .local v1, scale1:Landroid/view/animation/Animation;
    const-wide/16 v2, 0x4b0

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 88
    new-instance v2, Lcom/cymobile/ymwork/act/SplashScreenActivity2$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v11}, Lcom/cymobile/ymwork/act/SplashScreenActivity2$2;-><init>(Lcom/cymobile/ymwork/act/SplashScreenActivity2;I)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 125
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cymobile/ymwork/act/SplashScreenActivity2;->logo:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 126
    const/16 v16, 0x1388

    .line 128
    .local v16, welcomeScreenDisplay:I
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/cymobile/ymwork/act/SplashScreenActivity2$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/cymobile/ymwork/act/SplashScreenActivity2$3;-><init>(Lcom/cymobile/ymwork/act/SplashScreenActivity2;)V

    .line 163
    const-wide/16 v4, 0x1388

    .line 128
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 165
    return-void
.end method
