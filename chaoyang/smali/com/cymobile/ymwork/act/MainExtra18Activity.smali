.class public Lcom/cymobile/ymwork/act/MainExtra18Activity;
.super Landroid/support/v4/app/FragmentActivity;
.source "MainExtra18Activity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cymobile/ymwork/act/MainExtra18Activity$UIHandler;
    }
.end annotation


# static fields
.field private static final Msg_intent_resetCaseNumber:I = 0x11

.field private static final TAG:Ljava/lang/String; = "MainExtra18Activity"

.field static numbers:Lcom/cymobile/ymwork/types/CaseNumber;


# instance fields
.field handler:Landroid/os/Handler;

.field homeApplication:Lcom/cymobile/ymwork/HomeApplication;

.field public iSystemService:Lcom/cymobile/ymwork/ISystemService;

.field private mLoggedOutReceiver:Landroid/content/BroadcastReceiver;

.field private mNumberReceiver:Landroid/content/BroadcastReceiver;

.field private mPrefs:Landroid/content/SharedPreferences;

.field makeServiceReadNumberOnce:Z

.field private final serviceConnection:Landroid/content/ServiceConnection;

.field shopClass1:Landroid/widget/Button;

.field shopClass2:Landroid/widget/Button;

.field shopClass3:Landroid/widget/Button;

.field shopClass4:Landroid/widget/Button;

.field shopClass5:Landroid/widget/Button;

.field shopClass6:Landroid/widget/Button;

.field shopClass7:Landroid/widget/Button;

.field shopClass8:Landroid/widget/Button;

