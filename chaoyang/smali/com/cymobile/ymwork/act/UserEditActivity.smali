.class public Lcom/cymobile/ymwork/act/UserEditActivity;
.super Landroid/app/Activity;
.source "UserEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cymobile/ymwork/act/UserEditActivity$EditTask;,
        Lcom/cymobile/ymwork/act/UserEditActivity$GetZoneTask;,
        Lcom/cymobile/ymwork/act/UserEditActivity$UIHandler;,
        Lcom/cymobile/ymwork/act/UserEditActivity$UserDetailTask;
    }
.end annotation


# static fields
.field public static final Extra_userMobile:Ljava/lang/String; = "Extra_userMobile"

.field private static final Msg_intent_resetSpinner:I = 0xb

.field private static final Msg_intent_resetUser:I = 0xc

.field private static final TAG:Ljava/lang/String; = "UserEditActivity"


# instance fields
.field private contexts:Landroid/content/Context;

.field private descText:Landroid/widget/EditText;

.field editedUser:Lcom/cymobile/ymwork/types/User;

.field handler:Landroid/os/Handler;

.field private isadmincheckbox:Landroid/widget/CheckBox;

.field private mEditTask:Landroid/os/AsyncTask;
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

.field private mLoadZoneDialog:Landroid/app/ProgressDialog;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mUserDetailTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Lcom/cymobile/ymwork/types/User;",
            ">;"
        }
    .end annotation
.end field

.field private passwordEditText:Landroid/widget/EditText;

.field private phoneEditText:Landroid/widget/EditText;

.field private repasswordEditText:Landroid/widget/EditText;

.field rightEditbtn:Landroid/widget/Button;

.field userMobile:Ljava/lang/String;

.field userSubZones:Lcom/cymobile/ymwork/types/Group;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cymobile/ymwork/types/Group",
            "<",
            "Lcom/cymobile/ymwork/types/Zone;",
            ">;"
        }
    .end annotation
.end field

.field userZone:Ljava/lang/String;

.field private usernameEditText:Landroid/widget/EditText;

