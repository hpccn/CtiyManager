.class Lcom/cymobile/ymwork/act/ChangePasswordActivity$4;
.super Ljava/lang/Object;
.source "ChangePasswordActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/ChangePasswordActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/ChangePasswordActivity$4;->this$0:Lcom/cymobile/ymwork/act/ChangePasswordActivity;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private passwdsEquals()Z
    .locals 2

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/ChangePasswordActivity$4;->passwordEditTextFieldIsValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/cymobile/ymwork/act/ChangePasswordActivity$4;->repasswordEditTextFieldIsValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cymobile/ymwork/act/ChangePasswordActivity$4;->this$0:Lcom/cymobile/ymwork/act/ChangePasswordActivity;

    #getter for: Lcom/cymobile/ymwork/act/ChangePasswordActivity;->passwordEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/ChangePasswordActivity;->access$3(Lcom/cymobile/ymwork/act/ChangePasswordActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cymobile/ymwork/act/ChangePasswordActivity$4;->this$0:Lcom/cymobile/ymwork/act/ChangePasswordActivity;

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
    .line 131
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ChangePasswordActivity$4;->this$0:Lcom/cymobile/ymwork/act/ChangePasswordActivity;

    #getter for: Lcom/cymobile/ymwork/act/ChangePasswordActivity;->passwordEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/ChangePasswordActivity;->access$3(Lcom/cymobile/ymwork/act/ChangePasswordActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cymobile/ymwork/act/ChangePasswordActivity$4;->this$0:Lcom/cymobile/ymwork/act/ChangePasswordActivity;

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

    iget-object v0, p0, Lcom/cymobile/ymwork/act/ChangePasswordActivity$4;->this$0:Lcom/cymobile/ymwork/act/ChangePasswordActivity;

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
    .line 134
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ChangePasswordActivity$4;->this$0:Lcom/cymobile/ymwork/act/ChangePasswordActivity;

    #getter for: Lcom/cymobile/ymwork/act/ChangePasswordActivity;->repasswordEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/ChangePasswordActivity;->access$8(Lcom/cymobile/ymwork/act/ChangePasswordActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cymobile/ymwork/act/ChangePasswordActivity$4;->this$0:Lcom/cymobile/ymwork/act/ChangePasswordActivity;

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

    iget-object v0, p0, Lcom/cymobile/ymwork/act/ChangePasswordActivity$4;->this$0:Lcom/cymobile/ymwork/act/ChangePasswordActivity;

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
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 8
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    const/4 v7, 0x0

    .line 144
    if-nez p2, :cond_1

    .line 146
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    move-object v1, v0

    .line 147
    .local v1, editText:Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 148
    iget-object v4, p0, Lcom/cymobile/ymwork/act/ChangePasswordActivity$4;->this$0:Lcom/cymobile/ymwork/act/ChangePasswordActivity;

    const v5, 0x7f090064

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    .end local v1           #editText:Landroid/widget/EditText;
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/ChangePasswordActivity$4;->passwordEditTextFieldIsValid()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0}, Lcom/cymobile/ymwork/act/ChangePasswordActivity$4;->repasswordEditTextFieldIsValid()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0}, Lcom/cymobile/ymwork/act/ChangePasswordActivity$4;->passwdsEquals()Z

    move-result v4

    if-nez v4, :cond_1

    .line 158
    iget-object v4, p0, Lcom/cymobile/ymwork/act/ChangePasswordActivity$4;->this$0:Lcom/cymobile/ymwork/act/ChangePasswordActivity;

    const v5, 0x7f090063

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 161
    :cond_1
    return-void

    .line 150
    .restart local v1       #editText:Landroid/widget/EditText;
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 151
    .local v3, text:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x6

    if-lt v4, v5, :cond_3

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    const/16 v5, 0x15

    if-le v4, v5, :cond_0

    .line 152
    :cond_3
    iget-object v4, p0, Lcom/cymobile/ymwork/act/ChangePasswordActivity$4;->this$0:Lcom/cymobile/ymwork/act/ChangePasswordActivity;

    const v5, 0x7f090065

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 154
    .end local v1           #editText:Landroid/widget/EditText;
    .end local v3           #text:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 155
    .local v2, ee:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
