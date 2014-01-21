.class public Lcom/cymobile/ymwork/act/AddReplay;
.super Landroid/app/Activity;
.source "AddReplay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cymobile/ymwork/act/AddReplay$AddTask;
    }
.end annotation


# static fields
.field private static final Dialog_confirm_Submit:I = 0xb


# instance fields
.field private contexts:Landroid/content/Context;

.field homeApplication:Lcom/cymobile/ymwork/HomeApplication;

.field private mAddTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCaseid:Ljava/lang/String;

.field private mClassid:I

.field mPrefs:Landroid/content/SharedPreferences;

.field private mProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/cymobile/ymwork/act/AddReplay;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/AddReplay;->showProgressDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/cymobile/ymwork/act/AddReplay;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/cymobile/ymwork/act/AddReplay;->contexts:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2(Lcom/cymobile/ymwork/act/AddReplay;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/cymobile/ymwork/act/AddReplay;->mCaseid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/cymobile/ymwork/act/AddReplay;)I
    .locals 1
    .parameter

    .prologue
    .line 83
    iget v0, p0, Lcom/cymobile/ymwork/act/AddReplay;->mClassid:I

    return v0
.end method

.method static synthetic access$4(Lcom/cymobile/ymwork/act/AddReplay;)V
    .locals 0
    .parameter

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/AddReplay;->dismissProgressDialog()V

    return-void
.end method

