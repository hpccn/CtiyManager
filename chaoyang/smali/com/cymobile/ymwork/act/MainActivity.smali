.class public Lcom/cymobile/ymwork/act/MainActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cymobile/ymwork/act/MainActivity$UIHandler;
    }
.end annotation


# static fields
.field public static final Intent_ClassId:Ljava/lang/String; = "Intent_ClassId"

.field public static final Intent_Days:Ljava/lang/String; = "Intent_Days"

.field public static final Intent_ZoneId:Ljava/lang/String; = "Intent_ZoneId"

.field private static final Msg_intent_resetCaseNumber:I = 0x11

.field private static final TAG:Ljava/lang/String; = "MainActivity"

.field static numbers:Lcom/cymobile/ymwork/types/CaseNumber;


# instance fields
.field footerList:Landroid/widget/ListView;

.field footerListItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field footerListItemAdapter:Landroid/widget/SimpleAdapter;

.field handler:Landroid/os/Handler;

.field homeApplication:Lcom/cymobile/ymwork/HomeApplication;

.field public iSystemService:Lcom/cymobile/ymwork/ISystemService;

.field private mLoggedOutReceiver:Landroid/content/BroadcastReceiver;

.field private mNumberReceiver:Landroid/content/BroadcastReceiver;

.field private mPrefs:Landroid/content/SharedPreferences;

.field makeServiceReadNumberOnce:Z

.field private final serviceConnection:Landroid/content/ServiceConnection;

.field shopClass1:Landroid/widget/Button;

.field shopClass10:Landroid/widget/Button;

.field shopClass2:Landroid/widget/Button;

.field shopClass3:Landroid/widget/Button;

.field shopClass4:Landroid/widget/Button;

.field shopClass5:Landroid/widget/Button;

.field shopClass6:Landroid/widget/Button;

.field shopClass7:Landroid/widget/Button;

.field shopClass8:Landroid/widget/Button;

.field shopClass9:Landroid/widget/Button;