.field shopClass9:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cymobile/ymwork/act/MainExtra18Activity;->makeServiceReadNumberOnce:Z

    .line 178
    new-instance v0, Lcom/cymobile/ymwork/act/MainExtra18Activity$1;

    invoke-direct {v0, p0}, Lcom/cymobile/ymwork/act/MainExtra18Activity$1;-><init>(Lcom/cymobile/ymwork/act/MainExtra18Activity;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/MainExtra18Activity;->mLoggedOutReceiver:Landroid/content/BroadcastReceiver;

    .line 274
    new-instance v0, Lcom/cymobile/ymwork/act/MainExtra18Activity$2;

    invoke-direct {v0, p0}, Lcom/cymobile/ymwork/act/MainExtra18Activity$2;-><init>(Lcom/cymobile/ymwork/act/MainExtra18Activity;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/MainExtra18Activity;->serviceConnection:Landroid/content/ServiceConnection;

    .line 296
    new-instance v0, Lcom/cymobile/ymwork/act/MainExtra18Activity$3;

    invoke-direct {v0, p0}, Lcom/cymobile/ymwork/act/MainExtra18Activity$3;-><init>(Lcom/cymobile/ymwork/act/MainExtra18Activity;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/MainExtra18Activity;->mNumberReceiver:Landroid/content/BroadcastReceiver;

    .line 338
    new-instance v0, Lcom/cymobile/ymwork/act/MainExtra18Activity$UIHandler;

    invoke-direct {v0, p0}, Lcom/cymobile/ymwork/act/MainExtra18Activity$UIHandler;-><init>(Lcom/cymobile/ymwork/act/MainExtra18Activity;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/MainExtra18Activity;->handler:Landroid/os/Handler;

    .line 51
    return-void
.end method

.method static synthetic access$0(Lcom/cymobile/ymwork/act/MainExtra18Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 303
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/MainExtra18Activity;->readNumberFromService()V

    return-void
.end method

.method private ensureUi()V
    .locals 7

    .prologue
    .line 75
    const v4, 0x7f08002d

    invoke-virtual {p0, v4}, Lcom/cymobile/ymwork/act/MainExtra18Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 76
    .local v0, leftbtn:Landroid/widget/ImageButton;
    new-instance v4, Lcom/cymobile/ymwork/act/MainExtra18Activity$4;

    invoke-direct {v4, p0}, Lcom/cymobile/ymwork/act/MainExtra18Activity$4;-><init>(Lcom/cymobile/ymwork/act/MainExtra18Activity;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    const v4, 0x7f080030

    invoke-virtual {p0, v4}, Lcom/cymobile/ymwork/act/MainExtra18Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 83
    .local v1, rightbtn:Landroid/widget/Button;
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 85
    const v4, 0x7f08002f

    invoke-virtual {p0, v4}, Lcom/cymobile/ymwork/act/MainExtra18Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 86
    .local v3, title:Landroid/widget/TextView;
    const-string v4, "\u6587\u660e\u884c\u653f\u6751\uff08\u5341\u516b\u91cc\u5e97\uff09"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    const v4, 0x7f08001b

    invoke-virtual {p0, v4}, Lcom/cymobile/ymwork/act/MainExtra18Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/cymobile/ymwork/act/MainExtra18Activity;->shopClass1:Landroid/widget/Button;

    .line 89
    const v4, 0x7f08001c

    invoke-virtual {p0, v4}, Lcom/cymobile/ymwork/act/MainExtra18Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/cymobile/ymwork/act/MainExtra18Activity;->shopClass2:Landroid/widget/Button;

    .line 90
    const v4, 0x7f08001d

    invoke-virtual {p0, v4}, Lcom/cymobile/ymwork/act/MainExtra18Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/cymobile/ymwork/act/MainExtra18Activity;->shopClass3:Landroid/widget/Button;

    .line 91
    const v4, 0x7f08001e

    invoke-virtual {p0, v4}, Lcom/cymobile/ymwork/act/MainExtra18Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/cymobile/ymwork/act/MainExtra18Activity;->shopClass4:Landroid/widget/Button;

    .line 92
    const v4, 0x7f08001f

    invoke-virtual {p0, v4}, Lcom/cymobile/ymwork/act/MainExtra18Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/cymobile/ymwork/act/MainExtra18Activity;->shopClass5:Landroid/widget/Button;

    .line 93
    const v4, 0x7f080020

    invoke-virtual {p0, v4}, Lcom/cymobile/ymwork/act/MainExtra18Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/cymobile/ymwork/act/MainExtra18Activity;->shopClass6:Landroid/widget/Button;

    .line 94
    const v4, 0x7f080021

    invoke-virtual {p0, v4}, Lcom/cymobile/ymwork/act/MainExtra18Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/cymobile/ymwork/act/MainExtra18Activity;->shopClass7:Landroid/widget/Button;

    .line 95
    const v4, 0x7f080022

    invoke-virtual {p0, v4}, Lcom/cymobile/ymwork/act/MainExtra18Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/cymobile/ymwork/act/MainExtra18Activity;->shopClass8:Landroid/widget/Button;

    .line 96
    const v4, 0x7f080023

    invoke-virtual {p0, v4}, Lcom/cymobile/ymwork/act/MainExtra18Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/cymobile/ymwork/act/MainExtra18Activity;->shopClass9:Landroid/widget/Button;

    .line 98
    new-instance v2, Landroid/content/Intent;

    .line 99
    const-class v4, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;

    .line 98
    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 101
    .local v2, shopListIntent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/cymobile/ymwork/act/MainExtra18Activity;->shopClass1:Landroid/widget/Button;

    new-instance v5, Lcom/cymobile/ymwork/act/MainExtra18Activity$5;

    invoke-direct {v5, p0, v2}, Lcom/cymobile/ymwork/act/MainExtra18Activity$5;-><init>(Lcom/cymobile/ymwork/act/MainExtra18Activity;Landroid/content/Intent;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v4, p0, Lcom/cymobile/ymwork/act/MainExtra18Activity;->shopClass2:Landroid/widget/Button;

    new-instance v5, Lcom/cymobile/ymwork/act/MainExtra18Activity$6;

    invoke-direct {v5, p0, v2}, Lcom/cymobile/ymwork/act/MainExtra18Activity$6;-><init>(Lcom/cymobile/ymwork/act/MainExtra18Activity;Landroid/content/Intent;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v4, p0, Lcom/cymobile/ymwork/act/MainExtra18Activity;->shopClass3:Landroid/widget/Button;

    new-instance v5, Lcom/cymobile/ymwork/act/MainExtra18Activity$7;

    invoke-direct {v5, p0, v2}, Lcom/cymobile/ymwork/act/MainExtra18Activity$7;-><init>(Lcom/cymobile/ymwork/act/MainExtra18Activity;Landroid/content/Intent;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v4, p0, Lcom/cymobile/ymwork/act/MainExtra18Activity;->shopClass4:Landroid/widget/Button;

    new-instance v5, Lcom/cymobile/ymwork/act/MainExtra18Activity$8;

    invoke-direct {v5, p0, v2}, Lcom/cymobile/ymwork/act/MainExtra18Activity$8;-><init>(Lcom/cymobile/ymwork/act/MainExtra18Activity;Landroid/content/Intent;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v4, p0, Lcom/cymobile/ymwork/act/MainExtra18Activity;->shopClass5:Landroid/widget/Button;

    new-instance v5, Lcom/cymobile/ymwork/act/MainExtra18Activity$9;

    invoke-direct {v5, p0, v2}, Lcom/cymobile/ymwork/act/MainExtra18Activity$9;-><init>(Lcom/cymobile/ymwork/act/MainExtra18Activity;Landroid/content/Intent;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v4, p0, Lcom/cymobile/ymwork/act/MainExtra18Activity;->shopClass6:Landroid/widget/Button;

    new-instance v5, Lcom/cymobile/ymwork/act/MainExtra18Activity$10;

    invoke-direct {v5, p0, v2}, Lcom/cymobile/ymwork/act/MainExtra18Activity$10;-><init>(Lcom/cymobile/ymwork/act/MainExtra18Activity;Landroid/content/Intent;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v4, p0, Lcom/cymobile/ymwork/act/MainExtra18Activity;->shopClass7:Landroid/widget/Button;

    new-instance v5, Lcom/cymobile/ymwork/act/MainExtra18Activity$11;

    invoke-direct {v5, p0, v2}, Lcom/cymobile/ymwork/act/MainExtra18Activity$11;-><init>(Lcom/cymobile/ymwork/act/MainExtra18Activity;Landroid/content/Intent;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v4, p0, Lcom/cymobile/ymwork/act/MainExtra18Activity;->shopClass8:Landroid/widget/Button;

    new-instance v5, Lcom/cymobile/ymwork/act/MainExtra18Activity$12;

    invoke-direct {v5, p0, v2}, Lcom/cymobile/ymwork/act/MainExtra18Activity$12;-><init>(Lcom/cymobile/ymwork/act/MainExtra18Activity;Landroid/content/Intent;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v4, p0, Lcom/cymobile/ymwork/act/MainExtra18Activity;->shopClass9:Landroid/widget/Button;

    new-instance v5, Lcom/cymobile/ymwork/act/MainExtra18Activity$13;

    invoke-direct {v5, p0}, Lcom/cymobile/ymwork/act/MainExtra18Activity$13;-><init>(Lcom/cymobile/ymwork/act/MainExtra18Activity;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object v4, p0, Lcom/cymobile/ymwork/act/MainExtra18Activity;->mLoggedOutReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    .line 175
    const-string v6, "com.cymobile.ymwork.intent.action.LOGGED_OUT"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0, v4, v5}, Lcom/cymobile/ymwork/act/MainExtra18Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 176
    return-void
.end method

.method private readNumberFromService()V
    .locals 7

    .prologue
    .line 304
    iget-object v3, p0, Lcom/cymobile/ymwork/act/MainExtra18Activity;->iSystemService:Lcom/cymobile/ymwork/ISystemService;

    if-eqz v3, :cond_0

    .line 306
    :try_start_0
    iget-object v3, p0, Lcom/cymobile/ymwork/act/MainExtra18Activity;->iSystemService:Lcom/cymobile/ymwork/ISystemService;

    invoke-interface {v3}, Lcom/cymobile/ymwork/ISystemService;->getCurrentCaseNumber()[I

    move-result-object v0

    .line 307
    .local v0, currentNumber:[I
    if-eqz v0, :cond_0

    .line 308
    new-instance v2, Lcom/cymobile/ymwork/types/CaseNumber;

    invoke-direct {v2}, Lcom/cymobile/ymwork/types/CaseNumber;-><init>()V

    .line 309
    .local v2, newNumbers:Lcom/cymobile/ymwork/types/CaseNumber;
    const/4 v3, 0x0

    const/4 v4, 0x0

    aget v4, v0, v4

    invoke-virtual {v2, v3, v4}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 310
    const/4 v3, 0x1

    const/4 v4, 0x1

    aget v4, v0, v4

    invoke-virtual {v2, v3, v4}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 311
    const/4 v3, 0x2

    const/4 v4, 0x2

    aget v4, v0, v4

    invoke-virtual {v2, v3, v4}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 312
    const/4 v3, 0x3

    const/4 v4, 0x3

    aget v4, v0, v4

    invoke-virtual {v2, v3, v4}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 313
    const/4 v3, 0x4

    const/4 v4, 0x4

    aget v4, v0, v4

    invoke-virtual {v2, v3, v4}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 314
    const/4 v3, 0x5

    const/4 v4, 0x5

    aget v4, v0, v4

    invoke-virtual {v2, v3, v4}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 315
    const/4 v3, 0x6

    const/4 v4, 0x6

    aget v4, v0, v4

    invoke-virtual {v2, v3, v4}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 316
    const/4 v3, 0x7

    const/4 v4, 0x7

    aget v4, v0, v4

    invoke-virtual {v2, v3, v4}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 317
    const/16 v3, 0x8

    const/16 v4, 0x8

    aget v4, v0, v4

    invoke-virtual {v2, v3, v4}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 318
    const/16 v3, 0x9

    const/16 v4, 0x9

    aget v4, v0, v4

    invoke-virtual {v2, v3, v4}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 319
    const/16 v3, 0xa

    const/16 v4, 0xa

    aget v4, v0, v4

    invoke-virtual {v2, v3, v4}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 320
    const/16 v3, 0xb

    const/16 v4, 0xb

    aget v4, v0, v4

    invoke-virtual {v2, v3, v4}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 321
    const/16 v3, 0xc

    const/16 v4, 0xc

    aget v4, v0, v4

    invoke-virtual {v2, v3, v4}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 322
    const/16 v3, 0xd

    const/16 v4, 0xd

    aget v4, v0, v4

    invoke-virtual {v2, v3, v4}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 323
    const/16 v3, 0xe

    const/16 v4, 0xe

    aget v4, v0, v4

    invoke-virtual {v2, v3, v4}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 324
    const/16 v3, 0xf

    const/16 v4, 0xf

    aget v4, v0, v4

    invoke-virtual {v2, v3, v4}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 325
    const/16 v3, 0x10

    const/16 v4, 0x10

    aget v4, v0, v4

    invoke-virtual {v2, v3, v4}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 326
    sput-object v2, Lcom/cymobile/ymwork/act/MainExtra18Activity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    .line 328
    iget-object v3, p0, Lcom/cymobile/ymwork/act/MainExtra18Activity;->handler:Landroid/os/Handler;

    const/16 v4, 0x11

    .line 329
    const-wide/16 v5, 0xa

    .line 328
    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    .end local v0           #currentNumber:[I
    .end local v2           #newNumbers:Lcom/cymobile/ymwork/types/CaseNumber;
    :cond_0
    :goto_0
    return-void

    .line 331
    :catch_0
    move-exception v1

    .line 332
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setListViewHeightBasedOnChildren(Landroid/widget/ListView;)V
    .locals 7
    .parameter "listView"

    .prologue
    const/4 v6, 0x0

    .line 249
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Landroid/widget/SimpleAdapter;

    .line 250
    .local v1, listAdapter:Landroid/widget/SimpleAdapter;
    if-nez v1, :cond_0

    .line 266
    :goto_0
    return-void

    .line 255
    :cond_0
    const/4 v4, 0x0

    .line 256
    .local v4, totalHeight:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {v1}, Landroid/widget/SimpleAdapter;->getCount()I

    move-result v5

    if-lt v0, v5, :cond_1

    .line 262
    invoke-virtual {p0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 264
    .local v3, params:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v5

    invoke-virtual {v1}, Landroid/widget/SimpleAdapter;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    mul-int/2addr v5, v6

    add-int/2addr v5, v4

    .line 263
    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 265
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 257
    .end local v3           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {v1, v0, v5, p0}, Landroid/widget/SimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 258
    .local v2, listItem:Landroid/view/View;
    invoke-virtual {v2, v6, v6}, Landroid/view/View;->measure(II)V

    .line 259
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    .line 256
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 270
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 271
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    const/4 v0, 0x1

    .line 60
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    iput-boolean v0, p0, Lcom/cymobile/ymwork/act/MainExtra18Activity;->makeServiceReadNumberOnce:Z

    .line 62
    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/MainExtra18Activity;->requestWindowFeature(I)Z

    .line 64
    const v0, 0x7f030024

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/MainExtra18Activity;->setContentView(I)V

    .line 65
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainExtra18Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/cymobile/ymwork/HomeApplication;

    iput-object v0, p0, Lcom/cymobile/ymwork/act/MainExtra18Activity;->homeApplication:Lcom/cymobile/ymwork/HomeApplication;

    .line 67
    const-class v0, Lcom/cymobile/ymwork/SettingBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 68
    const/4 v1, 0x2

    .line 67
    invoke-virtual {p0, v0, v1}, Lcom/cymobile/ymwork/act/MainExtra18Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/cymobile/ymwork/act/MainExtra18Activity;->mPrefs:Landroid/content/SharedPreferences;

    .line 71
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/MainExtra18Activity;->ensureUi()V

    .line 72
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 223
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 225
    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/cymobile/ymwork/act/MainExtra18Activity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    .line 229
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainExtra18Activity;->shopClass4:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainExtra18Activity;->shopClass5:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainExtra18Activity;->shopClass6:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainExtra18Activity;->shopClass7:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainExtra18Activity;->shopClass8:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainExtra18Activity;->shopClass9:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainExtra18Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/cymobile/ymwork/act/MainExtra18Activity;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 237
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainExtra18Activity;->mNumberReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/MainExtra18Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainExtra18Activity;->mLoggedOutReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/MainExtra18Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 246
    :goto_1
    return-void

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, ee:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 243
    .end local v0           #ee:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 244
    .restart local v0       #ee:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 193
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 194
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainExtra18Activity;->homeApplication:Lcom/cymobile/ymwork/HomeApplication;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/HomeApplication;->haveId()Z

    move-result v1

    if-nez v1, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainExtra18Activity;->getParent()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/cymobile/ymwork/HomeApplication;->redirectToLoginActivityAndNoBack(Landroid/app/Activity;)V

    .line 196
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainExtra18Activity;->finish()V

    .line 199
    :cond_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainExtra18Activity;->mNumberReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    .line 200
    const-string v3, "com.cymobile.ymwork.intent.action.CASE_NUMBER_UPDATED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0, v1, v2}, Lcom/cymobile/ymwork/act/MainExtra18Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 201
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cymobile/ymwork/SystemService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 202
    .local v0, serviceIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/MainExtra18Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 203
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainExtra18Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/cymobile/ymwork/act/MainExtra18Activity;->serviceConnection:Landroid/content/ServiceConnection;

    .line 204
    const/4 v3, 0x1

    .line 203
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 205
    sget-object v1, Lcom/cymobile/ymwork/act/MainExtra18Activity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainExtra18Activity;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 206
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainExtra18Activity;->handler:Landroid/os/Handler;

    const/16 v2, 0x11

    const-wide/16 v3, 0xa

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 208
    :cond_1
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/MainExtra18Activity;->readNumberFromService()V

    .line 209
    return-void
.end method

.method public resetCaseNumber()V
    .locals 38

    .prologue
    .line 354
    sget-object v35, Lcom/cymobile/ymwork/act/MainExtra18Activity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    if-eqz v35, :cond_0

    .line 355
    sget-object v35, Lcom/cymobile/ymwork/act/MainExtra18Activity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v35

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/MainExtra18Activity;->mPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    invoke-static/range {v36 .. v37}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getReadNumber(Landroid/content/SharedPreferences;I)I

    move-result v36

    .line 355
    sub-int v10, v35, v36

    .line 357
    .local v10, u0:I
    sget-object v35, Lcom/cymobile/ymwork/act/MainExtra18Activity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v36, 0x1

    invoke-virtual/range {v35 .. v36}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v35

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/MainExtra18Activity;->mPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    invoke-static/range {v36 .. v37}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getReadNumber(Landroid/content/SharedPreferences;I)I

    move-result v36

    .line 357
    sub-int v11, v35, v36

    .line 359
    .local v11, u1:I
    sget-object v35, Lcom/cymobile/ymwork/act/MainExtra18Activity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v36, 0x2

    invoke-virtual/range {v35 .. v36}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v35

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/MainExtra18Activity;->mPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v36, v0

    const/16 v37, 0x2

    invoke-static/range {v36 .. v37}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getReadNumber(Landroid/content/SharedPreferences;I)I

    move-result v36

    .line 359
    sub-int v19, v35, v36

    .line 361
    .local v19, u2:I
    sget-object v35, Lcom/cymobile/ymwork/act/MainExtra18Activity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v36, 0x3

    invoke-virtual/range {v35 .. v36}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v35

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/MainExtra18Activity;->mPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v36, v0

    const/16 v37, 0x3

    invoke-static/range {v36 .. v37}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getReadNumber(Landroid/content/SharedPreferences;I)I

    move-result v36

    .line 361
    sub-int v20, v35, v36

    .line 363
    .local v20, u3:I
    sget-object v35, Lcom/cymobile/ymwork/act/MainExtra18Activity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v36, 0x4

    invoke-virtual/range {v35 .. v36}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v35

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/MainExtra18Activity;->mPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v36, v0

    const/16 v37, 0x4

    invoke-static/range {v36 .. v37}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getReadNumber(Landroid/content/SharedPreferences;I)I

    move-result v36

    .line 363
    sub-int v21, v35, v36

    .line 365
    .local v21, u4:I
    sget-object v35, Lcom/cymobile/ymwork/act/MainExtra18Activity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v36, 0x5

    invoke-virtual/range {v35 .. v36}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v35

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/MainExtra18Activity;->mPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v36, v0

    const/16 v37, 0x5

    invoke-static/range {v36 .. v37}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getReadNumber(Landroid/content/SharedPreferences;I)I

    move-result v36

    .line 365
    sub-int v22, v35, v36

    .line 367
    .local v22, u5:I
    sget-object v35, Lcom/cymobile/ymwork/act/MainExtra18Activity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v36, 0x6

    invoke-virtual/range {v35 .. v36}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v35

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/MainExtra18Activity;->mPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v36, v0

    const/16 v37, 0x6

    invoke-static/range {v36 .. v37}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getReadNumber(Landroid/content/SharedPreferences;I)I

    move-result v36

    .line 367
    sub-int v23, v35, v36

    .line 369
    .local v23, u6:I
    sget-object v35, Lcom/cymobile/ymwork/act/MainExtra18Activity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v36, 0x7

    invoke-virtual/range {v35 .. v36}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v35

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/MainExtra18Activity;->mPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v36, v0

    const/16 v37, 0x7

    invoke-static/range {v36 .. v37}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getReadNumber(Landroid/content/SharedPreferences;I)I

    move-result v36

    .line 369
    sub-int v24, v35, v36

    .line 371
    .local v24, u7:I
    sget-object v35, Lcom/cymobile/ymwork/act/MainExtra18Activity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v36, 0x8

    invoke-virtual/range {v35 .. v36}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v35

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/MainExtra18Activity;->mPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v36, v0

    const/16 v37, 0x8

    invoke-static/range {v36 .. v37}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getReadNumber(Landroid/content/SharedPreferences;I)I

    move-result v36

    .line 371
    sub-int v25, v35, v36

    .line 373
    .local v25, u8:I
    sget-object v35, Lcom/cymobile/ymwork/act/MainExtra18Activity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v36, 0x9

    invoke-virtual/range {v35 .. v36}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v35

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/MainExtra18Activity;->mPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v36, v0

    const/16 v37, 0x9

    invoke-static/range {v36 .. v37}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getReadNumber(Landroid/content/SharedPreferences;I)I

    move-result v36

    .line 373
    sub-int v26, v35, v36

    .line 375
    .local v26, u9:I
    sget-object v35, Lcom/cymobile/ymwork/act/MainExtra18Activity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v36, 0xa

    invoke-virtual/range {v35 .. v36}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v35

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/MainExtra18Activity;->mPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v36, v0

    const/16 v37, 0xa

    invoke-static/range {v36 .. v37}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getReadNumber(Landroid/content/SharedPreferences;I)I

    move-result v36

    .line 375
    sub-int v12, v35, v36

    .line 377
    .local v12, u10:I
    sget-object v35, Lcom/cymobile/ymwork/act/MainExtra18Activity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v36, 0xb

    invoke-virtual/range {v35 .. v36}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v35

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/MainExtra18Activity;->mPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v36, v0

    const/16 v37, 0xb

    invoke-static/range {v36 .. v37}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getReadNumber(Landroid/content/SharedPreferences;I)I

    move-result v36

    .line 377
    sub-int v13, v35, v36

    .line 379
    .local v13, u11:I
    sget-object v35, Lcom/cymobile/ymwork/act/MainExtra18Activity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v36, 0xc

    invoke-virtual/range {v35 .. v36}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v35

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/MainExtra18Activity;->mPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v36, v0

    const/16 v37, 0xc

    invoke-static/range {v36 .. v37}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getReadNumber(Landroid/content/SharedPreferences;I)I

    move-result v36

    .line 379
    sub-int v14, v35, v36

    .line 381
    .local v14, u12:I
    sget-object v35, Lcom/cymobile/ymwork/act/MainExtra18Activity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v36, 0xd

    invoke-virtual/range {v35 .. v36}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v35

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/MainExtra18Activity;->mPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v36, v0

    const/16 v37, 0xd

    invoke-static/range {v36 .. v37}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getReadNumber(Landroid/content/SharedPreferences;I)I

    move-result v36

    .line 381
    sub-int v15, v35, v36

    .line 383
    .local v15, u13:I
    sget-object v35, Lcom/cymobile/ymwork/act/MainExtra18Activity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v36, 0xe

    invoke-virtual/range {v35 .. v36}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v35

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/MainExtra18Activity;->mPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v36, v0

    const/16 v37, 0xe

    invoke-static/range {v36 .. v37}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getReadNumber(Landroid/content/SharedPreferences;I)I

    move-result v36

    .line 383
    sub-int v16, v35, v36

    .line 385
    .local v16, u14:I
    sget-object v35, Lcom/cymobile/ymwork/act/MainExtra18Activity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v36, 0xf

    invoke-virtual/range {v35 .. v36}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v35

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/MainExtra18Activity;->mPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v36, v0

    const/16 v37, 0xf

    invoke-static/range {v36 .. v37}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getReadNumber(Landroid/content/SharedPreferences;I)I

    move-result v36

    .line 385
    sub-int v17, v35, v36

    .line 387
    .local v17, u15:I
    sget-object v35, Lcom/cymobile/ymwork/act/MainExtra18Activity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v36, 0x10

    invoke-virtual/range {v35 .. v36}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v35

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/MainExtra18Activity;->mPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v36, v0

    const/16 v37, 0x10

    invoke-static/range {v36 .. v37}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getReadNumber(Landroid/content/SharedPreferences;I)I

    move-result v36

    .line 387
    sub-int v18, v35, v36

    .line 390
    .local v18, u16:I
    const v35, 0x7f080062

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/act/MainExtra18Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 391
    .local v2, readbtnclass1:Landroid/widget/Button;
    const v35, 0x7f080064

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/act/MainExtra18Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 392
    .local v3, readbtnclass2:Landroid/widget/Button;
    const v35, 0x7f080066

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/act/MainExtra18Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 393
    .local v4, readbtnclass3:Landroid/widget/Button;
    const v35, 0x7f080071

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/act/MainExtra18Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 394
    .local v5, readbtnclass4:Landroid/widget/Button;
    const v35, 0x7f080073

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/act/MainExtra18Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 395
    .local v6, readbtnclass5:Landroid/widget/Button;
    const v35, 0x7f080075

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/act/MainExtra18Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 396
    .local v7, readbtnclass6:Landroid/widget/Button;
    const v35, 0x7f080090

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/act/MainExtra18Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 397
    .local v8, readbtnclass7:Landroid/widget/Button;
    const v35, 0x7f080082

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/act/MainExtra18Activity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 399
    .local v9, readbtnclass8:Landroid/widget/Button;
    const v35, 0x7f080063

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/act/MainExtra18Activity;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/Button;

    .line 400
    .local v27, unreadbtnclass1:Landroid/widget/Button;
    const v35, 0x7f080065

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/act/MainExtra18Activity;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/Button;

    .line 401
    .local v28, unreadbtnclass2:Landroid/widget/Button;
    const v35, 0x7f080067

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/act/MainExtra18Activity;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/Button;

    .line 402
    .local v29, unreadbtnclass3:Landroid/widget/Button;
    const v35, 0x7f080072

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/act/MainExtra18Activity;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/Button;

    .line 403
    .local v30, unreadbtnclass4:Landroid/widget/Button;
    const v35, 0x7f080074

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/act/MainExtra18Activity;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/Button;

    .line 404
    .local v31, unreadbtnclass5:Landroid/widget/Button;
    const v35, 0x7f080076

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/act/MainExtra18Activity;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/Button;

    .line 405
    .local v32, unreadbtnclass6:Landroid/widget/Button;
    const v35, 0x7f080091

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/act/MainExtra18Activity;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/Button;

    .line 406
    .local v33, unreadbtnclass7:Landroid/widget/Button;
    const v35, 0x7f080083

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/act/MainExtra18Activity;->findViewById(I)Landroid/view/View;

    move-result-object v34

    check-cast v34, Landroid/widget/Button;

    .line 408
    .local v34, unreadbtnclass8:Landroid/widget/Button;
    sget-object v35, Lcom/cymobile/ymwork/act/MainExtra18Activity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v36, 0xf

    invoke-virtual/range {v35 .. v36}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v35

    if-lez v35, :cond_2

    .line 409
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v36, Lcom/cymobile/ymwork/act/MainExtra18Activity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v37, 0xf

    invoke-virtual/range {v36 .. v37}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 410
    const v35, 0x7f020162

    move/from16 v0, v35

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 411
    const/16 v35, 0x0

    move/from16 v0, v35

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 412
    if-lez v17, :cond_1

    .line 413
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v27

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 414
    const v35, 0x7f020161

    move-object/from16 v0, v27

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 415
    const/16 v35, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 424
    :goto_0
    sget-object v35, Lcom/cymobile/ymwork/act/MainExtra18Activity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v36, 0x8

    invoke-virtual/range {v35 .. v36}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v35

    if-lez v35, :cond_4

    .line 425
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v36, Lcom/cymobile/ymwork/act/MainExtra18Activity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v37, 0x8

    invoke-virtual/range {v36 .. v37}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 426
    const v35, 0x7f020162

    move/from16 v0, v35

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 427
    const/16 v35, 0x0

    move/from16 v0, v35

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 428
    if-lez v25, :cond_3

    .line 429
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v28

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 430
    const v35, 0x7f020161

    move-object/from16 v0, v28

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 431
    const/16 v35, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 440
    :goto_1
    sget-object v35, Lcom/cymobile/ymwork/act/MainExtra18Activity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v36, 0x9

    invoke-virtual/range {v35 .. v36}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v35

    if-lez v35, :cond_6

    .line 441
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v36, Lcom/cymobile/ymwork/act/MainExtra18Activity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v37, 0x9

    invoke-virtual/range {v36 .. v37}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 442
    const v35, 0x7f020162

    move/from16 v0, v35

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 443
    const/16 v35, 0x0

    move/from16 v0, v35

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 444
    if-lez v26, :cond_5

    .line 445
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v29

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 446
    const v35, 0x7f020161

    move-object/from16 v0, v29

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 447
    const/16 v35, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 456
    :goto_2
    sget-object v35, Lcom/cymobile/ymwork/act/MainExtra18Activity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v36, 0xa

    invoke-virtual/range {v35 .. v36}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v35

    if-lez v35, :cond_8

    .line 457
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v36, Lcom/cymobile/ymwork/act/MainExtra18Activity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v37, 0xa

    invoke-virtual/range {v36 .. v37}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 458
    const v35, 0x7f020162

    move/from16 v0, v35

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 459
    const/16 v35, 0x0

    move/from16 v0, v35

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 460
    if-lez v12, :cond_7

    .line 461
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v30

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 462
    const v35, 0x7f020161

    move-object/from16 v0, v30

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 463
    const/16 v35, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 471
    :goto_3
    sget-object v35, Lcom/cymobile/ymwork/act/MainExtra18Activity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v36, 0xb

    invoke-virtual/range {v35 .. v36}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v35

    if-lez v35, :cond_a

    .line 472
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v36, Lcom/cymobile/ymwork/act/MainExtra18Activity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v37, 0xb

    invoke-virtual/range {v36 .. v37}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 473
    const v35, 0x7f020162

    move/from16 v0, v35

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 474
    const/16 v35, 0x0

    move/from16 v0, v35

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 475
    if-lez v13, :cond_9

    .line 476
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v31

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 477
    const v35, 0x7f020161

    move-object/from16 v0, v31

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 478
    const/16 v35, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 487
    :goto_4
    sget-object v35, Lcom/cymobile/ymwork/act/MainExtra18Activity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v36, 0xc

    invoke-virtual/range {v35 .. v36}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v35

    if-lez v35, :cond_c

    .line 488
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v36, Lcom/cymobile/ymwork/act/MainExtra18Activity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v37, 0xc

    invoke-virtual/range {v36 .. v37}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 489
    const v35, 0x7f020162

    move/from16 v0, v35

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 490
    const/16 v35, 0x0

    move/from16 v0, v35

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 491
    if-lez v14, :cond_b

    .line 492
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v32

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 493
    const v35, 0x7f020161

    move-object/from16 v0, v32

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 494
    const/16 v35, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 502
    :goto_5
    sget-object v35, Lcom/cymobile/ymwork/act/MainExtra18Activity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v36, 0xd

    invoke-virtual/range {v35 .. v36}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v35

    if-lez v35, :cond_e

    .line 503
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v36, Lcom/cymobile/ymwork/act/MainExtra18Activity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v37, 0xd

    invoke-virtual/range {v36 .. v37}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 504
    const v35, 0x7f020162

    move/from16 v0, v35

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 505
    const/16 v35, 0x0

    move/from16 v0, v35

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 506
    if-lez v15, :cond_d

    .line 507
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 508
    const v35, 0x7f020161

    move-object/from16 v0, v33

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 509
    const/16 v35, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 517
    :goto_6
    sget-object v35, Lcom/cymobile/ymwork/act/MainExtra18Activity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v36, 0xe

    invoke-virtual/range {v35 .. v36}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v35

    if-lez v35, :cond_10

    .line 518
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v36, Lcom/cymobile/ymwork/act/MainExtra18Activity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v37, 0xe

    invoke-virtual/range {v36 .. v37}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 519
    const v35, 0x7f020162

    move/from16 v0, v35

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 520
    const/16 v35, 0x0

    move/from16 v0, v35

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 521
    if-lez v16, :cond_f

    .line 522
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 523
    const v35, 0x7f020161

    invoke-virtual/range {v34 .. v35}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 524
    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Landroid/widget/Button;->setVisibility(I)V

    .line 534
    .end local v2           #readbtnclass1:Landroid/widget/Button;
    .end local v3           #readbtnclass2:Landroid/widget/Button;
    .end local v4           #readbtnclass3:Landroid/widget/Button;
    .end local v5           #readbtnclass4:Landroid/widget/Button;
    .end local v6           #readbtnclass5:Landroid/widget/Button;
    .end local v7           #readbtnclass6:Landroid/widget/Button;
    .end local v8           #readbtnclass7:Landroid/widget/Button;
    .end local v9           #readbtnclass8:Landroid/widget/Button;
    .end local v10           #u0:I
    .end local v11           #u1:I
    .end local v12           #u10:I
    .end local v13           #u11:I
    .end local v14           #u12:I
    .end local v15           #u13:I
    .end local v16           #u14:I
    .end local v17           #u15:I
    .end local v18           #u16:I
    .end local v19           #u2:I
    .end local v20           #u3:I
    .end local v21           #u4:I
    .end local v22           #u5:I
    .end local v23           #u6:I
    .end local v24           #u7:I
    .end local v25           #u8:I
    .end local v26           #u9:I
    .end local v27           #unreadbtnclass1:Landroid/widget/Button;
    .end local v28           #unreadbtnclass2:Landroid/widget/Button;
    .end local v29           #unreadbtnclass3:Landroid/widget/Button;
    .end local v30           #unreadbtnclass4:Landroid/widget/Button;
    .end local v31           #unreadbtnclass5:Landroid/widget/Button;
    .end local v32           #unreadbtnclass6:Landroid/widget/Button;
    .end local v33           #unreadbtnclass7:Landroid/widget/Button;
    .end local v34           #unreadbtnclass8:Landroid/widget/Button;
    :cond_0
    :goto_7
    return-void

    .line 417
    .restart local v2       #readbtnclass1:Landroid/widget/Button;
    .restart local v3       #readbtnclass2:Landroid/widget/Button;
    .restart local v4       #readbtnclass3:Landroid/widget/Button;
    .restart local v5       #readbtnclass4:Landroid/widget/Button;
    .restart local v6       #readbtnclass5:Landroid/widget/Button;
    .restart local v7       #readbtnclass6:Landroid/widget/Button;
    .restart local v8       #readbtnclass7:Landroid/widget/Button;
    .restart local v9       #readbtnclass8:Landroid/widget/Button;
    .restart local v10       #u0:I
    .restart local v11       #u1:I
    .restart local v12       #u10:I
    .restart local v13       #u11:I
    .restart local v14       #u12:I
    .restart local v15       #u13:I
    .restart local v16       #u14:I
    .restart local v17       #u15:I
    .restart local v18       #u16:I
    .restart local v19       #u2:I
    .restart local v20       #u3:I
    .restart local v21       #u4:I
    .restart local v22       #u5:I
    .restart local v23       #u6:I
    .restart local v24       #u7:I
    .restart local v25       #u8:I
    .restart local v26       #u9:I
    .restart local v27       #unreadbtnclass1:Landroid/widget/Button;
    .restart local v28       #unreadbtnclass2:Landroid/widget/Button;
    .restart local v29       #unreadbtnclass3:Landroid/widget/Button;
    .restart local v30       #unreadbtnclass4:Landroid/widget/Button;
    .restart local v31       #unreadbtnclass5:Landroid/widget/Button;
    .restart local v32       #unreadbtnclass6:Landroid/widget/Button;
    .restart local v33       #unreadbtnclass7:Landroid/widget/Button;
    .restart local v34       #unreadbtnclass8:Landroid/widget/Button;
    :cond_1
    const/16 v35, 0x8

    move-object/from16 v0, v27

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 420
    :cond_2
    const/16 v35, 0x8

    move/from16 v0, v35

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 421
    const/16 v35, 0x8

    move-object/from16 v0, v27

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 433
    :cond_3
    const/16 v35, 0x8

    move-object/from16 v0, v28

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_1

    .line 436
    :cond_4
    const/16 v35, 0x8

    move/from16 v0, v35

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 437
    const/16 v35, 0x8

    move-object/from16 v0, v28

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_1

    .line 449
    :cond_5
    const/16 v35, 0x8

    move-object/from16 v0, v29

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_2

    .line 452
    :cond_6
    const/16 v35, 0x8

    move/from16 v0, v35

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 453
    const/16 v35, 0x8

    move-object/from16 v0, v29

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_2

    .line 465
    :cond_7
    const/16 v35, 0x8

    move-object/from16 v0, v30

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_3

    .line 468
    :cond_8
    const/16 v35, 0x8

    move/from16 v0, v35

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 469
    const/16 v35, 0x8

    move-object/from16 v0, v30

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_3

    .line 480
    :cond_9
    const/16 v35, 0x8

    move-object/from16 v0, v31

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_4

    .line 483
    :cond_a
    const/16 v35, 0x8

    move/from16 v0, v35

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 484
    const/16 v35, 0x8

    move-object/from16 v0, v31

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_4

    .line 496
    :cond_b
    const/16 v35, 0x8

    move-object/from16 v0, v32

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_5

    .line 499
    :cond_c
    const/16 v35, 0x8

    move/from16 v0, v35

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 500
    const/16 v35, 0x8

    move-object/from16 v0, v32

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_5

    .line 511
    :cond_d
    const/16 v35, 0x8

    move-object/from16 v0, v33

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_6

    .line 514
    :cond_e
    const/16 v35, 0x8

    move/from16 v0, v35

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 515
    const/16 v35, 0x8

    move-object/from16 v0, v33

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_6

    .line 526
    :cond_f
    const/16 v35, 0x8

    invoke-virtual/range {v34 .. v35}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_7

    .line 529
    :cond_10
    const/16 v35, 0x8

    move/from16 v0, v35

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 530
    const/16 v35, 0x8

    invoke-virtual/range {v34 .. v35}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_7
.end method
