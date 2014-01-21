.class public Lcom/cymobile/ymwork/act/Main1Activity;
.super Landroid/app/Activity;
.source "Main1Activity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cymobile/ymwork/act/Main1Activity$UIHandler;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = true

.field private static final Msg_intent_resetCaseNumber:I = 0x11

.field public static final TAG:Ljava/lang/String; = "Main1Activity"

.field static numbers:Lcom/cymobile/ymwork/types/CaseNumber;


# instance fields
.field handler:Landroid/os/Handler;

.field homeApplication:Lcom/cymobile/ymwork/HomeApplication;

.field public iSystemService:Lcom/cymobile/ymwork/ISystemService;

.field private mNumberReceiver:Landroid/content/BroadcastReceiver;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private final serviceConnection:Landroid/content/ServiceConnection;

.field shopClass1:Landroid/widget/Button;

.field shopClass2:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 139
    new-instance v0, Lcom/cymobile/ymwork/act/Main1Activity$1;

    invoke-direct {v0, p0}, Lcom/cymobile/ymwork/act/Main1Activity$1;-><init>(Lcom/cymobile/ymwork/act/Main1Activity;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/Main1Activity;->serviceConnection:Landroid/content/ServiceConnection;

    .line 156
    new-instance v0, Lcom/cymobile/ymwork/act/Main1Activity$2;

    invoke-direct {v0, p0}, Lcom/cymobile/ymwork/act/Main1Activity$2;-><init>(Lcom/cymobile/ymwork/act/Main1Activity;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/Main1Activity;->mNumberReceiver:Landroid/content/BroadcastReceiver;

    .line 198
    new-instance v0, Lcom/cymobile/ymwork/act/Main1Activity$UIHandler;

    invoke-direct {v0, p0}, Lcom/cymobile/ymwork/act/Main1Activity$UIHandler;-><init>(Lcom/cymobile/ymwork/act/Main1Activity;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/Main1Activity;->handler:Landroid/os/Handler;

    .line 50
    return-void
.end method

.method static synthetic access$0(Lcom/cymobile/ymwork/act/Main1Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/Main1Activity;->readNumberFromService()V

    return-void
.end method

.method private ensureUi()V
    .locals 5

    .prologue
    .line 109
    const v3, 0x7f08002d

    invoke-virtual {p0, v3}, Lcom/cymobile/ymwork/act/Main1Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 111
    .local v0, leftbtn:Landroid/widget/ImageButton;
    new-instance v3, Lcom/cymobile/ymwork/act/Main1Activity$3;

    invoke-direct {v3, p0}, Lcom/cymobile/ymwork/act/Main1Activity$3;-><init>(Lcom/cymobile/ymwork/act/Main1Activity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    const v3, 0x7f080030

    invoke-virtual {p0, v3}, Lcom/cymobile/ymwork/act/Main1Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 118
    .local v1, rightbtn:Landroid/widget/Button;
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 120
    const v3, 0x7f08002f

    invoke-virtual {p0, v3}, Lcom/cymobile/ymwork/act/Main1Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 121
    .local v2, title:Landroid/widget/TextView;
    const v3, 0x7f0900ce

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 123
    const v3, 0x7f08001b

    invoke-virtual {p0, v3}, Lcom/cymobile/ymwork/act/Main1Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/cymobile/ymwork/act/Main1Activity;->shopClass1:Landroid/widget/Button;

    .line 124
    const v3, 0x7f08001c

    invoke-virtual {p0, v3}, Lcom/cymobile/ymwork/act/Main1Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/cymobile/ymwork/act/Main1Activity;->shopClass2:Landroid/widget/Button;

    .line 126
    iget-object v3, p0, Lcom/cymobile/ymwork/act/Main1Activity;->shopClass1:Landroid/widget/Button;

    new-instance v4, Lcom/cymobile/ymwork/act/Main1Activity$4;

    invoke-direct {v4, p0}, Lcom/cymobile/ymwork/act/Main1Activity$4;-><init>(Lcom/cymobile/ymwork/act/Main1Activity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v3, p0, Lcom/cymobile/ymwork/act/Main1Activity;->shopClass2:Landroid/widget/Button;

    new-instance v4, Lcom/cymobile/ymwork/act/Main1Activity$5;

    invoke-direct {v4, p0}, Lcom/cymobile/ymwork/act/Main1Activity$5;-><init>(Lcom/cymobile/ymwork/act/Main1Activity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    return-void
.end method

.method private readNumberFromService()V
    .locals 7

    .prologue
    .line 164
    iget-object v3, p0, Lcom/cymobile/ymwork/act/Main1Activity;->iSystemService:Lcom/cymobile/ymwork/ISystemService;

    if-eqz v3, :cond_0

    .line 166
    :try_start_0
    iget-object v3, p0, Lcom/cymobile/ymwork/act/Main1Activity;->iSystemService:Lcom/cymobile/ymwork/ISystemService;

    invoke-interface {v3}, Lcom/cymobile/ymwork/ISystemService;->getCurrentCaseNumber()[I

    move-result-object v0

    .line 167
    .local v0, currentNumber:[I
    if-eqz v0, :cond_0

    .line 168
    new-instance v2, Lcom/cymobile/ymwork/types/CaseNumber;

    invoke-direct {v2}, Lcom/cymobile/ymwork/types/CaseNumber;-><init>()V

    .line 169
    .local v2, newNumbers:Lcom/cymobile/ymwork/types/CaseNumber;
    const/4 v3, 0x0

    const/4 v4, 0x0

    aget v4, v0, v4

    invoke-virtual {v2, v3, v4}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 170
    const/4 v3, 0x1

    const/4 v4, 0x1

    aget v4, v0, v4

    invoke-virtual {v2, v3, v4}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 171
    const/4 v3, 0x2

    const/4 v4, 0x2

    aget v4, v0, v4

    invoke-virtual {v2, v3, v4}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 172
    const/4 v3, 0x3

    const/4 v4, 0x3

    aget v4, v0, v4

    invoke-virtual {v2, v3, v4}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 173
    const/4 v3, 0x4

    const/4 v4, 0x4

    aget v4, v0, v4

    invoke-virtual {v2, v3, v4}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 174
    const/4 v3, 0x5

    const/4 v4, 0x5

    aget v4, v0, v4

    invoke-virtual {v2, v3, v4}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 175
    const/4 v3, 0x6

    const/4 v4, 0x6

    aget v4, v0, v4

    invoke-virtual {v2, v3, v4}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 176
    const/4 v3, 0x7

    const/4 v4, 0x7

    aget v4, v0, v4

    invoke-virtual {v2, v3, v4}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 177
    const/16 v3, 0x8

    const/16 v4, 0x8

    aget v4, v0, v4

    invoke-virtual {v2, v3, v4}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 178
    const/16 v3, 0x9

    const/16 v4, 0x9

    aget v4, v0, v4

    invoke-virtual {v2, v3, v4}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 179
    const/16 v3, 0xa

    const/16 v4, 0xa

    aget v4, v0, v4

    invoke-virtual {v2, v3, v4}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 180
    const/16 v3, 0xb

    const/16 v4, 0xb

    aget v4, v0, v4

    invoke-virtual {v2, v3, v4}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 181
    const/16 v3, 0xc

    const/16 v4, 0xc

    aget v4, v0, v4

    invoke-virtual {v2, v3, v4}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 182
    const/16 v3, 0xd

    const/16 v4, 0xd

    aget v4, v0, v4

    invoke-virtual {v2, v3, v4}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 183
    const/16 v3, 0xe

    const/16 v4, 0xe

    aget v4, v0, v4

    invoke-virtual {v2, v3, v4}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 184
    const/16 v3, 0xf

    const/16 v4, 0xf

    aget v4, v0, v4

    invoke-virtual {v2, v3, v4}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 185
    const/16 v3, 0x10

    const/16 v4, 0x10

    aget v4, v0, v4

    invoke-virtual {v2, v3, v4}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 186
    sput-object v2, Lcom/cymobile/ymwork/act/Main1Activity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    .line 188
    iget-object v3, p0, Lcom/cymobile/ymwork/act/Main1Activity;->handler:Landroid/os/Handler;

    const/16 v4, 0x11

    .line 189
    const-wide/16 v5, 0xa

    .line 188
    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    .end local v0           #currentNumber:[I
    .end local v2           #newNumbers:Lcom/cymobile/ymwork/types/CaseNumber;
    :cond_0
    :goto_0
    return-void

    .line 191
    :catch_0
    move-exception v1

    .line 192
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public gotomain11(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 251
    new-instance v0, Landroid/content/Intent;

    .line 252
    const-class v1, Lcom/cymobile/ymwork/act/Main11Activity;

    .line 251
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 253
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/Main1Activity;->startActivity(Landroid/content/Intent;)V

    .line 254
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/Main1Activity;->requestWindowFeature(I)Z

    .line 60
    const v0, 0x7f030020

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/Main1Activity;->setContentView(I)V

    .line 61
    const-class v0, Lcom/cymobile/ymwork/SettingBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 62
    const/4 v1, 0x2

    .line 61
    invoke-virtual {p0, v0, v1}, Lcom/cymobile/ymwork/act/Main1Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/cymobile/ymwork/act/Main1Activity;->mPrefs:Landroid/content/SharedPreferences;

    .line 65
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/Main1Activity;->ensureUi()V

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
    sput-object v1, Lcom/cymobile/ymwork/act/Main1Activity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    .line 98
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/Main1Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/cymobile/ymwork/act/Main1Activity;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 99
    iget-object v1, p0, Lcom/cymobile/ymwork/act/Main1Activity;->mNumberReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/Main1Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
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
    iget-object v1, p0, Lcom/cymobile/ymwork/act/Main1Activity;->mNumberReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    .line 76
    const-string v3, "com.cymobile.ymwork.intent.action.CASE_NUMBER_UPDATED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0, v1, v2}, Lcom/cymobile/ymwork/act/Main1Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 77
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cymobile/ymwork/SystemService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 78
    .local v0, serviceIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/Main1Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 79
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/Main1Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/cymobile/ymwork/act/Main1Activity;->serviceConnection:Landroid/content/ServiceConnection;

    .line 80
    const/4 v3, 0x1

    .line 79
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 81
    sget-object v1, Lcom/cymobile/ymwork/act/Main1Activity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cymobile/ymwork/act/Main1Activity;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/cymobile/ymwork/act/Main1Activity;->handler:Landroid/os/Handler;

    const/16 v2, 0x11

    const-wide/16 v3, 0xa

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 84
    :cond_0
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/Main1Activity;->readNumberFromService()V

    .line 85
    return-void
.end method

.method public resetCaseNumber()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0x8

    const/4 v9, 0x7

    const/4 v8, 0x6

    const/4 v7, 0x4

    .line 211
    sget-object v5, Lcom/cymobile/ymwork/act/Main1Activity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    if-eqz v5, :cond_2

    .line 212
    sget-object v5, Lcom/cymobile/ymwork/act/Main1Activity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    invoke-virtual {v5, v7}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v5

    iget-object v6, p0, Lcom/cymobile/ymwork/act/Main1Activity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v6, v7}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getReadNumber(Landroid/content/SharedPreferences;I)I

    move-result v6

    sub-int v1, v5, v6

    .line 213
    .local v1, u4:I
    sget-object v5, Lcom/cymobile/ymwork/act/Main1Activity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    invoke-virtual {v5, v8}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v5

    iget-object v6, p0, Lcom/cymobile/ymwork/act/Main1Activity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v6, v8}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getReadNumber(Landroid/content/SharedPreferences;I)I

    move-result v6

    sub-int v2, v5, v6

    .line 214
    .local v2, u6:I
    sget-object v5, Lcom/cymobile/ymwork/act/Main1Activity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    invoke-virtual {v5, v9}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v5

    iget-object v6, p0, Lcom/cymobile/ymwork/act/Main1Activity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v6, v9}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getReadNumber(Landroid/content/SharedPreferences;I)I

    move-result v6

    sub-int v3, v5, v6

    .line 215
    .local v3, u7:I
    const v5, 0x7f080062

    invoke-virtual {p0, v5}, Lcom/cymobile/ymwork/act/Main1Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 216
    .local v0, readbtnclass4:Landroid/widget/Button;
    const v5, 0x7f080063

    invoke-virtual {p0, v5}, Lcom/cymobile/ymwork/act/Main1Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 232
    .local v4, unreadbtnclass4:Landroid/widget/Button;
    sget-object v5, Lcom/cymobile/ymwork/act/Main1Activity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    invoke-virtual {v5, v7}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v5

    if-gtz v5, :cond_0

    sget-object v5, Lcom/cymobile/ymwork/act/Main1Activity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    invoke-virtual {v5, v8}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v5

    if-gtz v5, :cond_0

    sget-object v5, Lcom/cymobile/ymwork/act/Main1Activity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    invoke-virtual {v5, v9}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v5

    if-lez v5, :cond_4

    .line 233
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/cymobile/ymwork/act/Main1Activity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    invoke-virtual {v6, v7}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v6

    sget-object v7, Lcom/cymobile/ymwork/act/Main1Activity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    invoke-virtual {v7, v8}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v7

    add-int/2addr v6, v7

    sget-object v7, Lcom/cymobile/ymwork/act/Main1Activity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    invoke-virtual {v7, v9}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 234
    const v5, 0x7f020162

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 235
    invoke-virtual {v0, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 236
    if-gtz v1, :cond_1

    if-gtz v2, :cond_1

    if-lez v3, :cond_3

    .line 237
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    add-int v6, v1, v2

    add-int/2addr v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 238
    const v5, 0x7f020161

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 239
    invoke-virtual {v4, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 248
    .end local v0           #readbtnclass4:Landroid/widget/Button;
    .end local v1           #u4:I
    .end local v2           #u6:I
    .end local v3           #u7:I
    .end local v4           #unreadbtnclass4:Landroid/widget/Button;
    :cond_2
    :goto_0
    return-void

    .line 241
    .restart local v0       #readbtnclass4:Landroid/widget/Button;
    .restart local v1       #u4:I
    .restart local v2       #u6:I
    .restart local v3       #u7:I
    .restart local v4       #unreadbtnclass4:Landroid/widget/Button;
    :cond_3
    invoke-virtual {v4, v10}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 244
    :cond_4
    invoke-virtual {v0, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 245
    invoke-virtual {v4, v10}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method
