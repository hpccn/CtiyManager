.class public Lcom/cymobile/ymwork/act/ForgetPasswordActivity;
.super Landroid/app/Activity;
.source "ForgetPasswordActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cymobile/ymwork/act/ForgetPasswordActivity$ForgetPasswordTask;
    }
.end annotation


# static fields
.field private static final MESSAGE_EMAIL_EXIST:I = 0x0

.field private static final MESSAGE_NOT_EXIST:I = 0x1


# instance fields
.field private contexts:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private moeText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 103
    new-instance v0, Lcom/cymobile/ymwork/act/ForgetPasswordActivity$1;

    invoke-direct {v0, p0}, Lcom/cymobile/ymwork/act/ForgetPasswordActivity$1;-><init>(Lcom/cymobile/ymwork/act/ForgetPasswordActivity;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/ForgetPasswordActivity;->mHandler:Landroid/os/Handler;

    .line 26
    return-void
.end method

.method static synthetic access$0(Lcom/cymobile/ymwork/act/ForgetPasswordActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/ForgetPasswordActivity;->preTask()V

    return-void
.end method

.method static synthetic access$1(Lcom/cymobile/ymwork/act/ForgetPasswordActivity;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ForgetPasswordActivity;->contexts:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2(Lcom/cymobile/ymwork/act/ForgetPasswordActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ForgetPasswordActivity;->moeText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3(Lcom/cymobile/ymwork/act/ForgetPasswordActivity;Lcom/cymobile/ymwork/types/CommonResult;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/cymobile/ymwork/act/ForgetPasswordActivity;->postTask(Lcom/cymobile/ymwork/types/CommonResult;Ljava/lang/Exception;)V

    return-void
.end method

.method private postTask(Lcom/cymobile/ymwork/types/CommonResult;Ljava/lang/Exception;)V
    .locals 2
    .parameter "result"
    .parameter "e"

    .prologue
    .line 58
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/cymobile/ymwork/types/CommonResult;->getResult()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ForgetPasswordActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 63
    :goto_0
    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ForgetPasswordActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private preTask()V
    .locals 0

    .prologue
    .line 55
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0, v2}, Lcom/cymobile/ymwork/act/ForgetPasswordActivity;->requestWindowFeature(I)Z

    .line 37
    const v1, 0x7f030017

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/ForgetPasswordActivity;->setContentView(I)V

    .line 38
    iput-object p0, p0, Lcom/cymobile/ymwork/act/ForgetPasswordActivity;->contexts:Landroid/content/Context;

    .line 39
    const v1, 0x7f08004c

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/ForgetPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/cymobile/ymwork/act/ForgetPasswordActivity;->moeText:Landroid/widget/EditText;

    .line 40
    const v1, 0x7f08004d

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/ForgetPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 41
    .local v0, submitButton:Landroid/widget/Button;
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 42
    return-void
.end method

.method public submit(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 45
    iget-object v2, p0, Lcom/cymobile/ymwork/act/ForgetPasswordActivity;->moeText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, moe:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 48
    new-instance v1, Lcom/cymobile/ymwork/act/ForgetPasswordActivity$ForgetPasswordTask;

    invoke-direct {v1, p0, p0}, Lcom/cymobile/ymwork/act/ForgetPasswordActivity$ForgetPasswordTask;-><init>(Lcom/cymobile/ymwork/act/ForgetPasswordActivity;Lcom/cymobile/ymwork/act/ForgetPasswordActivity;)V

    .line 49
    .local v1, task:Lcom/cymobile/ymwork/act/ForgetPasswordActivity$ForgetPasswordTask;
    invoke-static {v1}, Lcom/cymobile/ymwork/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V

    .line 51
    .end local v1           #task:Lcom/cymobile/ymwork/act/ForgetPasswordActivity$ForgetPasswordTask;
    :cond_0
    return-void
.end method
