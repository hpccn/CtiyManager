.class public Lcom/cymobile/ymwork/act/ForgetPasswordActivity$ForgetPasswordTask;
.super Landroid/os/AsyncTask;
.source "ForgetPasswordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/act/ForgetPasswordActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ForgetPasswordTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/cymobile/ymwork/types/CommonResult;",
        ">;"
    }
.end annotation


# instance fields
.field ex:Ljava/lang/Exception;

.field mActivity:Lcom/cymobile/ymwork/act/ForgetPasswordActivity;

.field final synthetic this$0:Lcom/cymobile/ymwork/act/ForgetPasswordActivity;


# direct methods
.method public constructor <init>(Lcom/cymobile/ymwork/act/ForgetPasswordActivity;Lcom/cymobile/ymwork/act/ForgetPasswordActivity;)V
    .locals 0
    .parameter
    .parameter "activity"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/cymobile/ymwork/act/ForgetPasswordActivity$ForgetPasswordTask;->this$0:Lcom/cymobile/ymwork/act/ForgetPasswordActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 69
    iput-object p2, p0, Lcom/cymobile/ymwork/act/ForgetPasswordActivity$ForgetPasswordTask;->mActivity:Lcom/cymobile/ymwork/act/ForgetPasswordActivity;

    .line 70
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/cymobile/ymwork/types/CommonResult;
    .locals 5
    .parameter "params"

    .prologue
    .line 82
    iget-object v3, p0, Lcom/cymobile/ymwork/act/ForgetPasswordActivity$ForgetPasswordTask;->this$0:Lcom/cymobile/ymwork/act/ForgetPasswordActivity;

    invoke-virtual {v3}, Lcom/cymobile/ymwork/act/ForgetPasswordActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    check-cast v3, Lcom/cymobile/ymwork/HomeApplication;

    invoke-virtual {v3}, Lcom/cymobile/ymwork/HomeApplication;->getServer()Lcom/cymobile/ymwork/server/Server;

    move-result-object v2

    .line 83
    .local v2, server:Lcom/cymobile/ymwork/server/Server;
    const/4 v1, 0x0

    .line 86
    .local v1, result:Lcom/cymobile/ymwork/types/CommonResult;
    :try_start_0
    iget-object v3, p0, Lcom/cymobile/ymwork/act/ForgetPasswordActivity$ForgetPasswordTask;->this$0:Lcom/cymobile/ymwork/act/ForgetPasswordActivity;

    #getter for: Lcom/cymobile/ymwork/act/ForgetPasswordActivity;->contexts:Landroid/content/Context;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/ForgetPasswordActivity;->access$1(Lcom/cymobile/ymwork/act/ForgetPasswordActivity;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/cymobile/ymwork/act/ForgetPasswordActivity$ForgetPasswordTask;->this$0:Lcom/cymobile/ymwork/act/ForgetPasswordActivity;

    #getter for: Lcom/cymobile/ymwork/act/ForgetPasswordActivity;->moeText:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/cymobile/ymwork/act/ForgetPasswordActivity;->access$2(Lcom/cymobile/ymwork/act/ForgetPasswordActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/cymobile/ymwork/server/Server;->forgetPassword(Landroid/content/Context;Ljava/lang/String;)Lcom/cymobile/ymwork/types/CommonResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 92
    :goto_0
    return-object v1

    .line 87
    :catch_0
    move-exception v0

    .line 89
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 90
    iput-object v0, p0, Lcom/cymobile/ymwork/act/ForgetPasswordActivity$ForgetPasswordTask;->ex:Ljava/lang/Exception;

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/act/ForgetPasswordActivity$ForgetPasswordTask;->doInBackground([Ljava/lang/Void;)Lcom/cymobile/ymwork/types/CommonResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/cymobile/ymwork/types/CommonResult;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 98
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 99
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ForgetPasswordActivity$ForgetPasswordTask;->mActivity:Lcom/cymobile/ymwork/act/ForgetPasswordActivity;

    iget-object v1, p0, Lcom/cymobile/ymwork/act/ForgetPasswordActivity$ForgetPasswordTask;->ex:Ljava/lang/Exception;

    #calls: Lcom/cymobile/ymwork/act/ForgetPasswordActivity;->postTask(Lcom/cymobile/ymwork/types/CommonResult;Ljava/lang/Exception;)V
    invoke-static {v0, p1, v1}, Lcom/cymobile/ymwork/act/ForgetPasswordActivity;->access$3(Lcom/cymobile/ymwork/act/ForgetPasswordActivity;Lcom/cymobile/ymwork/types/CommonResult;Ljava/lang/Exception;)V

    .line 100
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/cymobile/ymwork/types/CommonResult;

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/act/ForgetPasswordActivity$ForgetPasswordTask;->onPostExecute(Lcom/cymobile/ymwork/types/CommonResult;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 75
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 76
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ForgetPasswordActivity$ForgetPasswordTask;->mActivity:Lcom/cymobile/ymwork/act/ForgetPasswordActivity;

    #calls: Lcom/cymobile/ymwork/act/ForgetPasswordActivity;->preTask()V
    invoke-static {v0}, Lcom/cymobile/ymwork/act/ForgetPasswordActivity;->access$0(Lcom/cymobile/ymwork/act/ForgetPasswordActivity;)V

    .line 77
    return-void
.end method
