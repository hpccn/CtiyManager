.class public Lcom/cymobile/ymwork/act/ChangePasswordActivity;
.super Landroid/app/Activity;
.source "ChangePasswordActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cymobile/ymwork/act/ChangePasswordActivity$ChangeTask;,
        Lcom/cymobile/ymwork/act/ChangePasswordActivity$UIHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ChangePasswordActivity"


# instance fields
.field private contexts:Landroid/content/Context;

.field handler:Landroid/os/Handler;

.field private mChangeTask:Landroid/os/AsyncTask;
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

.field private mGetZoneTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mLayoutHeader:Landroid/widget/LinearLayout;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private oldpasswordEditText:Landroid/widget/EditText;

.field private passwordEditText:Landroid/widget/EditText;

.field private repasswordEditText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 303
    new-instance v0, Lcom/cymobile/ymwork/act/ChangePasswordActivity$UIHandler;

    invoke-direct {v0, p0}, Lcom/cymobile/ymwork/act/ChangePasswordActivity$UIHandler;-><init>(Lcom/cymobile/ymwork/act/ChangePasswordActivity;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/ChangePasswordActivity;->handler:Landroid/os/Handler;

    .line 35
    return-void
.end method

.method static synthetic access$0(Lcom/cymobile/ymwork/act/ChangePasswordActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 211
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/ChangePasswordActivity;->showProgressDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/cymobile/ymwork/act/ChangePasswordActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ChangePasswordActivity;->oldpasswordEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2(Lcom/cymobile/ymwork/act/ChangePasswordActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ChangePasswordActivity;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$3(Lcom/cymobile/ymwork/act/ChangePasswordActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ChangePasswordActivity;->passwordEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$4(Lcom/cymobile/ymwork/act/ChangePasswordActivity;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ChangePasswordActivity;->contexts:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5(Lcom/cymobile/ymwork/act/ChangePasswordActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 203
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/ChangePasswordActivity;->dismissProgressDialog()V

    return-void
.end method

.method static synthetic access$6(Lcom/cymobile/ymwork/act/ChangePasswordActivity;Landroid/os/AsyncTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/cymobile/ymwork/act/ChangePasswordActivity;->mChangeTask:Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic access$7(Lcom/cymobile/ymwork/act/ChangePasswordActivity;)Landroid/os/AsyncTask;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ChangePasswordActivity;->mChangeTask:Landroid/os/AsyncTask;

    return-object v0
.end method

.method static synthetic access$8(Lcom/cymobile/ymwork/act/ChangePasswordActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ChangePasswordActivity;->repasswordEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method private dismissProgressDialog()V
    .locals 1

    .prologue
    .line 205
    :try_start_0
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ChangePasswordActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :goto_0
    return-void

    .line 206
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private ensureUi()V
    .locals 9

    .prologue
    .line 70
    const v8, 0x7f08002d

    invoke-virtual {p0, v8}, Lcom/cymobile/ymwork/act/ChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 71
    .local v2, leftbtn:Landroid/widget/ImageButton;
    new-instance v8, Lcom/cymobile/ymwork/act/ChangePasswordActivity$1;

    invoke-direct {v8, p0}, Lcom/cymobile/ymwork/act/ChangePasswordActivity$1;-><init>(Lcom/cymobile/ymwork/act/ChangePasswordActivity;)V

    invoke-virtual {v2, v8}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    const v8, 0x7f080030

    invoke-virtual {p0, v8}, Lcom/cymobile/ymwork/act/ChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 80
    .local v6, rightbtn:Landroid/widget/Button;
    const v8, 0x7f09007e

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setText(I)V

    .line 81
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 84
    const v8, 0x7f08002f

    invoke-virtual {p0, v8}, Lcom/cymobile/ymwork/act/ChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 85
    .local v7, title:Landroid/widget/TextView;
    const v8, 0x7f09007d

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 87
    const v8, 0x7f08002c

    invoke-virtual {p0, v8}, Lcom/cymobile/ymwork/act/ChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 88
    .local v0, changeButton:Landroid/widget/Button;
    new-instance v4, Lcom/cymobile/ymwork/act/ChangePasswordActivity$2;

    invoke-direct {v4, p0}, Lcom/cymobile/ymwork/act/ChangePasswordActivity$2;-><init>(Lcom/cymobile/ymwork/act/ChangePasswordActivity;)V

    .line 95
    .local v4, onClickListener:Landroid/view/View$OnClickListener;
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    invoke-virtual {v6, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    const v8, 0x7f08002b

    invoke-virtual {p0, v8}, Lcom/cymobile/ymwork/act/ChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/cymobile/ymwork/act/ChangePasswordActivity;->oldpasswordEditText:Landroid/widget/EditText;

    .line 99
    const v8, 0x7f08000b

    invoke-virtual {p0, v8}, Lcom/cymobile/ymwork/act/ChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/cymobile/ymwork/act/ChangePasswordActivity;->passwordEditText:Landroid/widget/EditText;

    .line 100
    const v8, 0x7f08000c

    invoke-virtual {p0, v8}, Lcom/cymobile/ymwork/act/ChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/cymobile/ymwork/act/ChangePasswordActivity;->repasswordEditText:Landroid/widget/EditText;

    .line 102
    new-instance v1, Lcom/cymobile/ymwork/act/ChangePasswordActivity$3;

    invoke-direct {v1, p0, v6, v0}, Lcom/cymobile/ymwork/act/ChangePasswordActivity$3;-><init>(Lcom/cymobile/ymwork/act/ChangePasswordActivity;Landroid/widget/Button;Landroid/widget/Button;)V

    .line 129
    .local v1, fieldValidatorTextWatcher:Landroid/text/TextWatcher;
    new-instance v5, Lcom/cymobile/ymwork/act/ChangePasswordActivity$4;

    invoke-direct {v5, p0}, Lcom/cymobile/ymwork/act/ChangePasswordActivity$4;-><init>(Lcom/cymobile/ymwork/act/ChangePasswordActivity;)V

    .line 163
    .local v5, passwdValidatorTextWatcher:Landroid/view/View$OnFocusChangeListener;
    iget-object v8, p0, Lcom/cymobile/ymwork/act/ChangePasswordActivity;->oldpasswordEditText:Landroid/widget/EditText;

    invoke-virtual {v8, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 165
    iget-object v8, p0, Lcom/cymobile/ymwork/act/ChangePasswordActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v8, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 166
    iget-object v8, p0, Lcom/cymobile/ymwork/act/ChangePasswordActivity;->repasswordEditText:Landroid/widget/EditText;

    invoke-virtual {v8, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 168
    new-instance v3, Lcom/cymobile/ymwork/act/ChangePasswordActivity$5;

    invoke-direct {v3, p0}, Lcom/cymobile/ymwork/act/ChangePasswordActivity$5;-><init>(Lcom/cymobile/ymwork/act/ChangePasswordActivity;)V

    .line 197
    .local v3, oldPasswdMatchWatcher:Landroid/view/View$OnFocusChangeListener;
    iget-object v8, p0, Lcom/cymobile/ymwork/act/ChangePasswordActivity;->oldpasswordEditText:Landroid/widget/EditText;

    invoke-virtual {v8, v3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 199
    iget-object v8, p0, Lcom/cymobile/ymwork/act/ChangePasswordActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v8, v5}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 200
    iget-object v8, p0, Lcom/cymobile/ymwork/act/ChangePasswordActivity;->repasswordEditText:Landroid/widget/EditText;

    invoke-virtual {v8, v5}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 201
    return-void
.end method

.method private showProgressDialog()Landroid/app/ProgressDialog;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 212
    iget-object v1, p0, Lcom/cymobile/ymwork/act/ChangePasswordActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v1, :cond_0

    .line 213
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 214
    .local v0, dialog:Landroid/app/ProgressDialog;
    const v1, 0x7f09007d

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 215
    const v1, 0x7f090067

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/ChangePasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 216
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 217
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 218
    iput-object v0, p0, Lcom/cymobile/ymwork/act/ChangePasswordActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 220
    .end local v0           #dialog:Landroid/app/ProgressDialog;
    :cond_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/ChangePasswordActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 221
    iget-object v1, p0, Lcom/cymobile/ymwork/act/ChangePasswordActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/ChangePasswordActivity;->requestWindowFeature(I)Z

    .line 53
    const-class v1, Lcom/cymobile/ymwork/SettingBase;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 54
    const/4 v2, 0x2

    .line 53
    invoke-virtual {p0, v1, v2}, Lcom/cymobile/ymwork/act/ChangePasswordActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/cymobile/ymwork/act/ChangePasswordActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 55
    iput-object p0, p0, Lcom/cymobile/ymwork/act/ChangePasswordActivity;->contexts:Landroid/content/Context;

    .line 56
    iget-object v1, p0, Lcom/cymobile/ymwork/act/ChangePasswordActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "Pref_key_GlobalIsAdmin"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 57
    .local v0, isAdmin:Z
    if-nez v0, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/ChangePasswordActivity;->finish()V

    .line 67
    :goto_0
    return-void

    .line 61
    :cond_0
    const v1, 0x7f030006

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/ChangePasswordActivity;->setContentView(I)V

    .line 63
    const v1, 0x7f08006e

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/ChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/cymobile/ymwork/act/ChangePasswordActivity;->mLayoutHeader:Landroid/widget/LinearLayout;

    .line 65
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/ChangePasswordActivity;->ensureUi()V

    goto :goto_0
.end method
