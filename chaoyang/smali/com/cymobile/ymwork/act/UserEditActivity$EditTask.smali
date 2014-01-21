.class Lcom/cymobile/ymwork/act/UserEditActivity$EditTask;
.super Landroid/os/AsyncTask;
.source "UserEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/act/UserEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EditTask"
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

.field final synthetic this$0:Lcom/cymobile/ymwork/act/UserEditActivity;


# direct methods
.method private constructor <init>(Lcom/cymobile/ymwork/act/UserEditActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 285
    iput-object p1, p0, Lcom/cymobile/ymwork/act/UserEditActivity$EditTask;->this$0:Lcom/cymobile/ymwork/act/UserEditActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cymobile/ymwork/act/UserEditActivity;Lcom/cymobile/ymwork/act/UserEditActivity$EditTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 285
    invoke-direct {p0, p1}, Lcom/cymobile/ymwork/act/UserEditActivity$EditTask;-><init>(Lcom/cymobile/ymwork/act/UserEditActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/act/UserEditActivity$EditTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 20
    .parameter "params"

    .prologue
    .line 296
    const/4 v15, 0x0

    .line 297
    .local v15, result:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cymobile/ymwork/act/UserEditActivity$EditTask;->this$0:Lcom/cymobile/ymwork/act/UserEditActivity;

    invoke-virtual {v2}, Lcom/cymobile/ymwork/act/UserEditActivity;->getApplication()Landroid/app/Application;

    move-result-object v14

    check-cast v14, Lcom/cymobile/ymwork/HomeApplication;

    .line 298
    .local v14, homeApplication:Lcom/cymobile/ymwork/HomeApplication;
    invoke-virtual {v14}, Lcom/cymobile/ymwork/HomeApplication;->getServer()Lcom/cymobile/ymwork/server/Server;

    move-result-object v1

    .line 300
    .local v1, server:Lcom/cymobile/ymwork/server/Server;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cymobile/ymwork/act/UserEditActivity$EditTask;->this$0:Lcom/cymobile/ymwork/act/UserEditActivity;

    #getter for: Lcom/cymobile/ymwork/act/UserEditActivity;->usernameEditText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/cymobile/ymwork/act/UserEditActivity;->access$1(Lcom/cymobile/ymwork/act/UserEditActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 301
    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    .line 302
    .local v5, UserName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cymobile/ymwork/act/UserEditActivity$EditTask;->this$0:Lcom/cymobile/ymwork/act/UserEditActivity;

    #getter for: Lcom/cymobile/ymwork/act/UserEditActivity;->phoneEditText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/cymobile/ymwork/act/UserEditActivity;->access$2(Lcom/cymobile/ymwork/act/UserEditActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 303
    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    .line 304
    .local v4, phoneNumber:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cymobile/ymwork/act/UserEditActivity$EditTask;->this$0:Lcom/cymobile/ymwork/act/UserEditActivity;

    #getter for: Lcom/cymobile/ymwork/act/UserEditActivity;->passwordEditText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/cymobile/ymwork/act/UserEditActivity;->access$3(Lcom/cymobile/ymwork/act/UserEditActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    .line 306
    .local v6, password:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cymobile/ymwork/act/UserEditActivity$EditTask;->this$0:Lcom/cymobile/ymwork/act/UserEditActivity;

    #getter for: Lcom/cymobile/ymwork/act/UserEditActivity;->isadmincheckbox:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/cymobile/ymwork/act/UserEditActivity;->access$4(Lcom/cymobile/ymwork/act/UserEditActivity;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v9

    .line 307
    .local v9, isAdamin:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cymobile/ymwork/act/UserEditActivity$EditTask;->this$0:Lcom/cymobile/ymwork/act/UserEditActivity;

    #getter for: Lcom/cymobile/ymwork/act/UserEditActivity;->descText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/cymobile/ymwork/act/UserEditActivity;->access$5(Lcom/cymobile/ymwork/act/UserEditActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v10

    .line 308
    .local v10, desc:Ljava/lang/String;
    const/4 v11, 0x0

    .line 309
    .local v11, location:Lcom/cymobile/ymwork/server/Server$Location;
    invoke-virtual {v14}, Lcom/cymobile/ymwork/HomeApplication;->getLastKnownLocation()Lcom/cymobile/ymwork/server/Server$Location;

    move-result-object v11

    .line 310
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cymobile/ymwork/act/UserEditActivity$EditTask;->this$0:Lcom/cymobile/ymwork/act/UserEditActivity;

    #getter for: Lcom/cymobile/ymwork/act/UserEditActivity;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/cymobile/ymwork/act/UserEditActivity;->access$6(Lcom/cymobile/ymwork/act/UserEditActivity;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "key_GlobalZoneId"

    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 311
    .local v7, zoneId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cymobile/ymwork/act/UserEditActivity$EditTask;->this$0:Lcom/cymobile/ymwork/act/UserEditActivity;

    #getter for: Lcom/cymobile/ymwork/act/UserEditActivity;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/cymobile/ymwork/act/UserEditActivity;->access$6(Lcom/cymobile/ymwork/act/UserEditActivity;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "key_GlobalZoneName"

    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 312
    .local v8, zoneName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cymobile/ymwork/act/UserEditActivity$EditTask;->this$0:Lcom/cymobile/ymwork/act/UserEditActivity;

    #getter for: Lcom/cymobile/ymwork/act/UserEditActivity;->zoneSpinner:Landroid/widget/Spinner;
    invoke-static {v2}, Lcom/cymobile/ymwork/act/UserEditActivity;->access$7(Lcom/cymobile/ymwork/act/UserEditActivity;)Landroid/widget/Spinner;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v17

    .line 313
    .local v17, zoneSelected:I
    if-lez v17, :cond_0

    .line 314
    invoke-static {}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getSubZone()Lcom/cymobile/ymwork/types/Group;

    move-result-object v18

    .line 315
    .local v18, zones:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/Zone;>;"
    add-int/lit8 v2, v17, -0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/cymobile/ymwork/types/Group;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/cymobile/ymwork/types/Zone;

    .line 316
    .local v16, zone:Lcom/cymobile/ymwork/types/Zone;
    invoke-virtual/range {v16 .. v16}, Lcom/cymobile/ymwork/types/Zone;->getZoneid()Ljava/lang/String;

    move-result-object v7

    .line 317
    invoke-virtual/range {v16 .. v16}, Lcom/cymobile/ymwork/types/Zone;->getZoneName()Ljava/lang/String;

    move-result-object v8

    .line 319
    .end local v16           #zone:Lcom/cymobile/ymwork/types/Zone;
    .end local v18           #zones:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/Zone;>;"
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cymobile/ymwork/act/UserEditActivity$EditTask;->this$0:Lcom/cymobile/ymwork/act/UserEditActivity;

    #getter for: Lcom/cymobile/ymwork/act/UserEditActivity;->contexts:Landroid/content/Context;
    invoke-static {v2}, Lcom/cymobile/ymwork/act/UserEditActivity;->access$8(Lcom/cymobile/ymwork/act/UserEditActivity;)Landroid/content/Context;

    move-result-object v2

    const-string v3, ""

    invoke-virtual/range {v1 .. v11}, Lcom/cymobile/ymwork/server/Server;->userUpdate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/cymobile/ymwork/server/Server$Location;)Lcom/cymobile/ymwork/types/CommonResult;

    move-result-object v13

    .line 320
    .local v13, editUser:Lcom/cymobile/ymwork/types/CommonResult;
    if-eqz v13, :cond_1

    .line 321
    invoke-virtual {v13}, Lcom/cymobile/ymwork/types/CommonResult;->getResult()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    .line 327
    .end local v4           #phoneNumber:Ljava/lang/String;
    .end local v5           #UserName:Ljava/lang/String;
    .end local v6           #password:Ljava/lang/String;
    .end local v7           #zoneId:Ljava/lang/String;
    .end local v8           #zoneName:Ljava/lang/String;
    .end local v9           #isAdamin:Z
    .end local v10           #desc:Ljava/lang/String;
    .end local v11           #location:Lcom/cymobile/ymwork/server/Server$Location;
    .end local v13           #editUser:Lcom/cymobile/ymwork/types/CommonResult;
    .end local v17           #zoneSelected:I
    :cond_1
    :goto_0
    return-object v15

    .line 323
    :catch_0
    move-exception v12

    .line 324
    .local v12, e:Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 325
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/cymobile/ymwork/act/UserEditActivity$EditTask;->mReason:Ljava/lang/Exception;

    goto :goto_0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/cymobile/ymwork/act/UserEditActivity$EditTask;->this$0:Lcom/cymobile/ymwork/act/UserEditActivity;

    #calls: Lcom/cymobile/ymwork/act/UserEditActivity;->dismissProgressDialog()V
    invoke-static {v0}, Lcom/cymobile/ymwork/act/UserEditActivity;->access$9(Lcom/cymobile/ymwork/act/UserEditActivity;)V

    .line 369
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/act/UserEditActivity$EditTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 7
    .parameter "result"

    .prologue
    const v4, 0x7f09005e

    const/4 v6, 0x1

    .line 332
    iget-object v3, p0, Lcom/cymobile/ymwork/act/UserEditActivity$EditTask;->this$0:Lcom/cymobile/ymwork/act/UserEditActivity;

    #calls: Lcom/cymobile/ymwork/act/UserEditActivity;->dismissProgressDialog()V
    invoke-static {v3}, Lcom/cymobile/ymwork/act/UserEditActivity;->access$9(Lcom/cymobile/ymwork/act/UserEditActivity;)V

    .line 333
    iget-object v3, p0, Lcom/cymobile/ymwork/act/UserEditActivity$EditTask;->mReason:Ljava/lang/Exception;

    if-eqz v3, :cond_3

    .line 334
    iget-object v3, p0, Lcom/cymobile/ymwork/act/UserEditActivity$EditTask;->mReason:Ljava/lang/Exception;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/cymobile/ymwork/act/UserEditActivity$EditTask;->mReason:Ljava/lang/Exception;

    instance-of v3, v3, Lcom/cymobile/ymwork/server/error/ServerException;

    if-eqz v3, :cond_2

    .line 335
    iget-object v2, p0, Lcom/cymobile/ymwork/act/UserEditActivity$EditTask;->mReason:Ljava/lang/Exception;

    check-cast v2, Lcom/cymobile/ymwork/server/error/ServerException;

    .line 336
    .local v2, serverException:Lcom/cymobile/ymwork/server/error/ServerException;
    invoke-virtual {v2}, Lcom/cymobile/ymwork/server/error/ServerException;->getErrorCode()I

    move-result v0

    .line 337
    .local v0, code:I
    if-lez v0, :cond_0

    const/16 v3, 0x42

    if-ne v0, v3, :cond_0

    .line 338
    iget-object v3, p0, Lcom/cymobile/ymwork/act/UserEditActivity$EditTask;->this$0:Lcom/cymobile/ymwork/act/UserEditActivity;

    invoke-virtual {v2}, Lcom/cymobile/ymwork/server/error/ServerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 364
    .end local v0           #code:I
    .end local v2           #serverException:Lcom/cymobile/ymwork/server/error/ServerException;
    :goto_0
    return-void

    .line 339
    .restart local v0       #code:I
    .restart local v2       #serverException:Lcom/cymobile/ymwork/server/error/ServerException;
    :cond_0
    if-lez v0, :cond_1

    const/16 v3, 0x1e

    if-ne v0, v3, :cond_1

    .line 340
    iget-object v3, p0, Lcom/cymobile/ymwork/act/UserEditActivity$EditTask;->this$0:Lcom/cymobile/ymwork/act/UserEditActivity;

    const v4, 0x7f090068

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 342
    :cond_1
    iget-object v3, p0, Lcom/cymobile/ymwork/act/UserEditActivity$EditTask;->this$0:Lcom/cymobile/ymwork/act/UserEditActivity;

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 345
    .end local v0           #code:I
    .end local v2           #serverException:Lcom/cymobile/ymwork/server/error/ServerException;
    :cond_2
    iget-object v3, p0, Lcom/cymobile/ymwork/act/UserEditActivity$EditTask;->this$0:Lcom/cymobile/ymwork/act/UserEditActivity;

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 348
    :cond_3
    if-eqz p1, :cond_4

    const-string v3, "success"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 349
    iget-object v3, p0, Lcom/cymobile/ymwork/act/UserEditActivity$EditTask;->this$0:Lcom/cymobile/ymwork/act/UserEditActivity;

    .line 350
    iget-object v4, p0, Lcom/cymobile/ymwork/act/UserEditActivity$EditTask;->this$0:Lcom/cymobile/ymwork/act/UserEditActivity;

    const v5, 0x7f090071

    invoke-virtual {v4, v5}, Lcom/cymobile/ymwork/act/UserEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 349
    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 351
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 354
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/cymobile/ymwork/act/UserEditActivity$EditTask;->this$0:Lcom/cymobile/ymwork/act/UserEditActivity;

    .line 355
    const-class v4, Lcom/cymobile/ymwork/act/UserListActivity;

    .line 354
    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 356
    .local v1, intent:Landroid/content/Intent;
    const/high16 v3, 0x400

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 357
    iget-object v3, p0, Lcom/cymobile/ymwork/act/UserEditActivity$EditTask;->this$0:Lcom/cymobile/ymwork/act/UserEditActivity;

    invoke-virtual {v3, v1}, Lcom/cymobile/ymwork/act/UserEditActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 360
    .end local v1           #intent:Landroid/content/Intent;
    :cond_4
    iget-object v3, p0, Lcom/cymobile/ymwork/act/UserEditActivity$EditTask;->this$0:Lcom/cymobile/ymwork/act/UserEditActivity;

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/cymobile/ymwork/act/UserEditActivity$EditTask;->this$0:Lcom/cymobile/ymwork/act/UserEditActivity;

    #calls: Lcom/cymobile/ymwork/act/UserEditActivity;->showProgressDialog()Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/UserEditActivity;->access$0(Lcom/cymobile/ymwork/act/UserEditActivity;)Landroid/app/ProgressDialog;

    .line 292
    return-void
.end method
