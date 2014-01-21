.class public Lcom/cymobile/ymwork/act/SetZoneActivity1;
.super Landroid/app/Activity;
.source "SetZoneActivity1.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cymobile/ymwork/act/SetZoneActivity1$GetCommunityZoneTask;,
        Lcom/cymobile/ymwork/act/SetZoneActivity1$GetStreetZoneTask;,
        Lcom/cymobile/ymwork/act/SetZoneActivity1$UIHandler;
    }
.end annotation


# static fields
.field private static final Dialog_networkproblem:I = 0xb

.field private static final Msg_intent_resetCommunitySpinner:I = 0xc

.field private static final Msg_intent_resetStreetSpinner:I = 0xb

.field private static final TAG:Ljava/lang/String; = "SetZoneActivity1"


# instance fields
.field private communityZoneSpinner:Landroid/widget/Spinner;

.field communityZones:Lcom/cymobile/ymwork/types/Group;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cymobile/ymwork/types/Group",
            "<",
            "Lcom/cymobile/ymwork/types/Zone;",
            ">;"
        }
    .end annotation
.end field

.field private contexts:Landroid/content/Context;

.field handler:Landroid/os/Handler;

.field public iSystemService:Lcom/cymobile/ymwork/ISystemService;

.field private mGetCommunityZoneTask:Landroid/os/AsyncTask;
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

.field mPrefs:Landroid/content/SharedPreferences;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private final serviceConnection:Landroid/content/ServiceConnection;

.field private streetZoneSpinner:Landroid/widget/Spinner;

.field streetZones:Lcom/cymobile/ymwork/types/Group;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cymobile/ymwork/types/Group",
            "<",
            "Lcom/cymobile/ymwork/types/Zone;",
            ">;"
        }
    .end annotation
.end field

