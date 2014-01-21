.class Lcom/cymobile/ymwork/act/LoginActivity$LoginTask;
.super Landroid/os/AsyncTask;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/act/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoginTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mReason:Ljava/lang/Exception;

.field final synthetic this$0:Lcom/cymobile/ymwork/act/LoginActivity;


# direct methods
.method private constructor <init>(Lcom/cymobile/ymwork/act/LoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 250
    iput-object p1, p0, Lcom/cymobile/ymwork/act/LoginActivity$LoginTask;->this$0:Lcom/cymobile/ymwork/act/LoginActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cymobile/ymwork/act/LoginActivity;Lcom/cymobile/ymwork/act/LoginActivity$LoginTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 250
    invoke-direct {p0, p1}, Lcom/cymobile/ymwork/act/LoginActivity$LoginTask;-><init>(Lcom/cymobile/ymwork/act/LoginActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 14
    .parameter "params"

    .prologue
    .line 262
    const-string v0, "LoginActivity"

    const-string v11, "doInBackground()"

    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v0, p0, Lcom/cymobile/ymwork/act/LoginActivity$LoginTask;->this$0:Lcom/cymobile/ymwork/act/LoginActivity;

    const-class v11, Lcom/cymobile/ymwork/SettingBase;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x2

    invoke-virtual {v0, v11, v12}, Lcom/cymobile/ymwork/act/LoginActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 265
    .local v8, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 266
    .local v5, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v0, p0, Lcom/cymobile/ymwork/act/LoginActivity$LoginTask;->this$0:Lcom/cymobile/ymwork/act/LoginActivity;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/LoginActivity;->getApplication()Landroid/app/Application;

    move-result-object v7

    check-cast v7, Lcom/cymobile/ymwork/HomeApplication;

    .line 267
    .local v7, homeApplication:Lcom/cymobile/ymwork/HomeApplication;
    invoke-virtual {v7}, Lcom/cymobile/ymwork/HomeApplication;->getServer()Lcom/cymobile/ymwork/server/Server;

    move-result-object v1

    .line 269
    .local v1, server:Lcom/cymobile/ymwork/server/Server;
    :try_start_0
    iget-object v0, p0, Lcom/cymobile/ymwork/act/LoginActivity$LoginTask;->this$0:Lcom/cymobile/ymwork/act/LoginActivity;

    #getter for: Lcom/cymobile/ymwork/act/LoginActivity;->mPhoneUsernameEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/LoginActivity;->access$1(Lcom/cymobile/ymwork/act/LoginActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 270
    .local v2, phoneNumber:Ljava/lang/String;
    iget-object v0, p0, Lcom/cymobile/ymwork/act/LoginActivity$LoginTask;->this$0:Lcom/cymobile/ymwork/act/LoginActivity;

    #getter for: Lcom/cymobile/ymwork/act/LoginActivity;->mPasswordEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/LoginActivity;->access$2(Lcom/cymobile/ymwork/act/LoginActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 272
    .local v3, password:Ljava/lang/String;
    const/4 v4, 0x0

    .line 273
    .local v4, location:Lcom/cymobile/ymwork/server/Server$Location;
    invoke-virtual {v7}, Lcom/cymobile/ymwork/HomeApplication;->getLastKnownLocation()Lcom/cymobile/ymwork/server/Server$Location;

    move-result-object v4

    .line 274
    const/4 v9, 0x0

    .line 275
    .local v9, result:Z
    if-eqz v2, :cond_0

    const-string v0, "13901234567"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    const/4 v9, 0x0

    .line 281
    :goto_0
    if-eqz v9, :cond_2

    .line 283
    invoke-static {v8}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getUserId(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v10

    .line 284
    .local v10, userId:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 285
    new-instance v0, Lcom/cymobile/ymwork/server/error/ServerException;

    iget-object v11, p0, Lcom/cymobile/ymwork/act/LoginActivity$LoginTask;->this$0:Lcom/cymobile/ymwork/act/LoginActivity;

    invoke-virtual {v11}, Lcom/cymobile/ymwork/act/LoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 286
    const v12, 0x7f090045

    .line 285
    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 286
    const-string v12, ""

    const/16 v13, 0x42

    .line 285
    invoke-direct {v0, v11, v12, v13}, Lcom/cymobile/ymwork/server/error/ServerException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    .end local v2           #phoneNumber:Ljava/lang/String;
    .end local v3           #password:Ljava/lang/String;
    .end local v4           #location:Lcom/cymobile/ymwork/server/Server$Location;
    .end local v9           #result:Z
    .end local v10           #userId:Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 294
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 295
    const-string v0, "LoginActivity"

    const-string v11, "Caught Exception logging in."

    invoke-static {v0, v11, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 296
    iput-object v6, p0, Lcom/cymobile/ymwork/act/LoginActivity$LoginTask;->mReason:Ljava/lang/Exception;

    .line 297
    invoke-static {v1, v5}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->logoutUser(Lcom/cymobile/ymwork/server/Server;Landroid/content/SharedPreferences$Editor;)Z

    .line 300
    .end local v6           #e:Ljava/lang/Exception;
    :goto_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_2
    return-object v0

    .line 278
    .restart local v2       #phoneNumber:Ljava/lang/String;
    .restart local v3       #password:Ljava/lang/String;
    .restart local v4       #location:Lcom/cymobile/ymwork/server/Server$Location;
    .restart local v9       #result:Z
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/cymobile/ymwork/act/LoginActivity$LoginTask;->this$0:Lcom/cymobile/ymwork/act/LoginActivity;

    #getter for: Lcom/cymobile/ymwork/act/LoginActivity;->contexts:Landroid/content/Context;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/LoginActivity;->access$3(Lcom/cymobile/ymwork/act/LoginActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static/range {v0 .. v5}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->loginUser(Landroid/content/Context;Lcom/cymobile/ymwork/server/Server;Ljava/lang/String;Ljava/lang/String;Lcom/cymobile/ymwork/server/Server$Location;Landroid/content/SharedPreferences$Editor;)Z

    move-result v9

    goto :goto_0

    .line 288
    .restart local v10       #userId:Ljava/lang/String;
    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_2

    .line 290
    .end local v10           #userId:Ljava/lang/String;
    :cond_2
    const-string v0, "LoginActivity"

    const-string v11, "Login failed"

    invoke-static {v0, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/act/LoginActivity$LoginTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/cymobile/ymwork/act/LoginActivity$LoginTask;->this$0:Lcom/cymobile/ymwork/act/LoginActivity;

    #calls: Lcom/cymobile/ymwork/act/LoginActivity;->dismissProgressDialog()V
    invoke-static {v0}, Lcom/cymobile/ymwork/act/LoginActivity;->access$4(Lcom/cymobile/ymwork/act/LoginActivity;)V

    .line 342
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 8
    .parameter "loggedIn"

    .prologue
    const v7, 0x7f090061

    const/4 v6, 0x1

    .line 305
    const-string v3, "LoginActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onPostExecute(): "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v3, p0, Lcom/cymobile/ymwork/act/LoginActivity$LoginTask;->this$0:Lcom/cymobile/ymwork/act/LoginActivity;

    #calls: Lcom/cymobile/ymwork/act/LoginActivity;->dismissProgressDialog()V
    invoke-static {v3}, Lcom/cymobile/ymwork/act/LoginActivity;->access$4(Lcom/cymobile/ymwork/act/LoginActivity;)V

    .line 308
    iget-object v3, p0, Lcom/cymobile/ymwork/act/LoginActivity$LoginTask;->mReason:Ljava/lang/Exception;

    if-eqz v3, :cond_3

    .line 309
    iget-object v3, p0, Lcom/cymobile/ymwork/act/LoginActivity$LoginTask;->this$0:Lcom/cymobile/ymwork/act/LoginActivity;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.cymobile.ymwork.intent.action.LOGGED_OUT"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/cymobile/ymwork/act/LoginActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 310
    iget-object v3, p0, Lcom/cymobile/ymwork/act/LoginActivity$LoginTask;->mReason:Ljava/lang/Exception;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/cymobile/ymwork/act/LoginActivity$LoginTask;->mReason:Ljava/lang/Exception;

    instance-of v3, v3, Lcom/cymobile/ymwork/server/error/ServerException;

    if-eqz v3, :cond_2

    .line 311
    iget-object v2, p0, Lcom/cymobile/ymwork/act/LoginActivity$LoginTask;->mReason:Ljava/lang/Exception;

    check-cast v2, Lcom/cymobile/ymwork/server/error/ServerException;

    .line 312
    .local v2, serverException:Lcom/cymobile/ymwork/server/error/ServerException;
    invoke-virtual {v2}, Lcom/cymobile/ymwork/server/error/ServerException;->getErrorCode()I

    move-result v0

    .line 313
    .local v0, code:I
    if-lez v0, :cond_0

    const/16 v3, 0x42

    if-ne v0, v3, :cond_0

    .line 314
    iget-object v3, p0, Lcom/cymobile/ymwork/act/LoginActivity$LoginTask;->this$0:Lcom/cymobile/ymwork/act/LoginActivity;

    invoke-virtual {v2}, Lcom/cymobile/ymwork/server/error/ServerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 337
    .end local v0           #code:I
    .end local v2           #serverException:Lcom/cymobile/ymwork/server/error/ServerException;
    :goto_0
    return-void

    .line 315
    .restart local v0       #code:I
    .restart local v2       #serverException:Lcom/cymobile/ymwork/server/error/ServerException;
    :cond_0
    if-lez v0, :cond_1

    const/16 v3, 0x14

    if-ne v0, v3, :cond_1

    .line 316
    iget-object v3, p0, Lcom/cymobile/ymwork/act/LoginActivity$LoginTask;->this$0:Lcom/cymobile/ymwork/act/LoginActivity;

    const v4, 0x7f090062

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 318
    :cond_1
    iget-object v3, p0, Lcom/cymobile/ymwork/act/LoginActivity$LoginTask;->this$0:Lcom/cymobile/ymwork/act/LoginActivity;

    invoke-static {v3, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 321
    .end local v0           #code:I
    .end local v2           #serverException:Lcom/cymobile/ymwork/server/error/ServerException;
    :cond_2
    iget-object v3, p0, Lcom/cymobile/ymwork/act/LoginActivity$LoginTask;->this$0:Lcom/cymobile/ymwork/act/LoginActivity;

    invoke-static {v3, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 324
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 325
    iget-object v3, p0, Lcom/cymobile/ymwork/act/LoginActivity$LoginTask;->this$0:Lcom/cymobile/ymwork/act/LoginActivity;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.cymobile.ymwork.intent.action.LOGGED_IN"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/cymobile/ymwork/act/LoginActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 326
    iget-object v3, p0, Lcom/cymobile/ymwork/act/LoginActivity$LoginTask;->this$0:Lcom/cymobile/ymwork/act/LoginActivity;

    iget-object v4, p0, Lcom/cymobile/ymwork/act/LoginActivity$LoginTask;->this$0:Lcom/cymobile/ymwork/act/LoginActivity;

    const v5, 0x7f090046

    invoke-virtual {v4, v5}, Lcom/cymobile/ymwork/act/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 327
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 328
    iget-object v3, p0, Lcom/cymobile/ymwork/act/LoginActivity$LoginTask;->this$0:Lcom/cymobile/ymwork/act/LoginActivity;

    #getter for: Lcom/cymobile/ymwork/act/LoginActivity;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/LoginActivity;->access$5(Lcom/cymobile/ymwork/act/LoginActivity;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 329
    .local v1, edit:Landroid/content/SharedPreferences$Editor;
    const-string v3, "Pref__new_key_isLogined"

    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 330
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 332
    .end local v1           #edit:Landroid/content/SharedPreferences$Editor;
    :cond_4
    iget-object v3, p0, Lcom/cymobile/ymwork/act/LoginActivity$LoginTask;->this$0:Lcom/cymobile/ymwork/act/LoginActivity;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.cymobile.ymwork.intent.action.LOGGED_OUT"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/cymobile/ymwork/act/LoginActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 333
    iget-object v3, p0, Lcom/cymobile/ymwork/act/LoginActivity$LoginTask;->this$0:Lcom/cymobile/ymwork/act/LoginActivity;

    invoke-static {v3, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/act/LoginActivity$LoginTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 256
    const-string v0, "LoginActivity"

    const-string v1, "onPreExecute()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v0, p0, Lcom/cymobile/ymwork/act/LoginActivity$LoginTask;->this$0:Lcom/cymobile/ymwork/act/LoginActivity;

    #calls: Lcom/cymobile/ymwork/act/LoginActivity;->showProgressDialog()Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/LoginActivity;->access$0(Lcom/cymobile/ymwork/act/LoginActivity;)Landroid/app/ProgressDialog;

    .line 258
    return-void
.end method
