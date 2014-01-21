.class public Lcom/cymobile/ymwork/act/SplashScreenActivity;
.super Landroid/app/Activity;
.source "SplashScreenActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SplashScreenActivity"


# instance fields
.field public iSystemService:Lcom/cymobile/ymwork/ISystemService;

.field mPrefs:Landroid/content/SharedPreferences;

.field private final serviceConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cymobile/ymwork/act/SplashScreenActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 191
    new-instance v0, Lcom/cymobile/ymwork/act/SplashScreenActivity$1;

    invoke-direct {v0, p0}, Lcom/cymobile/ymwork/act/SplashScreenActivity$1;-><init>(Lcom/cymobile/ymwork/act/SplashScreenActivity;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/SplashScreenActivity;->serviceConnection:Landroid/content/ServiceConnection;

    .line 28
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    const/16 v4, 0x400

    const/high16 v2, 0x3f80

    const/high16 v6, 0x3f00

    const v1, 0x3dcccccd

    const/4 v5, 0x1

    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0, v5}, Lcom/cymobile/ymwork/act/SplashScreenActivity;->requestWindowFeature(I)Z

    .line 39
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/SplashScreenActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 40
    new-instance v11, Landroid/content/Intent;

    const-class v3, Lcom/cymobile/ymwork/SystemService;

    invoke-direct {v11, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 41
    .local v11, serviceIntent:Landroid/content/Intent;
    invoke-virtual {p0, v11}, Lcom/cymobile/ymwork/act/SplashScreenActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 42
    iget-object v3, p0, Lcom/cymobile/ymwork/act/SplashScreenActivity;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x0

    invoke-virtual {p0, v11, v3, v4}, Lcom/cymobile/ymwork/act/SplashScreenActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 43
    const v3, 0x7f030040

    invoke-virtual {p0, v3}, Lcom/cymobile/ymwork/act/SplashScreenActivity;->setContentView(I)V

    .line 45
    const v3, 0x7f080114

    invoke-virtual {p0, v3}, Lcom/cymobile/ymwork/act/SplashScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 47
    .local v10, photo:Landroid/widget/ImageView;
    const v3, 0x7f080115

    invoke-virtual {p0, v3}, Lcom/cymobile/ymwork/act/SplashScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    .line 48
    .local v13, word:Landroid/widget/ImageView;
    const v3, 0x7f080116

    invoke-virtual {p0, v3}, Lcom/cymobile/ymwork/act/SplashScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 51
    .local v9, logo:Landroid/widget/ImageView;
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 53
    .local v0, scale:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x578

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 56
    new-instance v1, Lcom/cymobile/ymwork/act/SplashScreenActivity$2;

    invoke-direct {v1, p0, v9}, Lcom/cymobile/ymwork/act/SplashScreenActivity$2;-><init>(Lcom/cymobile/ymwork/act/SplashScreenActivity;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 114
    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 141
    const/16 v12, 0x1388

    .line 143
    .local v12, welcomeScreenDisplay:I
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/cymobile/ymwork/act/SplashScreenActivity$3;

    invoke-direct {v2, p0}, Lcom/cymobile/ymwork/act/SplashScreenActivity$3;-><init>(Lcom/cymobile/ymwork/act/SplashScreenActivity;)V

    .line 186
    const-wide/16 v3, 0x1388

    .line 143
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 188
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 206
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 207
    return-void
.end method