.field zoneIntent:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 51
    const/4 v0, 0x1

    iput v0, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1;->zoneIntent:I

    .line 80
    new-instance v0, Lcom/cymobile/ymwork/act/SetZoneActivity1$1;

    invoke-direct {v0, p0}, Lcom/cymobile/ymwork/act/SetZoneActivity1$1;-><init>(Lcom/cymobile/ymwork/act/SetZoneActivity1;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1;->serviceConnection:Landroid/content/ServiceConnection;

    .line 88
    new-instance v0, Lcom/cymobile/ymwork/act/SetZoneActivity1$UIHandler;

    invoke-direct {v0, p0}, Lcom/cymobile/ymwork/act/SetZoneActivity1$UIHandler;-><init>(Lcom/cymobile/ymwork/act/SetZoneActivity1;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1;->handler:Landroid/os/Handler;

    .line 47
    return-void
.end method

.method static synthetic access$0(Lcom/cymobile/ymwork/act/SetZoneActivity1;)V
    .locals 0
    .parameter

    .prologue
    .line 272
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/SetZoneActivity1;->resetStreetZoneSpinner()V

    return-void
.end method

.method static synthetic access$1(Lcom/cymobile/ymwork/act/SetZoneActivity1;)V
    .locals 0
    .parameter

    .prologue
    .line 406
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/SetZoneActivity1;->dismissProgressDialog()V

    return-void
.end method

.method static synthetic access$2(Lcom/cymobile/ymwork/act/SetZoneActivity1;)V
    .locals 0
    .parameter

    .prologue
    .line 368
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/SetZoneActivity1;->resetCommunityZoneSpinner()V

    return-void
.end method

.method static synthetic access$3(Lcom/cymobile/ymwork/act/SetZoneActivity1;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1;->contexts:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4(Lcom/cymobile/ymwork/act/SetZoneActivity1;)Landroid/widget/Spinner;
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1;->streetZoneSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$5(Lcom/cymobile/ymwork/act/SetZoneActivity1;)V
    .locals 0
    .parameter

    .prologue
    .line 314
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/SetZoneActivity1;->requestCommunitySpinner()V

    return-void
.end method

.method private clearNumbers()V
    .locals 2

    .prologue
    .line 414
    iget-object v1, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1;->iSystemService:Lcom/cymobile/ymwork/ISystemService;

    if-eqz v1, :cond_0

    .line 416
    :try_start_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1;->iSystemService:Lcom/cymobile/ymwork/ISystemService;

    invoke-interface {v1}, Lcom/cymobile/ymwork/ISystemService;->clearNumbers()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    :cond_0
    :goto_0
    return-void

    .line 417
    :catch_0
    move-exception v0

    .line 418
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private dismissProgressDialog()V
    .locals 1

    .prologue
    .line 408
    :try_start_0
    iget-object v0, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    :goto_0
    return-void

    .line 409
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private ensureUi()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 105
    const v4, 0x7f08002d

    invoke-virtual {p0, v4}, Lcom/cymobile/ymwork/act/SetZoneActivity1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 106
    .local v0, leftbtn:Landroid/widget/ImageButton;
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 107
    const v4, 0x7f080030

    invoke-virtual {p0, v4}, Lcom/cymobile/ymwork/act/SetZoneActivity1;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 109
    .local v1, rightbtn:Landroid/widget/Button;
    const v4, 0x7f0900e3

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(I)V

    .line 110
    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 111
    new-instance v4, Lcom/cymobile/ymwork/act/SetZoneActivity1$2;

    invoke-direct {v4, p0}, Lcom/cymobile/ymwork/act/SetZoneActivity1$2;-><init>(Lcom/cymobile/ymwork/act/SetZoneActivity1;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    const v4, 0x7f08002f

    invoke-virtual {p0, v4}, Lcom/cymobile/ymwork/act/SetZoneActivity1;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 122
    .local v3, title:Landroid/widget/TextView;
    const v4, 0x7f0900c0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 124
    const v4, 0x7f0800d3

    invoke-virtual {p0, v4}, Lcom/cymobile/ymwork/act/SetZoneActivity1;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 125
    .local v2, setzone_submit_button:Landroid/widget/Button;
    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 126
    const v4, 0x7f0800d5

    invoke-virtual {p0, v4}, Lcom/cymobile/ymwork/act/SetZoneActivity1;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1;->streetZoneSpinner:Landroid/widget/Spinner;

    .line 127
    iget-object v4, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1;->streetZoneSpinner:Landroid/widget/Spinner;

    new-instance v5, Lcom/cymobile/ymwork/act/SetZoneActivity1$3;

    invoke-direct {v5, p0}, Lcom/cymobile/ymwork/act/SetZoneActivity1$3;-><init>(Lcom/cymobile/ymwork/act/SetZoneActivity1;)V

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 135
    const v4, 0x7f0800d7

    invoke-virtual {p0, v4}, Lcom/cymobile/ymwork/act/SetZoneActivity1;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1;->communityZoneSpinner:Landroid/widget/Spinner;

    .line 136
    iget v4, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1;->zoneIntent:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 137
    invoke-static {}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getStreetZone()Lcom/cymobile/ymwork/types/Group;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getStreetZone()Lcom/cymobile/ymwork/types/Group;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 138
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/SetZoneActivity1;->resetStreetZoneSpinner()V

    .line 155
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1;->streetZoneSpinner:Landroid/widget/Spinner;

    new-instance v5, Lcom/cymobile/ymwork/act/SetZoneActivity1$4;

    invoke-direct {v5, p0}, Lcom/cymobile/ymwork/act/SetZoneActivity1$4;-><init>(Lcom/cymobile/ymwork/act/SetZoneActivity1;)V

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 170
    iget-object v4, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1;->communityZoneSpinner:Landroid/widget/Spinner;

    new-instance v5, Lcom/cymobile/ymwork/act/SetZoneActivity1$5;

    invoke-direct {v5, p0}, Lcom/cymobile/ymwork/act/SetZoneActivity1$5;-><init>(Lcom/cymobile/ymwork/act/SetZoneActivity1;)V

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 183
    return-void

    .line 140
    :cond_1
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/SetZoneActivity1;->resetStreetZoneSpinner()V

    .line 141
    new-instance v4, Lcom/cymobile/ymwork/act/SetZoneActivity1$GetStreetZoneTask;

    invoke-direct {v4, p0}, Lcom/cymobile/ymwork/act/SetZoneActivity1$GetStreetZoneTask;-><init>(Lcom/cymobile/ymwork/act/SetZoneActivity1;)V

    iput-object v4, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1;->mGetZoneTask:Landroid/os/AsyncTask;

    .line 142
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/SetZoneActivity1;->showProgressDialog()Landroid/app/ProgressDialog;

    .line 143
    iget-object v4, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1;->mGetZoneTask:Landroid/os/AsyncTask;

    invoke-static {v4}, Lcom/cymobile/ymwork/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V

    goto :goto_0

    .line 145
    :cond_2
    iget v4, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1;->zoneIntent:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 146
    invoke-static {}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getStreetZone()Lcom/cymobile/ymwork/types/Group;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getStreetZone()Lcom/cymobile/ymwork/types/Group;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 147
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/SetZoneActivity1;->resetStreetZoneSpinner()V

    goto :goto_0

    .line 149
    :cond_3
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/SetZoneActivity1;->resetStreetZoneSpinner()V

    .line 150
    new-instance v4, Lcom/cymobile/ymwork/act/SetZoneActivity1$GetStreetZoneTask;

    invoke-direct {v4, p0}, Lcom/cymobile/ymwork/act/SetZoneActivity1$GetStreetZoneTask;-><init>(Lcom/cymobile/ymwork/act/SetZoneActivity1;)V

    iput-object v4, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1;->mGetZoneTask:Landroid/os/AsyncTask;

    .line 151
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/SetZoneActivity1;->showProgressDialog()Landroid/app/ProgressDialog;

    .line 152
    iget-object v4, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1;->mGetZoneTask:Landroid/os/AsyncTask;

    invoke-static {v4}, Lcom/cymobile/ymwork/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V

    goto :goto_0
.end method

.method private gotoRigster()V
    .locals 2

    .prologue
    .line 220
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cymobile/ymwork/act/RegisterActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 221
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/SetZoneActivity1;->startActivity(Landroid/content/Intent;)V

    .line 222
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/SetZoneActivity1;->finish()V

    .line 223
    return-void
.end method

.method private requestCommunitySpinner()V
    .locals 1

    .prologue
    .line 315
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/SetZoneActivity1;->showProgressDialog()Landroid/app/ProgressDialog;

    .line 316
    new-instance v0, Lcom/cymobile/ymwork/act/SetZoneActivity1$GetCommunityZoneTask;

    invoke-direct {v0, p0}, Lcom/cymobile/ymwork/act/SetZoneActivity1$GetCommunityZoneTask;-><init>(Lcom/cymobile/ymwork/act/SetZoneActivity1;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1;->mGetCommunityZoneTask:Landroid/os/AsyncTask;

    .line 317
    iget-object v0, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1;->mGetCommunityZoneTask:Landroid/os/AsyncTask;

    invoke-static {v0}, Lcom/cymobile/ymwork/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V

    .line 318
    return-void
.end method

.method private resetCommunityZoneSpinner()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 370
    iget v5, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1;->zoneIntent:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    .line 371
    iget-object v5, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1;->communityZones:Lcom/cymobile/ymwork/types/Group;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1;->communityZones:Lcom/cymobile/ymwork/types/Group;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v5

    if-nez v5, :cond_3

    .line 372
    :cond_0
    new-array v1, v7, [Ljava/lang/String;

    .line 379
    .local v1, array_spinner:[Ljava/lang/String;
    :cond_1
    const v5, 0x7f0800d7

    invoke-virtual {p0, v5}, Lcom/cymobile/ymwork/act/SetZoneActivity1;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    .line 380
    .local v4, zoneSpinner:Landroid/widget/Spinner;
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v5, 0x7f030047

    invoke-direct {v0, p0, v5, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 381
    .local v0, adapter:Landroid/widget/ArrayAdapter;
    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 382
    iget-object v5, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1;->communityZones:Lcom/cymobile/ymwork/types/Group;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1;->communityZones:Lcom/cymobile/ymwork/types/Group;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 383
    invoke-virtual {v4, v7}, Landroid/widget/Spinner;->setSelection(I)V

    .line 384
    const v5, 0x7f0800d3

    invoke-virtual {p0, v5}, Lcom/cymobile/ymwork/act/SetZoneActivity1;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 385
    .local v3, setzone_submit_button:Landroid/widget/Button;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 390
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;
    .end local v1           #array_spinner:[Ljava/lang/String;
    .end local v3           #setzone_submit_button:Landroid/widget/Button;
    .end local v4           #zoneSpinner:Landroid/widget/Spinner;
    :cond_2
    :goto_0
    return-void

    .line 374
    :cond_3
    iget-object v5, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1;->communityZones:Lcom/cymobile/ymwork/types/Group;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v5

    new-array v1, v5, [Ljava/lang/String;

    .line 375
    .restart local v1       #array_spinner:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v5, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1;->communityZones:Lcom/cymobile/ymwork/types/Group;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 376
    iget-object v5, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1;->communityZones:Lcom/cymobile/ymwork/types/Group;

    invoke-virtual {v5, v2}, Lcom/cymobile/ymwork/types/Group;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cymobile/ymwork/types/Zone;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/Zone;->getZoneName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    .line 375
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 388
    .end local v1           #array_spinner:[Ljava/lang/String;
    .end local v2           #i:I
    :cond_4
    const-string v5, "SetZoneActivity1"

    const-string v6, "Error"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private resetStreetZoneSpinner()V
    .locals 12

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 273
    invoke-static {}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getStreetZone()Lcom/cymobile/ymwork/types/Group;

    move-result-object v7

    .line 275
    .local v7, zones:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/Zone;>;"
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v8

    if-nez v8, :cond_3

    .line 276
    :cond_0
    new-array v1, v10, [Ljava/lang/String;

    .line 283
    .local v1, array_spinner:[Ljava/lang/String;
    :cond_1
    const v8, 0x7f0800d5

    invoke-virtual {p0, v8}, Lcom/cymobile/ymwork/act/SetZoneActivity1;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    .line 284
    .local v6, zoneSpinner:Landroid/widget/Spinner;
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v8, 0x7f030047

    invoke-direct {v0, p0, v8, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 285
    .local v0, adapter:Landroid/widget/ArrayAdapter;
    invoke-virtual {v6, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 286
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 287
    invoke-virtual {v6, v10}, Landroid/widget/Spinner;->setSelection(I)V

    .line 288
    iget v8, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1;->zoneIntent:I

    if-ne v8, v9, :cond_4

    .line 289
    const v8, 0x7f0800d3

    invoke-virtual {p0, v8}, Lcom/cymobile/ymwork/act/SetZoneActivity1;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 290
    .local v5, setzone_submit_button:Landroid/widget/Button;
    invoke-virtual {v5, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 293
    :try_start_0
    iget-object v8, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1;->streetZoneSpinner:Landroid/widget/Spinner;

    new-instance v9, Lcom/cymobile/ymwork/act/SetZoneActivity1$6;

    invoke-direct {v9, p0}, Lcom/cymobile/ymwork/act/SetZoneActivity1$6;-><init>(Lcom/cymobile/ymwork/act/SetZoneActivity1;)V

    .line 300
    const-wide/16 v10, 0x12c

    .line 293
    invoke-virtual {v8, v9, v10, v11}, Landroid/widget/Spinner;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    .end local v5           #setzone_submit_button:Landroid/widget/Button;
    :cond_2
    :goto_0
    return-void

    .line 278
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;
    .end local v1           #array_spinner:[Ljava/lang/String;
    .end local v6           #zoneSpinner:Landroid/widget/Spinner;
    :cond_3
    invoke-virtual {v7}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v8

    new-array v1, v8, [Ljava/lang/String;

    .line 279
    .restart local v1       #array_spinner:[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    invoke-virtual {v7}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v8

    if-ge v4, v8, :cond_1

    .line 280
    invoke-virtual {v7, v4}, Lcom/cymobile/ymwork/types/Group;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cymobile/ymwork/types/Zone;

    invoke-virtual {v8}, Lcom/cymobile/ymwork/types/Zone;->getZoneName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v4

    .line 279
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 301
    .end local v4           #i:I
    .restart local v0       #adapter:Landroid/widget/ArrayAdapter;
    .restart local v5       #setzone_submit_button:Landroid/widget/Button;
    .restart local v6       #zoneSpinner:Landroid/widget/Spinner;
    :catch_0
    move-exception v3

    .line 302
    .local v3, ee:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 304
    .end local v3           #ee:Ljava/lang/Exception;
    .end local v5           #setzone_submit_button:Landroid/widget/Button;
    :cond_4
    iget v8, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1;->zoneIntent:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2

    .line 305
    const v8, 0x7f0800d6

    invoke-virtual {p0, v8}, Lcom/cymobile/ymwork/act/SetZoneActivity1;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 306
    .local v2, communitybody:Landroid/widget/LinearLayout;
    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 307
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/SetZoneActivity1;->requestCommunitySpinner()V

    goto :goto_0
.end method

.method private showProgressDialog()Landroid/app/ProgressDialog;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 394
    iget-object v1, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v1, :cond_0

    .line 395
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 396
    .local v0, dialog:Landroid/app/ProgressDialog;
    const v1, 0x7f09006c

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 397
    const v1, 0x7f09006d

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/SetZoneActivity1;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 398
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 399
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 400
    iput-object v0, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 402
    .end local v0           #dialog:Landroid/app/ProgressDialog;
    :cond_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 403
    iget-object v1, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v1
.end method


# virtual methods
.method public cancel(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/SetZoneActivity1;->onBackPressed()V

    .line 226
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0, v3}, Lcom/cymobile/ymwork/act/SetZoneActivity1;->requestWindowFeature(I)Z

    .line 57
    const v1, 0x7f030035

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/SetZoneActivity1;->setContentView(I)V

    .line 58
    const-class v1, Lcom/cymobile/ymwork/SettingBase;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 59
    const/4 v2, 0x2

    .line 58
    invoke-virtual {p0, v1, v2}, Lcom/cymobile/ymwork/act/SetZoneActivity1;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1;->mPrefs:Landroid/content/SharedPreferences;

    .line 60
    iput-object p0, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1;->contexts:Landroid/content/Context;

    .line 61
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/SetZoneActivity1;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/SetZoneActivity1;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 63
    .local v0, initIntent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 64
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "Intent_zone"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    const-string v1, "Intent_zone"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1;->zoneIntent:I

    .line 69
    .end local v0           #initIntent:Landroid/content/Intent;
    :cond_0
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/SetZoneActivity1;->ensureUi()V

    .line 70
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 426
    const/16 v1, 0xb

    if-ne p1, v1, :cond_0

    .line 427
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 428
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f09006b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 429
    const v1, 0x7f0900e4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 430
    const v1, 0x7f090018

    .line 431
    new-instance v2, Lcom/cymobile/ymwork/act/SetZoneActivity1$7;

    invoke-direct {v2, p0}, Lcom/cymobile/ymwork/act/SetZoneActivity1$7;-><init>(Lcom/cymobile/ymwork/act/SetZoneActivity1;)V

    .line 430
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 438
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 440
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1;->mProgressDialog:Landroid/app/ProgressDialog;

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 73
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 74
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cymobile/ymwork/SystemService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 75
    .local v0, serviceIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/SetZoneActivity1;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 76
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/SetZoneActivity1;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 77
    return-void
.end method

.method public submit(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 185
    iget v3, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1;->zoneIntent:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 187
    iget-object v3, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1;->streetZoneSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    .line 188
    .local v2, streetIndex:I
    invoke-static {}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getStreetZone()Lcom/cymobile/ymwork/types/Group;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getStreetZone()Lcom/cymobile/ymwork/types/Group;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v3

    if-le v3, v2, :cond_4

    .line 189
    iget-object v3, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 190
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "key_GlobalZoneId"

    invoke-static {}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getStreetZone()Lcom/cymobile/ymwork/types/Group;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/cymobile/ymwork/types/Group;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cymobile/ymwork/types/Zone;

    invoke-virtual {v3}, Lcom/cymobile/ymwork/types/Zone;->getZoneid()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 191
    const-string v4, "key_GlobalZoneName"

    invoke-static {}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getStreetZone()Lcom/cymobile/ymwork/types/Group;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/cymobile/ymwork/types/Group;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cymobile/ymwork/types/Zone;

    invoke-virtual {v3}, Lcom/cymobile/ymwork/types/Zone;->getZoneName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 192
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 193
    invoke-static {}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->emptySubZone()V

    .line 197
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    :goto_0
    iget-object v3, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1;->iSystemService:Lcom/cymobile/ymwork/ISystemService;

    if-eqz v3, :cond_0

    .line 198
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/SetZoneActivity1;->clearNumbers()V

    .line 200
    :cond_0
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/SetZoneActivity1;->gotoRigster()V

    .line 201
    .end local v2           #streetIndex:I
    :cond_1
    iget v3, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1;->zoneIntent:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 202
    iget-object v3, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v3}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->auotLoginSuper(Landroid/content/SharedPreferences;)Z

    .line 203
    iget-object v3, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1;->communityZoneSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 204
    .local v0, communityIndex:I
    iget-object v3, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1;->communityZones:Lcom/cymobile/ymwork/types/Group;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1;->communityZones:Lcom/cymobile/ymwork/types/Group;

    invoke-virtual {v3}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v3

    if-le v3, v0, :cond_5

    .line 205
    iget-object v3, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 206
    .restart local v1       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "key_GlobalZoneId"

    iget-object v3, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1;->communityZones:Lcom/cymobile/ymwork/types/Group;

    invoke-virtual {v3, v0}, Lcom/cymobile/ymwork/types/Group;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cymobile/ymwork/types/Zone;

    invoke-virtual {v3}, Lcom/cymobile/ymwork/types/Zone;->getZoneid()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 207
    const-string v4, "key_GlobalZoneName"

    iget-object v3, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1;->communityZones:Lcom/cymobile/ymwork/types/Group;

    invoke-virtual {v3, v0}, Lcom/cymobile/ymwork/types/Group;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cymobile/ymwork/types/Zone;

    invoke-virtual {v3}, Lcom/cymobile/ymwork/types/Zone;->getZoneName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 208
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 209
    invoke-static {}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->emptySubZone()V

    .line 213
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    :goto_1
    iget-object v3, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1;->iSystemService:Lcom/cymobile/ymwork/ISystemService;

    if-eqz v3, :cond_2

    .line 214
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/SetZoneActivity1;->clearNumbers()V

    .line 216
    :cond_2
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/SetZoneActivity1;->gotoRigster()V

    .line 218
    .end local v0           #communityIndex:I
    :cond_3
    return-void

    .line 195
    .restart local v2       #streetIndex:I
    :cond_4
    const-string v3, "SetZoneActivity1"

    const-string v4, "error 1"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 211
    .end local v2           #streetIndex:I
    .restart local v0       #communityIndex:I
    :cond_5
    const-string v3, "SetZoneActivity1"

    const-string v4, "error 1"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
