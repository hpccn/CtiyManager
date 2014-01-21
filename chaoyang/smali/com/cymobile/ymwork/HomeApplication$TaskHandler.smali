.class Lcom/cymobile/ymwork/HomeApplication$TaskHandler;
.super Landroid/os/Handler;
.source "HomeApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/HomeApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskHandler"
.end annotation


# static fields
.field private static final MESSAGE_START_SERVICE:I = 0x2

.field private static final MESSAGE_UPDATE_USER:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/HomeApplication;


# direct methods
.method public constructor <init>(Lcom/cymobile/ymwork/HomeApplication;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 349
    iput-object p1, p0, Lcom/cymobile/ymwork/HomeApplication$TaskHandler;->this$0:Lcom/cymobile/ymwork/HomeApplication;

    .line 350
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 351
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 355
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 356
    iget-object v0, p0, Lcom/cymobile/ymwork/HomeApplication$TaskHandler;->this$0:Lcom/cymobile/ymwork/HomeApplication;

    iget-boolean v0, v0, Lcom/cymobile/ymwork/HomeApplication;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 357
    const-string v0, "CarHomeApplication"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleMessage: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 368
    :goto_0
    return-void

    .line 361
    :pswitch_0
    const-string v0, "CarHomeApplication"

    const-string v1, "MESSAGE_START_SERVICE 2"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 359
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
