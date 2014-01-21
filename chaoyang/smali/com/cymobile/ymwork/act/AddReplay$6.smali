.class Lcom/cymobile/ymwork/act/AddReplay$6;
.super Ljava/lang/Object;
.source "AddReplay.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/AddReplay;->initUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/AddReplay;

.field private final synthetic val$adddeplybutton:Landroid/widget/Button;

.field private final synthetic val$replydetails:Landroid/widget/EditText;

.field private final synthetic val$replyresult:Landroid/widget/EditText;

.field private final synthetic val$rightbtn:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/AddReplay;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/AddReplay$6;->this$0:Lcom/cymobile/ymwork/act/AddReplay;

    iput-object p2, p0, Lcom/cymobile/ymwork/act/AddReplay$6;->val$adddeplybutton:Landroid/widget/Button;

    iput-object p3, p0, Lcom/cymobile/ymwork/act/AddReplay$6;->val$rightbtn:Landroid/widget/Button;

    iput-object p4, p0, Lcom/cymobile/ymwork/act/AddReplay$6;->val$replyresult:Landroid/widget/EditText;

    iput-object p5, p0, Lcom/cymobile/ymwork/act/AddReplay$6;->val$replydetails:Landroid/widget/EditText;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private detailEditTextFieldIsValid()Z
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/cymobile/ymwork/act/AddReplay$6;->val$replydetails:Landroid/widget/EditText;

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

.method private resultEditTextFieldIsValid()Z
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/cymobile/ymwork/act/AddReplay$6;->val$replyresult:Landroid/widget/EditText;

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
    .line 132
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 135
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/AddReplay$6;->resultEditTextFieldIsValid()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/cymobile/ymwork/act/AddReplay$6;->detailEditTextFieldIsValid()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 139
    .local v0, enable:Z
    :goto_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/AddReplay$6;->val$adddeplybutton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 140
    iget-object v1, p0, Lcom/cymobile/ymwork/act/AddReplay$6;->val$rightbtn:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 141
    return-void

    .line 138
    .end local v0           #enable:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