.field shopClassextra18:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cymobile/ymwork/act/MainActivity;->makeServiceReadNumberOnce:Z

    .line 273
    new-instance v0, Lcom/cymobile/ymwork/act/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/cymobile/ymwork/act/MainActivity$1;-><init>(Lcom/cymobile/ymwork/act/MainActivity;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/MainActivity;->mLoggedOutReceiver:Landroid/content/BroadcastReceiver;

    .line 398
    new-instance v0, Lcom/cymobile/ymwork/act/MainActivity$2;

    invoke-direct {v0, p0}, Lcom/cymobile/ymwork/act/MainActivity$2;-><init>(Lcom/cymobile/ymwork/act/MainActivity;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/MainActivity;->serviceConnection:Landroid/content/ServiceConnection;

    .line 419
    new-instance v0, Lcom/cymobile/ymwork/act/MainActivity$3;

    invoke-direct {v0, p0}, Lcom/cymobile/ymwork/act/MainActivity$3;-><init>(Lcom/cymobile/ymwork/act/MainActivity;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/MainActivity;->mNumberReceiver:Landroid/content/BroadcastReceiver;

    .line 460
    new-instance v0, Lcom/cymobile/ymwork/act/MainActivity$UIHandler;

    invoke-direct {v0, p0}, Lcom/cymobile/ymwork/act/MainActivity$UIHandler;-><init>(Lcom/cymobile/ymwork/act/MainActivity;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/MainActivity;->handler:Landroid/os/Handler;

    .line 472
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/MainActivity;->footerListItem:Ljava/util/ArrayList;

    .line 49
    return-void
.end method

.method static synthetic access$0(Lcom/cymobile/ymwork/act/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 426
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/MainActivity;->readNumberFromService()V

    return-void
.end method

.method private readNumberFromService()V
    .locals 7

    .prologue
    .line 427
    iget-object v3, p0, Lcom/cymobile/ymwork/act/MainActivity;->iSystemService:Lcom/cymobile/ymwork/ISystemService;

    if-eqz v3, :cond_0

    .line 429
    :try_start_0
    iget-object v3, p0, Lcom/cymobile/ymwork/act/MainActivity;->iSystemService:Lcom/cymobile/ymwork/ISystemService;

    invoke-interface {v3}, Lcom/cymobile/ymwork/ISystemService;->getCurrentCaseNumber()[I

    move-result-object v0

    .line 430
    .local v0, currentNumber:[I
    if-eqz v0, :cond_0

    .line 431
    new-instance v2, Lcom/cymobile/ymwork/types/CaseNumber;

    invoke-direct {v2}, Lcom/cymobile/ymwork/types/CaseNumber;-><init>()V

    .line 432
    .local v2, newNumbers:Lcom/cymobile/ymwork/types/CaseNumber;
    const/4 v3, 0x0

    const/4 v4, 0x0

    aget v4, v0, v4

    invoke-virtual {v2, v3, v4}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 433
    const/4 v3, 0x1

    const/4 v4, 0x1

    aget v4, v0, v4

    invoke-virtual {v2, v3, v4}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 434
    const/4 v3, 0x2

    const/4 v4, 0x2

    aget v4, v0, v4

    invoke-virtual {v2, v3, v4}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 435
    const/4 v3, 0x3

    const/4 v4, 0x3

    aget v4, v0, v4

    invoke-virtual {v2, v3, v4}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 436
    const/4 v3, 0x4

    const/4 v4, 0x4

    aget v4, v0, v4

    invoke-virtual {v2, v3, v4}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 437
    const/4 v3, 0x5

    const/4 v4, 0x5

    aget v4, v0, v4

    invoke-virtual {v2, v3, v4}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 438
    const/4 v3, 0x6

    const/4 v4, 0x6

    aget v4, v0, v4

    invoke-virtual {v2, v3, v4}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 439
    const/4 v3, 0x7

    const/4 v4, 0x7

    aget v4, v0, v4

    invoke-virtual {v2, v3, v4}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 440
    const/16 v3, 0x8

    const/16 v4, 0x8

    aget v4, v0, v4

    invoke-virtual {v2, v3, v4}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 441
    const/16 v3, 0x9

    const/16 v4, 0x9

    aget v4, v0, v4

    invoke-virtual {v2, v3, v4}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 442
    const/16 v3, 0xa

    const/16 v4, 0xa

    aget v4, v0, v4

    invoke-virtual {v2, v3, v4}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 443
    const/16 v3, 0xb

    const/16 v4, 0xb

    aget v4, v0, v4

    invoke-virtual {v2, v3, v4}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 444
    const/16 v3, 0xc

    const/16 v4, 0xc

    aget v4, v0, v4

    invoke-virtual {v2, v3, v4}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 445
    const/16 v3, 0xd

    const/16 v4, 0xd

    aget v4, v0, v4

    invoke-virtual {v2, v3, v4}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 446
    const/16 v3, 0xe

    const/16 v4, 0xe

    aget v4, v0, v4

    invoke-virtual {v2, v3, v4}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 447
    const/16 v3, 0xf

    const/16 v4, 0xf

    aget v4, v0, v4

    invoke-virtual {v2, v3, v4}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 448
    const/16 v3, 0x10

    const/16 v4, 0x10

    aget v4, v0, v4

    invoke-virtual {v2, v3, v4}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 449
    sput-object v2, Lcom/cymobile/ymwork/act/MainActivity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    .line 451
    iget-object v3, p0, Lcom/cymobile/ymwork/act/MainActivity;->handler:Landroid/os/Handler;

    const/16 v4, 0x11

    const-wide/16 v5, 0xa

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    .end local v0           #currentNumber:[I
    .end local v2           #newNumbers:Lcom/cymobile/ymwork/types/CaseNumber;
    :cond_0
    :goto_0
    return-void

    .line 453
    :catch_0
    move-exception v1

    .line 454
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setListViewHeightBasedOnChildren(Landroid/widget/ListView;)V
    .locals 7
    .parameter "listView"

    .prologue
    const/4 v6, 0x0

    .line 349
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Landroid/widget/SimpleAdapter;

    .line 350
    .local v1, listAdapter:Landroid/widget/SimpleAdapter;
    if-nez v1, :cond_0

    .line 365
    :goto_0
    return-void

    .line 355
    :cond_0
    const/4 v4, 0x0

    .line 356
    .local v4, totalHeight:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {v1}, Landroid/widget/SimpleAdapter;->getCount()I

    move-result v5

    if-lt v0, v5, :cond_1

    .line 362
    invoke-virtual {p0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 363
    .local v3, params:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v5

    invoke-virtual {v1}, Landroid/widget/SimpleAdapter;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    mul-int/2addr v5, v6

    add-int/2addr v5, v4

    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 364
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 357
    .end local v3           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {v1, v0, v5, p0}, Landroid/widget/SimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 358
    .local v2, listItem:Landroid/view/View;
    invoke-virtual {v2, v6, v6}, Landroid/view/View;->measure(II)V

    .line 359
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    .line 356
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public gotoLife(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 369
    :try_start_0
    const-string v2, "com.cymobile.ym"

    invoke-virtual {p0, v2}, Lcom/cymobile/ymwork/act/MainActivity;->isPackageExists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 370
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 371
    .local v1, intent:Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.cymobile.ym"

    const-string v4, "com.cymobile.ym.act.MainActivityGroup"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 372
    const/high16 v2, 0x1400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 373
    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 374
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainActivity;->finish()V

    .line 381
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 376
    :cond_0
    const v2, 0x7f090084

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 378
    :catch_0
    move-exception v0

    .line 379
    .local v0, ee:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public gotomain1(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 723
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cymobile/ymwork/act/Main1Activity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 724
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 725
    return-void
.end method

.method public gotomain11(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 727
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cymobile/ymwork/act/Main11Activity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 728
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 729
    return-void
.end method

.method public gotomain12(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 731
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cymobile/ymwork/act/Main12Activity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 732
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 733
    return-void
.end method

.method public gotomainextra18(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 735
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cymobile/ymwork/act/MainExtra18Activity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 736
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 737
    return-void
.end method

.method public isPackageExists(Ljava/lang/String;)Z
    .locals 6
    .parameter "targetPackage"

    .prologue
    const/4 v3, 0x0

    .line 385
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 386
    .local v2, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 387
    .local v1, packages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 390
    :goto_0
    return v3

    .line 387
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 388
    .local v0, packageInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 394
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 395
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cymobile/ymwork/act/MainActivity;->makeServiceReadNumberOnce:Z

    .line 59
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/MainActivity;->requestWindowFeature(I)Z

    .line 61
    const v0, 0x7f030023

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/MainActivity;->setContentView(I)V

    .line 62
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/cymobile/ymwork/HomeApplication;

    iput-object v0, p0, Lcom/cymobile/ymwork/act/MainActivity;->homeApplication:Lcom/cymobile/ymwork/HomeApplication;

    .line 64
    const-class v0, Lcom/cymobile/ymwork/SettingBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 65
    const/4 v1, 0x2

    .line 64
    invoke-virtual {p0, v0, v1}, Lcom/cymobile/ymwork/act/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/cymobile/ymwork/act/MainActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 67
    const v0, 0x7f08008f

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/cymobile/ymwork/act/MainActivity;->footerList:Landroid/widget/ListView;

    .line 68
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainActivity;->footerListItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 69
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 70
    .local v8, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "ItemImage"

    const v1, 0x7f0200b0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string v0, "ItemImage2"

    const v1, 0x7f0200ac

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string v0, "ItemTitle"

    const v1, 0x7f090005

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainActivity;->footerListItem:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 78
    .local v9, map1:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "ItemImage"

    const v1, 0x7f0200b0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v0, "ItemImage2"

    const v1, 0x7f0200ad

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v0, "ItemTitle"

    const v1, 0x7f090008

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainActivity;->footerListItem:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 86
    .local v10, map2:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "ItemImage"

    const v1, 0x7f0200b0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v0, "ItemImage2"

    const v1, 0x7f0200ae

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v0, "ItemTitle"

    const v1, 0x7f09000b

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainActivity;->footerListItem:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    new-instance v0, Landroid/widget/SimpleAdapter;

    iget-object v2, p0, Lcom/cymobile/ymwork/act/MainActivity;->footerListItem:Ljava/util/ArrayList;

    .line 101
    const v3, 0x7f030022

    .line 103
    const/4 v1, 0x5

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "ItemImage"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    const-string v5, "ItemImage2"

    aput-object v5, v4, v1

    const/4 v1, 0x2

    const-string v5, "ItemTitle"

    aput-object v5, v4, v1

    const/4 v1, 0x3

    const-string v5, "ItemText"

    aput-object v5, v4, v1

    const/4 v1, 0x4

    const-string v5, "ItemImage3"

    aput-object v5, v4, v1

    .line 105
    const/4 v1, 0x5

    new-array v5, v1, [I

    fill-array-data v5, :array_0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 100
    iput-object v0, p0, Lcom/cymobile/ymwork/act/MainActivity;->footerListItemAdapter:Landroid/widget/SimpleAdapter;

    .line 107
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainActivity;->footerListItemAdapter:Landroid/widget/SimpleAdapter;

    new-instance v1, Lcom/cymobile/ymwork/act/MainActivity$4;

    invoke-direct {v1, p0}, Lcom/cymobile/ymwork/act/MainActivity$4;-><init>(Lcom/cymobile/ymwork/act/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SimpleAdapter;->setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V

    .line 126
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainActivity;->footerList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainActivity;->footerListItemAdapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 129
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainActivity;->footerList:Landroid/widget/ListView;

    new-instance v1, Lcom/cymobile/ymwork/act/MainActivity$5;

    invoke-direct {v1, p0}, Lcom/cymobile/ymwork/act/MainActivity$5;-><init>(Lcom/cymobile/ymwork/act/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 161
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainActivity;->footerList:Landroid/widget/ListView;

    invoke-static {v0}, Lcom/cymobile/ymwork/act/MainActivity;->setListViewHeightBasedOnChildren(Landroid/widget/ListView;)V

    .line 162
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainActivity;->footerListItemAdapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    .line 163
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainActivity;->footerList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidate()V

    .line 165
    const v0, 0x7f08001b

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cymobile/ymwork/act/MainActivity;->shopClass1:Landroid/widget/Button;

    .line 166
    const v0, 0x7f08001c

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cymobile/ymwork/act/MainActivity;->shopClass2:Landroid/widget/Button;

    .line 167
    const v0, 0x7f08001d

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cymobile/ymwork/act/MainActivity;->shopClass3:Landroid/widget/Button;

    .line 168
    const v0, 0x7f08001e

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cymobile/ymwork/act/MainActivity;->shopClass4:Landroid/widget/Button;

    .line 169
    const v0, 0x7f08001f

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cymobile/ymwork/act/MainActivity;->shopClass5:Landroid/widget/Button;

    .line 170
    const v0, 0x7f080020

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cymobile/ymwork/act/MainActivity;->shopClass6:Landroid/widget/Button;

    .line 171
    const v0, 0x7f080021

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cymobile/ymwork/act/MainActivity;->shopClass7:Landroid/widget/Button;

    .line 172
    const v0, 0x7f080022

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cymobile/ymwork/act/MainActivity;->shopClass8:Landroid/widget/Button;

    .line 173
    const v0, 0x7f080023

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cymobile/ymwork/act/MainActivity;->shopClass9:Landroid/widget/Button;

    .line 174
    const v0, 0x7f080084

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cymobile/ymwork/act/MainActivity;->shopClass10:Landroid/widget/Button;

    .line 175
    const v0, 0x7f080079

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cymobile/ymwork/act/MainActivity;->shopClassextra18:Landroid/widget/Button;

    .line 177
    new-instance v12, Landroid/content/Intent;

    const-class v0, Lcom/cymobile/ymwork/act/NearbySearchActivity;

    invoke-direct {v12, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 179
    .local v12, shopListIntent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainActivity;->shopClass1:Landroid/widget/Button;

    new-instance v1, Lcom/cymobile/ymwork/act/MainActivity$6;

    invoke-direct {v1, p0, v12}, Lcom/cymobile/ymwork/act/MainActivity$6;-><init>(Lcom/cymobile/ymwork/act/MainActivity;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainActivity;->shopClass2:Landroid/widget/Button;

    new-instance v1, Lcom/cymobile/ymwork/act/MainActivity$7;

    invoke-direct {v1, p0, v12}, Lcom/cymobile/ymwork/act/MainActivity$7;-><init>(Lcom/cymobile/ymwork/act/MainActivity;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainActivity;->shopClass3:Landroid/widget/Button;

    new-instance v1, Lcom/cymobile/ymwork/act/MainActivity$8;

    invoke-direct {v1, p0, v12}, Lcom/cymobile/ymwork/act/MainActivity$8;-><init>(Lcom/cymobile/ymwork/act/MainActivity;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainActivity;->shopClass4:Landroid/widget/Button;

    new-instance v1, Lcom/cymobile/ymwork/act/MainActivity$9;

    invoke-direct {v1, p0}, Lcom/cymobile/ymwork/act/MainActivity$9;-><init>(Lcom/cymobile/ymwork/act/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainActivity;->shopClass5:Landroid/widget/Button;

    new-instance v1, Lcom/cymobile/ymwork/act/MainActivity$10;

    invoke-direct {v1, p0}, Lcom/cymobile/ymwork/act/MainActivity$10;-><init>(Lcom/cymobile/ymwork/act/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainActivity;->shopClass6:Landroid/widget/Button;

    new-instance v1, Lcom/cymobile/ymwork/act/MainActivity$11;

    invoke-direct {v1, p0}, Lcom/cymobile/ymwork/act/MainActivity$11;-><init>(Lcom/cymobile/ymwork/act/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainActivity;->shopClass7:Landroid/widget/Button;

    new-instance v1, Lcom/cymobile/ymwork/act/MainActivity$12;

    invoke-direct {v1, p0}, Lcom/cymobile/ymwork/act/MainActivity$12;-><init>(Lcom/cymobile/ymwork/act/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainActivity;->shopClass8:Landroid/widget/Button;

    new-instance v1, Lcom/cymobile/ymwork/act/MainActivity$13;

    invoke-direct {v1, p0}, Lcom/cymobile/ymwork/act/MainActivity$13;-><init>(Lcom/cymobile/ymwork/act/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainActivity;->shopClass9:Landroid/widget/Button;

    new-instance v1, Lcom/cymobile/ymwork/act/MainActivity$14;

    invoke-direct {v1, p0}, Lcom/cymobile/ymwork/act/MainActivity$14;-><init>(Lcom/cymobile/ymwork/act/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainActivity;->shopClass10:Landroid/widget/Button;

    new-instance v1, Lcom/cymobile/ymwork/act/MainActivity$15;

    invoke-direct {v1, p0}, Lcom/cymobile/ymwork/act/MainActivity$15;-><init>(Lcom/cymobile/ymwork/act/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainActivity;->shopClassextra18:Landroid/widget/Button;

    new-instance v1, Lcom/cymobile/ymwork/act/MainActivity$16;

    invoke-direct {v1, p0}, Lcom/cymobile/ymwork/act/MainActivity$16;-><init>(Lcom/cymobile/ymwork/act/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    const-string v0, "com.cymobile.ym"

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/MainActivity;->isPackageExists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    const v0, 0x7f080070

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 257
    .local v11, projectswitcher:Landroid/widget/LinearLayout;
    const/16 v0, 0x8

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 260
    .end local v11           #projectswitcher:Landroid/widget/LinearLayout;
    :cond_0
    const v0, 0x7f080077

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 261
    .local v6, extra18line:Landroid/widget/LinearLayout;
    const v0, 0x7f080078

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 262
    .local v7, extra18zone:Landroid/widget/LinearLayout;
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "key_GlobalZoneId"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 263
    .local v13, userZoneId:Ljava/lang/String;
    if-eqz v13, :cond_1

    const-string v0, "110105202"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 265
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 266
    const/16 v0, 0x8

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 269
    :cond_2
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainActivity;->mLoggedOutReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    .line 270
    const-string v2, "com.cymobile.ymwork.intent.action.LOGGED_OUT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p0, v0, v1}, Lcom/cymobile/ymwork/act/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 271
    return-void

    .line 105
    :array_0
    .array-data 0x4
        0x69t 0x0t 0x8t 0x7ft
        0x68t 0x0t 0x8t 0x7ft
        0x6bt 0x0t 0x8t 0x7ft
        0x6ct 0x0t 0x8t 0x7ft
        0x6at 0x0t 0x8t 0x7ft
    .end array-data
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 322
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 324
    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/cymobile/ymwork/act/MainActivity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    .line 328
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainActivity;->shopClass4:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainActivity;->shopClass5:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainActivity;->shopClass6:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainActivity;->shopClass7:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 332
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainActivity;->shopClass8:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainActivity;->shopClass9:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainActivity;->shopClass10:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainActivity;->shopClassextra18:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/cymobile/ymwork/act/MainActivity;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 338
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainActivity;->mNumberReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainActivity;->mLoggedOutReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 347
    :goto_1
    return-void

    .line 339
    :catch_0
    move-exception v0

    .line 340
    .local v0, ee:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 344
    .end local v0           #ee:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 345
    .restart local v0       #ee:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 287
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 288
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainActivity;->homeApplication:Lcom/cymobile/ymwork/HomeApplication;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/HomeApplication;->haveId()Z

    move-result v1

    if-nez v1, :cond_0

    .line 289
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainActivity;->getParent()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/cymobile/ymwork/HomeApplication;->redirectToLoginActivityAndNoBack(Landroid/app/Activity;)V

    .line 290
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainActivity;->finish()V

    .line 293
    :cond_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainActivity;->mNumberReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    .line 294
    const-string v3, "com.cymobile.ymwork.intent.action.CASE_NUMBER_UPDATED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 293
    invoke-virtual {p0, v1, v2}, Lcom/cymobile/ymwork/act/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 295
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cymobile/ymwork/SystemService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 296
    .local v0, serviceIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 297
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/cymobile/ymwork/act/MainActivity;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 298
    sget-object v1, Lcom/cymobile/ymwork/act/MainActivity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainActivity;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 299
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainActivity;->handler:Landroid/os/Handler;

    const/16 v2, 0x11

    const-wide/16 v3, 0xa

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 301
    :cond_1
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/MainActivity;->readNumberFromService()V

    .line 302
    return-void
.end method

.method public resetCaseNumber()V
    .locals 44

    .prologue
    .line 475
    sget-object v40, Lcom/cymobile/ymwork/act/MainActivity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    if-eqz v40, :cond_3

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/MainActivity;->footerListItem:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/ArrayList;->clear()V

    .line 478
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 479
    .local v2, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v40, "ItemImage"

    const v41, 0x7f0200b0

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    const-string v40, "ItemImage2"

    const v41, 0x7f0200ac

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    sget-object v40, Lcom/cymobile/ymwork/act/MainActivity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v41, 0x0

    invoke-virtual/range {v40 .. v41}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v40

    if-lez v40, :cond_0

    .line 482
    const-string v40, "ItemImage3"

    sget-object v41, Lcom/cymobile/ymwork/act/MainActivity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v42, 0x0

    invoke-virtual/range {v41 .. v42}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    :cond_0
    const-string v40, "ItemTitle"

    const v41, 0x7f090005

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/act/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    const-string v40, "ItemText"

    const v41, 0x7f090006

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/act/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/MainActivity;->footerListItem:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 488
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 489
    .local v3, map1:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v40, "ItemImage"

    const v41, 0x7f0200b0

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    const-string v40, "ItemImage2"

    const v41, 0x7f0200ad

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    sget-object v40, Lcom/cymobile/ymwork/act/MainActivity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v41, 0x1

    invoke-virtual/range {v40 .. v41}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v40

    if-lez v40, :cond_1

    .line 492
    const-string v40, "ItemImage3"

    sget-object v41, Lcom/cymobile/ymwork/act/MainActivity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v42, 0x1

    invoke-virtual/range {v41 .. v42}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    :cond_1
    const-string v40, "ItemTitle"

    const v41, 0x7f090008

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/act/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    const-string v40, "ItemText"

    const v41, 0x7f09000a

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/act/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/MainActivity;->footerListItem:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 498
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 499
    .local v4, map2:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v40, "ItemImage"

    const v41, 0x7f0200b0

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    const-string v40, "ItemImage2"

    const v41, 0x7f0200ae

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    const-string v40, "MainActivity"

    new-instance v41, Ljava/lang/StringBuilder;

    const-string v42, "numbers.getClass2Number() "

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v42, Lcom/cymobile/ymwork/act/MainActivity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v43, 0x2

    invoke-virtual/range {v42 .. v43}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    sget-object v40, Lcom/cymobile/ymwork/act/MainActivity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v41, 0x2

    invoke-virtual/range {v40 .. v41}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v40

    if-lez v40, :cond_2

    .line 503
    const-string v40, "ItemImage3"

    sget-object v41, Lcom/cymobile/ymwork/act/MainActivity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v42, 0x2

    invoke-virtual/range {v41 .. v42}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    :cond_2
    const-string v40, "ItemTitle"

    const v41, 0x7f09000b

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/act/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    const-string v40, "ItemText"

    const v41, 0x7f09000c

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/act/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/MainActivity;->footerListItem:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/MainActivity;->footerListItemAdapter:Landroid/widget/SimpleAdapter;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/MainActivity;->footerList:Landroid/widget/ListView;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/widget/ListView;->invalidate()V

    .line 521
    .end local v2           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3           #map1:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4           #map2:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    sget-object v40, Lcom/cymobile/ymwork/act/MainActivity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    if-eqz v40, :cond_c

    .line 522
    sget-object v40, Lcom/cymobile/ymwork/act/MainActivity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v41, 0x0

    invoke-virtual/range {v40 .. v41}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/MainActivity;->mPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    invoke-static/range {v41 .. v42}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getReadNumber(Landroid/content/SharedPreferences;I)I

    move-result v41

    sub-int v14, v40, v41

    .line 523
    .local v14, u0:I
    sget-object v40, Lcom/cymobile/ymwork/act/MainActivity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v41, 0x1

    invoke-virtual/range {v40 .. v41}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/MainActivity;->mPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v41, v0

    const/16 v42, 0x1

    invoke-static/range {v41 .. v42}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getReadNumber(Landroid/content/SharedPreferences;I)I

    move-result v41

    sub-int v15, v40, v41

    .line 524
    .local v15, u1:I
    sget-object v40, Lcom/cymobile/ymwork/act/MainActivity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v41, 0x2

    invoke-virtual/range {v40 .. v41}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/MainActivity;->mPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v41, v0

    const/16 v42, 0x2

    invoke-static/range {v41 .. v42}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getReadNumber(Landroid/content/SharedPreferences;I)I

    move-result v41

    sub-int v23, v40, v41

    .line 525
    .local v23, u2:I
    sget-object v40, Lcom/cymobile/ymwork/act/MainActivity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v41, 0x3

    invoke-virtual/range {v40 .. v41}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/MainActivity;->mPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v41, v0

    const/16 v42, 0x3

    invoke-static/range {v41 .. v42}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getReadNumber(Landroid/content/SharedPreferences;I)I

    move-result v41

    sub-int v24, v40, v41

    .line 526
    .local v24, u3:I
    sget-object v40, Lcom/cymobile/ymwork/act/MainActivity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v41, 0x4

    invoke-virtual/range {v40 .. v41}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/MainActivity;->mPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v41, v0

    const/16 v42, 0x4

    invoke-static/range {v41 .. v42}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getReadNumber(Landroid/content/SharedPreferences;I)I

    move-result v41

    sub-int v25, v40, v41

    .line 527
    .local v25, u4:I
    sget-object v40, Lcom/cymobile/ymwork/act/MainActivity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v41, 0x5

    invoke-virtual/range {v40 .. v41}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/MainActivity;->mPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v41, v0

    const/16 v42, 0x5

    invoke-static/range {v41 .. v42}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getReadNumber(Landroid/content/SharedPreferences;I)I

    move-result v41

    sub-int v26, v40, v41

    .line 528
    .local v26, u5:I
    sget-object v40, Lcom/cymobile/ymwork/act/MainActivity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v41, 0x6

    invoke-virtual/range {v40 .. v41}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/MainActivity;->mPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v41, v0

    const/16 v42, 0x6

    invoke-static/range {v41 .. v42}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getReadNumber(Landroid/content/SharedPreferences;I)I

    move-result v41

    sub-int v27, v40, v41

    .line 529
    .local v27, u6:I
    sget-object v40, Lcom/cymobile/ymwork/act/MainActivity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v41, 0x7

    invoke-virtual/range {v40 .. v41}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/MainActivity;->mPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v41, v0

    const/16 v42, 0x7

    invoke-static/range {v41 .. v42}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getReadNumber(Landroid/content/SharedPreferences;I)I

    move-result v41

    sub-int v28, v40, v41

    .line 530
    .local v28, u7:I
    sget-object v40, Lcom/cymobile/ymwork/act/MainActivity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v41, 0x8

    invoke-virtual/range {v40 .. v41}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/MainActivity;->mPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v41, v0

    const/16 v42, 0x8

    invoke-static/range {v41 .. v42}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getReadNumber(Landroid/content/SharedPreferences;I)I

    move-result v41

    sub-int v29, v40, v41

    .line 531
    .local v29, u8:I
    sget-object v40, Lcom/cymobile/ymwork/act/MainActivity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v41, 0x9

    invoke-virtual/range {v40 .. v41}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/MainActivity;->mPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v41, v0

    const/16 v42, 0x9

    invoke-static/range {v41 .. v42}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getReadNumber(Landroid/content/SharedPreferences;I)I

    move-result v41

    sub-int v30, v40, v41

    .line 532
    .local v30, u9:I
    sget-object v40, Lcom/cymobile/ymwork/act/MainActivity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v41, 0xa

    invoke-virtual/range {v40 .. v41}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/MainActivity;->mPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v41, v0

    const/16 v42, 0xa

    invoke-static/range {v41 .. v42}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getReadNumber(Landroid/content/SharedPreferences;I)I

    move-result v41

    sub-int v16, v40, v41

    .line 533
    .local v16, u10:I
    sget-object v40, Lcom/cymobile/ymwork/act/MainActivity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v41, 0xb

    invoke-virtual/range {v40 .. v41}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/MainActivity;->mPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v41, v0

    const/16 v42, 0xb

    invoke-static/range {v41 .. v42}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getReadNumber(Landroid/content/SharedPreferences;I)I

    move-result v41

    sub-int v17, v40, v41

    .line 534
    .local v17, u11:I
    sget-object v40, Lcom/cymobile/ymwork/act/MainActivity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v41, 0xc

    invoke-virtual/range {v40 .. v41}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/MainActivity;->mPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v41, v0

    const/16 v42, 0xc

    invoke-static/range {v41 .. v42}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getReadNumber(Landroid/content/SharedPreferences;I)I

    move-result v41

    sub-int v18, v40, v41

    .line 535
    .local v18, u12:I
    sget-object v40, Lcom/cymobile/ymwork/act/MainActivity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v41, 0xd

    invoke-virtual/range {v40 .. v41}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/MainActivity;->mPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v41, v0

    const/16 v42, 0xd

    invoke-static/range {v41 .. v42}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getReadNumber(Landroid/content/SharedPreferences;I)I

    move-result v41

    sub-int v19, v40, v41

    .line 536
    .local v19, u13:I
    sget-object v40, Lcom/cymobile/ymwork/act/MainActivity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v41, 0xe

    invoke-virtual/range {v40 .. v41}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/MainActivity;->mPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v41, v0

    const/16 v42, 0xe

    invoke-static/range {v41 .. v42}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getReadNumber(Landroid/content/SharedPreferences;I)I

    move-result v41

    sub-int v20, v40, v41

    .line 537
    .local v20, u14:I
    sget-object v40, Lcom/cymobile/ymwork/act/MainActivity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v41, 0xf

    invoke-virtual/range {v40 .. v41}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/MainActivity;->mPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v41, v0

    const/16 v42, 0xf

    invoke-static/range {v41 .. v42}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getReadNumber(Landroid/content/SharedPreferences;I)I

    move-result v41

    sub-int v21, v40, v41

    .line 538
    .local v21, u15:I
    sget-object v40, Lcom/cymobile/ymwork/act/MainActivity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v41, 0x10

    invoke-virtual/range {v40 .. v41}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/MainActivity;->mPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v41, v0

    const/16 v42, 0x10

    invoke-static/range {v41 .. v42}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getReadNumber(Landroid/content/SharedPreferences;I)I

    move-result v41

    sub-int v22, v40, v41

    .line 540
    .local v22, u16:I
    const v40, 0x7f080062

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/act/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 541
    .local v5, readbtnclass0:Landroid/widget/Button;
    const v40, 0x7f080064

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/act/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 542
    .local v6, readbtnclass1:Landroid/widget/Button;
    const v40, 0x7f080066

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/act/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 543
    .local v9, readbtnclass2:Landroid/widget/Button;
    const v40, 0x7f080071

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/act/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    .line 544
    .local v10, readbtnclass3:Landroid/widget/Button;
    const v40, 0x7f080073

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/act/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    .line 545
    .local v11, readbtnclass4:Landroid/widget/Button;
    const v40, 0x7f080075

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/act/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    .line 546
    .local v12, readbtnclass5:Landroid/widget/Button;
    const v40, 0x7f080082

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/act/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Button;

    .line 547
    .local v13, readbtnclass8:Landroid/widget/Button;
    const v40, 0x7f080085

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/act/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 548
    .local v7, readbtnclass10:Landroid/widget/Button;
    const v40, 0x7f08007a

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/act/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 550
    .local v8, readbtnclass18:Landroid/widget/Button;
    const v40, 0x7f080063

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/act/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/Button;

    .line 551
    .local v31, unreadbtnclass0:Landroid/widget/Button;
    const v40, 0x7f080065

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/act/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/Button;

    .line 552
    .local v32, unreadbtnclass1:Landroid/widget/Button;
    const v40, 0x7f080067

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/act/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v35

    check-cast v35, Landroid/widget/Button;

    .line 553
    .local v35, unreadbtnclass2:Landroid/widget/Button;
    const v40, 0x7f080072

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/act/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v36

    check-cast v36, Landroid/widget/Button;

    .line 554
    .local v36, unreadbtnclass3:Landroid/widget/Button;
    const v40, 0x7f080074

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/act/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/Button;

    .line 555
    .local v37, unreadbtnclass4:Landroid/widget/Button;
    const v40, 0x7f080076

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/act/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v38

    check-cast v38, Landroid/widget/Button;

    .line 556
    .local v38, unreadbtnclass5:Landroid/widget/Button;
    const v40, 0x7f080083

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/act/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v39

    check-cast v39, Landroid/widget/Button;

    .line 557
    .local v39, unreadbtnclass8:Landroid/widget/Button;
    const v40, 0x7f080086

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/act/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/Button;

    .line 558
    .local v33, unreadbtnclass10:Landroid/widget/Button;
    const v40, 0x7f08007b

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/act/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v34

    check-cast v34, Landroid/widget/Button;

    .line 560
    .local v34, unreadbtnclass18:Landroid/widget/Button;
    sget-object v40, Lcom/cymobile/ymwork/act/MainActivity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v41, 0x0

    invoke-virtual/range {v40 .. v41}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v40

    if-lez v40, :cond_e

    .line 561
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v41, Lcom/cymobile/ymwork/act/MainActivity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v42, 0x0

    invoke-virtual/range {v41 .. v42}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 562
    const v40, 0x7f020162

    move/from16 v0, v40

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 563
    const/16 v40, 0x0

    move/from16 v0, v40

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 564
    if-lez v14, :cond_d

    .line 565
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v40

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v31

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 566
    const v40, 0x7f020161

    move-object/from16 v0, v31

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 567
    const/16 v40, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 576
    :goto_0
    sget-object v40, Lcom/cymobile/ymwork/act/MainActivity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v41, 0x1

    invoke-virtual/range {v40 .. v41}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v40

    if-lez v40, :cond_10

    .line 577
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v41, Lcom/cymobile/ymwork/act/MainActivity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v42, 0x1

    invoke-virtual/range {v41 .. v42}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 578
    const v40, 0x7f020162

    move/from16 v0, v40

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 579
    const/16 v40, 0x0

    move/from16 v0, v40

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 580
    if-lez v15, :cond_f

    .line 581
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v40

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v32

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 582
    const v40, 0x7f020161

    move-object/from16 v0, v32

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 583
    const/16 v40, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 592
    :goto_1
    sget-object v40, Lcom/cymobile/ymwork/act/MainActivity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v41, 0x2

    invoke-virtual/range {v40 .. v41}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v40

    if-lez v40, :cond_12

    .line 593
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v41, Lcom/cymobile/ymwork/act/MainActivity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v42, 0x2

    invoke-virtual/range {v41 .. v42}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 594
    const v40, 0x7f020162

    move/from16 v0, v40

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 595
    const/16 v40, 0x0

    move/from16 v0, v40

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 596
    if-lez v23, :cond_11

    .line 597
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v40

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v35

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 598
    const v40, 0x7f020161

    move-object/from16 v0, v35

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 599
    const/16 v40, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 608
    :goto_2
    sget-object v40, Lcom/cymobile/ymwork/act/MainActivity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v41, 0x3

    invoke-virtual/range {v40 .. v41}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v40

    if-lez v40, :cond_14

    .line 609
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v41, Lcom/cymobile/ymwork/act/MainActivity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v42, 0x3

    invoke-virtual/range {v41 .. v42}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v10, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 610
    const v40, 0x7f020162

    move/from16 v0, v40

    invoke-virtual {v10, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 611
    const/16 v40, 0x0

    move/from16 v0, v40

    invoke-virtual {v10, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 612
    if-lez v24, :cond_13

    .line 613
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v40

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v36

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 614
    const v40, 0x7f020161

    move-object/from16 v0, v36

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 615
    const/16 v40, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 624
    :goto_3
    sget-object v40, Lcom/cymobile/ymwork/act/MainActivity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v41, 0x4

    invoke-virtual/range {v40 .. v41}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v40

    if-gtz v40, :cond_4

    sget-object v40, Lcom/cymobile/ymwork/act/MainActivity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v41, 0x6

    invoke-virtual/range {v40 .. v41}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v40

    if-gtz v40, :cond_4

    sget-object v40, Lcom/cymobile/ymwork/act/MainActivity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v41, 0x7

    invoke-virtual/range {v40 .. v41}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v40

    if-lez v40, :cond_16

    .line 625
    :cond_4
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v41, Lcom/cymobile/ymwork/act/MainActivity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v42, 0x4

    invoke-virtual/range {v41 .. v42}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v41

    sget-object v42, Lcom/cymobile/ymwork/act/MainActivity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v43, 0x6

    invoke-virtual/range {v42 .. v43}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v42

    add-int v41, v41, v42

    sget-object v42, Lcom/cymobile/ymwork/act/MainActivity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v43, 0x7

    invoke-virtual/range {v42 .. v43}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v42

    add-int v41, v41, v42

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v11, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 626
    const v40, 0x7f020162

    move/from16 v0, v40

    invoke-virtual {v11, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 627
    const/16 v40, 0x0

    move/from16 v0, v40

    invoke-virtual {v11, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 628
    if-gtz v25, :cond_5

    if-gtz v27, :cond_5

    if-lez v28, :cond_15

    .line 629
    :cond_5
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    add-int v41, v25, v27

    add-int v41, v41, v28

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v37

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 630
    const v40, 0x7f020161

    move-object/from16 v0, v37

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 631
    const/16 v40, 0x0

    move-object/from16 v0, v37

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 640
    :goto_4
    sget-object v40, Lcom/cymobile/ymwork/act/MainActivity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v41, 0x5

    invoke-virtual/range {v40 .. v41}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v40

    if-lez v40, :cond_18

    .line 641
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v41, Lcom/cymobile/ymwork/act/MainActivity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v42, 0x5

    invoke-virtual/range {v41 .. v42}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 642
    const v40, 0x7f020162

    move/from16 v0, v40

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 643
    const/16 v40, 0x0

    move/from16 v0, v40

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 644
    if-lez v26, :cond_17

    .line 645
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v40

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 646
    const v40, 0x7f020161

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 647
    const/16 v40, 0x0

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 655
    :goto_5
    sget-object v40, Lcom/cymobile/ymwork/act/MainActivity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v41, 0x0

    invoke-virtual/range {v40 .. v41}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v40

    if-gtz v40, :cond_6

    sget-object v40, Lcom/cymobile/ymwork/act/MainActivity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v41, 0x1

    invoke-virtual/range {v40 .. v41}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v40

    if-gtz v40, :cond_6

    sget-object v40, Lcom/cymobile/ymwork/act/MainActivity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v41, 0x3

    invoke-virtual/range {v40 .. v41}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v40

    if-lez v40, :cond_1a

    .line 656
    :cond_6
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v41, Lcom/cymobile/ymwork/act/MainActivity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v42, 0x0

    invoke-virtual/range {v41 .. v42}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v41

    sget-object v42, Lcom/cymobile/ymwork/act/MainActivity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v43, 0x1

    invoke-virtual/range {v42 .. v43}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v42

    add-int v41, v41, v42

    sget-object v42, Lcom/cymobile/ymwork/act/MainActivity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v43, 0x3

    invoke-virtual/range {v42 .. v43}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v42

    add-int v41, v41, v42

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v13, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 657
    const v40, 0x7f020162

    move/from16 v0, v40

    invoke-virtual {v13, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 658
    const/16 v40, 0x0

    move/from16 v0, v40

    invoke-virtual {v13, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 659
    if-gtz v14, :cond_7

    if-gtz v15, :cond_7

    if-lez v24, :cond_19

    .line 660
    :cond_7
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    add-int v41, v14, v15

    add-int v41, v41, v24

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 661
    const v40, 0x7f020161

    invoke-virtual/range {v39 .. v40}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 662
    const/16 v40, 0x0

    invoke-virtual/range {v39 .. v40}, Landroid/widget/Button;->setVisibility(I)V

    .line 670
    :goto_6
    sget-object v40, Lcom/cymobile/ymwork/act/MainActivity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v41, 0x4

    invoke-virtual/range {v40 .. v41}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v40

    if-gtz v40, :cond_8

    sget-object v40, Lcom/cymobile/ymwork/act/MainActivity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v41, 0x6

    invoke-virtual/range {v40 .. v41}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v40

    if-gtz v40, :cond_8

    sget-object v40, Lcom/cymobile/ymwork/act/MainActivity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v41, 0x7

    invoke-virtual/range {v40 .. v41}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v40

    if-lez v40, :cond_1c

    .line 671
    :cond_8
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v41, Lcom/cymobile/ymwork/act/MainActivity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v42, 0x4

    invoke-virtual/range {v41 .. v42}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v41

    sget-object v42, Lcom/cymobile/ymwork/act/MainActivity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v43, 0x6

    invoke-virtual/range {v42 .. v43}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v42

    add-int v41, v41, v42

    sget-object v42, Lcom/cymobile/ymwork/act/MainActivity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v43, 0x7

    invoke-virtual/range {v42 .. v43}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v42

    add-int v41, v41, v42

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 672
    const v40, 0x7f020162

    move/from16 v0, v40

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 673
    const/16 v40, 0x0

    move/from16 v0, v40

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 674
    if-gtz v25, :cond_9

    if-gtz v27, :cond_9

    if-lez v28, :cond_1b

    .line 675
    :cond_9
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    add-int v41, v25, v27

    add-int v41, v41, v28

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v33

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 676
    const v40, 0x7f020161

    move-object/from16 v0, v33

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 677
    const/16 v40, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 702
    :goto_7
    sget-object v40, Lcom/cymobile/ymwork/act/MainActivity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v41, 0x8

    invoke-virtual/range {v40 .. v41}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v40

    if-gtz v40, :cond_a

    sget-object v40, Lcom/cymobile/ymwork/act/MainActivity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v41, 0x9

    invoke-virtual/range {v40 .. v41}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v40

    if-gtz v40, :cond_a

    sget-object v40, Lcom/cymobile/ymwork/act/MainActivity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v41, 0xa

    invoke-virtual/range {v40 .. v41}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v40

    if-gtz v40, :cond_a

    sget-object v40, Lcom/cymobile/ymwork/act/MainActivity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v41, 0xb

    invoke-virtual/range {v40 .. v41}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v40

    if-gtz v40, :cond_a

    sget-object v40, Lcom/cymobile/ymwork/act/MainActivity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v41, 0xc

    invoke-virtual/range {v40 .. v41}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v40

    if-gtz v40, :cond_a

    .line 703
    sget-object v40, Lcom/cymobile/ymwork/act/MainActivity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v41, 0xd

    invoke-virtual/range {v40 .. v41}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v40

    if-gtz v40, :cond_a

    sget-object v40, Lcom/cymobile/ymwork/act/MainActivity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v41, 0xe

    invoke-virtual/range {v40 .. v41}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v40

    if-gtz v40, :cond_a

    sget-object v40, Lcom/cymobile/ymwork/act/MainActivity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v41, 0xf

    invoke-virtual/range {v40 .. v41}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v40

    if-lez v40, :cond_1e

    .line 704
    :cond_a
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v41, Lcom/cymobile/ymwork/act/MainActivity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v42, 0x8

    invoke-virtual/range {v41 .. v42}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v41

    sget-object v42, Lcom/cymobile/ymwork/act/MainActivity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v43, 0x9

    invoke-virtual/range {v42 .. v43}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v42

    add-int v41, v41, v42

    sget-object v42, Lcom/cymobile/ymwork/act/MainActivity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v43, 0xa

    invoke-virtual/range {v42 .. v43}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v42

    add-int v41, v41, v42

    sget-object v42, Lcom/cymobile/ymwork/act/MainActivity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v43, 0xb

    invoke-virtual/range {v42 .. v43}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v42

    add-int v41, v41, v42

    .line 705
    sget-object v42, Lcom/cymobile/ymwork/act/MainActivity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v43, 0xc

    invoke-virtual/range {v42 .. v43}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v42

    add-int v41, v41, v42

    sget-object v42, Lcom/cymobile/ymwork/act/MainActivity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v43, 0xd

    invoke-virtual/range {v42 .. v43}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v42

    add-int v41, v41, v42

    sget-object v42, Lcom/cymobile/ymwork/act/MainActivity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v43, 0xe

    invoke-virtual/range {v42 .. v43}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v42

    add-int v41, v41, v42

    sget-object v42, Lcom/cymobile/ymwork/act/MainActivity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v43, 0xf

    invoke-virtual/range {v42 .. v43}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v42

    add-int v41, v41, v42

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    .line 704
    move-object/from16 v0, v40

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 706
    const v40, 0x7f020162

    move/from16 v0, v40

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 707
    const/16 v40, 0x0

    move/from16 v0, v40

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 708
    if-gtz v29, :cond_b

    if-gtz v30, :cond_b

    if-gtz v16, :cond_b

    if-gtz v17, :cond_b

    if-gtz v18, :cond_b

    if-gtz v19, :cond_b

    if-gtz v20, :cond_b

    if-lez v21, :cond_1d

    .line 709
    :cond_b
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    add-int v41, v29, v30

    add-int v41, v41, v16

    add-int v41, v41, v17

    add-int v41, v41, v18

    add-int v41, v41, v19

    add-int v41, v41, v20

    add-int v41, v41, v21

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v34

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 710
    const v40, 0x7f020161

    move-object/from16 v0, v34

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 711
    const/16 v40, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 721
    .end local v5           #readbtnclass0:Landroid/widget/Button;
    .end local v6           #readbtnclass1:Landroid/widget/Button;
    .end local v7           #readbtnclass10:Landroid/widget/Button;
    .end local v8           #readbtnclass18:Landroid/widget/Button;
    .end local v9           #readbtnclass2:Landroid/widget/Button;
    .end local v10           #readbtnclass3:Landroid/widget/Button;
    .end local v11           #readbtnclass4:Landroid/widget/Button;
    .end local v12           #readbtnclass5:Landroid/widget/Button;
    .end local v13           #readbtnclass8:Landroid/widget/Button;
    .end local v14           #u0:I
    .end local v15           #u1:I
    .end local v16           #u10:I
    .end local v17           #u11:I
    .end local v18           #u12:I
    .end local v19           #u13:I
    .end local v20           #u14:I
    .end local v21           #u15:I
    .end local v22           #u16:I
    .end local v23           #u2:I
    .end local v24           #u3:I
    .end local v25           #u4:I
    .end local v26           #u5:I
    .end local v27           #u6:I
    .end local v28           #u7:I
    .end local v29           #u8:I
    .end local v30           #u9:I
    .end local v31           #unreadbtnclass0:Landroid/widget/Button;
    .end local v32           #unreadbtnclass1:Landroid/widget/Button;
    .end local v33           #unreadbtnclass10:Landroid/widget/Button;
    .end local v34           #unreadbtnclass18:Landroid/widget/Button;
    .end local v35           #unreadbtnclass2:Landroid/widget/Button;
    .end local v36           #unreadbtnclass3:Landroid/widget/Button;
    .end local v37           #unreadbtnclass4:Landroid/widget/Button;
    .end local v38           #unreadbtnclass5:Landroid/widget/Button;
    .end local v39           #unreadbtnclass8:Landroid/widget/Button;
    :cond_c
    :goto_8
    return-void

    .line 569
    .restart local v5       #readbtnclass0:Landroid/widget/Button;
    .restart local v6       #readbtnclass1:Landroid/widget/Button;
    .restart local v7       #readbtnclass10:Landroid/widget/Button;
    .restart local v8       #readbtnclass18:Landroid/widget/Button;
    .restart local v9       #readbtnclass2:Landroid/widget/Button;
    .restart local v10       #readbtnclass3:Landroid/widget/Button;
    .restart local v11       #readbtnclass4:Landroid/widget/Button;
    .restart local v12       #readbtnclass5:Landroid/widget/Button;
    .restart local v13       #readbtnclass8:Landroid/widget/Button;
    .restart local v14       #u0:I
    .restart local v15       #u1:I
    .restart local v16       #u10:I
    .restart local v17       #u11:I
    .restart local v18       #u12:I
    .restart local v19       #u13:I
    .restart local v20       #u14:I
    .restart local v21       #u15:I
    .restart local v22       #u16:I
    .restart local v23       #u2:I
    .restart local v24       #u3:I
    .restart local v25       #u4:I
    .restart local v26       #u5:I
    .restart local v27       #u6:I
    .restart local v28       #u7:I
    .restart local v29       #u8:I
    .restart local v30       #u9:I
    .restart local v31       #unreadbtnclass0:Landroid/widget/Button;
    .restart local v32       #unreadbtnclass1:Landroid/widget/Button;
    .restart local v33       #unreadbtnclass10:Landroid/widget/Button;
    .restart local v34       #unreadbtnclass18:Landroid/widget/Button;
    .restart local v35       #unreadbtnclass2:Landroid/widget/Button;
    .restart local v36       #unreadbtnclass3:Landroid/widget/Button;
    .restart local v37       #unreadbtnclass4:Landroid/widget/Button;
    .restart local v38       #unreadbtnclass5:Landroid/widget/Button;
    .restart local v39       #unreadbtnclass8:Landroid/widget/Button;
    :cond_d
    const/16 v40, 0x8

    move-object/from16 v0, v31

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 572
    :cond_e
    const/16 v40, 0x8

    move/from16 v0, v40

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 573
    const/16 v40, 0x8

    move-object/from16 v0, v31

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 585
    :cond_f
    const/16 v40, 0x8

    move-object/from16 v0, v32

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_1

    .line 588
    :cond_10
    const/16 v40, 0x8

    move/from16 v0, v40

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 589
    const/16 v40, 0x8

    move-object/from16 v0, v32

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_1

    .line 601
    :cond_11
    const/16 v40, 0x8

    move-object/from16 v0, v35

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_2

    .line 604
    :cond_12
    const/16 v40, 0x8

    move/from16 v0, v40

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 605
    const/16 v40, 0x8

    move-object/from16 v0, v35

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_2

    .line 617
    :cond_13
    const/16 v40, 0x8

    move-object/from16 v0, v36

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_3

    .line 620
    :cond_14
    const/16 v40, 0x8

    move/from16 v0, v40

    invoke-virtual {v10, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 621
    const/16 v40, 0x8

    move-object/from16 v0, v36

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_3

    .line 633
    :cond_15
    const/16 v40, 0x8

    move-object/from16 v0, v37

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_4

    .line 636
    :cond_16
    const/16 v40, 0x8

    move/from16 v0, v40

    invoke-virtual {v11, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 637
    const/16 v40, 0x8

    move-object/from16 v0, v37

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_4

    .line 649
    :cond_17
    const/16 v40, 0x8

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_5

    .line 652
    :cond_18
    const/16 v40, 0x8

    move/from16 v0, v40

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 653
    const/16 v40, 0x8

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_5

    .line 664
    :cond_19
    const/16 v40, 0x8

    invoke-virtual/range {v39 .. v40}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_6

    .line 667
    :cond_1a
    const/16 v40, 0x8

    move/from16 v0, v40

    invoke-virtual {v13, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 668
    const/16 v40, 0x8

    invoke-virtual/range {v39 .. v40}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_6

    .line 679
    :cond_1b
    const/16 v40, 0x8

    move-object/from16 v0, v33

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_7

    .line 682
    :cond_1c
    const/16 v40, 0x8

    move/from16 v0, v40

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 683
    const/16 v40, 0x8

    move-object/from16 v0, v33

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_7

    .line 713
    :cond_1d
    const/16 v40, 0x8

    move-object/from16 v0, v34

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_8

    .line 716
    :cond_1e
    const/16 v40, 0x8

    move/from16 v0, v40

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 717
    const/16 v40, 0x8

    move-object/from16 v0, v34

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_8
.end method
