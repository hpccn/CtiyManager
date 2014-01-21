.class Lcom/cymobile/ymwork/act/ChangePasswordActivity$5;
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
    iput-object p1, p0, Lcom/cymobile/ymwork/act/ChangePasswordActivity$5;->this$0:Lcom/cymobile/ymwork/act/ChangePasswordActivity;

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private oldPasswordEditTextFieldIsValid()Z
    .locals 4

    .prologue
    .line 170
    iget-object v1, p0, Lcom/cymobile/ymwork/act/ChangePasswordActivity$5;->this$0:Lcom/cymobile/ymwork/act/ChangePasswordActivity;

    #getter for: Lcom/cymobile/ymwork/act/ChangePasswordActivity;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/cymobile/ymwork/act/ChangePasswordActivity;->access$2(Lcom/cymobile/ymwork/act/ChangePasswordActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "key_GlobalUserPasswd"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, keptPass:Ljava/lang/String;
    iget-object v1, p0, Lcom/cymobile/ymwork/act/ChangePasswordActivity$5;->this$0:Lcom/cymobile/ymwork/act/ChangePasswordActivity;

    #getter for: Lcom/cymobile/ymwork/act/ChangePasswordActivity;->oldpasswordEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/cymobile/ymwork/act/ChangePasswordActivity;->access$1(Lcom/cymobile/ymwork/act/ChangePasswordActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/cymobile/ymwork/act/ChangePasswordActivity$5;->this$0:Lcom/cymobile/ymwork/act/ChangePasswordActivity;

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


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 8
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    const/4 v7, 0x0

    .line 178
    if-nez p2, :cond_1

    .line 180
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    move-object v1, v0

    .line 181
    .local v1, editText:Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 182
    iget-object v4, p0, Lcom/cymobile/ymwork/act/ChangePasswordActivity$5;->this$0:Lcom/cymobile/ymwork/act/ChangePasswordActivity;

    const v5, 0x7f090064

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    .end local v1           #editText:Landroid/widget/EditText;
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/ChangePasswordActivity$5;->oldPasswordEditTextFieldIsValid()Z

    move-result v4

    if-nez v4, :cond_1

    .line 192
    iget-object v4, p0, Lcom/cymobile/ymwork/act/ChangePasswordActivity$5;->this$0:Lcom/cymobile/ymwork/act/ChangePasswordActivity;

    const v5, 0x7f090081

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 195
    :cond_1
    return-void

    .line 184
    .restart local v1       #editText:Landroid/widget/EditText;
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 185
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

    .line 186
    :cond_3
    iget-object v4, p0, Lcom/cymobile/ymwork/act/ChangePasswordActivity$5;->this$0:Lcom/cymobile/ymwork/act/ChangePasswordActivity;

    const v5, 0x7f090065

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 188
    .end local v1           #editText:Landroid/widget/EditText;
    .end local v3           #text:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 189
    .local v2, ee:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
