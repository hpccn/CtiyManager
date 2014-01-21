.class Lcom/cymobile/ymwork/act/RegisterActivity$2;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/RegisterActivity;->ensureUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/RegisterActivity;

.field private final synthetic val$registerButton:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/RegisterActivity;Landroid/widget/Button;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/RegisterActivity$2;->this$0:Lcom/cymobile/ymwork/act/RegisterActivity;

    iput-object p2, p0, Lcom/cymobile/ymwork/act/RegisterActivity$2;->val$registerButton:Landroid/widget/Button;

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 176
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 178
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 181
    iget-object v1, p0, Lcom/cymobile/ymwork/act/RegisterActivity$2;->val$registerButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/cymobile/ymwork/act/RegisterActivity$2;->this$0:Lcom/cymobile/ymwork/act/RegisterActivity;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/RegisterActivity;->phoneNumberEditTextFieldIsValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cymobile/ymwork/act/RegisterActivity$2;->this$0:Lcom/cymobile/ymwork/act/RegisterActivity;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/RegisterActivity;->userNameEditTextFieldIsValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 183
    return-void

    .line 181
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
