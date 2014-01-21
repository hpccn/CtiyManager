.class public Lcom/cymobile/ymwork/utils/AsyncTaskUtils;
.super Ljava/lang/Object;
.source "AsyncTaskUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static execute(Landroid/os/AsyncTask;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            "T:",
            "Landroid/os/AsyncTask",
            "<TP;**>;>(TT;)V"
        }
    .end annotation

    .prologue
    .line 9
    .local p0, task:Landroid/os/AsyncTask;,"TT;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/cymobile/ymwork/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 10
    return-void
.end method

.method public static varargs execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter "params"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            "T:",
            "Landroid/os/AsyncTask",
            "<TP;**>;>(TT;[TP;)V"
        }
    .end annotation

    .prologue
    .line 14
    .local p0, task:Landroid/os/AsyncTask;,"TT;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 15
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 19
    :goto_0
    return-void

    .line 17
    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
