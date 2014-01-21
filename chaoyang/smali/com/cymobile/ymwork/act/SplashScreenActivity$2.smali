.class Lcom/cymobile/ymwork/act/SplashScreenActivity$2;
.super Ljava/lang/Object;
.source "SplashScreenActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/SplashScreenActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/SplashScreenActivity;

.field private final synthetic val$logo:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/SplashScreenActivity;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/SplashScreenActivity$2;->this$0:Lcom/cymobile/ymwork/act/SplashScreenActivity;

    iput-object p2, p0, Lcom/cymobile/ymwork/act/SplashScreenActivity$2;->val$logo:Landroid/widget/ImageView;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 17
    .parameter "arg0"

    .prologue
    .line 65
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cymobile/ymwork/act/SplashScreenActivity$2;->this$0:Lcom/cymobile/ymwork/act/SplashScreenActivity;

    invoke-virtual {v2}, Lcom/cymobile/ymwork/act/SplashScreenActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    .line 66
    .local v10, display:Landroid/view/Display;
    invoke-virtual {v10}, Landroid/view/Display;->getWidth()I

    move-result v16

    .line 67
    .local v16, width:I
    invoke-virtual {v10}, Landroid/view/Display;->getHeight()I

    move-result v11

    .line 69
    .local v11, height:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cymobile/ymwork/act/SplashScreenActivity$2;->val$logo:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTop()I

    move-result v14

    .line 70
    .local v14, logoOrigTop:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cymobile/ymwork/act/SplashScreenActivity$2;->val$logo:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLeft()I

    move-result v13

    .line 71
    .local v13, logoOrigLeft:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cymobile/ymwork/act/SplashScreenActivity$2;->val$logo:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v15

    .line 72
    .local v15, logoOrigWidth:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cymobile/ymwork/act/SplashScreenActivity$2;->val$logo:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v12

    .line 74
    .local v12, logoOrigHeight:I
    const-string v2, "SplashScreenActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "logo.getWidth()"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cymobile/ymwork/act/SplashScreenActivity$2;->val$logo:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " logoOrigLeft "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cymobile/ymwork/act/SplashScreenActivity$2;->val$logo:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cymobile/ymwork/act/SplashScreenActivity$2;->val$logo:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    sub-int v3, v16, v3

    add-int/lit8 v4, v11, -0x19

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cymobile/ymwork/act/SplashScreenActivity$2;->val$logo:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/lit8 v5, v11, -0x19

    move/from16 v0, v16

    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/widget/ImageView;->layout(IIII)V

    .line 76
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cymobile/ymwork/act/SplashScreenActivity$2;->val$logo:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 79
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

    .line 80
    .local v1, scale1:Landroid/view/animation/Animation;
    const-wide/16 v2, 0x4b0

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 81
    new-instance v2, Lcom/cymobile/ymwork/act/SplashScreenActivity$2$1;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cymobile/ymwork/act/SplashScreenActivity$2;->val$logo:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v13, v14}, Lcom/cymobile/ymwork/act/SplashScreenActivity$2$1;-><init>(Lcom/cymobile/ymwork/act/SplashScreenActivity$2;Landroid/widget/ImageView;II)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 111
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cymobile/ymwork/act/SplashScreenActivity$2;->val$logo:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 112
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 62
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 59
    return-void
.end method
