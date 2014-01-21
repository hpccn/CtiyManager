.class Lcom/cymobile/ymwork/act/UserAddActivity$AddTask;
.super Landroid/os/AsyncTask;
.source "UserAddActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/act/UserAddActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddTask"
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

.field final synthetic this$0:Lcom/cymobile/ymwork/act/UserAddActivity;


# direct methods
.method private constructor <init>(Lcom/cymobile/ymwork/act/UserAddActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 261
    iput-object p1, p0, Lcom/cymobile/ymwork/act/UserAddActivity$AddTask;->this$0:Lcom/cymobile/ymwork/act/UserAddActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cymobile/ymwork/act/UserAddActivity;Lcom/cymobile/ymwork/act/UserAddActivity$AddTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 261
    invoke-direct {p0, p1}, Lcom/cymobile/ymwork/act/UserAddActivity$AddTask;-><init>(Lcom/cymobile/ymwork/act/UserAddActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/act/UserAddActivity$AddTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 21
    .parameter "params"

    .prologue
    .line 271
    const/4 v15, 0x0

    .line 272
    .local v15, result:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cymobile/ymwork/act/UserAddActivity$AddTask;->this$0:Lcom/cymobile/ymwork/act/UserAddActivity;

    invoke-virtual {v3}, Lcom/cymobile/ymwork/act/UserAddActivity;->getApplication()Landroid/app/Application;

    move-result-object v14

    check-cast v14, Lcom/cymobile/ymwork/HomeApplication;

    .line 273
    .local v14, homeApplication:Lcom/cymobile/ymwork/HomeApplication;
    invoke-virtual {v14}, Lcom/cymobile/ymwork/HomeApplication;->getServer()Lcom/cymobile/ymwork/server/Server;

    move-result-object v2

    .line 275
    .local v2, server:Lcom/cymobile/ymwork/server/Server;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cymobile/ymwork/act/UserAddActivity$AddTask;->this$0:Lcom/cymobile/ymwork/act/UserAddActivity;

    #getter for: Lcom/cymobile/ymwork/act/UserAddActivity;->usernameEditText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/UserAddActivity;->access$1(Lcom/cymobile/ymwork/act/UserAddActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 276
    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    .line 277
    .local v4, UserName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cymobile/ymwork/act/UserAddActivity$AddTask;->this$0:Lcom/cymobile/ymwork/act/UserAddActivity;

    #getter for: Lcom/cymobile/ymwork/act/UserAddActivity;->phoneEditText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/UserAddActivity;->access$2(Lcom/cymobile/ymwork/act/UserAddActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 278
    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    .line 279
    .local v5, phoneNumber:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cymobile/ymwork/act/UserAddActivity$AddTask;->this$0:Lcom/cymobile/ymwork/act/UserAddActivity;

    #getter for: Lcom/cymobile/ymwork/act/UserAddActivity;->passwordEditText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/UserAddActivity;->access$3(Lcom/cymobile/ymwork/act/UserAddActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    .line 280
    .local v6, password:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cymobile/ymwork/act/UserAddActivity$AddTask;->this$0:Lcom/cymobile/ymwork/act/UserAddActivity;

    #getter for: Lcom/cymobile/ymwork/act/UserAddActivity;->descEditText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/UserAddActivity;->access$4(Lcom/cymobile/ymwork/act/UserAddActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v10

    .line 282
    .local v10, desc:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cymobile/ymwork/act/UserAddActivity$AddTask;->this$0:Lcom/cymobile/ymwork/act/UserAddActivity;

    #getter for: Lcom/cymobile/ymwork/act/UserAddActivity;->isadmincheckbox:Landroid/widget/CheckBox;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/UserAddActivity;->access$5(Lcom/cymobile/ymwork/act/UserAddActivity;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v7

    .line 283
    .local v7, isAdamin:Z
    const/4 v11, 0x0

    .line 284
    .local v11, location:Lcom/cymobile/ymwork/server/Server$Location;
    invoke-virtual {v14}, Lcom/cymobile/ymwork/HomeApplication;->getLastKnownLocation()Lcom/cymobile/ymwork/server/Server$Location;

    move-result-object v11

    .line 285
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cymobile/ymwork/act/UserAddActivity$AddTask;->this$0:Lcom/cymobile/ymwork/act/UserAddActivity;

    #getter for: Lcom/cymobile/ymwork/act/UserAddActivity;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/UserAddActivity;->access$6(Lcom/cymobile/ymwork/act/UserAddActivity;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v19, "key_GlobalZoneId"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 286
    .local v8, zoneId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cymobile/ymwork/act/UserAddActivity$AddTask;->this$0:Lcom/cymobile/ymwork/act/UserAddActivity;

    #getter for: Lcom/cymobile/ymwork/act/UserAddActivity;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/UserAddActivity;->access$6(Lcom/cymobile/ymwork/act/UserAddActivity;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v19, "key_GlobalZoneName"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 287
    .local v9, zoneName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cymobile/ymwork/act/UserAddActivity$AddTask;->this$0:Lcom/cymobile/ymwork/act/UserAddActivity;

    #getter for: Lcom/cymobile/ymwork/act/UserAddActivity;->zoneSpinner:Landroid/widget/Spinner;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/UserAddActivity;->access$7(Lcom/cymobile/ymwork/act/UserAddActivity;)Landroid/widget/Spinner;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v17

    .line 288
    .local v17, zoneSelected:I
    if-lez v17, :cond_0

    .line 289
    invoke-static {}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getSubZone()Lcom/cymobile/ymwork/types/Group;

    move-result-object v18

    .line 290
    .local v18, zones:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/Zone;>;"
    add-int/lit8 v3, v17, -0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/cymobile/ymwork/types/Group;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/cymobile/ymwork/types/Zone;

    .line 291
    .local v16, zone:Lcom/cymobile/ymwork/types/Zone;
    invoke-virtual/range {v16 .. v16}, Lcom/cymobile/ymwork/types/Zone;->getZoneid()Ljava/lang/String;

    move-result-object v8

    .line 292
    invoke-virtual/range {v16 .. v16}, Lcom/cymobile/ymwork/types/Zone;->getZoneName()Ljava/lang/String;

    move-result-object v9

    .line 294
    .end local v16           #zone:Lcom/cymobile/ymwork/types/Zone;
    .end local v18           #zones:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/Zone;>;"
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cymobile/ymwork/act/UserAddActivity$AddTask;->this$0:Lcom/cymobile/ymwork/act/UserAddActivity;

    #getter for: Lcom/cymobile/ymwork/act/UserAddActivity;->contexts:Landroid/content/Context;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/UserAddActivity;->access$8(Lcom/cymobile/ymwork/act/UserAddActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual/range {v2 .. v11}, Lcom/cymobile/ymwork/server/Server;->addUser(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cymobile/ymwork/server/Server$Location;)Lcom/cymobile/ymwork/types/CommonResult;

    move-result-object v12

    .line 295
    .local v12, addedUser:Lcom/cymobile/ymwork/types/CommonResult;
    if-eqz v12, :cond_1

    .line 296
    invoke-virtual {v12}, Lcom/cymobile/ymwork/types/CommonResult;->getResult()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    .line 303
    .end local v4           #UserName:Ljava/lang/String;
    .end local v5           #phoneNumber:Ljava/lang/String;
    .end local v6           #password:Ljava/lang/String;
    .end local v7           #isAdamin:Z
    .end local v8           #zoneId:Ljava/lang/String;
    .end local v9           #zoneName:Ljava/lang/String;
    .end local v10           #desc:Ljava/lang/String;
    .end local v11           #location:Lcom/cymobile/ymwork/server/Server$Location;
    .end local v12           #addedUser:Lcom/cymobile/ymwork/types/CommonResult;
    .end local v17           #zoneSelected:I
    :cond_1
    :goto_0
    return-object v15

    .line 298
    :catch_0
    move-exception v13

    .line 299
    .local v13, e:Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    .line 300
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/cymobile/ymwork/act/UserAddActivity$AddTask;->mReason:Ljava/lang/Exception;

    goto :goto_0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/cymobile/ymwork/act/UserAddActivity$AddTask;->this$0:Lcom/cymobile/ymwork/act/UserAddActivity;

    #calls: Lcom/cymobile/ymwork/act/UserAddActivity;->dismissProgressDialog()V
    invoke-static {v0}, Lcom/cymobile/ymwork/act/UserAddActivity;->access$9(Lcom/cymobile/ymwork/act/UserAddActivity;)V

    .line 347
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/act/UserAddActivity$AddTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 7
    .parameter "result"

    .prologue
    const v4, 0x7f09005e

    const/4 v6, 0x1

    .line 308
    iget-object v3, p0, Lcom/cymobile/ymwork/act/UserAddActivity$AddTask;->this$0:Lcom/cymobile/ymwork/act/UserAddActivity;

    #calls: Lcom/cymobile/ymwork/act/UserAddActivity;->dismissProgressDialog()V
    invoke-static {v3}, Lcom/cymobile/ymwork/act/UserAddActivity;->access$9(Lcom/cymobile/ymwork/act/UserAddActivity;)V

    .line 309
    iget-object v3, p0, Lcom/cymobile/ymwork/act/UserAddActivity$AddTask;->mReason:Ljava/lang/Exception;

    if-eqz v3, :cond_4

    .line 310
    iget-object v3, p0, Lcom/cymobile/ymwork/act/UserAddActivity$AddTask;->mReason:Ljava/lang/Exception;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/cymobile/ymwork/act/UserAddActivity$AddTask;->mReason:Ljava/lang/Exception;

    instance-of v3, v3, Lcom/cymobile/ymwork/server/error/ServerException;

    if-eqz v3, :cond_3

    .line 311
    iget-object v2, p0, Lcom/cymobile/ymwork/act/UserAddActivity$AddTask;->mReason:Ljava/lang/Exception;

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
    iget-object v3, p0, Lcom/cymobile/ymwork/act/UserAddActivity$AddTask;->this$0:Lcom/cymobile/ymwork/act/UserAddActivity;

    invoke-virtual {v2}, Lcom/cymobile/ymwork/server/error/ServerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 342
    .end local v0           #code:I
    .end local v2           #serverException:Lcom/cymobile/ymwork/server/error/ServerException;
    :goto_0
    return-void

    .line 315
    .restart local v0       #code:I
    .restart local v2       #serverException:Lcom/cymobile/ymwork/server/error/ServerException;
    :cond_0
    if-lez v0, :cond_1

    const/16 v3, 0x1e

    if-ne v0, v3, :cond_1

    .line 316
    iget-object v3, p0, Lcom/cymobile/ymwork/act/UserAddActivity$AddTask;->this$0:Lcom/cymobile/ymwork/act/UserAddActivity;

    const v4, 0x7f090068

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 317
    :cond_1
    if-lez v0, :cond_2

    const/16 v3, 0x15

    if-ne v0, v3, :cond_2

    .line 318
    iget-object v3, p0, Lcom/cymobile/ymwork/act/UserAddActivity$AddTask;->this$0:Lcom/cymobile/ymwork/act/UserAddActivity;

    const v4, 0x7f090069

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 320
    :cond_2
    iget-object v3, p0, Lcom/cymobile/ymwork/act/UserAddActivity$AddTask;->this$0:Lcom/cymobile/ymwork/act/UserAddActivity;

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 323
    .end local v0           #code:I
    .end local v2           #serverException:Lcom/cymobile/ymwork/server/error/ServerException;
    :cond_3
    iget-object v3, p0, Lcom/cymobile/ymwork/act/UserAddActivity$AddTask;->this$0:Lcom/cymobile/ymwork/act/UserAddActivity;

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 326
    :cond_4
    if-eqz p1, :cond_5

    const-string v3, "success"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 327
    iget-object v3, p0, Lcom/cymobile/ymwork/act/UserAddActivity$AddTask;->this$0:Lcom/cymobile/ymwork/act/UserAddActivity;

    .line 328
    iget-object v4, p0, Lcom/cymobile/ymwork/act/UserAddActivity$AddTask;->this$0:Lcom/cymobile/ymwork/act/UserAddActivity;

    const v5, 0x7f09006a

    invoke-virtual {v4, v5}, Lcom/cymobile/ymwork/act/UserAddActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 327
    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 329
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 332
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/cymobile/ymwork/act/UserAddActivity$AddTask;->this$0:Lcom/cymobile/ymwork/act/UserAddActivity;

    .line 333
    const-class v4, Lcom/cymobile/ymwork/act/UserAddActivity;

    .line 332
    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 334
    .local v1, intent:Landroid/content/Intent;
    const/high16 v3, 0x400

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 335
    iget-object v3, p0, Lcom/cymobile/ymwork/act/UserAddActivity$AddTask;->this$0:Lcom/cymobile/ymwork/act/UserAddActivity;

    invoke-virtual {v3, v1}, Lcom/cymobile/ymwork/act/UserAddActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 338
    .end local v1           #intent:Landroid/content/Intent;
    :cond_5
    iget-object v3, p0, Lcom/cymobile/ymwork/act/UserAddActivity$AddTask;->this$0:Lcom/cymobile/ymwork/act/UserAddActivity;

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/cymobile/ymwork/act/UserAddActivity$AddTask;->this$0:Lcom/cymobile/ymwork/act/UserAddActivity;

    #calls: Lcom/cymobile/ymwork/act/UserAddActivity;->showProgressDialog()Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/UserAddActivity;->access$0(Lcom/cymobile/ymwork/act/UserAddActivity;)Landroid/app/ProgressDialog;

    .line 267
    return-void
.end method
