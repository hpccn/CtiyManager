.class Lcom/cymobile/ymwork/act/SplashScreenActivity2$2$1;
.super Ljava/lang/Object;
.source "SplashScreenActivity2.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/SplashScreenActivity2$2;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cymobile/ymwork/act/SplashScreenActivity2$2;

.field private final synthetic val$height:I


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/SplashScreenActivity2$2;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/SplashScreenActivity2$2$1;->this$1:Lcom/cymobile/ymwork/act/SplashScreenActivity2$2;

    iput p2, p0, Lcom/cymobile/ymwork/act/SplashScreenActivity2$2$1;->val$height:I

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 10
    .parameter "arg0"

    .prologue
    const/high16 v2, 0x3f80

    const/4 v5, 0x1

    const/4 v9, 0x0

    const/high16 v1, 0x3f00

    .line 111
    iget-object v3, p0, Lcom/cymobile/ymwork/act/SplashScreenActivity2$2$1;->this$1:Lcom/cymobile/ymwork/act/SplashScreenActivity2$2;

    #getter for: Lcom/cymobile/ymwork/act/SplashScreenActivity2$2;->this$0:Lcom/cymobile/ymwork/act/SplashScreenActivity2;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/SplashScreenActivity2$2;->access$0(Lcom/cymobile/ymwork/act/SplashScreenActivity2$2;)Lcom/cymobile/ymwork/act/SplashScreenActivity2;

    move-result-object v3

    iget-object v3, v3, Lcom/cymobile/ymwork/act/SplashScreenActivity2;->word:Landroid/widget/ImageView;

    iget v4, p0, Lcom/cymobile/ymwork/act/SplashScreenActivity2$2$1;->val$height:I

    div-int/lit8 v4, v4, 0x2

    iget-object v6, p0, Lcom/cymobile/ymwork/act/SplashScreenActivity2$2$1;->this$1:Lcom/cymobile/ymwork/act/SplashScreenActivity2$2;

    #getter for: Lcom/cymobile/ymwork/act/SplashScreenActivity2$2;->this$0:Lcom/cymobile/ymwork/act/SplashScreenActivity2;
    invoke-static {v6}, Lcom/cymobile/ymwork/act/SplashScreenActivity2$2;->access$0(Lcom/cymobile/ymwork/act/SplashScreenActivity2$2;)Lcom/cymobile/ymwork/act/SplashScreenActivity2;

    move-result-object v6

    iget-object v6, v6, Lcom/cymobile/ymwork/act/SplashScreenActivity2;->logo:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getHeight()I

    move-result v6

    sub-int/2addr v4, v6

    iget-object v6, p0, Lcom/cymobile/ymwork/act/SplashScreenActivity2$2$1;->this$1:Lcom/cymobile/ymwork/act/SplashScreenActivity2$2;

    #getter for: Lcom/cymobile/ymwork/act/SplashScreenActivity2$2;->this$0:Lcom/cymobile/ymwork/act/SplashScreenActivity2;
    invoke-static {v6}, Lcom/cymobile/ymwork/act/SplashScreenActivity2$2;->access$0(Lcom/cymobile/ymwork/act/SplashScreenActivity2$2;)Lcom/cymobile/ymwork/act/SplashScreenActivity2;

    move-result-object v6

    iget-object v6, v6, Lcom/cymobile/ymwork/act/SplashScreenActivity2;->word:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getWidth()I

    move-result v6

    add-int/lit8 v6, v6, 0x0

    iget v7, p0, Lcom/cymobile/ymwork/act/SplashScreenActivity2$2$1;->val$height:I

    div-int/lit8 v7, v7, 0x2

    iget-object v8, p0, Lcom/cymobile/ymwork/act/SplashScreenActivity2$2$1;->this$1:Lcom/cymobile/ymwork/act/SplashScreenActivity2$2;

    #getter for: Lcom/cymobile/ymwork/act/SplashScreenActivity2$2;->this$0:Lcom/cymobile/ymwork/act/SplashScreenActivity2;
    invoke-static {v8}, Lcom/cymobile/ymwork/act/SplashScreenActivity2$2;->access$0(Lcom/cymobile/ymwork/act/SplashScreenActivity2$2;)Lcom/cymobile/ymwork/act/SplashScreenActivity2;

    move-result-object v8

    iget-object v8, v8, Lcom/cymobile/ymwork/act/SplashScreenActivity2;->logo:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getHeight()I

    move-result v8

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/cymobile/ymwork/act/SplashScreenActivity2$2$1;->this$1:Lcom/cymobile/ymwork/act/SplashScreenActivity2$2;

    #getter for: Lcom/cymobile/ymwork/act/SplashScreenActivity2$2;->this$0:Lcom/cymobile/ymwork/act/SplashScreenActivity2;
    invoke-static {v8}, Lcom/cymobile/ymwork/act/SplashScreenActivity2$2;->access$0(Lcom/cymobile/ymwork/act/SplashScreenActivity2$2;)Lcom/cymobile/ymwork/act/SplashScreenActivity2;

    move-result-object v8

    iget-object v8, v8, Lcom/cymobile/ymwork/act/SplashScreenActivity2;->word:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v3, v9, v4, v6, v7}, Landroid/widget/ImageView;->layout(IIII)V

    .line 112
    iget-object v3, p0, Lcom/cymobile/ymwork/act/SplashScreenActivity2$2$1;->this$1:Lcom/cymobile/ymwork/act/SplashScreenActivity2$2;

    #getter for: Lcom/cymobile/ymwork/act/SplashScreenActivity2$2;->this$0:Lcom/cymobile/ymwork/act/SplashScreenActivity2;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/SplashScreenActivity2$2;->access$0(Lcom/cymobile/ymwork/act/SplashScreenActivity2$2;)Lcom/cymobile/ymwork/act/SplashScreenActivity2;

    move-result-object v3

    iget-object v3, v3, Lcom/cymobile/ymwork/act/SplashScreenActivity2;->word:Landroid/widget/ImageView;

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 113
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v6, v1

    move v7, v5

    move v8, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 114
    .local v0, scale2:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x4b0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 115
    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 116
    iget-object v1, p0, Lcom/cymobile/ymwork/act/SplashScreenActivity2$2$1;->this$1:Lcom/cymobile/ymwork/act/SplashScreenActivity2$2;

    #getter for: Lcom/cymobile/ymwork/act/SplashScreenActivity2$2;->this$0:Lcom/cymobile/ymwork/act/SplashScreenActivity2;
    invoke-static {v1}, Lcom/cymobile/ymwork/act/SplashScreenActivity2$2;->access$0(Lcom/cymobile/ymwork/act/SplashScreenActivity2$2;)Lcom/cymobile/ymwork/act/SplashScreenActivity2;

    move-result-object v1

    iget-object v1, v1, Lcom/cymobile/ymwork/act/SplashScreenActivity2;->word:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 117
    iget-object v1, p0, Lcom/cymobile/ymwork/act/SplashScreenActivity2$2$1;->this$1:Lcom/cymobile/ymwork/act/SplashScreenActivity2$2;

    #getter for: Lcom/cymobile/ymwork/act/SplashScreenActivity2$2;->this$0:Lcom/cymobile/ymwork/act/SplashScreenActivity2;
    invoke-static {v1}, Lcom/cymobile/ymwork/act/SplashScreenActivity2$2;->access$0(Lcom/cymobile/ymwork/act/SplashScreenActivity2$2;)Lcom/cymobile/ymwork/act/SplashScreenActivity2;

    move-result-object v1

    iget-object v1, v1, Lcom/cymobile/ymwork/act/SplashScreenActivity2;->word:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 118
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 108
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 105
    return-void
.end method
