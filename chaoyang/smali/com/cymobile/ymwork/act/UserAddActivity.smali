.class public Lcom/cymobile/ymwork/act/UserAddActivity;
.super Landroid/app/Activity;
.source "UserAddActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cymobile/ymwork/act/UserAddActivity$AddTask;,
        Lcom/cymobile/ymwork/act/UserAddActivity$GetZoneTask;,
        Lcom/cymobile/ymwork/act/UserAddActivity$UIHandler;
    }
.end annotation


# static fields
.field private static final Msg_intent_resetSpinner:I = 0xb

.field private static final TAG:Ljava/lang/String; = "UserAddActivity"


# instance fields
.field private contexts:Landroid/content/Context;

.field private descEditText:Landroid/widget/EditText;

.field handler:Landroid/os/Handler;

.field private isadmincheckbox:Landroid/widget/CheckBox;

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

.field private passwordEditText:Landroid/widget/EditText;

.field private phoneEditText:Landroid/widget/EditText;

.field private repasswordEditText:Landroid/widget/EditText;

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
    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 392
    new-instance v0, Lcom/cymobile/ymwork/act/UserAddActivity$UIHandler;

    invoke-direct {v0, p0}, Lcom/cymobile/ymwork/act/UserAddActivity$UIHandler;-><init>(Lcom/cymobile/ymwork/act/UserAddActivity;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/UserAddActivity;->handler:Landroid/os/Handler;

    .line 45
    return-void
.end method

.method static synthetic access$0(Lcom/cymobile/ymwork/act/UserAddActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 235
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/UserAddActivity;->showProgressDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/cymobile/ymwork/act/UserAddActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/cymobile/ymwork/act/UserAddActivity;->usernameEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$10(Lcom/cymobile/ymwork/act/UserAddActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 248
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/UserAddActivity;->showLoadZoneDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11(Lcom/cymobile/ymwork/act/UserAddActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 227
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/UserAddActivity;->dismissLoadZoneDialog()V

    return-void
.end method

.method static synthetic access$12(Lcom/cymobile/ymwork/act/UserAddActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 401
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/UserAddActivity;->resetZoneSpinner()V

    return-void
.end method

.method static synthetic access$13(Lcom/cymobile/ymwork/act/UserAddActivity;Landroid/os/AsyncTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/cymobile/ymwork/act/UserAddActivity;->mAddTask:Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic access$14(Lcom/cymobile/ymwork/act/UserAddActivity;)Landroid/os/AsyncTask;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/cymobile/ymwork/act/UserAddActivity;->mAddTask:Landroid/os/AsyncTask;

    return-object v0
.end method

.method static synthetic access$15(Lcom/cymobile/ymwork/act/UserAddActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/cymobile/ymwork/act/UserAddActivity;->repasswordEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2(Lcom/cymobile/ymwork/act/UserAddActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/cymobile/ymwork/act/UserAddActivity;->phoneEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3(Lcom/cymobile/ymwork/act/UserAddActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/cymobile/ymwork/act/UserAddActivity;->passwordEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$4(Lcom/cymobile/ymwork/act/UserAddActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/cymobile/ymwork/act/UserAddActivity;->descEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$5(Lcom/cymobile/ymwork/act/UserAddActivity;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/cymobile/ymwork/act/UserAddActivity;->isadmincheckbox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$6(Lcom/cymobile/ymwork/act/UserAddActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/cymobile/ymwork/act/UserAddActivity;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$7(Lcom/cymobile/ymwork/act/UserAddActivity;)Landroid/widget/Spinner;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/cymobile/ymwork/act/UserAddActivity;->zoneSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$8(Lcom/cymobile/ymwork/act/UserAddActivity;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/cymobile/ymwork/act/UserAddActivity;->contexts:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$9(Lcom/cymobile/ymwork/act/UserAddActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 219
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/UserAddActivity;->dismissProgressDialog()V

    return-void
.end method

.method private dismissLoadZoneDialog()V
    .locals 1

    .prologue
    .line 229
    :try_start_0
    iget-object v0, p0, Lcom/cymobile/ymwork/act/UserAddActivity;->mLoadZoneDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :goto_0
    return-void

    .line 230
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private dismissProgressDialog()V
    .locals 1

    .prologue
    .line 221
    :try_start_0
    iget-object v0, p0, Lcom/cymobile/ymwork/act/UserAddActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :goto_0
    return-void

    .line 222
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private ensureUi()V
    .locals 9

    .prologue
    .line 88
    const v7, 0x7f08002d

    invoke-virtual {p0, v7}, Lcom/cymobile/ymwork/act/UserAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 89
    .local v2, leftbtn:Landroid/widget/ImageButton;
    new-instance v7, Lcom/cymobile/ymwork/act/UserAddActivity$1;

    invoke-direct {v7, p0}, Lcom/cymobile/ymwork/act/UserAddActivity$1;-><init>(Lcom/cymobile/ymwork/act/UserAddActivity;)V

    invoke-virtual {v2, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    const v7, 0x7f080030

    invoke-virtual {p0, v7}, Lcom/cymobile/ymwork/act/UserAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 98
    .local v5, rightbtn:Landroid/widget/Button;
    const v7, 0x7f090052

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setText(I)V

    .line 99
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 102
    const v7, 0x7f08002f

    invoke-virtual {p0, v7}, Lcom/cymobile/ymwork/act/UserAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 103
    .local v6, title:Landroid/widget/TextView;
    const v7, 0x7f090051

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 105
    const v7, 0x7f08000f

    invoke-virtual {p0, v7}, Lcom/cymobile/ymwork/act/UserAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 106
    .local v0, addButton:Landroid/widget/Button;
    new-instance v3, Lcom/cymobile/ymwork/act/UserAddActivity$2;

    invoke-direct {v3, p0}, Lcom/cymobile/ymwork/act/UserAddActivity$2;-><init>(Lcom/cymobile/ymwork/act/UserAddActivity;)V

    .line 113
    .local v3, onClickListener:Landroid/view/View$OnClickListener;
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    invoke-virtual {v5, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    const v7, 0x7f080008

    invoke-virtual {p0, v7}, Lcom/cymobile/ymwork/act/UserAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lcom/cymobile/ymwork/act/UserAddActivity;->usernameEditText:Landroid/widget/EditText;

    .line 116
    const v7, 0x7f080009

    invoke-virtual {p0, v7}, Lcom/cymobile/ymwork/act/UserAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lcom/cymobile/ymwork/act/UserAddActivity;->phoneEditText:Landroid/widget/EditText;

    .line 117
    const v7, 0x7f08000b

    invoke-virtual {p0, v7}, Lcom/cymobile/ymwork/act/UserAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lcom/cymobile/ymwork/act/UserAddActivity;->passwordEditText:Landroid/widget/EditText;

    .line 118
    const v7, 0x7f08000c

    invoke-virtual {p0, v7}, Lcom/cymobile/ymwork/act/UserAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lcom/cymobile/ymwork/act/UserAddActivity;->repasswordEditText:Landroid/widget/EditText;

    .line 119
    const v7, 0x7f08000d

    invoke-virtual {p0, v7}, Lcom/cymobile/ymwork/act/UserAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    iput-object v7, p0, Lcom/cymobile/ymwork/act/UserAddActivity;->isadmincheckbox:Landroid/widget/CheckBox;

    .line 120
    const v7, 0x7f08000e

    invoke-virtual {p0, v7}, Lcom/cymobile/ymwork/act/UserAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lcom/cymobile/ymwork/act/UserAddActivity;->descEditText:Landroid/widget/EditText;

    .line 121
    const v7, 0x7f08000a

    invoke-virtual {p0, v7}, Lcom/cymobile/ymwork/act/UserAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Spinner;

    iput-object v7, p0, Lcom/cymobile/ymwork/act/UserAddActivity;->zoneSpinner:Landroid/widget/Spinner;

    .line 122
    iget-object v7, p0, Lcom/cymobile/ymwork/act/UserAddActivity;->zoneSpinner:Landroid/widget/Spinner;

    new-instance v8, Lcom/cymobile/ymwork/act/UserAddActivity$3;

    invoke-direct {v8, p0}, Lcom/cymobile/ymwork/act/UserAddActivity$3;-><init>(Lcom/cymobile/ymwork/act/UserAddActivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/Spinner;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 132
    new-instance v1, Lcom/cymobile/ymwork/act/UserAddActivity$4;

    invoke-direct {v1, p0, v5, v0}, Lcom/cymobile/ymwork/act/UserAddActivity$4;-><init>(Lcom/cymobile/ymwork/act/UserAddActivity;Landroid/widget/Button;Landroid/widget/Button;)V

    .line 161
    .local v1, fieldValidatorTextWatcher:Landroid/text/TextWatcher;
    new-instance v4, Lcom/cymobile/ymwork/act/UserAddActivity$5;

    invoke-direct {v4, p0}, Lcom/cymobile/ymwork/act/UserAddActivity$5;-><init>(Lcom/cymobile/ymwork/act/UserAddActivity;)V

    .line 196
    .local v4, passwdValidatorTextWatcher:Landroid/view/View$OnFocusChangeListener;
    iget-object v7, p0, Lcom/cymobile/ymwork/act/UserAddActivity;->usernameEditText:Landroid/widget/EditText;

    invoke-virtual {v7, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 197
    iget-object v7, p0, Lcom/cymobile/ymwork/act/UserAddActivity;->phoneEditText:Landroid/widget/EditText;

    invoke-virtual {v7, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 198
    iget-object v7, p0, Lcom/cymobile/ymwork/act/UserAddActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v7, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 199
    iget-object v7, p0, Lcom/cymobile/ymwork/act/UserAddActivity;->repasswordEditText:Landroid/widget/EditText;

    invoke-virtual {v7, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 201
    iget-object v7, p0, Lcom/cymobile/ymwork/act/UserAddActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v7, v4}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 202
    iget-object v7, p0, Lcom/cymobile/ymwork/act/UserAddActivity;->repasswordEditText:Landroid/widget/EditText;

    invoke-virtual {v7, v4}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 204
    iget-object v7, p0, Lcom/cymobile/ymwork/act/UserAddActivity;->userZone:Ljava/lang/String;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/cymobile/ymwork/act/UserAddActivity;->userZone:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x6

    if-eq v7, v8, :cond_1

    :cond_0
    iget-object v7, p0, Lcom/cymobile/ymwork/act/UserAddActivity;->userZone:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x9

    if-ne v7, v8, :cond_3

    .line 205
    :cond_1
    invoke-static {}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getSubZone()Lcom/cymobile/ymwork/types/Group;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-static {}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getSubZone()Lcom/cymobile/ymwork/types/Group;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 206
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/UserAddActivity;->resetZoneSpinner()V

    .line 217
    :goto_0
    return-void

    .line 208
    :cond_2
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/UserAddActivity;->resetZoneSpinner()V

    .line 209
    new-instance v7, Lcom/cymobile/ymwork/act/UserAddActivity$GetZoneTask;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/cymobile/ymwork/act/UserAddActivity$GetZoneTask;-><init>(Lcom/cymobile/ymwork/act/UserAddActivity;Lcom/cymobile/ymwork/act/UserAddActivity$GetZoneTask;)V

    iput-object v7, p0, Lcom/cymobile/ymwork/act/UserAddActivity;->mGetZoneTask:Landroid/os/AsyncTask;

    .line 210
    iget-object v7, p0, Lcom/cymobile/ymwork/act/UserAddActivity;->mGetZoneTask:Landroid/os/AsyncTask;

    invoke-static {v7}, Lcom/cymobile/ymwork/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V

    goto :goto_0

    .line 213
    :cond_3
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/UserAddActivity;->resetZoneSpinner()V

    goto :goto_0
.end method

.method private resetZoneSpinner()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 402
    invoke-static {}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getSubZone()Lcom/cymobile/ymwork/types/Group;

    move-result-object v5

    .line 403
    .local v5, zones:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/Zone;>;"
    iget-object v6, p0, Lcom/cymobile/ymwork/act/UserAddActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v7, "key_GlobalZoneName"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 405
    .local v2, defaultZoneName:Ljava/lang/String;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 406
    :cond_0
    const/4 v6, 0x1

    new-array v1, v6, [Ljava/lang/String;

    .line 413
    .local v1, array_spinner:[Ljava/lang/String;
    :cond_1
    aput-object v2, v1, v9

    .line 414
    const v6, 0x7f08000a

    invoke-virtual {p0, v6}, Lcom/cymobile/ymwork/act/UserAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    .line 415
    .local v4, zoneSpinner:Landroid/widget/Spinner;
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v6, 0x7f030047

    invoke-direct {v0, p0, v6, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 416
    .local v0, adapter:Landroid/widget/ArrayAdapter;
    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 417
    invoke-virtual {v4, v9}, Landroid/widget/Spinner;->setSelection(I)V

    .line 418
    return-void

    .line 408
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;
    .end local v1           #array_spinner:[Ljava/lang/String;
    .end local v4           #zoneSpinner:Landroid/widget/Spinner;
    :cond_2
    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    new-array v1, v6, [Ljava/lang/String;

    .line 409
    .restart local v1       #array_spinner:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v6

    if-ge v3, v6, :cond_1

    .line 410
    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v5, v3}, Lcom/cymobile/ymwork/types/Group;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cymobile/ymwork/types/Zone;

    invoke-virtual {v6}, Lcom/cymobile/ymwork/types/Zone;->getZoneName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v7

    .line 409
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private showLoadZoneDialog()Landroid/app/ProgressDialog;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 249
    iget-object v1, p0, Lcom/cymobile/ymwork/act/UserAddActivity;->mLoadZoneDialog:Landroid/app/ProgressDialog;

    if-nez v1, :cond_0

    .line 250
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 251
    .local v0, dialog:Landroid/app/ProgressDialog;
    const v1, 0x7f09006c

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 252
    const v1, 0x7f09006d

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/UserAddActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 253
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 254
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 255
    iput-object v0, p0, Lcom/cymobile/ymwork/act/UserAddActivity;->mLoadZoneDialog:Landroid/app/ProgressDialog;

    .line 257
    .end local v0           #dialog:Landroid/app/ProgressDialog;
    :cond_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/UserAddActivity;->mLoadZoneDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 258
    iget-object v1, p0, Lcom/cymobile/ymwork/act/UserAddActivity;->mLoadZoneDialog:Landroid/app/ProgressDialog;

    return-object v1
.end method

.method private showProgressDialog()Landroid/app/ProgressDialog;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 236
    iget-object v1, p0, Lcom/cymobile/ymwork/act/UserAddActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v1, :cond_0

    .line 237
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 238
    .local v0, dialog:Landroid/app/ProgressDialog;
    const v1, 0x7f090066

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 239
    const v1, 0x7f090067

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/UserAddActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 240
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 241
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 242
    iput-object v0, p0, Lcom/cymobile/ymwork/act/UserAddActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 244
    .end local v0           #dialog:Landroid/app/ProgressDialog;
    :cond_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/UserAddActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 245
    iget-object v1, p0, Lcom/cymobile/ymwork/act/UserAddActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/UserAddActivity;->requestWindowFeature(I)Z

    .line 69
    const-class v1, Lcom/cymobile/ymwork/SettingBase;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 70
    const/4 v2, 0x2

    .line 69
    invoke-virtual {p0, v1, v2}, Lcom/cymobile/ymwork/act/UserAddActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/cymobile/ymwork/act/UserAddActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 71
    iput-object p0, p0, Lcom/cymobile/ymwork/act/UserAddActivity;->contexts:Landroid/content/Context;

    .line 72
    iget-object v1, p0, Lcom/cymobile/ymwork/act/UserAddActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "Pref_key_GlobalIsAdmin"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 73
    .local v0, isAdmin:Z
    if-nez v0, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/UserAddActivity;->finish()V

    .line 84
    :goto_0
    return-void

    .line 77
    :cond_0
    const v1, 0x7f030001

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/UserAddActivity;->setContentView(I)V

    .line 79
    iget-object v1, p0, Lcom/cymobile/ymwork/act/UserAddActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "key_GlobalZoneId"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cymobile/ymwork/act/UserAddActivity;->userZone:Ljava/lang/String;

    .line 80
    const v1, 0x7f08006e

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/UserAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/cymobile/ymwork/act/UserAddActivity;->mLayoutHeader:Landroid/widget/LinearLayout;

    .line 82
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/UserAddActivity;->ensureUi()V

    goto :goto_0
.end method
