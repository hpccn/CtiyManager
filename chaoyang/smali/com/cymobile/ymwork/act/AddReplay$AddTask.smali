.class Lcom/cymobile/ymwork/act/AddReplay$AddTask;
.super Landroid/os/AsyncTask;
.source "AddReplay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/act/AddReplay;
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

.field final synthetic this$0:Lcom/cymobile/ymwork/act/AddReplay;


# direct methods
.method private constructor <init>(Lcom/cymobile/ymwork/act/AddReplay;)V
    .locals 0
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/cymobile/ymwork/act/AddReplay$AddTask;->this$0:Lcom/cymobile/ymwork/act/AddReplay;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cymobile/ymwork/act/AddReplay;Lcom/cymobile/ymwork/act/AddReplay$AddTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 176
    invoke-direct {p0, p1}, Lcom/cymobile/ymwork/act/AddReplay$AddTask;-><init>(Lcom/cymobile/ymwork/act/AddReplay;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/act/AddReplay$AddTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 18
    .parameter "params"

    .prologue
    .line 186
    const/16 v17, 0x0

    .line 187
    .local v17, result:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cymobile/ymwork/act/AddReplay$AddTask;->this$0:Lcom/cymobile/ymwork/act/AddReplay;

    invoke-virtual {v2}, Lcom/cymobile/ymwork/act/AddReplay;->getApplication()Landroid/app/Application;

    move-result-object v13

    check-cast v13, Lcom/cymobile/ymwork/HomeApplication;

    .line 188
    .local v13, homeApplication:Lcom/cymobile/ymwork/HomeApplication;
    invoke-virtual {v13}, Lcom/cymobile/ymwork/HomeApplication;->getServer()Lcom/cymobile/ymwork/server/Server;

    move-result-object v1

    .line 190
    .local v1, server:Lcom/cymobile/ymwork/server/Server;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cymobile/ymwork/act/AddReplay$AddTask;->this$0:Lcom/cymobile/ymwork/act/AddReplay;

    const v3, 0x7f080004

    invoke-virtual {v2, v3}, Lcom/cymobile/ymwork/act/AddReplay;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/EditText;

    .line 191
    .local v16, replyresult:Landroid/widget/EditText;
    invoke-virtual/range {v16 .. v16}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v8

    .line 193
    .local v8, replyresultStr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cymobile/ymwork/act/AddReplay$AddTask;->this$0:Lcom/cymobile/ymwork/act/AddReplay;

    const v3, 0x7f080005

    invoke-virtual {v2, v3}, Lcom/cymobile/ymwork/act/AddReplay;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/EditText;

    .line 194
    .local v15, replydetails:Landroid/widget/EditText;
    invoke-virtual {v15}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v9

    .line 196
    .local v9, replydetailsStr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cymobile/ymwork/act/AddReplay$AddTask;->this$0:Lcom/cymobile/ymwork/act/AddReplay;

    const v3, 0x7f080006

    invoke-virtual {v2, v3}, Lcom/cymobile/ymwork/act/AddReplay;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/EditText;

    .line 197
    .local v14, replydesc:Landroid/widget/EditText;
    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v10

    .line 199
    .local v10, replydescStr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cymobile/ymwork/act/AddReplay$AddTask;->this$0:Lcom/cymobile/ymwork/act/AddReplay;

    iget-object v2, v2, Lcom/cymobile/ymwork/act/AddReplay;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "key_GlobalZoneId"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 200
    .local v6, zoneId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cymobile/ymwork/act/AddReplay$AddTask;->this$0:Lcom/cymobile/ymwork/act/AddReplay;

    iget-object v2, v2, Lcom/cymobile/ymwork/act/AddReplay;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "key_GlobalUserID"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 201
    .local v7, userId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cymobile/ymwork/act/AddReplay$AddTask;->this$0:Lcom/cymobile/ymwork/act/AddReplay;

    iget-object v2, v2, Lcom/cymobile/ymwork/act/AddReplay;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "key_newGlobalUserPhone"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 203
    .local v5, mobile:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cymobile/ymwork/act/AddReplay$AddTask;->this$0:Lcom/cymobile/ymwork/act/AddReplay;

    #getter for: Lcom/cymobile/ymwork/act/AddReplay;->contexts:Landroid/content/Context;
    invoke-static {v2}, Lcom/cymobile/ymwork/act/AddReplay;->access$1(Lcom/cymobile/ymwork/act/AddReplay;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cymobile/ymwork/act/AddReplay$AddTask;->this$0:Lcom/cymobile/ymwork/act/AddReplay;

    #getter for: Lcom/cymobile/ymwork/act/AddReplay;->mCaseid:Ljava/lang/String;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/AddReplay;->access$2(Lcom/cymobile/ymwork/act/AddReplay;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cymobile/ymwork/act/AddReplay$AddTask;->this$0:Lcom/cymobile/ymwork/act/AddReplay;

    #getter for: Lcom/cymobile/ymwork/act/AddReplay;->mClassid:I
    invoke-static {v4}, Lcom/cymobile/ymwork/act/AddReplay;->access$3(Lcom/cymobile/ymwork/act/AddReplay;)I

    move-result v4

    invoke-virtual/range {v1 .. v10}, Lcom/cymobile/ymwork/server/Server;->addReply(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cymobile/ymwork/types/CommonResult;

    move-result-object v11

    .line 204
    .local v11, addedReply:Lcom/cymobile/ymwork/types/CommonResult;
    if-eqz v11, :cond_0

    .line 205
    invoke-virtual {v11}, Lcom/cymobile/ymwork/types/CommonResult;->getResult()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    .line 212
    .end local v5           #mobile:Ljava/lang/String;
    .end local v6           #zoneId:Ljava/lang/String;
    .end local v7           #userId:Ljava/lang/String;
    .end local v8           #replyresultStr:Ljava/lang/String;
    .end local v9           #replydetailsStr:Ljava/lang/String;
    .end local v10           #replydescStr:Ljava/lang/String;
    .end local v11           #addedReply:Lcom/cymobile/ymwork/types/CommonResult;
    .end local v14           #replydesc:Landroid/widget/EditText;
    .end local v15           #replydetails:Landroid/widget/EditText;
    .end local v16           #replyresult:Landroid/widget/EditText;
    :cond_0
    :goto_0
    return-object v17

    .line 207
    :catch_0
    move-exception v12

    .line 208
    .local v12, e:Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 209
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/cymobile/ymwork/act/AddReplay$AddTask;->mReason:Ljava/lang/Exception;

    goto :goto_0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/cymobile/ymwork/act/AddReplay$AddTask;->this$0:Lcom/cymobile/ymwork/act/AddReplay;

    #calls: Lcom/cymobile/ymwork/act/AddReplay;->dismissProgressDialog()V
    invoke-static {v0}, Lcom/cymobile/ymwork/act/AddReplay;->access$4(Lcom/cymobile/ymwork/act/AddReplay;)V

    .line 258
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/act/AddReplay$AddTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 7
    .parameter "result"

    .prologue
    const v4, 0x7f09005e

    const/4 v6, 0x1

    .line 217
    iget-object v3, p0, Lcom/cymobile/ymwork/act/AddReplay$AddTask;->this$0:Lcom/cymobile/ymwork/act/AddReplay;

    #calls: Lcom/cymobile/ymwork/act/AddReplay;->dismissProgressDialog()V
    invoke-static {v3}, Lcom/cymobile/ymwork/act/AddReplay;->access$4(Lcom/cymobile/ymwork/act/AddReplay;)V

    .line 218
    iget-object v3, p0, Lcom/cymobile/ymwork/act/AddReplay$AddTask;->mReason:Ljava/lang/Exception;

    if-eqz v3, :cond_4

    .line 219
    iget-object v3, p0, Lcom/cymobile/ymwork/act/AddReplay$AddTask;->mReason:Ljava/lang/Exception;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/cymobile/ymwork/act/AddReplay$AddTask;->mReason:Ljava/lang/Exception;

    instance-of v3, v3, Lcom/cymobile/ymwork/server/error/ServerException;

    if-eqz v3, :cond_3

    .line 220
    iget-object v2, p0, Lcom/cymobile/ymwork/act/AddReplay$AddTask;->mReason:Ljava/lang/Exception;

    check-cast v2, Lcom/cymobile/ymwork/server/error/ServerException;

    .line 221
    .local v2, serverException:Lcom/cymobile/ymwork/server/error/ServerException;
    invoke-virtual {v2}, Lcom/cymobile/ymwork/server/error/ServerException;->getErrorCode()I

    move-result v0

    .line 222
    .local v0, code:I
    if-lez v0, :cond_0

    const/16 v3, 0x42

    if-ne v0, v3, :cond_0

    .line 223
    iget-object v3, p0, Lcom/cymobile/ymwork/act/AddReplay$AddTask;->this$0:Lcom/cymobile/ymwork/act/AddReplay;

    invoke-virtual {v2}, Lcom/cymobile/ymwork/server/error/ServerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 253
    .end local v0           #code:I
    .end local v2           #serverException:Lcom/cymobile/ymwork/server/error/ServerException;
    :goto_0
    return-void

    .line 224
    .restart local v0       #code:I
    .restart local v2       #serverException:Lcom/cymobile/ymwork/server/error/ServerException;
    :cond_0
    if-lez v0, :cond_1

    const/16 v3, 0x1e

    if-ne v0, v3, :cond_1

    .line 225
    iget-object v3, p0, Lcom/cymobile/ymwork/act/AddReplay$AddTask;->this$0:Lcom/cymobile/ymwork/act/AddReplay;

    const v4, 0x7f090068

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 226
    :cond_1
    if-lez v0, :cond_2

    const/16 v3, 0x15

    if-ne v0, v3, :cond_2

    .line 227
    iget-object v3, p0, Lcom/cymobile/ymwork/act/AddReplay$AddTask;->this$0:Lcom/cymobile/ymwork/act/AddReplay;

    const v4, 0x7f090069

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 229
    :cond_2
    iget-object v3, p0, Lcom/cymobile/ymwork/act/AddReplay$AddTask;->this$0:Lcom/cymobile/ymwork/act/AddReplay;

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 232
    .end local v0           #code:I
    .end local v2           #serverException:Lcom/cymobile/ymwork/server/error/ServerException;
    :cond_3
    iget-object v3, p0, Lcom/cymobile/ymwork/act/AddReplay$AddTask;->this$0:Lcom/cymobile/ymwork/act/AddReplay;

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 235
    :cond_4
    if-eqz p1, :cond_5

    const-string v3, "success"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 236
    iget-object v3, p0, Lcom/cymobile/ymwork/act/AddReplay$AddTask;->this$0:Lcom/cymobile/ymwork/act/AddReplay;

    .line 237
    iget-object v4, p0, Lcom/cymobile/ymwork/act/AddReplay$AddTask;->this$0:Lcom/cymobile/ymwork/act/AddReplay;

    const v5, 0x7f09006a

    invoke-virtual {v4, v5}, Lcom/cymobile/ymwork/act/AddReplay;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 236
    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 238
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 241
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/cymobile/ymwork/act/AddReplay$AddTask;->this$0:Lcom/cymobile/ymwork/act/AddReplay;

    .line 242
    const-class v4, Lcom/cymobile/ymwork/act/ShopDetailsActivity;

    .line 241
    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 243
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "caseid"

    iget-object v4, p0, Lcom/cymobile/ymwork/act/AddReplay$AddTask;->this$0:Lcom/cymobile/ymwork/act/AddReplay;

    #getter for: Lcom/cymobile/ymwork/act/AddReplay;->mCaseid:Ljava/lang/String;
    invoke-static {v4}, Lcom/cymobile/ymwork/act/AddReplay;->access$2(Lcom/cymobile/ymwork/act/AddReplay;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    const-string v3, "classid"

    iget-object v4, p0, Lcom/cymobile/ymwork/act/AddReplay$AddTask;->this$0:Lcom/cymobile/ymwork/act/AddReplay;

    #getter for: Lcom/cymobile/ymwork/act/AddReplay;->mClassid:I
    invoke-static {v4}, Lcom/cymobile/ymwork/act/AddReplay;->access$3(Lcom/cymobile/ymwork/act/AddReplay;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 245
    const/high16 v3, 0x400

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 246
    iget-object v3, p0, Lcom/cymobile/ymwork/act/AddReplay$AddTask;->this$0:Lcom/cymobile/ymwork/act/AddReplay;

    invoke-virtual {v3, v1}, Lcom/cymobile/ymwork/act/AddReplay;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 249
    .end local v1           #intent:Landroid/content/Intent;
    :cond_5
    iget-object v3, p0, Lcom/cymobile/ymwork/act/AddReplay$AddTask;->this$0:Lcom/cymobile/ymwork/act/AddReplay;

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/cymobile/ymwork/act/AddReplay$AddTask;->this$0:Lcom/cymobile/ymwork/act/AddReplay;

    #calls: Lcom/cymobile/ymwork/act/AddReplay;->showProgressDialog()Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/AddReplay;->access$0(Lcom/cymobile/ymwork/act/AddReplay;)Landroid/app/ProgressDialog;

    .line 182
    return-void
.end method
