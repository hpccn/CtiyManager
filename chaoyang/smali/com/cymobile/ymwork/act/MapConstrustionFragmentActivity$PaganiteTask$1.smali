.class Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$PaganiteTask$1;
.super Ljava/lang/Object;
.source "MapConstrustionFragmentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$PaganiteTask;->doInBackground([Ljava/lang/Boolean;)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$PaganiteTask;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$PaganiteTask;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$PaganiteTask$1;->this$1:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$PaganiteTask;

    .line 489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 492
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$PaganiteTask$1;->this$1:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$PaganiteTask;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$PaganiteTask;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$PaganiteTask;->access$3(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$PaganiteTask;)Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    move-result-object v0

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->circleProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$15(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 493
    return-void
.end method
