.class Lcom/cymobile/ymwork/act/ChangePasswordActivity$3;
.super Ljava/lang/Object;
.source "ChangePasswordActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/ChangePasswordActivity;->ensureUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/ChangePasswordActivity;

.field private final synthetic val$changeButton:Landroid/widget/Button;

.field private final synthetic val$rightbtn:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/ChangePasswordActivity;Landroid/widget/Button;Landroid/widget/Button;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/ChangePasswordActivity$3;->this$0:Lcom/cymobile/ymwork/act/ChangePasswordActivity;

    iput-object p2, p0, Lcom/cymobile/ymwork/act/ChangePasswordActivity$3;->val$rightbtn:Landroid/widget/Button;

    iput-object p3, p0, Lcom/cymobile/ymwork/act/ChangePasswordActivity$3;->val$changeButton:Landroid/widget/Button;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private oldPasswordEditTextFieldIsValid()Z
    .locals 4

    .prologue
    .line 116
    iget-object v1, p0, Lcom/cymobile/ymwork/act/ChangePasswordActivity$3;->this$0:Lcom/cymobile/ymwork/act/ChangePasswordActivity;

    #getter for: Lcom/cymobile/ymwork/act/ChangePasswordActivity;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/cymobile/ymwork/act/ChangePasswordActivity;->access$2(Lcom/cymobile/ymwork/act/ChangePasswordActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "key_GlobalUserPasswd"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, keptPass:Ljava/lang/String;
    iget-object v1, p0, Lcom/cymobile/ymwork/act/ChangePasswordActivity$3;->this$0:Lcom/cymobile/ymwork/act/ChangePasswordActivity;

    #getter for: Lcom/cymobile/ymwork/act/ChangePasswordActivity;->oldpasswordEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/cymobile/ymwork/act/ChangePasswordActivity;->access$1(Lcom/cymobile/ymwork/act/ChangePasswordActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/cymobile/ymwork/act/ChangePasswordActivity$3;->this$0:Lcom/cymobile/ymwork/act/ChangePasswordActivity;

    #getter for: Lcom/cymobile/ymwork/act/ChangePasswordActivity;->oldpasswordEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/cymobile/ymwork/act/ChangePasswordActivity;->access$1(Lcom/cymobile/ymwork/act/ChangePasswordActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private passwdsEquals()Z
    .locals 2

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/ChangePasswordActivity$3;->passwordEditTextFieldIsValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/cymobile/ymwork/act/ChangePasswordActivity$3;->repasswordEditTextFieldIsValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cymobile/ymwork/act/ChangePasswordActivity$3;->this$0:Lcom/cymobile/ymwork/act/ChangePasswordActivity;

    #getter for: Lcom/cymobile/ymwork/act/ChangePasswordActivity;->passwordEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/ChangePasswordActivity;->access$3(Lcom/cymobile/ymwork/act/ChangePasswordActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cymobile/ymwork/act/ChangePasswordActivity$3;->this$0:Lcom/cymobile/ymwork/act/ChangePasswordActivity;

    #getter for: Lcom/cymobile/ymwork/act/ChangePasswordActivity;->repasswordEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/cymobile/ymwork/act/ChangePasswordActivity;->access$8(Lcom/cymobile/ymwork/act/ChangePasswordActivity;)Landroid/widget/EditText;

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
    .line 120
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ChangePasswordActivity$3;->this$0:Lcom/cymobile/ymwork/act/ChangePasswordActivity;

    #getter for: Lcom/cymobile/ymwork/act/ChangePasswordActivity;->passwordEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/ChangePasswordActivity;->access$3(Lcom/cymobile/ymwork/act/ChangePasswordActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cymobile/ymwork/act/ChangePasswordActivity$3;->this$0:Lcom/cymobile/ymwork/act/ChangePasswordActivity;

    #getter for: Lcom/cymobile/ymwork/act/ChangePasswordActivity;->passwordEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/ChangePasswordActivity;->access$3(Lcom/cymobile/ymwork/act/ChangePasswordActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/cymobile/ymwork/act/ChangePasswordActivity$3;->this$0:Lcom/cymobile/ymwork/act/ChangePasswordActivity;

    #getter for: Lcom/cymobile/ymwork/act/ChangePasswordActivity;->passwordEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/ChangePasswordActivity;->access$3(Lcom/cymobile/ymwork/act/ChangePasswordActivity;)Landroid/widget/EditText;

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

.method private repasswordEditTextFieldIsValid()Z
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ChangePasswordActivity$3;->this$0:Lcom/cymobile/ymwork/act/ChangePasswordActivity;

    #getter for: Lcom/cymobile/ymwork/act/ChangePasswordActivity;->repasswordEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/ChangePasswordActivity;->access$8(Lcom/cymobile/ymwork/act/ChangePasswordActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cymobile/ymwork/act/ChangePasswordActivity$3;->this$0:Lcom/cymobile/ymwork/act/ChangePasswordActivity;

    #getter for: Lcom/cymobile/ymwork/act/ChangePasswordActivity;->repasswordEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/ChangePasswordActivity;->access$8(Lcom/cymobile/ymwork/act/ChangePasswordActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/cymobile/ymwork/act/ChangePasswordActivity$3;->this$0:Lcom/cymobile/ymwork/act/ChangePasswordActivity;

    #getter for: Lcom/cymobile/ymwork/act/ChangePasswordActivity;->repasswordEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/ChangePasswordActivity;->access$8(Lcom/cymobile/ymwork/act/ChangePasswordActivity;)Landroid/widget/EditText;

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


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 104
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 107
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/ChangePasswordActivity$3;->oldPasswordEditTextFieldIsValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/ChangePasswordActivity$3;->passwordEditTextFieldIsValid()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/cymobile/ymwork/act/ChangePasswordActivity$3;->repasswordEditTextFieldIsValid()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/cymobile/ymwork/act/ChangePasswordActivity$3;->passwdsEquals()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 112
    .local v0, enable:Z
    :goto_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/ChangePasswordActivity$3;->val$rightbtn:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 113
    iget-object v1, p0, Lcom/cymobile/ymwork/act/ChangePasswordActivity$3;->val$changeButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 114
    return-void

    .line 111
    .end local v0           #enable:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
