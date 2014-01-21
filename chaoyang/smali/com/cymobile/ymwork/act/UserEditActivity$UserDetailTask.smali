.class Lcom/cymobile/ymwork/act/UserEditActivity$UserDetailTask;
.super Landroid/os/AsyncTask;
.source "UserEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/act/UserEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UserDetailTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/cymobile/ymwork/types/User;",
        ">;"
    }
.end annotation


# instance fields
.field private mReason:Ljava/lang/Exception;

.field final synthetic this$0:Lcom/cymobile/ymwork/act/UserEditActivity;


# direct methods
.method private constructor <init>(Lcom/cymobile/ymwork/act/UserEditActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 450
    iput-object p1, p0, Lcom/cymobile/ymwork/act/UserEditActivity$UserDetailTask;->this$0:Lcom/cymobile/ymwork/act/UserEditActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cymobile/ymwork/act/UserEditActivity;Lcom/cymobile/ymwork/act/UserEditActivity$UserDetailTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 450
    invoke-direct {p0, p1}, Lcom/cymobile/ymwork/act/UserEditActivity$UserDetailTask;-><init>(Lcom/cymobile/ymwork/act/UserEditActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/cymobile/ymwork/types/User;
    .locals 6
    .parameter "params"

    .prologue
    .line 459
    iget-object v4, p0, Lcom/cymobile/ymwork/act/UserEditActivity$UserDetailTask;->this$0:Lcom/cymobile/ymwork/act/UserEditActivity;

    invoke-virtual {v4}, Lcom/cymobile/ymwork/act/UserEditActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/HomeApplication;

    .line 460
    .local v1, homeApplication:Lcom/cymobile/ymwork/HomeApplication;
    invoke-virtual {v1}, Lcom/cymobile/ymwork/HomeApplication;->getServer()Lcom/cymobile/ymwork/server/Server;

    move-result-object v2

    .line 462
    .local v2, server:Lcom/cymobile/ymwork/server/Server;
    :try_start_0
    iget-object v4, p0, Lcom/cymobile/ymwork/act/UserEditActivity$UserDetailTask;->this$0:Lcom/cymobile/ymwork/act/UserEditActivity;

    #getter for: Lcom/cymobile/ymwork/act/UserEditActivity;->contexts:Landroid/content/Context;
    invoke-static {v4}, Lcom/cymobile/ymwork/act/UserEditActivity;->access$8(Lcom/cymobile/ymwork/act/UserEditActivity;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/cymobile/ymwork/act/UserEditActivity$UserDetailTask;->this$0:Lcom/cymobile/ymwork/act/UserEditActivity;

    iget-object v5, v5, Lcom/cymobile/ymwork/act/UserEditActivity;->userMobile:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lcom/cymobile/ymwork/server/Server;->userDetail(Landroid/content/Context;Ljava/lang/String;)Lcom/cymobile/ymwork/types/User;

    move-result-object v3

    .line 463
    .local v3, user:Lcom/cymobile/ymwork/types/User;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/cymobile/ymwork/types/User;->getMobile()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    if-eqz v4, :cond_0

    .line 470
    .end local v3           #user:Lcom/cymobile/ymwork/types/User;
    :goto_0
    return-object v3

    .line 466
    :catch_0
    move-exception v0

    .line 467
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 468
    iput-object v0, p0, Lcom/cymobile/ymwork/act/UserEditActivity$UserDetailTask;->mReason:Ljava/lang/Exception;

    .line 470
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/act/UserEditActivity$UserDetailTask;->doInBackground([Ljava/lang/Void;)Lcom/cymobile/ymwork/types/User;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/cymobile/ymwork/act/UserEditActivity$UserDetailTask;->this$0:Lcom/cymobile/ymwork/act/UserEditActivity;

    #calls: Lcom/cymobile/ymwork/act/UserEditActivity;->dismissLoadZoneDialog()V
    invoke-static {v0}, Lcom/cymobile/ymwork/act/UserEditActivity;->access$11(Lcom/cymobile/ymwork/act/UserEditActivity;)V

    .line 487
    return-void
.end method

.method protected onPostExecute(Lcom/cymobile/ymwork/types/User;)V
    .locals 3
    .parameter "user"

    .prologue
    .line 475
    iget-object v0, p0, Lcom/cymobile/ymwork/act/UserEditActivity$UserDetailTask;->this$0:Lcom/cymobile/ymwork/act/UserEditActivity;

    #calls: Lcom/cymobile/ymwork/act/UserEditActivity;->dismissLoadZoneDialog()V
    invoke-static {v0}, Lcom/cymobile/ymwork/act/UserEditActivity;->access$11(Lcom/cymobile/ymwork/act/UserEditActivity;)V

    .line 476
    iget-object v0, p0, Lcom/cymobile/ymwork/act/UserEditActivity$UserDetailTask;->mReason:Ljava/lang/Exception;

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/cymobile/ymwork/act/UserEditActivity$UserDetailTask;->this$0:Lcom/cymobile/ymwork/act/UserEditActivity;

    const v1, 0x7f09006b

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 478
    iget-object v0, p0, Lcom/cymobile/ymwork/act/UserEditActivity$UserDetailTask;->this$0:Lcom/cymobile/ymwork/act/UserEditActivity;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/UserEditActivity;->finish()V

    .line 483
    :goto_0
    return-void

    .line 480
    :cond_1
    iget-object v0, p0, Lcom/cymobile/ymwork/act/UserEditActivity$UserDetailTask;->this$0:Lcom/cymobile/ymwork/act/UserEditActivity;

    iput-object p1, v0, Lcom/cymobile/ymwork/act/UserEditActivity;->editedUser:Lcom/cymobile/ymwork/types/User;

    .line 481
    iget-object v0, p0, Lcom/cymobile/ymwork/act/UserEditActivity$UserDetailTask;->this$0:Lcom/cymobile/ymwork/act/UserEditActivity;

    iget-object v0, v0, Lcom/cymobile/ymwork/act/UserEditActivity;->handler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/cymobile/ymwork/types/User;

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/act/UserEditActivity$UserDetailTask;->onPostExecute(Lcom/cymobile/ymwork/types/User;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/cymobile/ymwork/act/UserEditActivity$UserDetailTask;->this$0:Lcom/cymobile/ymwork/act/UserEditActivity;

    #calls: Lcom/cymobile/ymwork/act/UserEditActivity;->showLoadZoneDialog()Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/UserEditActivity;->access$10(Lcom/cymobile/ymwork/act/UserEditActivity;)Landroid/app/ProgressDialog;

    .line 455
    return-void
.end method