.method static synthetic access$5(Lcom/cymobile/ymwork/act/AddReplay;Landroid/os/AsyncTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcom/cymobile/ymwork/act/AddReplay;->mAddTask:Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic access$6(Lcom/cymobile/ymwork/act/AddReplay;)Landroid/os/AsyncTask;
    .locals 1
    .parameter

    .prologue
    .line 174
    iget-object v0, p0, Lcom/cymobile/ymwork/act/AddReplay;->mAddTask:Landroid/os/AsyncTask;

    return-object v0
.end method

.method private dismissProgressDialog()V
    .locals 1

    .prologue
    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/cymobile/ymwork/act/AddReplay;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :goto_0
    return-void

    .line 170
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private initUI()V
    .locals 14

    .prologue
    const v13, 0x7f080007

    const/4 v12, 0x0

    .line 86
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/AddReplay;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/AddReplay;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v11, "caseid"

    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cymobile/ymwork/act/AddReplay;->mCaseid:Ljava/lang/String;

    .line 89
    :try_start_0
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/AddReplay;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v11, "classid"

    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/cymobile/ymwork/act/AddReplay;->mClassid:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :cond_0
    :goto_0
    const v1, 0x7f08002d

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/AddReplay;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageButton;

    .line 95
    .local v10, leftbtn:Landroid/widget/ImageButton;
    new-instance v1, Lcom/cymobile/ymwork/act/AddReplay$3;

    invoke-direct {v1, p0}, Lcom/cymobile/ymwork/act/AddReplay$3;-><init>(Lcom/cymobile/ymwork/act/AddReplay;)V

    invoke-virtual {v10, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    const v1, 0x7f08002f

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/AddReplay;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 102
    .local v8, commonTitle:Landroid/widget/TextView;
    const-string v1, "\u6dfb\u52a0\u6279\u793a"

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    const v1, 0x7f080030

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/AddReplay;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 104
    .local v3, rightbtn:Landroid/widget/Button;
    const-string v1, "\u6dfb\u52a0"

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 105
    new-instance v1, Lcom/cymobile/ymwork/act/AddReplay$4;

    invoke-direct {v1, p0}, Lcom/cymobile/ymwork/act/AddReplay$4;-><init>(Lcom/cymobile/ymwork/act/AddReplay;)V

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    const v1, 0x7f080003

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/AddReplay;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 115
    .local v7, anJianHao:Landroid/widget/TextView;
    iget-object v1, p0, Lcom/cymobile/ymwork/act/AddReplay;->mCaseid:Ljava/lang/String;

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    invoke-virtual {p0, v13}, Lcom/cymobile/ymwork/act/AddReplay;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 117
    .local v6, addButton:Landroid/widget/Button;
    new-instance v1, Lcom/cymobile/ymwork/act/AddReplay$5;

    invoke-direct {v1, p0}, Lcom/cymobile/ymwork/act/AddReplay$5;-><init>(Lcom/cymobile/ymwork/act/AddReplay;)V

    invoke-virtual {v6, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    const v1, 0x7f080004

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/AddReplay;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 125
    .local v4, replyresult:Landroid/widget/EditText;
    const v1, 0x7f080005

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/AddReplay;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 127
    .local v5, replydetails:Landroid/widget/EditText;
    invoke-virtual {p0, v13}, Lcom/cymobile/ymwork/act/AddReplay;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 128
    .local v2, adddeplybutton:Landroid/widget/Button;
    invoke-virtual {v2, v12}, Landroid/widget/Button;->setEnabled(Z)V

    .line 129
    invoke-virtual {v3, v12}, Landroid/widget/Button;->setEnabled(Z)V

    .line 130
    new-instance v0, Lcom/cymobile/ymwork/act/AddReplay$6;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/cymobile/ymwork/act/AddReplay$6;-><init>(Lcom/cymobile/ymwork/act/AddReplay;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/EditText;)V

    .line 149
    .local v0, fieldValidatorTextWatcher:Landroid/text/TextWatcher;
    invoke-virtual {v4, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 150
    invoke-virtual {v5, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 151
    return-void

    .line 90
    .end local v0           #fieldValidatorTextWatcher:Landroid/text/TextWatcher;
    .end local v2           #adddeplybutton:Landroid/widget/Button;
    .end local v3           #rightbtn:Landroid/widget/Button;
    .end local v4           #replyresult:Landroid/widget/EditText;
    .end local v5           #replydetails:Landroid/widget/EditText;
    .end local v6           #addButton:Landroid/widget/Button;
    .end local v7           #anJianHao:Landroid/widget/TextView;
    .end local v8           #commonTitle:Landroid/widget/TextView;
    .end local v10           #leftbtn:Landroid/widget/ImageButton;
    :catch_0
    move-exception v9

    .line 91
    .local v9, ee:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private showProgressDialog()Landroid/app/ProgressDialog;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 155
    iget-object v1, p0, Lcom/cymobile/ymwork/act/AddReplay;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v1, :cond_0

    .line 156
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 157
    .local v0, dialog:Landroid/app/ProgressDialog;
    const v1, 0x7f090066

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 158
    const v1, 0x7f090067

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/AddReplay;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 159
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 160
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 161
    iput-object v0, p0, Lcom/cymobile/ymwork/act/AddReplay;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 163
    .end local v0           #dialog:Landroid/app/ProgressDialog;
    :cond_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/AddReplay;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 164
    iget-object v1, p0, Lcom/cymobile/ymwork/act/AddReplay;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 42
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/AddReplay;->requestWindowFeature(I)Z

    .line 43
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/AddReplay;->requestWindowFeature(I)Z

    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const-class v0, Lcom/cymobile/ymwork/SettingBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 46
    const/4 v1, 0x2

    .line 45
    invoke-virtual {p0, v0, v1}, Lcom/cymobile/ymwork/act/AddReplay;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/cymobile/ymwork/act/AddReplay;->mPrefs:Landroid/content/SharedPreferences;

    .line 47
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/AddReplay;->setContentView(I)V

    .line 48
    iput-object p0, p0, Lcom/cymobile/ymwork/act/AddReplay;->contexts:Landroid/content/Context;

    .line 49
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/AddReplay;->initUI()V

    .line 50
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 56
    const/16 v1, 0xb

    if-ne p1, v1, :cond_0

    .line 57
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 58
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const-string v1, "\u786e\u8ba4\u63d0\u4ea4\u5417\uff1f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 59
    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 60
    const-string v1, "\u786e\u8ba4"

    .line 61
    new-instance v2, Lcom/cymobile/ymwork/act/AddReplay$1;

    invoke-direct {v2, p0}, Lcom/cymobile/ymwork/act/AddReplay$1;-><init>(Lcom/cymobile/ymwork/act/AddReplay;)V

    .line 60
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 69
    const-string v1, "\u53d6\u6d88"

    .line 70
    new-instance v2, Lcom/cymobile/ymwork/act/AddReplay$2;

    invoke-direct {v2, p0}, Lcom/cymobile/ymwork/act/AddReplay$2;-><init>(Lcom/cymobile/ymwork/act/AddReplay;)V

    .line 69
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 76
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 78
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/AddReplay;->mProgressDialog:Landroid/app/ProgressDialog;

    goto :goto_0
.end method
