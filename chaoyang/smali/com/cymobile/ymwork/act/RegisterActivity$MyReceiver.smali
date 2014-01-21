.class public Lcom/cymobile/ymwork/act/RegisterActivity$MyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RegisterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/act/RegisterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/RegisterActivity;


# direct methods
.method public constructor <init>(Lcom/cymobile/ymwork/act/RegisterActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 295
    iput-object p1, p0, Lcom/cymobile/ymwork/act/RegisterActivity$MyReceiver;->this$0:Lcom/cymobile/ymwork/act/RegisterActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    .line 299
    iget-object v2, p0, Lcom/cymobile/ymwork/act/RegisterActivity$MyReceiver;->this$0:Lcom/cymobile/ymwork/act/RegisterActivity;

    #getter for: Lcom/cymobile/ymwork/act/RegisterActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/cymobile/ymwork/act/RegisterActivity;->access$8(Lcom/cymobile/ymwork/act/RegisterActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/cymobile/ymwork/act/RegisterActivity$MyReceiver;->this$0:Lcom/cymobile/ymwork/act/RegisterActivity;

    #getter for: Lcom/cymobile/ymwork/act/RegisterActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/cymobile/ymwork/act/RegisterActivity;->access$8(Lcom/cymobile/ymwork/act/RegisterActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 300
    iget-object v2, p0, Lcom/cymobile/ymwork/act/RegisterActivity$MyReceiver;->this$0:Lcom/cymobile/ymwork/act/RegisterActivity;

    #getter for: Lcom/cymobile/ymwork/act/RegisterActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/cymobile/ymwork/act/RegisterActivity;->access$8(Lcom/cymobile/ymwork/act/RegisterActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 302
    :cond_0
    iget-object v2, p0, Lcom/cymobile/ymwork/act/RegisterActivity$MyReceiver;->this$0:Lcom/cymobile/ymwork/act/RegisterActivity;

    iget-object v3, p0, Lcom/cymobile/ymwork/act/RegisterActivity$MyReceiver;->this$0:Lcom/cymobile/ymwork/act/RegisterActivity;

    const v4, 0x7f090046

    invoke-virtual {v3, v4}, Lcom/cymobile/ymwork/act/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 303
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 304
    iget-object v2, p0, Lcom/cymobile/ymwork/act/RegisterActivity$MyReceiver;->this$0:Lcom/cymobile/ymwork/act/RegisterActivity;

    #getter for: Lcom/cymobile/ymwork/act/RegisterActivity;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/cymobile/ymwork/act/RegisterActivity;->access$7(Lcom/cymobile/ymwork/act/RegisterActivity;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 305
    .local v1, edit:Landroid/content/SharedPreferences$Editor;
    const-string v2, "Pref__new_key_isLogined"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 306
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 309
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/cymobile/ymwork/act/RegisterActivity$MyReceiver;->this$0:Lcom/cymobile/ymwork/act/RegisterActivity;

    const-class v3, Lcom/cymobile/ymwork/act/MainActivityGroup;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 310
    .local v0, actintent:Landroid/content/Intent;
    const/high16 v2, 0x400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 311
    iget-object v2, p0, Lcom/cymobile/ymwork/act/RegisterActivity$MyReceiver;->this$0:Lcom/cymobile/ymwork/act/RegisterActivity;

    invoke-virtual {v2, v0}, Lcom/cymobile/ymwork/act/RegisterActivity;->startActivity(Landroid/content/Intent;)V

    .line 315
    iget-object v2, p0, Lcom/cymobile/ymwork/act/RegisterActivity$MyReceiver;->this$0:Lcom/cymobile/ymwork/act/RegisterActivity;

    invoke-virtual {v2}, Lcom/cymobile/ymwork/act/RegisterActivity;->finish()V

    .line 316
    return-void
.end method
