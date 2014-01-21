.class Lcom/cymobile/ymwork/act/LoginActivity$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/LoginActivity;->ensureUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/LoginActivity;

.field private final synthetic val$loginButton:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/LoginActivity;Landroid/widget/Button;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/LoginActivity$1;->this$0:Lcom/cymobile/ymwork/act/LoginActivity;

    iput-object p2, p0, Lcom/cymobile/ymwork/act/LoginActivity$1;->val$loginButton:Landroid/widget/Button;

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 228
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 230
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 233
    iget-object v1, p0, Lcom/cymobile/ymwork/act/LoginActivity$1;->val$loginButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/cymobile/ymwork/act/LoginActivity$1;->this$0:Lcom/cymobile/ymwork/act/LoginActivity;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/LoginActivity;->phoneNumberEditTextFieldIsValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/cymobile/ymwork/act/LoginActivity$1;->this$0:Lcom/cymobile/ymwork/act/LoginActivity;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/LoginActivity;->passwordEditTextFieldIsValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 233
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 235
    return-void

    .line 234
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
