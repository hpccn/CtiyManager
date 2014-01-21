.class Lcom/cymobile/ymwork/act/MapFragmentActivity$PaginateListener;
.super Ljava/lang/Object;
.source "MapFragmentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/act/MapFragmentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PaginateListener"
.end annotation


# instance fields
.field forward:Z

.field final synthetic this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/MapFragmentActivity;Z)V
    .locals 1
    .parameter
    .parameter "d"

    .prologue
    .line 260
    iput-object p1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$PaginateListener;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$PaginateListener;->forward:Z

    .line 261
    iput-boolean p2, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$PaginateListener;->forward:Z

    .line 262
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 266
    new-instance v0, Lcom/cymobile/ymwork/act/MapFragmentActivity$PaganiteTask;

    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$PaginateListener;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    invoke-direct {v0, v1}, Lcom/cymobile/ymwork/act/MapFragmentActivity$PaganiteTask;-><init>(Lcom/cymobile/ymwork/act/MapFragmentActivity;)V

    .line 268
    .local v0, dTask:Lcom/cymobile/ymwork/act/MapFragmentActivity$PaganiteTask;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Boolean;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$PaginateListener;->forward:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/cymobile/ymwork/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 269
    return-void
.end method
