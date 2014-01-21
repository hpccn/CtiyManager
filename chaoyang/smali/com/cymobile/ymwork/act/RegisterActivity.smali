.class public Lcom/cymobile/ymwork/act/RegisterActivity;
.super Landroid/app/Activity;
.source "RegisterActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cymobile/ymwork/act/RegisterActivity$MyReceiver;,
        Lcom/cymobile/ymwork/act/RegisterActivity$OnViewClickListener;,
        Lcom/cymobile/ymwork/act/RegisterActivity$RegisterTask;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = true

.field public static final TAG:Ljava/lang/String; = "RegisterActivity"


# instance fields
.field private contexts:Landroid/content/Context;

.field private mCompanyEditText:Landroid/widget/EditText;

.field private mLayoutHeader:Landroid/widget/LinearLayout;

.field private mNewAccountTextView:Landroid/widget/TextView;

.field private mPhoneUsernameEditText:Landroid/widget/EditText;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mRegisterTask:Landroid/os/AsyncTask;
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

.field private mTitleEditText:Landroid/widget/EditText;

.field private mUsernameEditText:Landroid/widget/EditText;

.field registerReceiver:Lcom/cymobile/ymwork/act/RegisterActivity$MyReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/cymobile/ymwork/act/RegisterActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/RegisterActivity;->showProgressDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/cymobile/ymwork/act/RegisterActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/cymobile/ymwork/act/RegisterActivity;->mPhoneUsernameEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$10(Lcom/cymobile/ymwork/act/RegisterActivity;)Landroid/os/AsyncTask;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/cymobile/ymwork/act/RegisterActivity;->mRegisterTask:Landroid/os/AsyncTask;

    return-object v0
.end method

