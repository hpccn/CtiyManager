.class public Lcom/cymobile/ymwork/act/LoginActivity;
.super Landroid/app/Activity;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cymobile/ymwork/act/LoginActivity$LoginTask;,
        Lcom/cymobile/ymwork/act/LoginActivity$MyReceiver;,
        Lcom/cymobile/ymwork/act/LoginActivity$OnViewClickListener;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = true

.field public static final Intent_backClass:Ljava/lang/String; = "Intent_backClass"

.field public static final TAG:Ljava/lang/String; = "LoginActivity"


# instance fields
.field private backClass:Ljava/lang/Class;

.field private backExtra:[Ljava/lang/String;

.field private contexts:Landroid/content/Context;

.field loginReceiver:Lcom/cymobile/ymwork/act/LoginActivity$MyReceiver;

.field private mLayoutHeader:Landroid/widget/LinearLayout;

.field private mLoginTask:Landroid/os/AsyncTask;
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

.field private mNewAccountTextView:Landroid/widget/TextView;

.field private mPasswordEditText:Landroid/widget/EditText;

.field private mPhoneUsernameEditText:Landroid/widget/EditText;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 46
    iput-object v0, p0, Lcom/cymobile/ymwork/act/LoginActivity;->backClass:Ljava/lang/Class;

    .line 47
    iput-object v0, p0, Lcom/cymobile/ymwork/act/LoginActivity;->backExtra:[Ljava/lang/String;

    .line 41
    return-void
.end method

.method static synthetic access$0(Lcom/cymobile/ymwork/act/LoginActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/LoginActivity;->showProgressDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/cymobile/ymwork/act/LoginActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/cymobile/ymwork/act/LoginActivity;->mPhoneUsernameEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$10(Lcom/cymobile/ymwork/act/LoginActivity;)Landroid/os/AsyncTask;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/cymobile/ymwork/act/LoginActivity;->mLoginTask:Landroid/os/AsyncTask;

    return-object v0
.end method

.method static synthetic access$2(Lcom/cymobile/ymwork/act/LoginActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/cymobile/ymwork/act/LoginActivity;->mPasswordEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3(Lcom/cymobile/ymwork/act/LoginActivity;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/cymobile/ymwork/act/LoginActivity;->contexts:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4(Lcom/cymobile/ymwork/act/LoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/LoginActivity;->dismissProgressDialog()V

    return-void
.end method

.method static synthetic access$5(Lcom/cymobile/ymwork/act/LoginActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/cymobile/ymwork/act/LoginActivity;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$6(Lcom/cymobile/ymwork/act/LoginActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/cymobile/ymwork/act/LoginActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$7(Lcom/cymobile/ymwork/act/LoginActivity;)Ljava/lang/Class;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/cymobile/ymwork/act/LoginActivity;->backClass:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$8(Lcom/cymobile/ymwork/act/LoginActivity;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/cymobile/ymwork/act/LoginActivity;->backExtra:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9(Lcom/cymobile/ymwork/act/LoginActivity;Landroid/os/AsyncTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/cymobile/ymwork/act/LoginActivity;->mLoginTask:Landroid/os/AsyncTask;

    return-void
.end method

.method private dismissProgressDialog()V
    .locals 1

    .prologue
    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/cymobile/ymwork/act/LoginActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :goto_0
    return-void

    .line 200
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private ensureUi()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    .line 208
    const v5, 0x7f08002d

    invoke-virtual {p0, v5}, Lcom/cymobile/ymwork/act/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 209
    .local v1, leftbtn:Landroid/widget/ImageButton;
    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 210
    const v5, 0x7f080030

    invoke-virtual {p0, v5}, Lcom/cymobile/ymwork/act/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 211
    .local v3, rightbtn:Landroid/widget/Button;
    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 215
    const v5, 0x7f08002f

    invoke-virtual {p0, v5}, Lcom/cymobile/ymwork/act/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 216
    .local v4, title:Landroid/widget/TextView;
    const v5, 0x7f090043

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 219
    const v5, 0x7f08005f

    invoke-virtual {p0, v5}, Lcom/cymobile/ymwork/act/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 220
    .local v2, loginButton:Landroid/widget/Button;
    new-instance v5, Lcom/cymobile/ymwork/act/LoginActivity$OnViewClickListener;

    invoke-direct {v5, p0}, Lcom/cymobile/ymwork/act/LoginActivity$OnViewClickListener;-><init>(Lcom/cymobile/ymwork/act/LoginActivity;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    const v5, 0x7f080009

    invoke-virtual {p0, v5}, Lcom/cymobile/ymwork/act/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/cymobile/ymwork/act/LoginActivity;->mPhoneUsernameEditText:Landroid/widget/EditText;

    .line 224
    const v5, 0x7f08000b

    invoke-virtual {p0, v5}, Lcom/cymobile/ymwork/act/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/cymobile/ymwork/act/LoginActivity;->mPasswordEditText:Landroid/widget/EditText;

    .line 226
    new-instance v0, Lcom/cymobile/ymwork/act/LoginActivity$1;

    invoke-direct {v0, p0, v2}, Lcom/cymobile/ymwork/act/LoginActivity$1;-><init>(Lcom/cymobile/ymwork/act/LoginActivity;Landroid/widget/Button;)V

    .line 237
    .local v0, fieldValidatorTextWatcher:Landroid/text/TextWatcher;
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/LoginActivity;->phoneNumberEditTextFieldIsValid()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 238
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/LoginActivity;->passwordEditTextFieldIsValid()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    .line 237
    :goto_0
    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 239
    iget-object v5, p0, Lcom/cymobile/ymwork/act/LoginActivity;->mPhoneUsernameEditText:Landroid/widget/EditText;

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 240
    iget-object v5, p0, Lcom/cymobile/ymwork/act/LoginActivity;->mPasswordEditText:Landroid/widget/EditText;

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 241
    return-void

    .line 238
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private showProgressDialog()Landroid/app/ProgressDialog;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 185
    iget-object v1, p0, Lcom/cymobile/ymwork/act/LoginActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v1, :cond_0

    .line 186
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 187
    .local v0, dialog:Landroid/app/ProgressDialog;
    const v1, 0x7f090043

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 188
    const v1, 0x7f090044

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 189
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 190
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 191
    iput-object v0, p0, Lcom/cymobile/ymwork/act/LoginActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 193
    .end local v0           #dialog:Landroid/app/ProgressDialog;
    :cond_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/LoginActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 194
    iget-object v1, p0, Lcom/cymobile/ymwork/act/LoginActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v1
.end method


# virtual methods
.method public forgetPassword(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 382
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cymobile/ymwork/act/ForgetPasswordActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 383
    .local v0, forgetpwdIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 384
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/LoginActivity;->finish()V

    .line 64
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 167
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 169
    :try_start_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/LoginActivity;->loginReceiver:Lcom/cymobile/ymwork/act/LoginActivity$MyReceiver;

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/LoginActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :goto_0
    return-void

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, ee:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 162
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 163
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 143
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 145
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/LoginActivity;->finish()V

    .line 158
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 177
    const-string v0, "LoginActivity"

    const-string v1, "onRetainNonConfigurationInstance()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, p0, Lcom/cymobile/ymwork/act/LoginActivity;->mLoginTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/cymobile/ymwork/act/LoginActivity;->mLoginTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/cymobile/ymwork/act/LoginActivity;->mLoginTask:Landroid/os/AsyncTask;

    return-object v0
.end method

.method public passwordEditTextFieldIsValid()Z
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/cymobile/ymwork/act/LoginActivity;->mPasswordEditText:Landroid/widget/EditText;

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

.method public phoneNumberEditTextFieldIsValid()Z
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/cymobile/ymwork/act/LoginActivity;->mPhoneUsernameEditText:Landroid/widget/EditText;

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
