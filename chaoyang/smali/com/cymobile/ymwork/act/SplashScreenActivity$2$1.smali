.class Lcom/cymobile/ymwork/act/SplashScreenActivity$2$1;
.super Ljava/lang/Object;
.source "SplashScreenActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/SplashScreenActivity$2;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cymobile/ymwork/act/SplashScreenActivity$2;

.field private final synthetic val$logo:Landroid/widget/ImageView;

.field private final synthetic val$logoOrigLeft:I

.field private final synthetic val$logoOrigTop:I


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/SplashScreenActivity$2;Landroid/widget/ImageView;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/SplashScreenActivity$2$1;->this$1:Lcom/cymobile/ymwork/act/SplashScreenActivity$2;

    iput-object p2, p0, Lcom/cymobile/ymwork/act/SplashScreenActivity$2$1;->val$logo:Landroid/widget/ImageView;

    iput p3, p0, Lcom/cymobile/ymwork/act/SplashScreenActivity$2$1;->val$logoOrigLeft:I

    iput p4, p0, Lcom/cymobile/ymwork/act/SplashScreenActivity$2$1;->val$logoOrigTop:I

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5
    .parameter "arg0"

    .prologue
    const/4 v4, 0x0

    .line 90
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/cymobile/ymwork/act/SplashScreenActivity$2$1;->val$logo:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLeft()I

    move-result v1

    neg-int v1, v1

    iget v2, p0, Lcom/cymobile/ymwork/act/SplashScreenActivity$2$1;->val$logoOrigLeft:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/cymobile/ymwork/act/SplashScreenActivity$2$1;->val$logo:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTop()I

    move-result v2

    neg-int v2, v2

    iget v3, p0, Lcom/cymobile/ymwork/act/SplashScreenActivity$2$1;->val$logoOrigTop:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-direct {v0, v4, v1, v4, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 91
    .local v0, slideUp1:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x4b0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 94
    new-instance v1, Lcom/cymobile/ymwork/act/SplashScreenActivity$2$1$1;

    invoke-direct {v1, p0}, Lcom/cymobile/ymwork/act/SplashScreenActivity$2$1$1;-><init>(Lcom/cymobile/ymwork/act/SplashScreenActivity$2$1;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 106
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 107
    iget-object v1, p0, Lcom/cymobile/ymwork/act/SplashScreenActivity$2$1;->val$logo:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 109
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 87
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 84
    return-void
.end method
