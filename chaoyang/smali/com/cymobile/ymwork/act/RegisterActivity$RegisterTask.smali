.class Lcom/cymobile/ymwork/act/RegisterActivity$RegisterTask;
.super Landroid/os/AsyncTask;
.source "RegisterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/act/RegisterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RegisterTask"
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

.field final synthetic this$0:Lcom/cymobile/ymwork/act/RegisterActivity;


# direct methods
.method private constructor <init>(Lcom/cymobile/ymwork/act/RegisterActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/cymobile/ymwork/act/RegisterActivity$RegisterTask;->this$0:Lcom/cymobile/ymwork/act/RegisterActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cymobile/ymwork/act/RegisterActivity;Lcom/cymobile/ymwork/act/RegisterActivity$RegisterTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 199
    invoke-direct {p0, p1}, Lcom/cymobile/ymwork/act/RegisterActivity$RegisterTask;-><init>(Lcom/cymobile/ymwork/act/RegisterActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 17
    .parameter "params"

    .prologue
    .line 211
    const-string v1, "RegisterActivity"

    const-string v7, "doInBackground()"

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const/4 v14, 0x0

    .line 213
    .local v14, result:Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cymobile/ymwork/act/RegisterActivity$RegisterTask;->this$0:Lcom/cymobile/ymwork/act/RegisterActivity;

    const-class v7, Lcom/cymobile/ymwork/SettingBase;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v1, v7, v8}, Lcom/cymobile/ymwork/act/RegisterActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 214
    .local v13, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 215
    .local v10, editor:Landroid/content/SharedPreferences$Editor;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cymobile/ymwork/act/RegisterActivity$RegisterTask;->this$0:Lcom/cymobile/ymwork/act/RegisterActivity;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/RegisterActivity;->getApplication()Landroid/app/Application;

    move-result-object v12

    check-cast v12, Lcom/cymobile/ymwork/HomeApplication;

    .line 216
    .local v12, homeApplication:Lcom/cymobile/ymwork/HomeApplication;
    invoke-virtual {v12}, Lcom/cymobile/ymwork/HomeApplication;->getServer()Lcom/cymobile/ymwork/server/Server;

    move-result-object v2

    .line 218
    .local v2, server:Lcom/cymobile/ymwork/server/Server;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cymobile/ymwork/act/RegisterActivity$RegisterTask;->this$0:Lcom/cymobile/ymwork/act/RegisterActivity;

    #getter for: Lcom/cymobile/ymwork/act/RegisterActivity;->mPhoneUsernameEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/cymobile/ymwork/act/RegisterActivity;->access$1(Lcom/cymobile/ymwork/act/RegisterActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 219
    .local v3, phoneNumber:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cymobile/ymwork/act/RegisterActivity$RegisterTask;->this$0:Lcom/cymobile/ymwork/act/RegisterActivity;

    #getter for: Lcom/cymobile/ymwork/act/RegisterActivity;->mUsernameEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/cymobile/ymwork/act/RegisterActivity;->access$2(Lcom/cymobile/ymwork/act/RegisterActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    .line 220
    .local v4, userName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cymobile/ymwork/act/RegisterActivity$RegisterTask;->this$0:Lcom/cymobile/ymwork/act/RegisterActivity;

    #getter for: Lcom/cymobile/ymwork/act/RegisterActivity;->mCompanyEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/cymobile/ymwork/act/RegisterActivity;->access$3(Lcom/cymobile/ymwork/act/RegisterActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    .line 221
    .local v5, workcompany:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cymobile/ymwork/act/RegisterActivity$RegisterTask;->this$0:Lcom/cymobile/ymwork/act/RegisterActivity;

    #getter for: Lcom/cymobile/ymwork/act/RegisterActivity;->mTitleEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/cymobile/ymwork/act/RegisterActivity;->access$4(Lcom/cymobile/ymwork/act/RegisterActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    .line 222
    .local v6, post:Ljava/lang/String;
    const/4 v9, 0x0

    .line 223
    .local v9, location:Lcom/cymobile/ymwork/server/Server$Location;
    invoke-virtual {v12}, Lcom/cymobile/ymwork/HomeApplication;->getLastKnownLocation()Lcom/cymobile/ymwork/server/Server$Location;

    move-result-object v9

    .line 228
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cymobile/ymwork/act/RegisterActivity$RegisterTask;->this$0:Lcom/cymobile/ymwork/act/RegisterActivity;

    #getter for: Lcom/cymobile/ymwork/act/RegisterActivity;->contexts:Landroid/content/Context;
    invoke-static {v1}, Lcom/cymobile/ymwork/act/RegisterActivity;->access$5(Lcom/cymobile/ymwork/act/RegisterActivity;)Landroid/content/Context;

    move-result-object v1

    .line 229
    const-string v7, "key_GlobalZoneId"

    const-string v8, ""

    invoke-interface {v13, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 230
    const-string v8, "key_GlobalZoneName"

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-interface {v13, v8, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 228
    invoke-static/range {v1 .. v10}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->register(Landroid/content/Context;Lcom/cymobile/ymwork/server/Server;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cymobile/ymwork/server/Server$Location;Landroid/content/SharedPreferences$Editor;)Z

    move-result v14

    .line 232
    if-eqz v14, :cond_1

    .line 234
    invoke-static {v13}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getUserId(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v15

    .line 235
    .local v15, userId:Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    new-instance v1, Lcom/cymobile/ymwork/server/error/ServerException;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/cymobile/ymwork/act/RegisterActivity$RegisterTask;->this$0:Lcom/cymobile/ymwork/act/RegisterActivity;

    invoke-virtual {v7}, Lcom/cymobile/ymwork/act/RegisterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 237
    const v8, 0x7f0900dc

    .line 236
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 237
    const-string v8, ""

    const/16 v16, 0x42

    .line 236
    move/from16 v0, v16

    invoke-direct {v1, v7, v8, v0}, Lcom/cymobile/ymwork/server/error/ServerException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    .end local v3           #phoneNumber:Ljava/lang/String;
    .end local v4           #userName:Ljava/lang/String;
    .end local v5           #workcompany:Ljava/lang/String;
    .end local v6           #post:Ljava/lang/String;
    .end local v9           #location:Lcom/cymobile/ymwork/server/Server$Location;
    .end local v15           #userId:Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 245
    .local v11, e:Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 246
    const-string v1, "RegisterActivity"

    const-string v7, "Caught Exception logging in."

    invoke-static {v1, v7, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 247
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/cymobile/ymwork/act/RegisterActivity$RegisterTask;->mReason:Ljava/lang/Exception;

    .line 249
    .end local v11           #e:Ljava/lang/Exception;
    :goto_0
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_1
    return-object v1

    .line 239
    .restart local v3       #phoneNumber:Ljava/lang/String;
    .restart local v4       #userName:Ljava/lang/String;
    .restart local v5       #workcompany:Ljava/lang/String;
    .restart local v6       #post:Ljava/lang/String;
    .restart local v9       #location:Lcom/cymobile/ymwork/server/Server$Location;
    .restart local v15       #userId:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_1

    .line 241
    .end local v15           #userId:Ljava/lang/String;
    :cond_1
    const-string v1, "RegisterActivity"

    const-string v7, "register failed"

    invoke-static {v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/act/RegisterActivity$RegisterTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/cymobile/ymwork/act/RegisterActivity$RegisterTask;->this$0:Lcom/cymobile/ymwork/act/RegisterActivity;

    #calls: Lcom/cymobile/ymwork/act/RegisterActivity;->dismissProgressDialog()V
    invoke-static {v0}, Lcom/cymobile/ymwork/act/RegisterActivity;->access$6(Lcom/cymobile/ymwork/act/RegisterActivity;)V

    .line 291
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 8
    .parameter "loggedIn"

    .prologue
    const v7, 0x7f0900de

    const/4 v6, 0x1

    .line 254
    const-string v3, "RegisterActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onPostExecute(): "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v3, p0, Lcom/cymobile/ymwork/act/RegisterActivity$RegisterTask;->this$0:Lcom/cymobile/ymwork/act/RegisterActivity;

    #calls: Lcom/cymobile/ymwork/act/RegisterActivity;->dismissProgressDialog()V
    invoke-static {v3}, Lcom/cymobile/ymwork/act/RegisterActivity;->access$6(Lcom/cymobile/ymwork/act/RegisterActivity;)V

    .line 257
    iget-object v3, p0, Lcom/cymobile/ymwork/act/RegisterActivity$RegisterTask;->mReason:Ljava/lang/Exception;

    if-eqz v3, :cond_3

    .line 258
    iget-object v3, p0, Lcom/cymobile/ymwork/act/RegisterActivity$RegisterTask;->this$0:Lcom/cymobile/ymwork/act/RegisterActivity;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.cymobile.ymwork.intent.action.LOGGED_OUT"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/cymobile/ymwork/act/RegisterActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 259
    iget-object v3, p0, Lcom/cymobile/ymwork/act/RegisterActivity$RegisterTask;->mReason:Ljava/lang/Exception;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/cymobile/ymwork/act/RegisterActivity$RegisterTask;->mReason:Ljava/lang/Exception;

    instance-of v3, v3, Lcom/cymobile/ymwork/server/error/ServerException;

    if-eqz v3, :cond_2

    .line 260
    iget-object v2, p0, Lcom/cymobile/ymwork/act/RegisterActivity$RegisterTask;->mReason:Ljava/lang/Exception;

    check-cast v2, Lcom/cymobile/ymwork/server/error/ServerException;

    .line 261
    .local v2, serverException:Lcom/cymobile/ymwork/server/error/ServerException;
    invoke-virtual {v2}, Lcom/cymobile/ymwork/server/error/ServerException;->getErrorCode()I

    move-result v0

    .line 262
    .local v0, code:I
    if-lez v0, :cond_0

    const/16 v3, 0x42

    if-ne v0, v3, :cond_0

    .line 263
    iget-object v3, p0, Lcom/cymobile/ymwork/act/RegisterActivity$RegisterTask;->this$0:Lcom/cymobile/ymwork/act/RegisterActivity;

    invoke-virtual {v2}, Lcom/cymobile/ymwork/server/error/ServerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 286
    .end local v0           #code:I
    .end local v2           #serverException:Lcom/cymobile/ymwork/server/error/ServerException;
    :goto_0
    return-void

    .line 264
    .restart local v0       #code:I
    .restart local v2       #serverException:Lcom/cymobile/ymwork/server/error/ServerException;
    :cond_0
    if-lez v0, :cond_1

    const/16 v3, 0x14

    if-ne v0, v3, :cond_1

    .line 265
    iget-object v3, p0, Lcom/cymobile/ymwork/act/RegisterActivity$RegisterTask;->this$0:Lcom/cymobile/ymwork/act/RegisterActivity;

    const v4, 0x7f0900dd

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 267
    :cond_1
    iget-object v3, p0, Lcom/cymobile/ymwork/act/RegisterActivity$RegisterTask;->this$0:Lcom/cymobile/ymwork/act/RegisterActivity;

    invoke-static {v3, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 270
    .end local v0           #code:I
    .end local v2           #serverException:Lcom/cymobile/ymwork/server/error/ServerException;
    :cond_2
    iget-object v3, p0, Lcom/cymobile/ymwork/act/RegisterActivity$RegisterTask;->this$0:Lcom/cymobile/ymwork/act/RegisterActivity;

    invoke-static {v3, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 273
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 274
    iget-object v3, p0, Lcom/cymobile/ymwork/act/RegisterActivity$RegisterTask;->this$0:Lcom/cymobile/ymwork/act/RegisterActivity;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.cymobile.ymwork.intent.action.LOGGED_IN"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/cymobile/ymwork/act/RegisterActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 275
    iget-object v3, p0, Lcom/cymobile/ymwork/act/RegisterActivity$RegisterTask;->this$0:Lcom/cymobile/ymwork/act/RegisterActivity;

    iget-object v4, p0, Lcom/cymobile/ymwork/act/RegisterActivity$RegisterTask;->this$0:Lcom/cymobile/ymwork/act/RegisterActivity;

    const v5, 0x7f090046

    invoke-virtual {v4, v5}, Lcom/cymobile/ymwork/act/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 276
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 277
    iget-object v3, p0, Lcom/cymobile/ymwork/act/RegisterActivity$RegisterTask;->this$0:Lcom/cymobile/ymwork/act/RegisterActivity;

    #getter for: Lcom/cymobile/ymwork/act/RegisterActivity;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/RegisterActivity;->access$7(Lcom/cymobile/ymwork/act/RegisterActivity;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 278
    .local v1, edit:Landroid/content/SharedPreferences$Editor;
    const-string v3, "Pref__new_key_isLogined"

    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 279
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 281
    .end local v1           #edit:Landroid/content/SharedPreferences$Editor;
    :cond_4
    iget-object v3, p0, Lcom/cymobile/ymwork/act/RegisterActivity$RegisterTask;->this$0:Lcom/cymobile/ymwork/act/RegisterActivity;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.cymobile.ymwork.intent.action.LOGGED_OUT"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/cymobile/ymwork/act/RegisterActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 282
    iget-object v3, p0, Lcom/cymobile/ymwork/act/RegisterActivity$RegisterTask;->this$0:Lcom/cymobile/ymwork/act/RegisterActivity;

    const v4, 0x7f090061

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

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

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/act/RegisterActivity$RegisterTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 205
    const-string v0, "RegisterActivity"

    const-string v1, "onPreExecute()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v0, p0, Lcom/cymobile/ymwork/act/RegisterActivity$RegisterTask;->this$0:Lcom/cymobile/ymwork/act/RegisterActivity;

    #calls: Lcom/cymobile/ymwork/act/RegisterActivity;->showProgressDialog()Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/RegisterActivity;->access$0(Lcom/cymobile/ymwork/act/RegisterActivity;)Landroid/app/ProgressDialog;

    .line 207
    return-void
.end method
