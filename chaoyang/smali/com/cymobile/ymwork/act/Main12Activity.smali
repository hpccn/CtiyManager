.class public Lcom/cymobile/ymwork/act/Main12Activity;
.super Landroid/app/Activity;
.source "Main12Activity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cymobile/ymwork/act/Main12Activity$UIHandler;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = true

.field private static final Msg_intent_resetCaseNumber:I = 0x11

.field public static final TAG:Ljava/lang/String; = "Main12Activity"

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

.field shopClass3:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 152
    new-instance v0, Lcom/cymobile/ymwork/act/Main12Activity$1;

    invoke-direct {v0, p0}, Lcom/cymobile/ymwork/act/Main12Activity$1;-><init>(Lcom/cymobile/ymwork/act/Main12Activity;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/Main12Activity;->serviceConnection:Landroid/content/ServiceConnection;

    .line 169
    new-instance v0, Lcom/cymobile/ymwork/act/Main12Activity$2;

    invoke-direct {v0, p0}, Lcom/cymobile/ymwork/act/Main12Activity$2;-><init>(Lcom/cymobile/ymwork/act/Main12Activity;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/Main12Activity;->mNumberReceiver:Landroid/content/BroadcastReceiver;

    .line 201
    new-instance v0, Lcom/cymobile/ymwork/act/Main12Activity$UIHandler;

    invoke-direct {v0, p0}, Lcom/cymobile/ymwork/act/Main12Activity$UIHandler;-><init>(Lcom/cymobile/ymwork/act/Main12Activity;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/Main12Activity;->handler:Landroid/os/Handler;

    .line 50
    return-void
.end method

.method static synthetic access$0(Lcom/cymobile/ymwork/act/Main12Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/Main12Activity;->readNumberFromService()V

    return-void
.end method

.method private ensureUi()V
    .locals 6

    .prologue
    .line 111
    const v4, 0x7f08002d

    invoke-virtual {p0, v4}, Lcom/cymobile/ymwork/act/Main12Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 113
    .local v0, leftbtn:Landroid/widget/ImageButton;
    new-instance v4, Lcom/cymobile/ymwork/act/Main12Activity$3;

    invoke-direct {v4, p0}, Lcom/cymobile/ymwork/act/Main12Activity$3;-><init>(Lcom/cymobile/ymwork/act/Main12Activity;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    const v4, 0x7f080030

    invoke-virtual {p0, v4}, Lcom/cymobile/ymwork/act/Main12Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 120
    .local v1, rightbtn:Landroid/widget/Button;
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 122
    const v4, 0x7f08002f

    invoke-virtual {p0, v4}, Lcom/cymobile/ymwork/act/Main12Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 123
    .local v3, title:Landroid/widget/TextView;
    const v4, 0x7f0900cf

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 125
    const v4, 0x7f08001b

    invoke-virtual {p0, v4}, Lcom/cymobile/ymwork/act/Main12Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/cymobile/ymwork/act/Main12Activity;->shopClass1:Landroid/widget/Button;

    .line 126
    const v4, 0x7f08001c

    invoke-virtual {p0, v4}, Lcom/cymobile/ymwork/act/Main12Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/cymobile/ymwork/act/Main12Activity;->shopClass2:Landroid/widget/Button;

    .line 127
    const v4, 0x7f08001d

    invoke-virtual {p0, v4}, Lcom/cymobile/ymwork/act/Main12Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/cymobile/ymwork/act/Main12Activity;->shopClass3:Landroid/widget/Button;

    .line 128
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/cymobile/ymwork/act/NearbySearchActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 130
    .local v2, shopListIntent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/cymobile/ymwork/act/Main12Activity;->shopClass1:Landroid/widget/Button;

    new-instance v5, Lcom/cymobile/ymwork/act/Main12Activity$4;

    invoke-direct {v5, p0, v2}, Lcom/cymobile/ymwork/act/Main12Activity$4;-><init>(Lcom/cymobile/ymwork/act/Main12Activity;Landroid/content/Intent;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v4, p0, Lcom/cymobile/ymwork/act/Main12Activity;->shopClass2:Landroid/widget/Button;

    new-instance v5, Lcom/cymobile/ymwork/act/Main12Activity$5;

    invoke-direct {v5, p0, v2}, Lcom/cymobile/ymwork/act/Main12Activity$5;-><init>(Lcom/cymobile/ymwork/act/Main12Activity;Landroid/content/Intent;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v4, p0, Lcom/cymobile/ymwork/act/Main12Activity;->shopClass3:Landroid/widget/Button;

    new-instance v5, Lcom/cymobile/ymwork/act/Main12Activity$6;

    invoke-direct {v5, p0}, Lcom/cymobile/ymwork/act/Main12Activity$6;-><init>(Lcom/cymobile/ymwork/act/Main12Activity;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    return-void
.end method

.method private readNumberFromService()V
    .locals 7

    .prologue
    .line 177
    iget-object v3, p0, Lcom/cymobile/ymwork/act/Main12Activity;->iSystemService:Lcom/cymobile/ymwork/ISystemService;

    if-eqz v3, :cond_0

    .line 179
    :try_start_0
    iget-object v3, p0, Lcom/cymobile/ymwork/act/Main12Activity;->iSystemService:Lcom/cymobile/ymwork/ISystemService;

    invoke-interface {v3}, Lcom/cymobile/ymwork/ISystemService;->getCurrentCaseNumber()[I

    move-result-object v0

    .line 180
    .local v0, currentNumber:[I
    if-eqz v0, :cond_0

    .line 181
    new-instance v2, Lcom/cymobile/ymwork/types/CaseNumber;

    invoke-direct {v2}, Lcom/cymobile/ymwork/types/CaseNumber;-><init>()V

    .line 182
    .local v2, newNumbers:Lcom/cymobile/ymwork/types/CaseNumber;
    const/4 v3, 0x0

    const/4 v4, 0x0

    aget v4, v0, v4

    invoke-virtual {v2, v3, v4}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 183
    const/4 v3, 0x1

    const/4 v4, 0x1

    aget v4, v0, v4

    invoke-virtual {v2, v3, v4}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 184
    const/4 v3, 0x2

    const/4 v4, 0x2

    aget v4, v0, v4

    invoke-virtual {v2, v3, v4}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 185
    const/4 v3, 0x3

    const/4 v4, 0x3

    aget v4, v0, v4

    invoke-virtual {v2, v3, v4}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 186
    const/4 v3, 0x4

    const/4 v4, 0x4

    aget v4, v0, v4

    invoke-virtual {v2, v3, v4}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 187
    const/4 v3, 0x5

    const/4 v4, 0x5

    aget v4, v0, v4

    invoke-virtual {v2, v3, v4}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 188
    const/4 v3, 0x6

    const/4 v4, 0x6

    aget v4, v0, v4

    invoke-virtual {v2, v3, v4}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 189
    sput-object v2, Lcom/cymobile/ymwork/act/Main12Activity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    .line 191
    iget-object v3, p0, Lcom/cymobile/ymwork/act/Main12Activity;->handler:Landroid/os/Handler;

    const/16 v4, 0x11

    .line 192
    const-wide/16 v5, 0xa

    .line 191
    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    .end local v0           #currentNumber:[I
    .end local v2           #newNumbers:Lcom/cymobile/ymwork/types/CaseNumber;
    :cond_0
    :goto_0
    return-void

    .line 194
    :catch_0
    move-exception v1

    .line 195
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

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/Main12Activity;->requestWindowFeature(I)Z

    .line 60
    const v0, 0x7f03001f

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/Main12Activity;->setContentView(I)V

    .line 61
    const-class v0, Lcom/cymobile/ymwork/SettingBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 62
    const/4 v1, 0x2

    .line 61
    invoke-virtual {p0, v0, v1}, Lcom/cymobile/ymwork/act/Main12Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/cymobile/ymwork/act/Main12Activity;->mPrefs:Landroid/content/SharedPreferences;

    .line 65
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/Main12Activity;->ensureUi()V

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
    sput-object v1, Lcom/cymobile/ymwork/act/Main12Activity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    .line 98
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/Main12Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/cymobile/ymwork/act/Main12Activity;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 99
    iget-object v1, p0, Lcom/cymobile/ymwork/act/Main12Activity;->mNumberReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/Main12Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
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
    iget-object v1, p0, Lcom/cymobile/ymwork/act/Main12Activity;->mNumberReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    .line 76
    const-string v3, "com.cymobile.ymwork.intent.action.CASE_NUMBER_UPDATED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0, v1, v2}, Lcom/cymobile/ymwork/act/Main12Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 77
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cymobile/ymwork/SystemService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 78
    .local v0, serviceIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/Main12Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 79
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/Main12Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/cymobile/ymwork/act/Main12Activity;->serviceConnection:Landroid/content/ServiceConnection;

    .line 80
    const/4 v3, 0x1

    .line 79
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 81
    sget-object v1, Lcom/cymobile/ymwork/act/Main12Activity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cymobile/ymwork/act/Main12Activity;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/cymobile/ymwork/act/Main12Activity;->handler:Landroid/os/Handler;

    const/16 v2, 0x11

    const-wide/16 v3, 0xa

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 84
    :cond_0
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/Main12Activity;->readNumberFromService()V

    .line 85
    return-void
.end method

.method public resetCaseNumber()V
    .locals 12

    .prologue
    .line 214
    sget-object v9, Lcom/cymobile/ymwork/act/Main12Activity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    if-eqz v9, :cond_0

    .line 215
    sget-object v9, Lcom/cymobile/ymwork/act/Main12Activity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v9

    iget-object v10, p0, Lcom/cymobile/ymwork/act/Main12Activity;->mPrefs:Landroid/content/SharedPreferences;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getReadNumber(Landroid/content/SharedPreferences;I)I

    move-result v10

    sub-int v3, v9, v10

    .line 216
    .local v3, u0:I
    sget-object v9, Lcom/cymobile/ymwork/act/Main12Activity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v9

    iget-object v10, p0, Lcom/cymobile/ymwork/act/Main12Activity;->mPrefs:Landroid/content/SharedPreferences;

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getReadNumber(Landroid/content/SharedPreferences;I)I

    move-result v10

    sub-int v4, v9, v10

    .line 218
    .local v4, u1:I
    sget-object v9, Lcom/cymobile/ymwork/act/Main12Activity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v9

    iget-object v10, p0, Lcom/cymobile/ymwork/act/Main12Activity;->mPrefs:Landroid/content/SharedPreferences;

    const/4 v11, 0x3

    invoke-static {v10, v11}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getReadNumber(Landroid/content/SharedPreferences;I)I

    move-result v10

    sub-int v5, v9, v10

    .line 220
    .local v5, u3:I
    const v9, 0x7f080062

    invoke-virtual {p0, v9}, Lcom/cymobile/ymwork/act/Main12Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 221
    .local v0, readbtnclass0:Landroid/widget/Button;
    const v9, 0x7f080063

    invoke-virtual {p0, v9}, Lcom/cymobile/ymwork/act/Main12Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 222
    .local v6, unreadbtnclass0:Landroid/widget/Button;
    sget-object v9, Lcom/cymobile/ymwork/act/Main12Activity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v9

    if-lez v9, :cond_2

    .line 223
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/cymobile/ymwork/act/Main12Activity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 224
    const v9, 0x7f020162

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 225
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 226
    if-lez v3, :cond_1

    .line 227
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 228
    const v9, 0x7f020161

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 229
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 238
    :goto_0
    const v9, 0x7f080064

    invoke-virtual {p0, v9}, Lcom/cymobile/ymwork/act/Main12Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 239
    .local v1, readbtnclass1:Landroid/widget/Button;
    const v9, 0x7f080065

    invoke-virtual {p0, v9}, Lcom/cymobile/ymwork/act/Main12Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 240
    .local v7, unreadbtnclass1:Landroid/widget/Button;
    sget-object v9, Lcom/cymobile/ymwork/act/Main12Activity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v9

    if-lez v9, :cond_4

    .line 241
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/cymobile/ymwork/act/Main12Activity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 242
    const v9, 0x7f020162

    invoke-virtual {v1, v9}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 243
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 244
    if-lez v4, :cond_3

    .line 245
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 246
    const v9, 0x7f020161

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 247
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 256
    :goto_1
    const v9, 0x7f080066

    invoke-virtual {p0, v9}, Lcom/cymobile/ymwork/act/Main12Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 257
    .local v2, readbtnclass2:Landroid/widget/Button;
    const v9, 0x7f080067

    invoke-virtual {p0, v9}, Lcom/cymobile/ymwork/act/Main12Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 258
    .local v8, unreadbtnclass2:Landroid/widget/Button;
    sget-object v9, Lcom/cymobile/ymwork/act/Main12Activity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v9

    if-lez v9, :cond_6

    .line 259
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/cymobile/ymwork/act/Main12Activity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 260
    const v9, 0x7f020162

    invoke-virtual {v2, v9}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 261
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 262
    if-lez v5, :cond_5

    .line 263
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 264
    const v9, 0x7f020161

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 265
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 274
    .end local v0           #readbtnclass0:Landroid/widget/Button;
    .end local v1           #readbtnclass1:Landroid/widget/Button;
    .end local v2           #readbtnclass2:Landroid/widget/Button;
    .end local v3           #u0:I
    .end local v4           #u1:I
    .end local v5           #u3:I
    .end local v6           #unreadbtnclass0:Landroid/widget/Button;
    .end local v7           #unreadbtnclass1:Landroid/widget/Button;
    .end local v8           #unreadbtnclass2:Landroid/widget/Button;
    :cond_0
    :goto_2
    return-void

    .line 231
    .restart local v0       #readbtnclass0:Landroid/widget/Button;
    .restart local v3       #u0:I
    .restart local v4       #u1:I
    .restart local v5       #u3:I
    .restart local v6       #unreadbtnclass0:Landroid/widget/Button;
    :cond_1
    const/16 v9, 0x8

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 234
    :cond_2
    const/16 v9, 0x8

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 235
    const/16 v9, 0x8

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 249
    .restart local v1       #readbtnclass1:Landroid/widget/Button;
    .restart local v7       #unreadbtnclass1:Landroid/widget/Button;
    :cond_3
    const/16 v9, 0x8

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 252
    :cond_4
    const/16 v9, 0x8

    invoke-virtual {v1, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 253
    const/16 v9, 0x8

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 267
    .restart local v2       #readbtnclass2:Landroid/widget/Button;
    .restart local v8       #unreadbtnclass2:Landroid/widget/Button;
    :cond_5
    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 270
    :cond_6
    const/16 v9, 0x8

    invoke-virtual {v2, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 271
    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2
.end method