.method static synthetic access$2(Lcom/cymobile/ymwork/act/RegisterActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/cymobile/ymwork/act/RegisterActivity;->mUsernameEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3(Lcom/cymobile/ymwork/act/RegisterActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/cymobile/ymwork/act/RegisterActivity;->mCompanyEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$4(Lcom/cymobile/ymwork/act/RegisterActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/cymobile/ymwork/act/RegisterActivity;->mTitleEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$5(Lcom/cymobile/ymwork/act/RegisterActivity;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/cymobile/ymwork/act/RegisterActivity;->contexts:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6(Lcom/cymobile/ymwork/act/RegisterActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/RegisterActivity;->dismissProgressDialog()V

    return-void
.end method

.method static synthetic access$7(Lcom/cymobile/ymwork/act/RegisterActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/cymobile/ymwork/act/RegisterActivity;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$8(Lcom/cymobile/ymwork/act/RegisterActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/cymobile/ymwork/act/RegisterActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$9(Lcom/cymobile/ymwork/act/RegisterActivity;Landroid/os/AsyncTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/cymobile/ymwork/act/RegisterActivity;->mRegisterTask:Landroid/os/AsyncTask;

    return-void
.end method

.method private dismissProgressDialog()V
    .locals 1

    .prologue
    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/cymobile/ymwork/act/RegisterActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_0
    return-void

    .line 139
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private ensureUi()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 147
    const v5, 0x7f08002d

    invoke-virtual {p0, v5}, Lcom/cymobile/ymwork/act/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 148
    .local v1, leftbtn:Landroid/widget/ImageButton;
    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 149
    const v5, 0x7f080030

    invoke-virtual {p0, v5}, Lcom/cymobile/ymwork/act/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 150
    .local v3, rightbtn:Landroid/widget/Button;
    const v5, 0x7f0900e3

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setText(I)V

    .line 151
    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 152
    new-instance v5, Lcom/cymobile/ymwork/act/RegisterActivity$1;

    invoke-direct {v5, p0}, Lcom/cymobile/ymwork/act/RegisterActivity$1;-><init>(Lcom/cymobile/ymwork/act/RegisterActivity;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    const v5, 0x7f08002f

    invoke-virtual {p0, v5}, Lcom/cymobile/ymwork/act/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 163
    .local v4, title:Landroid/widget/TextView;
    const v5, 0x7f0900da

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 165
    const v5, 0x7f0800c0

    invoke-virtual {p0, v5}, Lcom/cymobile/ymwork/act/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 166
    .local v2, registerButton:Landroid/widget/Button;
    new-instance v5, Lcom/cymobile/ymwork/act/RegisterActivity$OnViewClickListener;

    invoke-direct {v5, p0}, Lcom/cymobile/ymwork/act/RegisterActivity$OnViewClickListener;-><init>(Lcom/cymobile/ymwork/act/RegisterActivity;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    const v5, 0x7f080009

    invoke-virtual {p0, v5}, Lcom/cymobile/ymwork/act/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/cymobile/ymwork/act/RegisterActivity;->mPhoneUsernameEditText:Landroid/widget/EditText;

    .line 170
    const v5, 0x7f080008

    invoke-virtual {p0, v5}, Lcom/cymobile/ymwork/act/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/cymobile/ymwork/act/RegisterActivity;->mUsernameEditText:Landroid/widget/EditText;

    .line 171
    const v5, 0x7f0800be

    invoke-virtual {p0, v5}, Lcom/cymobile/ymwork/act/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/cymobile/ymwork/act/RegisterActivity;->mCompanyEditText:Landroid/widget/EditText;

    .line 172
    const v5, 0x7f0800bf

    invoke-virtual {p0, v5}, Lcom/cymobile/ymwork/act/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/cymobile/ymwork/act/RegisterActivity;->mTitleEditText:Landroid/widget/EditText;

    .line 174
    new-instance v0, Lcom/cymobile/ymwork/act/RegisterActivity$2;

    invoke-direct {v0, p0, v2}, Lcom/cymobile/ymwork/act/RegisterActivity$2;-><init>(Lcom/cymobile/ymwork/act/RegisterActivity;Landroid/widget/Button;)V

    .line 185
    .local v0, fieldValidatorTextWatcher:Landroid/text/TextWatcher;
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/RegisterActivity;->phoneNumberEditTextFieldIsValid()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/RegisterActivity;->userNameEditTextFieldIsValid()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 187
    iget-object v5, p0, Lcom/cymobile/ymwork/act/RegisterActivity;->mPhoneUsernameEditText:Landroid/widget/EditText;

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 188
    iget-object v5, p0, Lcom/cymobile/ymwork/act/RegisterActivity;->mUsernameEditText:Landroid/widget/EditText;

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 189
    return-void

    :cond_0
    move v5, v6

    .line 185
    goto :goto_0
.end method

.method private showProgressDialog()Landroid/app/ProgressDialog;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 124
    iget-object v1, p0, Lcom/cymobile/ymwork/act/RegisterActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v1, :cond_0

    .line 125
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 126
    .local v0, dialog:Landroid/app/ProgressDialog;
    const v1, 0x7f0900da

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 127
    const v1, 0x7f0900db

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 128
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 129
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 130
    iput-object v0, p0, Lcom/cymobile/ymwork/act/RegisterActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 132
    .end local v0           #dialog:Landroid/app/ProgressDialog;
    :cond_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/RegisterActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 133
    iget-object v1, p0, Lcom/cymobile/ymwork/act/RegisterActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/cymobile/ymwork/act/RegisterActivity;->requestWindowFeature(I)Z

    .line 61
    iput-object p0, p0, Lcom/cymobile/ymwork/act/RegisterActivity;->contexts:Landroid/content/Context;

    .line 62
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 64
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "com.cymobile.ymwork.intent.action.LOGGED_IN"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 68
    new-instance v2, Lcom/cymobile/ymwork/act/RegisterActivity$MyReceiver;

    invoke-direct {v2, p0}, Lcom/cymobile/ymwork/act/RegisterActivity$MyReceiver;-><init>(Lcom/cymobile/ymwork/act/RegisterActivity;)V

    iput-object v2, p0, Lcom/cymobile/ymwork/act/RegisterActivity;->registerReceiver:Lcom/cymobile/ymwork/act/RegisterActivity$MyReceiver;

    .line 69
    iget-object v2, p0, Lcom/cymobile/ymwork/act/RegisterActivity;->registerReceiver:Lcom/cymobile/ymwork/act/RegisterActivity$MyReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/cymobile/ymwork/act/RegisterActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 71
    const-class v2, Lcom/cymobile/ymwork/SettingBase;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Lcom/cymobile/ymwork/act/RegisterActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/cymobile/ymwork/act/RegisterActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 72
    iget-object v2, p0, Lcom/cymobile/ymwork/act/RegisterActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "key_newGlobalUserPhone"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, globalphone:Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 74
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.cymobile.ymwork.intent.action.LOGGED_IN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/cymobile/ymwork/act/RegisterActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    const v2, 0x7f03002e

    invoke-virtual {p0, v2}, Lcom/cymobile/ymwork/act/RegisterActivity;->setContentView(I)V

    .line 78
    const v2, 0x7f08006e

    invoke-virtual {p0, v2}, Lcom/cymobile/ymwork/act/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/cymobile/ymwork/act/RegisterActivity;->mLayoutHeader:Landroid/widget/LinearLayout;

    .line 80
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/RegisterActivity;->ensureUi()V

    .line 84
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/RegisterActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cymobile/ymwork/act/RegisterActivity$RegisterTask;

    iput-object v2, p0, Lcom/cymobile/ymwork/act/RegisterActivity;->mRegisterTask:Landroid/os/AsyncTask;

    .line 85
    iget-object v2, p0, Lcom/cymobile/ymwork/act/RegisterActivity;->mRegisterTask:Landroid/os/AsyncTask;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/cymobile/ymwork/act/RegisterActivity;->mRegisterTask:Landroid/os/AsyncTask;

    invoke-virtual {v2}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    const-string v2, "RegisterActivity"

    const-string v3, "registerTask previously cancelled, trying again."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    new-instance v2, Lcom/cymobile/ymwork/act/RegisterActivity$RegisterTask;

    invoke-direct {v2, p0, v4}, Lcom/cymobile/ymwork/act/RegisterActivity$RegisterTask;-><init>(Lcom/cymobile/ymwork/act/RegisterActivity;Lcom/cymobile/ymwork/act/RegisterActivity$RegisterTask;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/cymobile/ymwork/act/RegisterActivity$RegisterTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v2

    iput-object v2, p0, Lcom/cymobile/ymwork/act/RegisterActivity;->mRegisterTask:Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 106
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 108
    :try_start_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/RegisterActivity;->registerReceiver:Lcom/cymobile/ymwork/act/RegisterActivity$MyReceiver;

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/RegisterActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, ee:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 101
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 102
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 94
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 97
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 116
    const-string v0, "RegisterActivity"

    const-string v1, "onRetainNonConfigurationInstance()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lcom/cymobile/ymwork/act/RegisterActivity;->mRegisterTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/cymobile/ymwork/act/RegisterActivity;->mRegisterTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/cymobile/ymwork/act/RegisterActivity;->mRegisterTask:Landroid/os/AsyncTask;

    return-object v0
.end method

.method public phoneNumberEditTextFieldIsValid()Z
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/cymobile/ymwork/act/RegisterActivity;->mPhoneUsernameEditText:Landroid/widget/EditText;

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

.method public userNameEditTextFieldIsValid()Z
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/cymobile/ymwork/act/RegisterActivity;->mUsernameEditText:Landroid/widget/EditText;

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