.field private zoneSpinner:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 416
    new-instance v0, Lcom/cymobile/ymwork/act/UserEditActivity$UIHandler;

    invoke-direct {v0, p0}, Lcom/cymobile/ymwork/act/UserEditActivity$UIHandler;-><init>(Lcom/cymobile/ymwork/act/UserEditActivity;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/UserEditActivity;->handler:Landroid/os/Handler;

    .line 50
    return-void
.end method

.method static synthetic access$0(Lcom/cymobile/ymwork/act/UserEditActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 259
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/UserEditActivity;->showProgressDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/cymobile/ymwork/act/UserEditActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/cymobile/ymwork/act/UserEditActivity;->usernameEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$10(Lcom/cymobile/ymwork/act/UserEditActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 272
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/UserEditActivity;->showLoadZoneDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11(Lcom/cymobile/ymwork/act/UserEditActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 251
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/UserEditActivity;->dismissLoadZoneDialog()V

    return-void
.end method

.method static synthetic access$12(Lcom/cymobile/ymwork/act/UserEditActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 427
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/UserEditActivity;->resetZoneSpinner()V

    return-void
.end method

.method static synthetic access$13(Lcom/cymobile/ymwork/act/UserEditActivity;Landroid/os/AsyncTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/cymobile/ymwork/act/UserEditActivity;->mEditTask:Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic access$14(Lcom/cymobile/ymwork/act/UserEditActivity;)Landroid/os/AsyncTask;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/cymobile/ymwork/act/UserEditActivity;->mEditTask:Landroid/os/AsyncTask;

    return-object v0
.end method

.method static synthetic access$15(Lcom/cymobile/ymwork/act/UserEditActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/cymobile/ymwork/act/UserEditActivity;->repasswordEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2(Lcom/cymobile/ymwork/act/UserEditActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/cymobile/ymwork/act/UserEditActivity;->phoneEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3(Lcom/cymobile/ymwork/act/UserEditActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/cymobile/ymwork/act/UserEditActivity;->passwordEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$4(Lcom/cymobile/ymwork/act/UserEditActivity;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/cymobile/ymwork/act/UserEditActivity;->isadmincheckbox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$5(Lcom/cymobile/ymwork/act/UserEditActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/cymobile/ymwork/act/UserEditActivity;->descText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$6(Lcom/cymobile/ymwork/act/UserEditActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/cymobile/ymwork/act/UserEditActivity;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$7(Lcom/cymobile/ymwork/act/UserEditActivity;)Landroid/widget/Spinner;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/cymobile/ymwork/act/UserEditActivity;->zoneSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$8(Lcom/cymobile/ymwork/act/UserEditActivity;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/cymobile/ymwork/act/UserEditActivity;->contexts:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$9(Lcom/cymobile/ymwork/act/UserEditActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 243
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/UserEditActivity;->dismissProgressDialog()V

    return-void
.end method

.method private dismissLoadZoneDialog()V
    .locals 1

    .prologue
    .line 253
    :try_start_0
    iget-object v0, p0, Lcom/cymobile/ymwork/act/UserEditActivity;->mLoadZoneDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :goto_0
    return-void

    .line 254
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private dismissProgressDialog()V
    .locals 1

    .prologue
    .line 245
    :try_start_0
    iget-object v0, p0, Lcom/cymobile/ymwork/act/UserEditActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :goto_0
    return-void

    .line 246
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private ensureUi()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 105
    const v6, 0x7f08002d

    invoke-virtual {p0, v6}, Lcom/cymobile/ymwork/act/UserEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 106
    .local v2, leftbtn:Landroid/widget/ImageButton;
    new-instance v6, Lcom/cymobile/ymwork/act/UserEditActivity$1;

    invoke-direct {v6, p0}, Lcom/cymobile/ymwork/act/UserEditActivity$1;-><init>(Lcom/cymobile/ymwork/act/UserEditActivity;)V

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    const v6, 0x7f080030

    invoke-virtual {p0, v6}, Lcom/cymobile/ymwork/act/UserEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/cymobile/ymwork/act/UserEditActivity;->rightEditbtn:Landroid/widget/Button;

    .line 115
    iget-object v6, p0, Lcom/cymobile/ymwork/act/UserEditActivity;->rightEditbtn:Landroid/widget/Button;

    const v7, 0x7f09006f

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    .line 116
    iget-object v6, p0, Lcom/cymobile/ymwork/act/UserEditActivity;->rightEditbtn:Landroid/widget/Button;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 119
    const v6, 0x7f08002f

    invoke-virtual {p0, v6}, Lcom/cymobile/ymwork/act/UserEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 120
    .local v5, title:Landroid/widget/TextView;
    const v6, 0x7f09006e

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 122
    const v6, 0x7f080048

    invoke-virtual {p0, v6}, Lcom/cymobile/ymwork/act/UserEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 124
    .local v0, editButton:Landroid/widget/Button;
    new-instance v3, Lcom/cymobile/ymwork/act/UserEditActivity$2;

    invoke-direct {v3, p0}, Lcom/cymobile/ymwork/act/UserEditActivity$2;-><init>(Lcom/cymobile/ymwork/act/UserEditActivity;)V

    .line 131
    .local v3, onClickListener:Landroid/view/View$OnClickListener;
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v6, p0, Lcom/cymobile/ymwork/act/UserEditActivity;->rightEditbtn:Landroid/widget/Button;

    invoke-virtual {v6, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    const v6, 0x7f080008

    invoke-virtual {p0, v6}, Lcom/cymobile/ymwork/act/UserEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/cymobile/ymwork/act/UserEditActivity;->usernameEditText:Landroid/widget/EditText;

    .line 135
    const v6, 0x7f080009

    invoke-virtual {p0, v6}, Lcom/cymobile/ymwork/act/UserEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/cymobile/ymwork/act/UserEditActivity;->phoneEditText:Landroid/widget/EditText;

    .line 136
    const v6, 0x7f08000b

    invoke-virtual {p0, v6}, Lcom/cymobile/ymwork/act/UserEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/cymobile/ymwork/act/UserEditActivity;->passwordEditText:Landroid/widget/EditText;

    .line 137
    const v6, 0x7f08000c

    invoke-virtual {p0, v6}, Lcom/cymobile/ymwork/act/UserEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/cymobile/ymwork/act/UserEditActivity;->repasswordEditText:Landroid/widget/EditText;

    .line 138
    const v6, 0x7f08000d

    invoke-virtual {p0, v6}, Lcom/cymobile/ymwork/act/UserEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    iput-object v6, p0, Lcom/cymobile/ymwork/act/UserEditActivity;->isadmincheckbox:Landroid/widget/CheckBox;

    .line 139
    const v6, 0x7f08000e

    invoke-virtual {p0, v6}, Lcom/cymobile/ymwork/act/UserEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/cymobile/ymwork/act/UserEditActivity;->descText:Landroid/widget/EditText;

    .line 140
    const v6, 0x7f08000a

    invoke-virtual {p0, v6}, Lcom/cymobile/ymwork/act/UserEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    iput-object v6, p0, Lcom/cymobile/ymwork/act/UserEditActivity;->zoneSpinner:Landroid/widget/Spinner;

    .line 141
    iget-object v6, p0, Lcom/cymobile/ymwork/act/UserEditActivity;->zoneSpinner:Landroid/widget/Spinner;

    new-instance v7, Lcom/cymobile/ymwork/act/UserEditActivity$3;

    invoke-direct {v7, p0}, Lcom/cymobile/ymwork/act/UserEditActivity$3;-><init>(Lcom/cymobile/ymwork/act/UserEditActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/Spinner;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 149
    iget-object v6, p0, Lcom/cymobile/ymwork/act/UserEditActivity;->phoneEditText:Landroid/widget/EditText;

    invoke-virtual {v6, v8}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 150
    iget-object v6, p0, Lcom/cymobile/ymwork/act/UserEditActivity;->phoneEditText:Landroid/widget/EditText;

    invoke-virtual {v6, v8}, Landroid/widget/EditText;->setClickable(Z)V

    .line 152
    new-instance v1, Lcom/cymobile/ymwork/act/UserEditActivity$4;

    invoke-direct {v1, p0, v0}, Lcom/cymobile/ymwork/act/UserEditActivity$4;-><init>(Lcom/cymobile/ymwork/act/UserEditActivity;Landroid/widget/Button;)V

    .line 185
    .local v1, fieldValidatorTextWatcher:Landroid/text/TextWatcher;
    new-instance v4, Lcom/cymobile/ymwork/act/UserEditActivity$5;

    invoke-direct {v4, p0}, Lcom/cymobile/ymwork/act/UserEditActivity$5;-><init>(Lcom/cymobile/ymwork/act/UserEditActivity;)V

    .line 220
    .local v4, passwdValidatorTextWatcher:Landroid/view/View$OnFocusChangeListener;
    iget-object v6, p0, Lcom/cymobile/ymwork/act/UserEditActivity;->usernameEditText:Landroid/widget/EditText;

    invoke-virtual {v6, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 221
    iget-object v6, p0, Lcom/cymobile/ymwork/act/UserEditActivity;->phoneEditText:Landroid/widget/EditText;

    invoke-virtual {v6, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 222
    iget-object v6, p0, Lcom/cymobile/ymwork/act/UserEditActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v6, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 223
    iget-object v6, p0, Lcom/cymobile/ymwork/act/UserEditActivity;->repasswordEditText:Landroid/widget/EditText;

    invoke-virtual {v6, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 225
    iget-object v6, p0, Lcom/cymobile/ymwork/act/UserEditActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v6, v4}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 226
    iget-object v6, p0, Lcom/cymobile/ymwork/act/UserEditActivity;->repasswordEditText:Landroid/widget/EditText;

    invoke-virtual {v6, v4}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 228
    iget-object v6, p0, Lcom/cymobile/ymwork/act/UserEditActivity;->userZone:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/cymobile/ymwork/act/UserEditActivity;->userZone:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x6

    if-eq v6, v7, :cond_1

    :cond_0
    iget-object v6, p0, Lcom/cymobile/ymwork/act/UserEditActivity;->userZone:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x9

    if-ne v6, v7, :cond_3

    .line 229
    :cond_1
    invoke-static {}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getSubZone()Lcom/cymobile/ymwork/types/Group;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-static {}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getSubZone()Lcom/cymobile/ymwork/types/Group;

    move-result-object v6

    invoke-virtual {v6}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 230
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/UserEditActivity;->resetZoneSpinner()V

    .line 239
    :goto_0
    new-instance v6, Lcom/cymobile/ymwork/act/UserEditActivity$UserDetailTask;

    invoke-direct {v6, p0, v9}, Lcom/cymobile/ymwork/act/UserEditActivity$UserDetailTask;-><init>(Lcom/cymobile/ymwork/act/UserEditActivity;Lcom/cymobile/ymwork/act/UserEditActivity$UserDetailTask;)V

    iput-object v6, p0, Lcom/cymobile/ymwork/act/UserEditActivity;->mUserDetailTask:Landroid/os/AsyncTask;

    .line 240
    iget-object v6, p0, Lcom/cymobile/ymwork/act/UserEditActivity;->mUserDetailTask:Landroid/os/AsyncTask;

    invoke-static {v6}, Lcom/cymobile/ymwork/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V

    .line 241
    return-void

    .line 232
    :cond_2
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/UserEditActivity;->resetZoneSpinner()V

    .line 233
    new-instance v6, Lcom/cymobile/ymwork/act/UserEditActivity$GetZoneTask;

    invoke-direct {v6, p0, v9}, Lcom/cymobile/ymwork/act/UserEditActivity$GetZoneTask;-><init>(Lcom/cymobile/ymwork/act/UserEditActivity;Lcom/cymobile/ymwork/act/UserEditActivity$GetZoneTask;)V

    iput-object v6, p0, Lcom/cymobile/ymwork/act/UserEditActivity;->mGetZoneTask:Landroid/os/AsyncTask;

    .line 234
    iget-object v6, p0, Lcom/cymobile/ymwork/act/UserEditActivity;->mGetZoneTask:Landroid/os/AsyncTask;

    invoke-static {v6}, Lcom/cymobile/ymwork/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V

    goto :goto_0

    .line 237
    :cond_3
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/UserEditActivity;->resetZoneSpinner()V

    goto :goto_0
.end method

.method private resetZoneSpinner()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 428
    invoke-static {}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getSubZone()Lcom/cymobile/ymwork/types/Group;

    move-result-object v6

    .line 429
    .local v6, zones:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/Zone;>;"
    iget-object v7, p0, Lcom/cymobile/ymwork/act/UserEditActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v8, "key_GlobalZoneName"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 431
    .local v2, defaultZoneName:Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v7

    if-nez v7, :cond_3

    .line 432
    :cond_0
    const/4 v7, 0x1

    new-array v1, v7, [Ljava/lang/String;

    .line 439
    .local v1, array_spinner:[Ljava/lang/String;
    :cond_1
    aput-object v2, v1, v10

    .line 440
    const v7, 0x7f08000a

    invoke-virtual {p0, v7}, Lcom/cymobile/ymwork/act/UserEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    .line 441
    .local v5, zoneSpinner:Landroid/widget/Spinner;
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v7, 0x7f030047

    invoke-direct {v0, p0, v7, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 442
    .local v0, adapter:Landroid/widget/ArrayAdapter;
    invoke-virtual {v5, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 443
    invoke-virtual {v5, v10}, Landroid/widget/Spinner;->setSelection(I)V

    .line 444
    iget-object v7, p0, Lcom/cymobile/ymwork/act/UserEditActivity;->editedUser:Lcom/cymobile/ymwork/types/User;

    if-eqz v7, :cond_2

    .line 445
    iget-object v7, p0, Lcom/cymobile/ymwork/act/UserEditActivity;->editedUser:Lcom/cymobile/ymwork/types/User;

    invoke-virtual {v7}, Lcom/cymobile/ymwork/types/User;->getZoneid()Ljava/lang/String;

    move-result-object v4

    .line 446
    .local v4, userZone:Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/cymobile/ymwork/act/UserEditActivity;->setUserZone(Ljava/lang/String;)V

    .line 448
    .end local v4           #userZone:Ljava/lang/String;
    :cond_2
    return-void

    .line 434
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;
    .end local v1           #array_spinner:[Ljava/lang/String;
    .end local v5           #zoneSpinner:Landroid/widget/Spinner;
    :cond_3
    invoke-virtual {v6}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    new-array v1, v7, [Ljava/lang/String;

    .line 435
    .restart local v1       #array_spinner:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {v6}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v7

    if-ge v3, v7, :cond_1

    .line 436
    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v6, v3}, Lcom/cymobile/ymwork/types/Group;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/cymobile/ymwork/types/Zone;

    invoke-virtual {v7}, Lcom/cymobile/ymwork/types/Zone;->getZoneName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v8

    .line 435
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private showLoadZoneDialog()Landroid/app/ProgressDialog;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 273
    iget-object v1, p0, Lcom/cymobile/ymwork/act/UserEditActivity;->mLoadZoneDialog:Landroid/app/ProgressDialog;

    if-nez v1, :cond_0

    .line 274
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 275
    .local v0, dialog:Landroid/app/ProgressDialog;
    const v1, 0x7f09006c

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 276
    const v1, 0x7f09006d

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/UserEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 277
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 278
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 279
    iput-object v0, p0, Lcom/cymobile/ymwork/act/UserEditActivity;->mLoadZoneDialog:Landroid/app/ProgressDialog;

    .line 281
    .end local v0           #dialog:Landroid/app/ProgressDialog;
    :cond_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/UserEditActivity;->mLoadZoneDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 282
    iget-object v1, p0, Lcom/cymobile/ymwork/act/UserEditActivity;->mLoadZoneDialog:Landroid/app/ProgressDialog;

    return-object v1
.end method

.method private showProgressDialog()Landroid/app/ProgressDialog;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 260
    iget-object v1, p0, Lcom/cymobile/ymwork/act/UserEditActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v1, :cond_0

    .line 261
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 262
    .local v0, dialog:Landroid/app/ProgressDialog;
    const v1, 0x7f090066

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 263
    const v1, 0x7f090067

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/UserEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 264
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 265
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 266
    iput-object v0, p0, Lcom/cymobile/ymwork/act/UserEditActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 268
    .end local v0           #dialog:Landroid/app/ProgressDialog;
    :cond_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/UserEditActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 269
    iget-object v1, p0, Lcom/cymobile/ymwork/act/UserEditActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/UserEditActivity;->requestWindowFeature(I)Z

    .line 76
    const-class v0, Lcom/cymobile/ymwork/SettingBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 77
    const/4 v1, 0x2

    .line 76
    invoke-virtual {p0, v0, v1}, Lcom/cymobile/ymwork/act/UserEditActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/cymobile/ymwork/act/UserEditActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 78
    iput-object p0, p0, Lcom/cymobile/ymwork/act/UserEditActivity;->contexts:Landroid/content/Context;

    .line 79
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 82
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 83
    iget-object v1, p0, Lcom/cymobile/ymwork/act/UserEditActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "Pref_key_GlobalIsAdmin"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 84
    .local v0, isAdmin:Z
    if-nez v0, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/UserEditActivity;->finish()V

    .line 100
    :goto_0
    return-void

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/UserEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "Extra_userMobile"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/UserEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "Extra_userMobile"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cymobile/ymwork/act/UserEditActivity;->userMobile:Ljava/lang/String;

    .line 94
    const v1, 0x7f030012

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/UserEditActivity;->setContentView(I)V

    .line 95
    iget-object v1, p0, Lcom/cymobile/ymwork/act/UserEditActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "key_GlobalZoneId"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cymobile/ymwork/act/UserEditActivity;->userZone:Ljava/lang/String;

    .line 96
    const v1, 0x7f08006e

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/UserEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/cymobile/ymwork/act/UserEditActivity;->mLayoutHeader:Landroid/widget/LinearLayout;

    .line 98
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/UserEditActivity;->ensureUi()V

    goto :goto_0

    .line 91
    :cond_1
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/UserEditActivity;->finish()V

    goto :goto_0
.end method

.method setUser()V
    .locals 3

    .prologue
    .line 491
    iget-object v1, p0, Lcom/cymobile/ymwork/act/UserEditActivity;->editedUser:Lcom/cymobile/ymwork/types/User;

    if-eqz v1, :cond_0

    .line 492
    iget-object v1, p0, Lcom/cymobile/ymwork/act/UserEditActivity;->usernameEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/cymobile/ymwork/act/UserEditActivity;->editedUser:Lcom/cymobile/ymwork/types/User;

    invoke-virtual {v2}, Lcom/cymobile/ymwork/types/User;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 493
    iget-object v1, p0, Lcom/cymobile/ymwork/act/UserEditActivity;->phoneEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/cymobile/ymwork/act/UserEditActivity;->editedUser:Lcom/cymobile/ymwork/types/User;

    invoke-virtual {v2}, Lcom/cymobile/ymwork/types/User;->getMobile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 494
    iget-object v1, p0, Lcom/cymobile/ymwork/act/UserEditActivity;->passwordEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/cymobile/ymwork/act/UserEditActivity;->editedUser:Lcom/cymobile/ymwork/types/User;

    invoke-virtual {v2}, Lcom/cymobile/ymwork/types/User;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 495
    iget-object v1, p0, Lcom/cymobile/ymwork/act/UserEditActivity;->repasswordEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/cymobile/ymwork/act/UserEditActivity;->editedUser:Lcom/cymobile/ymwork/types/User;

    invoke-virtual {v2}, Lcom/cymobile/ymwork/types/User;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 496
    iget-object v1, p0, Lcom/cymobile/ymwork/act/UserEditActivity;->isadmincheckbox:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/cymobile/ymwork/act/UserEditActivity;->editedUser:Lcom/cymobile/ymwork/types/User;

    invoke-virtual {v2}, Lcom/cymobile/ymwork/types/User;->isAdmin()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 497
    iget-object v1, p0, Lcom/cymobile/ymwork/act/UserEditActivity;->descText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/cymobile/ymwork/act/UserEditActivity;->editedUser:Lcom/cymobile/ymwork/types/User;

    invoke-virtual {v2}, Lcom/cymobile/ymwork/types/User;->getDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 498
    iget-object v1, p0, Lcom/cymobile/ymwork/act/UserEditActivity;->editedUser:Lcom/cymobile/ymwork/types/User;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/User;->getZoneid()Ljava/lang/String;

    move-result-object v0

    .line 499
    .local v0, userZone:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/UserEditActivity;->setUserZone(Ljava/lang/String;)V

    .line 501
    .end local v0           #userZone:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method setUserZone(Ljava/lang/String;)V
    .locals 5
    .parameter "userZone"

    .prologue
    .line 503
    invoke-static {}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getSubZone()Lcom/cymobile/ymwork/types/Group;

    move-result-object v2

    .line 504
    .local v2, zones:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/Zone;>;"
    const/4 v1, -0x1

    .line 505
    .local v1, zoneIndex:I
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 506
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v2}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v3

    if-lt v0, v3, :cond_1

    .line 513
    .end local v0           #i:I
    :cond_0
    :goto_1
    if-ltz v1, :cond_3

    .line 514
    iget-object v3, p0, Lcom/cymobile/ymwork/act/UserEditActivity;->zoneSpinner:Landroid/widget/Spinner;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 518
    :goto_2
    return-void

    .line 507
    .restart local v0       #i:I
    :cond_1
    invoke-virtual {v2, v0}, Lcom/cymobile/ymwork/types/Group;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cymobile/ymwork/types/Zone;

    invoke-virtual {v3}, Lcom/cymobile/ymwork/types/Zone;->getZoneid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 508
    move v1, v0

    .line 509
    goto :goto_1

    .line 506
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 516
    .end local v0           #i:I
    :cond_3
    iget-object v3, p0, Lcom/cymobile/ymwork/act/UserEditActivity;->zoneSpinner:Landroid/widget/Spinner;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_2
.end method
