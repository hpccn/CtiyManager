.class Lcom/cymobile/ymwork/act/UserEditActivity$4;
.super Ljava/lang/Object;
.source "UserEditActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/UserEditActivity;->ensureUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/UserEditActivity;

.field private final synthetic val$editButton:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/UserEditActivity;Landroid/widget/Button;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/UserEditActivity$4;->this$0:Lcom/cymobile/ymwork/act/UserEditActivity;

    iput-object p2, p0, Lcom/cymobile/ymwork/act/UserEditActivity$4;->val$editButton:Landroid/widget/Button;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private passwdsEquals()Z
    .locals 2

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/UserEditActivity$4;->passwordEditTextFieldIsValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/cymobile/ymwork/act/UserEditActivity$4;->repasswordEditTextFieldIsValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cymobile/ymwork/act/UserEditActivity$4;->this$0:Lcom/cymobile/ymwork/act/UserEditActivity;

    #getter for: Lcom/cymobile/ymwork/act/UserEditActivity;->passwordEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/UserEditActivity;->access$3(Lcom/cymobile/ymwork/act/UserEditActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cymobile/ymwork/act/UserEditActivity$4;->this$0:Lcom/cymobile/ymwork/act/UserEditActivity;

    #getter for: Lcom/cymobile/ymwork/act/UserEditActivity;->repasswordEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/cymobile/ymwork/act/UserEditActivity;->access$15(Lcom/cymobile/ymwork/act/UserEditActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private passwordEditTextFieldIsValid()Z
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/cymobile/ymwork/act/UserEditActivity$4;->this$0:Lcom/cymobile/ymwork/act/UserEditActivity;

    #getter for: Lcom/cymobile/ymwork/act/UserEditActivity;->passwordEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/UserEditActivity;->access$3(Lcom/cymobile/ymwork/act/UserEditActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cymobile/ymwork/act/UserEditActivity$4;->this$0:Lcom/cymobile/ymwork/act/UserEditActivity;

    #getter for: Lcom/cymobile/ymwork/act/UserEditActivity;->passwordEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/UserEditActivity;->access$3(Lcom/cymobile/ymwork/act/UserEditActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/cymobile/ymwork/act/UserEditActivity$4;->this$0:Lcom/cymobile/ymwork/act/UserEditActivity;

    #getter for: Lcom/cymobile/ymwork/act/UserEditActivity;->passwordEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/UserEditActivity;->access$3(Lcom/cymobile/ymwork/act/UserEditActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private phoneNumberEditTextFieldIsValid()Z
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/cymobile/ymwork/act/UserEditActivity$4;->this$0:Lcom/cymobile/ymwork/act/UserEditActivity;

    #getter for: Lcom/cymobile/ymwork/act/UserEditActivity;->phoneEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/UserEditActivity;->access$2(Lcom/cymobile/ymwork/act/UserEditActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private repasswordEditTextFieldIsValid()Z
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/cymobile/ymwork/act/UserEditActivity$4;->this$0:Lcom/cymobile/ymwork/act/UserEditActivity;

    #getter for: Lcom/cymobile/ymwork/act/UserEditActivity;->repasswordEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/UserEditActivity;->access$15(Lcom/cymobile/ymwork/act/UserEditActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cymobile/ymwork/act/UserEditActivity$4;->this$0:Lcom/cymobile/ymwork/act/UserEditActivity;

    #getter for: Lcom/cymobile/ymwork/act/UserEditActivity;->repasswordEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/UserEditActivity;->access$15(Lcom/cymobile/ymwork/act/UserEditActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/cymobile/ymwork/act/UserEditActivity$4;->this$0:Lcom/cymobile/ymwork/act/UserEditActivity;

    #getter for: Lcom/cymobile/ymwork/act/UserEditActivity;->repasswordEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/UserEditActivity;->access$15(Lcom/cymobile/ymwork/act/UserEditActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private usernameEditTextFieldIsValid()Z
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/cymobile/ymwork/act/UserEditActivity$4;->this$0:Lcom/cymobile/ymwork/act/UserEditActivity;

    #getter for: Lcom/cymobile/ymwork/act/UserEditActivity;->usernameEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/UserEditActivity;->access$1(Lcom/cymobile/ymwork/act/UserEditActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 154
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 157
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/UserEditActivity$4;->usernameEditTextFieldIsValid()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/cymobile/ymwork/act/UserEditActivity$4;->phoneNumberEditTextFieldIsValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/UserEditActivity$4;->passwordEditTextFieldIsValid()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/cymobile/ymwork/act/UserEditActivity$4;->repasswordEditTextFieldIsValid()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/cymobile/ymwork/act/UserEditActivity$4;->passwdsEquals()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 162
    .local v0, enable:Z
    :goto_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/UserEditActivity$4;->this$0:Lcom/cymobile/ymwork/act/UserEditActivity;

    iget-object v1, v1, Lcom/cymobile/ymwork/act/UserEditActivity;->rightEditbtn:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 163
    iget-object v1, p0, Lcom/cymobile/ymwork/act/UserEditActivity$4;->val$editButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 164
    return-void

    .line 161
    .end local v0           #enable:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
