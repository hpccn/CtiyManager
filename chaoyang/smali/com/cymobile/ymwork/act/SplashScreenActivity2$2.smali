.class Lcom/cymobile/ymwork/act/SplashScreenActivity2$2;
.super Ljava/lang/Object;
.source "SplashScreenActivity2.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/SplashScreenActivity2;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/SplashScreenActivity2;

.field private final synthetic val$height:I


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/SplashScreenActivity2;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/SplashScreenActivity2$2;->this$0:Lcom/cymobile/ymwork/act/SplashScreenActivity2;

    iput p2, p0, Lcom/cymobile/ymwork/act/SplashScreenActivity2$2;->val$height:I

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/cymobile/ymwork/act/SplashScreenActivity2$2;)Lcom/cymobile/ymwork/act/SplashScreenActivity2;
    .locals 1
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/cymobile/ymwork/act/SplashScreenActivity2$2;->this$0:Lcom/cymobile/ymwork/act/SplashScreenActivity2;

    return-object v0
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5
    .parameter "arg0"

    .prologue
    const/4 v4, 0x0

    .line 99
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/cymobile/ymwork/act/SplashScreenActivity2$2;->this$0:Lcom/cymobile/ymwork/act/SplashScreenActivity2;

    iget-object v1, v1, Lcom/cymobile/ymwork/act/SplashScreenActivity2;->logo:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLeft()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/cymobile/ymwork/act/SplashScreenActivity2$2;->this$0:Lcom/cymobile/ymwork/act/SplashScreenActivity2;

    iget-object v2, v2, Lcom/cymobile/ymwork/act/SplashScreenActivity2;->logo:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    neg-int v2, v2

    iget v3, p0, Lcom/cymobile/ymwork/act/SplashScreenActivity2$2;->val$height:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-direct {v0, v4, v1, v4, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 100
    .local v0, slideUp1:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x4b0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 102
    new-instance v1, Lcom/cymobile/ymwork/act/SplashScreenActivity2$2$1;

    iget v2, p0, Lcom/cymobile/ymwork/act/SplashScreenActivity2$2;->val$height:I

    invoke-direct {v1, p0, v2}, Lcom/cymobile/ymwork/act/SplashScreenActivity2$2$1;-><init>(Lcom/cymobile/ymwork/act/SplashScreenActivity2$2;I)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 120
    iget-object v1, p0, Lcom/cymobile/ymwork/act/SplashScreenActivity2$2;->this$0:Lcom/cymobile/ymwork/act/SplashScreenActivity2;

    iget-object v1, v1, Lcom/cymobile/ymwork/act/SplashScreenActivity2;->logo:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 121
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 123
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 95
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 92
    return-void
.end method
