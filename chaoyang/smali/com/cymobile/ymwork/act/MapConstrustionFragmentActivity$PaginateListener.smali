.class Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$PaginateListener;
.super Ljava/lang/Object;
.source "MapConstrustionFragmentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PaginateListener"
.end annotation


# instance fields
.field forward:Z

.field final synthetic this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;Z)V
    .locals 1
    .parameter
    .parameter "d"

    .prologue
    .line 331
    iput-object p1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$PaginateListener;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$PaginateListener;->forward:Z

    .line 332
    iput-boolean p2, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$PaginateListener;->forward:Z

    .line 333
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 339
    new-instance v0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$PaganiteTask;

    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$PaginateListener;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    invoke-direct {v0, v1}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$PaganiteTask;-><init>(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)V

    .line 341
    .local v0, dTask:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$PaganiteTask;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Boolean;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$PaginateListener;->forward:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/cymobile/ymwork/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 342
    return-void
.end method
