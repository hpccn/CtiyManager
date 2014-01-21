.class Lcom/cymobile/ymwork/act/ChangePasswordActivity$ChangeTask;
.super Landroid/os/AsyncTask;
.source "ChangePasswordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/act/ChangePasswordActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangeTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mReason:Ljava/lang/Exception;

.field final synthetic this$0:Lcom/cymobile/ymwork/act/ChangePasswordActivity;


# direct methods
.method private constructor <init>(Lcom/cymobile/ymwork/act/ChangePasswordActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 224
    iput-object p1, p0, Lcom/cymobile/ymwork/act/ChangePasswordActivity$ChangeTask;->this$0:Lcom/cymobile/ymwork/act/ChangePasswordActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cymobile/ymwork/act/ChangePasswordActivity;Lcom/cymobile/ymwork/act/ChangePasswordActivity$ChangeTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 224
    invoke-direct {p0, p1}, Lcom/cymobile/ymwork/act/ChangePasswordActivity$ChangeTask;-><init>(Lcom/cymobile/ymwork/act/ChangePasswordActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/act/ChangePasswordActivity$ChangeTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 12
    .parameter "params"

    .prologue
    .line 235
    const/4 v9, 0x0

    .line 236
    .local v9, result:Ljava/lang/String;
    iget-object v1, p0, Lcom/cymobile/ymwork/act/ChangePasswordActivity$ChangeTask;->this$0:Lcom/cymobile/ymwork/act/ChangePasswordActivity;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/ChangePasswordActivity;->getApplication()Landroid/app/Application;

    move-result-object v8

    check-cast v8, Lcom/cymobile/ymwork/HomeApplication;

    .line 237
    .local v8, homeApplication:Lcom/cymobile/ymwork/HomeApplication;
    invoke-virtual {v8}, Lcom/cymobile/ymwork/HomeApplication;->getServer()Lcom/cymobile/ymwork/server/Server;

    move-result-object v0

    .line 239
    .local v0, server:Lcom/cymobile/ymwork/server/Server;
    :try_start_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/ChangePasswordActivity$ChangeTask;->this$0:Lcom/cymobile/ymwork/act/ChangePasswordActivity;

    #getter for: Lcom/cymobile/ymwork/act/ChangePasswordActivity;->oldpasswordEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/cymobile/ymwork/act/ChangePasswordActivity;->access$1(Lcom/cymobile/ymwork/act/ChangePasswordActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 240
    .local v3, oldpassword:Ljava/lang/String;
    iget-object v1, p0, Lcom/cymobile/ymwork/act/ChangePasswordActivity$ChangeTask;->this$0:Lcom/cymobile/ymwork/act/ChangePasswordActivity;

    #getter for: Lcom/cymobile/ymwork/act/ChangePasswordActivity;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/cymobile/ymwork/act/ChangePasswordActivity;->access$2(Lcom/cymobile/ymwork/act/ChangePasswordActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v10, "key_newGlobalUserPhone"

    const-string v11, ""

    invoke-interface {v1, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 241
    .local v2, phone:Ljava/lang/String;
    iget-object v1, p0, Lcom/cymobile/ymwork/act/ChangePasswordActivity$ChangeTask;->this$0:Lcom/cymobile/ymwork/act/ChangePasswordActivity;

    #getter for: Lcom/cymobile/ymwork/act/ChangePasswordActivity;->passwordEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/cymobile/ymwork/act/ChangePasswordActivity;->access$3(Lcom/cymobile/ymwork/act/ChangePasswordActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    .line 243
    .local v4, password:Ljava/lang/String;
    const/4 v5, 0x0

    .line 244
    .local v5, location:Lcom/cymobile/ymwork/server/Server$Location;
    invoke-virtual {v8}, Lcom/cymobile/ymwork/HomeApplication;->getLastKnownLocation()Lcom/cymobile/ymwork/server/Server$Location;

    move-result-object v5

    .line 246
    iget-object v1, p0, Lcom/cymobile/ymwork/act/ChangePasswordActivity$ChangeTask;->this$0:Lcom/cymobile/ymwork/act/ChangePasswordActivity;

    #getter for: Lcom/cymobile/ymwork/act/ChangePasswordActivity;->contexts:Landroid/content/Context;
    invoke-static {v1}, Lcom/cymobile/ymwork/act/ChangePasswordActivity;->access$4(Lcom/cymobile/ymwork/act/ChangePasswordActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Lcom/cymobile/ymwork/server/Server;->changePasswd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cymobile/ymwork/server/Server$Location;)Lcom/cymobile/ymwork/types/CommonResult;

    move-result-object v6

    .line 247
    .local v6, changeUser:Lcom/cymobile/ymwork/types/CommonResult;
    if-eqz v6, :cond_0

    .line 248
    invoke-virtual {v6}, Lcom/cymobile/ymwork/types/CommonResult;->getResult()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 255
    .end local v2           #phone:Ljava/lang/String;
    .end local v3           #oldpassword:Ljava/lang/String;
    .end local v4           #password:Ljava/lang/String;
    .end local v5           #location:Lcom/cymobile/ymwork/server/Server$Location;
    .end local v6           #changeUser:Lcom/cymobile/ymwork/types/CommonResult;
    :cond_0
    :goto_0
    return-object v9

    .line 250
    :catch_0
    move-exception v7

    .line 251
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 252
    iput-object v7, p0, Lcom/cymobile/ymwork/act/ChangePasswordActivity$ChangeTask;->mReason:Ljava/lang/Exception;

    goto :goto_0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ChangePasswordActivity$ChangeTask;->this$0:Lcom/cymobile/ymwork/act/ChangePasswordActivity;

    #calls: Lcom/cymobile/ymwork/act/ChangePasswordActivity;->dismissProgressDialog()V
    invoke-static {v0}, Lcom/cymobile/ymwork/act/ChangePasswordActivity;->access$5(Lcom/cymobile/ymwork/act/ChangePasswordActivity;)V

    .line 300
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/act/ChangePasswordActivity$ChangeTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 7
    .parameter "result"

    .prologue
    const v4, 0x7f09005e

    const/4 v6, 0x1

    .line 260
    iget-object v3, p0, Lcom/cymobile/ymwork/act/ChangePasswordActivity$ChangeTask;->this$0:Lcom/cymobile/ymwork/act/ChangePasswordActivity;

    #calls: Lcom/cymobile/ymwork/act/ChangePasswordActivity;->dismissProgressDialog()V
    invoke-static {v3}, Lcom/cymobile/ymwork/act/ChangePasswordActivity;->access$5(Lcom/cymobile/ymwork/act/ChangePasswordActivity;)V

    .line 261
    iget-object v3, p0, Lcom/cymobile/ymwork/act/ChangePasswordActivity$ChangeTask;->mReason:Ljava/lang/Exception;

    if-eqz v3, :cond_3

    .line 262
    iget-object v3, p0, Lcom/cymobile/ymwork/act/ChangePasswordActivity$ChangeTask;->mReason:Ljava/lang/Exception;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/cymobile/ymwork/act/ChangePasswordActivity$ChangeTask;->mReason:Ljava/lang/Exception;

    instance-of v3, v3, Lcom/cymobile/ymwork/server/error/ServerException;

    if-eqz v3, :cond_2

    .line 263
    iget-object v2, p0, Lcom/cymobile/ymwork/act/ChangePasswordActivity$ChangeTask;->mReason:Ljava/lang/Exception;

    check-cast v2, Lcom/cymobile/ymwork/server/error/ServerException;

    .line 264
    .local v2, serverException:Lcom/cymobile/ymwork/server/error/ServerException;
    invoke-virtual {v2}, Lcom/cymobile/ymwork/server/error/ServerException;->getErrorCode()I

    move-result v0

    .line 265
    .local v0, code:I
    if-lez v0, :cond_0

    const/16 v3, 0x42

    if-ne v0, v3, :cond_0

    .line 266
    iget-object v3, p0, Lcom/cymobile/ymwork/act/ChangePasswordActivity$ChangeTask;->this$0:Lcom/cymobile/ymwork/act/ChangePasswordActivity;

    invoke-virtual {v2}, Lcom/cymobile/ymwork/server/error/ServerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 295
    .end local v0           #code:I
    .end local v2           #serverException:Lcom/cymobile/ymwork/server/error/ServerException;
    :goto_0
    return-void

    .line 267
    .restart local v0       #code:I
    .restart local v2       #serverException:Lcom/cymobile/ymwork/server/error/ServerException;
    :cond_0
    if-lez v0, :cond_1

    const/16 v3, 0x1e

    if-ne v0, v3, :cond_1

    .line 268
    iget-object v3, p0, Lcom/cymobile/ymwork/act/ChangePasswordActivity$ChangeTask;->this$0:Lcom/cymobile/ymwork/act/ChangePasswordActivity;

    const v4, 0x7f090068

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 270
    :cond_1
    iget-object v3, p0, Lcom/cymobile/ymwork/act/ChangePasswordActivity$ChangeTask;->this$0:Lcom/cymobile/ymwork/act/ChangePasswordActivity;

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 273
    .end local v0           #code:I
    .end local v2           #serverException:Lcom/cymobile/ymwork/server/error/ServerException;
    :cond_2
    iget-object v3, p0, Lcom/cymobile/ymwork/act/ChangePasswordActivity$ChangeTask;->this$0:Lcom/cymobile/ymwork/act/ChangePasswordActivity;

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 276
    :cond_3
    if-eqz p1, :cond_4

    const-string v3, "success"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 277
    iget-object v3, p0, Lcom/cymobile/ymwork/act/ChangePasswordActivity$ChangeTask;->this$0:Lcom/cymobile/ymwork/act/ChangePasswordActivity;

    .line 278
    iget-object v4, p0, Lcom/cymobile/ymwork/act/ChangePasswordActivity$ChangeTask;->this$0:Lcom/cymobile/ymwork/act/ChangePasswordActivity;

    const v5, 0x7f090082

    invoke-virtual {v4, v5}, Lcom/cymobile/ymwork/act/ChangePasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 277
    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 279
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 280
    iget-object v3, p0, Lcom/cymobile/ymwork/act/ChangePasswordActivity$ChangeTask;->this$0:Lcom/cymobile/ymwork/act/ChangePasswordActivity;

    #getter for: Lcom/cymobile/ymwork/act/ChangePasswordActivity;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/ChangePasswordActivity;->access$2(Lcom/cymobile/ymwork/act/ChangePasswordActivity;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 281
    .local v1, edit:Landroid/content/SharedPreferences$Editor;
    const-string v3, "key_GlobalUserPasswd"

    iget-object v4, p0, Lcom/cymobile/ymwork/act/ChangePasswordActivity$ChangeTask;->this$0:Lcom/cymobile/ymwork/act/ChangePasswordActivity;

    #getter for: Lcom/cymobile/ymwork/act/ChangePasswordActivity;->passwordEditText:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/cymobile/ymwork/act/ChangePasswordActivity;->access$3(Lcom/cymobile/ymwork/act/ChangePasswordActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 282
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 288
    iget-object v3, p0, Lcom/cymobile/ymwork/act/ChangePasswordActivity$ChangeTask;->this$0:Lcom/cymobile/ymwork/act/ChangePasswordActivity;

    invoke-virtual {v3}, Lcom/cymobile/ymwork/act/ChangePasswordActivity;->onBackPressed()V

    goto :goto_0

    .line 291
    .end local v1           #edit:Landroid/content/SharedPreferences$Editor;
    :cond_4
    iget-object v3, p0, Lcom/cymobile/ymwork/act/ChangePasswordActivity$ChangeTask;->this$0:Lcom/cymobile/ymwork/act/ChangePasswordActivity;

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ChangePasswordActivity$ChangeTask;->this$0:Lcom/cymobile/ymwork/act/ChangePasswordActivity;

    #calls: Lcom/cymobile/ymwork/act/ChangePasswordActivity;->showProgressDialog()Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/ChangePasswordActivity;->access$0(Lcom/cymobile/ymwork/act/ChangePasswordActivity;)Landroid/app/ProgressDialog;

    .line 231
    return-void
.end method
