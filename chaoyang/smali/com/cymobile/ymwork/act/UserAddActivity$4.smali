.class Lcom/cymobile/ymwork/act/UserAddActivity$4;
.super Ljava/lang/Object;
.source "UserAddActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/UserAddActivity;->ensureUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/UserAddActivity;

.field private final synthetic val$addButton:Landroid/widget/Button;

.field private final synthetic val$rightbtn:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/UserAddActivity;Landroid/widget/Button;Landroid/widget/Button;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/UserAddActivity$4;->this$0:Lcom/cymobile/ymwork/act/UserAddActivity;

    iput-object p2, p0, Lcom/cymobile/ymwork/act/UserAddActivity$4;->val$rightbtn:Landroid/widget/Button;

    iput-object p3, p0, Lcom/cymobile/ymwork/act/UserAddActivity$4;->val$addButton:Landroid/widget/Button;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private passwdsEquals()Z
    .locals 2

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/UserAddActivity$4;->passwordEditTextFieldIsValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/cymobile/ymwork/act/UserAddActivity$4;->repasswordEditTextFieldIsValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cymobile/ymwork/act/UserAddActivity$4;->this$0:Lcom/cymobile/ymwork/act/UserAddActivity;

    #getter for: Lcom/cymobile/ymwork/act/UserAddActivity;->passwordEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/UserAddActivity;->access$3(Lcom/cymobile/ymwork/act/UserAddActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cymobile/ymwork/act/UserAddActivity$4;->this$0:Lcom/cymobile/ymwork/act/UserAddActivity;

    #getter for: Lcom/cymobile/ymwork/act/UserAddActivity;->repasswordEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/cymobile/ymwork/act/UserAddActivity;->access$15(Lcom/cymobile/ymwork/act/UserAddActivity;)Landroid/widget/EditText;

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
    .line 152
    iget-object v0, p0, Lcom/cymobile/ymwork/act/UserAddActivity$4;->this$0:Lcom/cymobile/ymwork/act/UserAddActivity;

    #getter for: Lcom/cymobile/ymwork/act/UserAddActivity;->passwordEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/UserAddActivity;->access$3(Lcom/cymobile/ymwork/act/UserAddActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cymobile/ymwork/act/UserAddActivity$4;->this$0:Lcom/cymobile/ymwork/act/UserAddActivity;

    #getter for: Lcom/cymobile/ymwork/act/UserAddActivity;->passwordEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/UserAddActivity;->access$3(Lcom/cymobile/ymwork/act/UserAddActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/cymobile/ymwork/act/UserAddActivity$4;->this$0:Lcom/cymobile/ymwork/act/UserAddActivity;

    #getter for: Lcom/cymobile/ymwork/act/UserAddActivity;->passwordEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/UserAddActivity;->access$3(Lcom/cymobile/ymwork/act/UserAddActivity;)Landroid/widget/EditText;

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
    .line 149
    iget-object v0, p0, Lcom/cymobile/ymwork/act/UserAddActivity$4;->this$0:Lcom/cymobile/ymwork/act/UserAddActivity;

    #getter for: Lcom/cymobile/ymwork/act/UserAddActivity;->phoneEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/UserAddActivity;->access$2(Lcom/cymobile/ymwork/act/UserAddActivity;)Landroid/widget/EditText;

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
    .line 155
    iget-object v0, p0, Lcom/cymobile/ymwork/act/UserAddActivity$4;->this$0:Lcom/cymobile/ymwork/act/UserAddActivity;

    #getter for: Lcom/cymobile/ymwork/act/UserAddActivity;->repasswordEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/UserAddActivity;->access$15(Lcom/cymobile/ymwork/act/UserAddActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cymobile/ymwork/act/UserAddActivity$4;->this$0:Lcom/cymobile/ymwork/act/UserAddActivity;

    #getter for: Lcom/cymobile/ymwork/act/UserAddActivity;->repasswordEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/UserAddActivity;->access$15(Lcom/cymobile/ymwork/act/UserAddActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/cymobile/ymwork/act/UserAddActivity$4;->this$0:Lcom/cymobile/ymwork/act/UserAddActivity;

    #getter for: Lcom/cymobile/ymwork/act/UserAddActivity;->repasswordEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/UserAddActivity;->access$15(Lcom/cymobile/ymwork/act/UserAddActivity;)Landroid/widget/EditText;

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
    .line 146
    iget-object v0, p0, Lcom/cymobile/ymwork/act/UserAddActivity$4;->this$0:Lcom/cymobile/ymwork/act/UserAddActivity;

    #getter for: Lcom/cymobile/ymwork/act/UserAddActivity;->usernameEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/UserAddActivity;->access$1(Lcom/cymobile/ymwork/act/UserAddActivity;)Landroid/widget/EditText;

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
    .line 134
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 137
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/UserAddActivity$4;->usernameEditTextFieldIsValid()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/cymobile/ymwork/act/UserAddActivity$4;->phoneNumberEditTextFieldIsValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/UserAddActivity$4;->passwordEditTextFieldIsValid()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/cymobile/ymwork/act/UserAddActivity$4;->repasswordEditTextFieldIsValid()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/cymobile/ymwork/act/UserAddActivity$4;->passwdsEquals()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 142
    .local v0, enable:Z
    :goto_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/UserAddActivity$4;->val$rightbtn:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 143
    iget-object v1, p0, Lcom/cymobile/ymwork/act/UserAddActivity$4;->val$addButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 144
    return-void

    .line 141
    .end local v0           #enable:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
