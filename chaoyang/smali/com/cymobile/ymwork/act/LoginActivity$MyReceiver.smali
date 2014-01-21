.class public Lcom/cymobile/ymwork/act/LoginActivity$MyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/act/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/LoginActivity;


# direct methods
.method public constructor <init>(Lcom/cymobile/ymwork/act/LoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 346
    iput-object p1, p0, Lcom/cymobile/ymwork/act/LoginActivity$MyReceiver;->this$0:Lcom/cymobile/ymwork/act/LoginActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/high16 v7, 0x400

    .line 350
    iget-object v4, p0, Lcom/cymobile/ymwork/act/LoginActivity$MyReceiver;->this$0:Lcom/cymobile/ymwork/act/LoginActivity;

    #getter for: Lcom/cymobile/ymwork/act/LoginActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/cymobile/ymwork/act/LoginActivity;->access$6(Lcom/cymobile/ymwork/act/LoginActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/cymobile/ymwork/act/LoginActivity$MyReceiver;->this$0:Lcom/cymobile/ymwork/act/LoginActivity;

    #getter for: Lcom/cymobile/ymwork/act/LoginActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/cymobile/ymwork/act/LoginActivity;->access$6(Lcom/cymobile/ymwork/act/LoginActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 351
    iget-object v4, p0, Lcom/cymobile/ymwork/act/LoginActivity$MyReceiver;->this$0:Lcom/cymobile/ymwork/act/LoginActivity;

    #getter for: Lcom/cymobile/ymwork/act/LoginActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/cymobile/ymwork/act/LoginActivity;->access$6(Lcom/cymobile/ymwork/act/LoginActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 353
    :cond_0
    iget-object v4, p0, Lcom/cymobile/ymwork/act/LoginActivity$MyReceiver;->this$0:Lcom/cymobile/ymwork/act/LoginActivity;

    iget-object v5, p0, Lcom/cymobile/ymwork/act/LoginActivity$MyReceiver;->this$0:Lcom/cymobile/ymwork/act/LoginActivity;

    const v6, 0x7f090046

    invoke-virtual {v5, v6}, Lcom/cymobile/ymwork/act/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 354
    const/4 v6, 0x1

    .line 353
    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 354
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 356
    iget-object v4, p0, Lcom/cymobile/ymwork/act/LoginActivity$MyReceiver;->this$0:Lcom/cymobile/ymwork/act/LoginActivity;

    #getter for: Lcom/cymobile/ymwork/act/LoginActivity;->backClass:Ljava/lang/Class;
    invoke-static {v4}, Lcom/cymobile/ymwork/act/LoginActivity;->access$7(Lcom/cymobile/ymwork/act/LoginActivity;)Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 357
    new-instance v0, Landroid/content/Intent;

    iget-object v4, p0, Lcom/cymobile/ymwork/act/LoginActivity$MyReceiver;->this$0:Lcom/cymobile/ymwork/act/LoginActivity;

    iget-object v5, p0, Lcom/cymobile/ymwork/act/LoginActivity$MyReceiver;->this$0:Lcom/cymobile/ymwork/act/LoginActivity;

    #getter for: Lcom/cymobile/ymwork/act/LoginActivity;->backClass:Ljava/lang/Class;
    invoke-static {v5}, Lcom/cymobile/ymwork/act/LoginActivity;->access$7(Lcom/cymobile/ymwork/act/LoginActivity;)Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 358
    .local v0, actintent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/cymobile/ymwork/act/LoginActivity$MyReceiver;->this$0:Lcom/cymobile/ymwork/act/LoginActivity;

    #getter for: Lcom/cymobile/ymwork/act/LoginActivity;->backExtra:[Ljava/lang/String;
    invoke-static {v4}, Lcom/cymobile/ymwork/act/LoginActivity;->access$8(Lcom/cymobile/ymwork/act/LoginActivity;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/cymobile/ymwork/act/LoginActivity$MyReceiver;->this$0:Lcom/cymobile/ymwork/act/LoginActivity;

    #getter for: Lcom/cymobile/ymwork/act/LoginActivity;->backExtra:[Ljava/lang/String;
    invoke-static {v4}, Lcom/cymobile/ymwork/act/LoginActivity;->access$8(Lcom/cymobile/ymwork/act/LoginActivity;)[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-lez v4, :cond_1

    .line 359
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/cymobile/ymwork/act/LoginActivity$MyReceiver;->this$0:Lcom/cymobile/ymwork/act/LoginActivity;

    #getter for: Lcom/cymobile/ymwork/act/LoginActivity;->backExtra:[Ljava/lang/String;
    invoke-static {v4}, Lcom/cymobile/ymwork/act/LoginActivity;->access$8(Lcom/cymobile/ymwork/act/LoginActivity;)[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-lt v1, v4, :cond_2

    .line 365
    .end local v1           #i:I
    :cond_1
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 366
    iget-object v4, p0, Lcom/cymobile/ymwork/act/LoginActivity$MyReceiver;->this$0:Lcom/cymobile/ymwork/act/LoginActivity;

    invoke-virtual {v4, v0}, Lcom/cymobile/ymwork/act/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 375
    :goto_1
    iget-object v4, p0, Lcom/cymobile/ymwork/act/LoginActivity$MyReceiver;->this$0:Lcom/cymobile/ymwork/act/LoginActivity;

    invoke-virtual {v4}, Lcom/cymobile/ymwork/act/LoginActivity;->finish()V

    .line 376
    return-void

    .line 360
    .restart local v1       #i:I
    :cond_2
    iget-object v4, p0, Lcom/cymobile/ymwork/act/LoginActivity$MyReceiver;->this$0:Lcom/cymobile/ymwork/act/LoginActivity;

    #getter for: Lcom/cymobile/ymwork/act/LoginActivity;->backExtra:[Ljava/lang/String;
    invoke-static {v4}, Lcom/cymobile/ymwork/act/LoginActivity;->access$8(Lcom/cymobile/ymwork/act/LoginActivity;)[Ljava/lang/String;

    move-result-object v4

    aget-object v2, v4, v1

    .line 361
    .local v2, intentstr:Ljava/lang/String;
    iget-object v4, p0, Lcom/cymobile/ymwork/act/LoginActivity$MyReceiver;->this$0:Lcom/cymobile/ymwork/act/LoginActivity;

    #getter for: Lcom/cymobile/ymwork/act/LoginActivity;->backExtra:[Ljava/lang/String;
    invoke-static {v4}, Lcom/cymobile/ymwork/act/LoginActivity;->access$8(Lcom/cymobile/ymwork/act/LoginActivity;)[Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    aget-object v3, v4, v5

    .line 362
    .local v3, intentval:Ljava/lang/String;
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 359
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 369
    .end local v0           #actintent:Landroid/content/Intent;
    .end local v1           #i:I
    .end local v2           #intentstr:Ljava/lang/String;
    .end local v3           #intentval:Ljava/lang/String;
    :cond_3
    new-instance v0, Landroid/content/Intent;

    iget-object v4, p0, Lcom/cymobile/ymwork/act/LoginActivity$MyReceiver;->this$0:Lcom/cymobile/ymwork/act/LoginActivity;

    const-class v5, Lcom/cymobile/ymwork/act/MainActivityGroup;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 370
    .restart local v0       #actintent:Landroid/content/Intent;
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 371
    iget-object v4, p0, Lcom/cymobile/ymwork/act/LoginActivity$MyReceiver;->this$0:Lcom/cymobile/ymwork/act/LoginActivity;

    invoke-virtual {v4, v0}, Lcom/cymobile/ymwork/act/LoginActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method
