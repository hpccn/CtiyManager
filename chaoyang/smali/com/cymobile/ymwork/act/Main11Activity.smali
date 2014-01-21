.class public Lcom/cymobile/ymwork/act/Main11Activity;
.super Landroid/app/Activity;
.source "Main11Activity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cymobile/ymwork/act/Main11Activity$UIHandler;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = true

.field private static final Msg_intent_resetCaseNumber:I = 0x11

.field public static final TAG:Ljava/lang/String; = "Main11Activity"

.field static numbers:Lcom/cymobile/ymwork/types/CaseNumber;


# instance fields
.field private forceExtra18:Z

.field handler:Landroid/os/Handler;

.field homeApplication:Lcom/cymobile/ymwork/HomeApplication;

.field public iSystemService:Lcom/cymobile/ymwork/ISystemService;

.field private mNumberReceiver:Landroid/content/BroadcastReceiver;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private final serviceConnection:Landroid/content/ServiceConnection;

.field shopClass1:Landroid/widget/Button;

.field shopClass2:Landroid/widget/Button;

.field shopClass3:Landroid/widget/Button;

.field private userZoneId:Ljava/lang/String;

.field private userZoneName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cymobile/ymwork/act/Main11Activity;->forceExtra18:Z

    .line 171
    new-instance v0, Lcom/cymobile/ymwork/act/Main11Activity$1;

    invoke-direct {v0, p0}, Lcom/cymobile/ymwork/act/Main11Activity$1;-><init>(Lcom/cymobile/ymwork/act/Main11Activity;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/Main11Activity;->serviceConnection:Landroid/content/ServiceConnection;

    .line 188
    new-instance v0, Lcom/cymobile/ymwork/act/Main11Activity$2;

    invoke-direct {v0, p0}, Lcom/cymobile/ymwork/act/Main11Activity$2;-><init>(Lcom/cymobile/ymwork/act/Main11Activity;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/Main11Activity;->mNumberReceiver:Landroid/content/BroadcastReceiver;

    .line 230
    new-instance v0, Lcom/cymobile/ymwork/act/Main11Activity$UIHandler;

    invoke-direct {v0, p0}, Lcom/cymobile/ymwork/act/Main11Activity$UIHandler;-><init>(Lcom/cymobile/ymwork/act/Main11Activity;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/Main11Activity;->handler:Landroid/os/Handler;

    .line 50
    return-void
.end method

.method static synthetic access$0(Lcom/cymobile/ymwork/act/Main11Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/Main11Activity;->readNumberFromService()V

    return-void
.end method

.method static synthetic access$1(Lcom/cymobile/ymwork/act/Main11Activity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/cymobile/ymwork/act/Main11Activity;->userZoneId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/cymobile/ymwork/act/Main11Activity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/cymobile/ymwork/act/Main11Activity;->userZoneName:Ljava/lang/String;

    return-object v0
.end method

.method private ensureUi()V
    .locals 5

    .prologue
    .line 111
    const v3, 0x7f08002d

    invoke-virtual {p0, v3}, Lcom/cymobile/ymwork/act/Main11Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 113
    .local v0, leftbtn:Landroid/widget/ImageButton;
    new-instance v3, Lcom/cymobile/ymwork/act/Main11Activity$3;

    invoke-direct {v3, p0}, Lcom/cymobile/ymwork/act/Main11Activity$3;-><init>(Lcom/cymobile/ymwork/act/Main11Activity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    const v3, 0x7f080030

    invoke-virtual {p0, v3}, Lcom/cymobile/ymwork/act/Main11Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 120
    .local v1, rightbtn:Landroid/widget/Button;
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 122
    const v3, 0x7f08002f

    invoke-virtual {p0, v3}, Lcom/cymobile/ymwork/act/Main11Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 123
    .local v2, title:Landroid/widget/TextView;
    const v3, 0x7f0900cf

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 125
    const v3, 0x7f08001b

    invoke-virtual {p0, v3}, Lcom/cymobile/ymwork/act/Main11Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/cymobile/ymwork/act/Main11Activity;->shopClass1:Landroid/widget/Button;

    .line 126
    const v3, 0x7f08001c

    invoke-virtual {p0, v3}, Lcom/cymobile/ymwork/act/Main11Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/cymobile/ymwork/act/Main11Activity;->shopClass2:Landroid/widget/Button;

    .line 127
    const v3, 0x7f08001d

    invoke-virtual {p0, v3}, Lcom/cymobile/ymwork/act/Main11Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/cymobile/ymwork/act/Main11Activity;->shopClass3:Landroid/widget/Button;

    .line 128
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/Main11Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/Main11Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/Main11Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "userZoneId"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/Main11Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "userZoneName"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 131
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/cymobile/ymwork/act/Main11Activity;->forceExtra18:Z

    .line 132
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/Main11Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "userZoneId"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/cymobile/ymwork/act/Main11Activity;->userZoneId:Ljava/lang/String;

    .line 133
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/Main11Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "userZoneName"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/cymobile/ymwork/act/Main11Activity;->userZoneName:Ljava/lang/String;

    .line 135
    :cond_0
    iget-object v3, p0, Lcom/cymobile/ymwork/act/Main11Activity;->shopClass1:Landroid/widget/Button;

    new-instance v4, Lcom/cymobile/ymwork/act/Main11Activity$4;

    invoke-direct {v4, p0}, Lcom/cymobile/ymwork/act/Main11Activity$4;-><init>(Lcom/cymobile/ymwork/act/Main11Activity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object v3, p0, Lcom/cymobile/ymwork/act/Main11Activity;->shopClass2:Landroid/widget/Button;

    new-instance v4, Lcom/cymobile/ymwork/act/Main11Activity$5;

    invoke-direct {v4, p0}, Lcom/cymobile/ymwork/act/Main11Activity$5;-><init>(Lcom/cymobile/ymwork/act/Main11Activity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v3, p0, Lcom/cymobile/ymwork/act/Main11Activity;->shopClass3:Landroid/widget/Button;

    new-instance v4, Lcom/cymobile/ymwork/act/Main11Activity$6;

    invoke-direct {v4, p0}, Lcom/cymobile/ymwork/act/Main11Activity$6;-><init>(Lcom/cymobile/ymwork/act/Main11Activity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    return-void
.end method

.method private readNumberFromService()V
    .locals 7

    .prologue
    .line 196
    iget-object v3, p0, Lcom/cymobile/ymwork/act/Main11Activity;->iSystemService:Lcom/cymobile/ymwork/ISystemService;

    if-eqz v3, :cond_0

    .line 198
    :try_start_0
    iget-object v3, p0, Lcom/cymobile/ymwork/act/Main11Activity;->iSystemService:Lcom/cymobile/ymwork/ISystemService;

    invoke-interface {v3}, Lcom/cymobile/ymwork/ISystemService;->getCurrentCaseNumber()[I

    move-result-object v0

    .line 199
    .local v0, currentNumber:[I
    if-eqz v0, :cond_0

    .line 200
    new-instance v2, Lcom/cymobile/ymwork/types/CaseNumber;

    invoke-direct {v2}, Lcom/cymobile/ymwork/types/CaseNumber;-><init>()V

    .line 201
    .local v2, newNumbers:Lcom/cymobile/ymwork/types/CaseNumber;
    const/4 v3, 0x0

    const/4 v4, 0x0

    aget v4, v0, v4

    invoke-virtual {v2, v3, v4}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 202
    const/4 v3, 0x1

    const/4 v4, 0x1

    aget v4, v0, v4

    invoke-virtual {v2, v3, v4}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 203
    const/4 v3, 0x2

    const/4 v4, 0x2

    aget v4, v0, v4

    invoke-virtual {v2, v3, v4}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 204
    const/4 v3, 0x3

    const/4 v4, 0x3

    aget v4, v0, v4

    invoke-virtual {v2, v3, v4}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 205
    const/4 v3, 0x4

    const/4 v4, 0x4

    aget v4, v0, v4

    invoke-virtual {v2, v3, v4}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 206
    const/4 v3, 0x5

    const/4 v4, 0x5

    aget v4, v0, v4

    invoke-virtual {v2, v3, v4}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 207
    const/4 v3, 0x6

    const/4 v4, 0x6

    aget v4, v0, v4

    invoke-virtual {v2, v3, v4}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 208
    const/4 v3, 0x7

    const/4 v4, 0x7

    aget v4, v0, v4

    invoke-virtual {v2, v3, v4}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 209
    const/16 v3, 0x8

    const/16 v4, 0x8

    aget v4, v0, v4

    invoke-virtual {v2, v3, v4}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 210
    const/16 v3, 0x9

    const/16 v4, 0x9

    aget v4, v0, v4

    invoke-virtual {v2, v3, v4}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 211
    const/16 v3, 0xa

    const/16 v4, 0xa

    aget v4, v0, v4

    invoke-virtual {v2, v3, v4}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 212
    const/16 v3, 0xb

    const/16 v4, 0xb

    aget v4, v0, v4

    invoke-virtual {v2, v3, v4}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 213
    const/16 v3, 0xc

    const/16 v4, 0xc

    aget v4, v0, v4

    invoke-virtual {v2, v3, v4}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 214
    const/16 v3, 0xd

    const/16 v4, 0xd

    aget v4, v0, v4

    invoke-virtual {v2, v3, v4}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 215
    const/16 v3, 0xe

    const/16 v4, 0xe

    aget v4, v0, v4

    invoke-virtual {v2, v3, v4}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 216
    const/16 v3, 0xf

    const/16 v4, 0xf

    aget v4, v0, v4

    invoke-virtual {v2, v3, v4}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 217
    const/16 v3, 0x10

    const/16 v4, 0x10

    aget v4, v0, v4

    invoke-virtual {v2, v3, v4}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 218
    sput-object v2, Lcom/cymobile/ymwork/act/Main11Activity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    .line 220
    iget-object v3, p0, Lcom/cymobile/ymwork/act/Main11Activity;->handler:Landroid/os/Handler;

    const/16 v4, 0x11

    .line 221
    const-wide/16 v5, 0xa

    .line 220
    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    .end local v0           #currentNumber:[I
    .end local v2           #newNumbers:Lcom/cymobile/ymwork/types/CaseNumber;
    :cond_0
    :goto_0
    return-void

    .line 223
    :catch_0
    move-exception v1

    .line 224
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/Main11Activity;->requestWindowFeature(I)Z

    .line 60
    const v0, 0x7f03001e

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/Main11Activity;->setContentView(I)V

    .line 61
    const-class v0, Lcom/cymobile/ymwork/SettingBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 62
    const/4 v1, 0x2

    .line 61
    invoke-virtual {p0, v0, v1}, Lcom/cymobile/ymwork/act/Main11Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/cymobile/ymwork/act/Main11Activity;->mPrefs:Landroid/content/SharedPreferences;

    .line 65
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/Main11Activity;->ensureUi()V

    .line 67
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 94
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 96
    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/cymobile/ymwork/act/Main11Activity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    .line 98
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/Main11Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/cymobile/ymwork/act/Main11Activity;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 99
    iget-object v1, p0, Lcom/cymobile/ymwork/act/Main11Activity;->mNumberReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/Main11Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, ee:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 89
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 90
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 73
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 75
    iget-object v1, p0, Lcom/cymobile/ymwork/act/Main11Activity;->mNumberReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    .line 76
    const-string v3, "com.cymobile.ymwork.intent.action.CASE_NUMBER_UPDATED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0, v1, v2}, Lcom/cymobile/ymwork/act/Main11Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 77
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cymobile/ymwork/SystemService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 78
    .local v0, serviceIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/Main11Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 79
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/Main11Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/cymobile/ymwork/act/Main11Activity;->serviceConnection:Landroid/content/ServiceConnection;

    .line 80
    const/4 v3, 0x1

    .line 79
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 81
    sget-object v1, Lcom/cymobile/ymwork/act/Main11Activity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cymobile/ymwork/act/Main11Activity;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/cymobile/ymwork/act/Main11Activity;->handler:Landroid/os/Handler;

    const/16 v2, 0x11

    const-wide/16 v3, 0xa

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 84
    :cond_0
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/Main11Activity;->readNumberFromService()V

    .line 85
    return-void
.end method

.method public resetCaseNumber()V
    .locals 12

    .prologue
    .line 243
    iget-boolean v9, p0, Lcom/cymobile/ymwork/act/Main11Activity;->forceExtra18:Z

    if-eqz v9, :cond_1

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    sget-object v9, Lcom/cymobile/ymwork/act/Main11Activity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    if-eqz v9, :cond_0

    .line 247
    sget-object v9, Lcom/cymobile/ymwork/act/Main11Activity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v9

    iget-object v10, p0, Lcom/cymobile/ymwork/act/Main11Activity;->mPrefs:Landroid/content/SharedPreferences;

    const/4 v11, 0x4

    invoke-static {v10, v11}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getReadNumber(Landroid/content/SharedPreferences;I)I

    move-result v10

    sub-int v3, v9, v10

    .line 248
    .local v3, u4:I
    sget-object v9, Lcom/cymobile/ymwork/act/Main11Activity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/4 v10, 0x6

    invoke-virtual {v9, v10}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v9

    iget-object v10, p0, Lcom/cymobile/ymwork/act/Main11Activity;->mPrefs:Landroid/content/SharedPreferences;

    const/4 v11, 0x6

    invoke-static {v10, v11}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getReadNumber(Landroid/content/SharedPreferences;I)I

    move-result v10

    sub-int v4, v9, v10

    .line 249
    .local v4, u6:I
    sget-object v9, Lcom/cymobile/ymwork/act/Main11Activity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/4 v10, 0x7

    invoke-virtual {v9, v10}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v9

    iget-object v10, p0, Lcom/cymobile/ymwork/act/Main11Activity;->mPrefs:Landroid/content/SharedPreferences;

    const/4 v11, 0x7

    invoke-static {v10, v11}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getReadNumber(Landroid/content/SharedPreferences;I)I

    move-result v10

    sub-int v5, v9, v10

    .line 251
    .local v5, u7:I
    const v9, 0x7f080062

    invoke-virtual {p0, v9}, Lcom/cymobile/ymwork/act/Main11Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 252
    .local v0, readbtnclass4:Landroid/widget/Button;
    const v9, 0x7f080063

    invoke-virtual {p0, v9}, Lcom/cymobile/ymwork/act/Main11Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 254
    .local v6, unreadbtnclass4:Landroid/widget/Button;
    const v9, 0x7f080064

    invoke-virtual {p0, v9}, Lcom/cymobile/ymwork/act/Main11Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 255
    .local v1, readbtnclass6:Landroid/widget/Button;
    const v9, 0x7f080065

    invoke-virtual {p0, v9}, Lcom/cymobile/ymwork/act/Main11Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 257
    .local v7, unreadbtnclass6:Landroid/widget/Button;
    const v9, 0x7f080066

    invoke-virtual {p0, v9}, Lcom/cymobile/ymwork/act/Main11Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 258
    .local v2, readbtnclass7:Landroid/widget/Button;
    const v9, 0x7f080067

    invoke-virtual {p0, v9}, Lcom/cymobile/ymwork/act/Main11Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 260
    .local v8, unreadbtnclass7:Landroid/widget/Button;
    sget-object v9, Lcom/cymobile/ymwork/act/Main11Activity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v9

    if-lez v9, :cond_3

    .line 261
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/cymobile/ymwork/act/Main11Activity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 262
    const v9, 0x7f020162

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 263
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 264
    if-lez v3, :cond_2

    .line 265
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 266
    const v9, 0x7f020161

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 267
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 276
    :goto_1
    sget-object v9, Lcom/cymobile/ymwork/act/Main11Activity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/4 v10, 0x6

    invoke-virtual {v9, v10}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v9

    if-lez v9, :cond_5

    .line 277
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/cymobile/ymwork/act/Main11Activity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/4 v11, 0x6

    invoke-virtual {v10, v11}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 278
    const v9, 0x7f020162

    invoke-virtual {v1, v9}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 279
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 280
    if-lez v4, :cond_4

    .line 281
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 282
    const v9, 0x7f020161

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 283
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 291
    :goto_2
    sget-object v9, Lcom/cymobile/ymwork/act/Main11Activity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/4 v10, 0x7

    invoke-virtual {v9, v10}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v9

    if-lez v9, :cond_7

    .line 292
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/cymobile/ymwork/act/Main11Activity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/4 v11, 0x7

    invoke-virtual {v10, v11}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 293
    const v9, 0x7f020162

    invoke-virtual {v2, v9}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 294
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 295
    if-lez v5, :cond_6

    .line 296
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 297
    const v9, 0x7f020161

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 298
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 269
    :cond_2
    const/16 v9, 0x8

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_1

    .line 272
    :cond_3
    const/16 v9, 0x8

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 273
    const/16 v9, 0x8

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_1

    .line 285
    :cond_4
    const/16 v9, 0x8

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 288
    :cond_5
    const/16 v9, 0x8

    invoke-virtual {v1, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 289
    const/16 v9, 0x8

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 300
    :cond_6
    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 303
    :cond_7
    const/16 v9, 0x8

    invoke-virtual {v2, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 304
    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0
.end method
