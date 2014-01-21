.class public Lcom/tencent/open/OpenUi;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private a:Lcom/tencent/open/TContext;

.field private b:I

.field private c:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Lcom/tencent/open/TContext;)V
    .locals 1
    .parameter

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/16 v0, 0x1618

    iput v0, p0, Lcom/tencent/open/OpenUi;->b:I

    .line 94
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/open/OpenUi;->c:Landroid/util/SparseArray;

    .line 100
    iput-object p1, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    .line 101
    return-void
.end method

.method private a()I
    .locals 3

    .prologue
    .line 436
    .line 438
    :cond_0
    iget v0, p0, Lcom/tencent/open/OpenUi;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/open/OpenUi;->b:I

    .line 439
    iget v0, p0, Lcom/tencent/open/OpenUi;->b:I

    const/16 v1, 0x1a00

    if-ne v0, v1, :cond_1

    .line 440
    const/16 v0, 0x1618

    iput v0, p0, Lcom/tencent/open/OpenUi;->b:I

    .line 441
    :cond_1
    iget-object v0, p0, Lcom/tencent/open/OpenUi;->c:Landroid/util/SparseArray;

    iget v1, p0, Lcom/tencent/open/OpenUi;->b:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/open/k;

    .line 442
    iget-object v1, p0, Lcom/tencent/open/OpenUi;->c:Landroid/util/SparseArray;

    iget v2, p0, Lcom/tencent/open/OpenUi;->b:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 443
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/tencent/open/k;->a:Lcom/tencent/tauth/IUiListener;

    if-eqz v1, :cond_2

    .line 444
    iget-object v1, v0, Lcom/tencent/open/k;->a:Lcom/tencent/tauth/IUiListener;

    invoke-interface {v1}, Lcom/tencent/tauth/IUiListener;->onCancel()V

    .line 446
    :cond_2
    if-nez v0, :cond_0

    .line 447
    iget v0, p0, Lcom/tencent/open/OpenUi;->b:I

    return v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 373
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 375
    const-string v1, "action_avatar"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 376
    const-class v1, Lcom/tencent/plus/ImageActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 380
    :goto_0
    const-string v1, "key_request_code"

    invoke-direct {p0}, Lcom/tencent/open/OpenUi;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 382
    invoke-direct {p0, p1, v0}, Lcom/tencent/open/OpenUi;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 385
    :goto_1
    return-object v0

    .line 378
    :cond_0
    sget-object v1, Lcom/tencent/tauth/Constants;->PACKAGE_AGENT:Ljava/lang/String;

    const-string v2, "com.tencent.open.agent.AgentActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 385
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 481
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 483
    const-string v0, "action_login"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "action_pay"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    if-eqz v0, :cond_1

    .line 486
    const-string v0, "client_id"

    iget-object v2, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v2}, Lcom/tencent/open/TContext;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    const-string v0, "pf"

    const-string v2, "openmobile_android"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    const-string v0, "need_pay"

    const-string v2, "1"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    :cond_1
    :goto_0
    return-object v1

    .line 491
    :cond_2
    iget-object v0, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    if-eqz v0, :cond_1

    .line 492
    const-string v0, "oauth_consumer_key"

    iget-object v2, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v2}, Lcom/tencent/open/TContext;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    iget-object v0, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v0}, Lcom/tencent/open/TContext;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 495
    const-string v0, "access_token"

    iget-object v2, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v2}, Lcom/tencent/open/TContext;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    :cond_3
    iget-object v0, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v0}, Lcom/tencent/open/TContext;->c()Ljava/lang/String;

    move-result-object v0

    .line 499
    if-eqz v0, :cond_4

    .line 500
    const-string v2, "openid"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    :cond_4
    :try_start_0
    iget-object v0, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v0}, Lcom/tencent/open/TContext;->f()Landroid/content/Context;

    move-result-object v0

    const-string v2, "pfStore"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 508
    const-string v2, "pf"

    const-string v3, "openmobile_android"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 510
    const-string v2, "pf"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 511
    :catch_0
    move-exception v0

    .line 512
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 513
    const-string v0, "pf"

    const-string v2, "openmobile_android"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/open/OpenUi;)Lcom/tencent/open/TContext;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 398
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 400
    if-nez v1, :cond_0

    .line 404
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 522
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 525
    const-string v0, "action_story"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "shareurl"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 526
    const-string v0, "url"

    const-string v2, "shareurl"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    :cond_0
    const-string v0, "action_login"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 530
    iget-object v0, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    if-eqz v0, :cond_1

    .line 531
    const-string v0, "client_id"

    iget-object v2, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v2}, Lcom/tencent/open/TContext;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    :cond_1
    const-string v0, "pf"

    const-string v2, "openmobile_android"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    const-string v0, "need_pay"

    const-string v2, "1"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    :cond_2
    :goto_0
    return-object v1

    .line 534
    :cond_3
    const-string v0, "action_pay"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 535
    iget-object v0, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    if-eqz v0, :cond_2

    .line 536
    const-string v0, "oauth_consumer_key"

    iget-object v2, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v2}, Lcom/tencent/open/TContext;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    const-string v0, "pf"

    const-string v2, "openmobile_android"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    const-string v0, "need_pay"

    const-string v2, "1"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    iget-object v0, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v0}, Lcom/tencent/open/TContext;->c()Ljava/lang/String;

    move-result-object v0

    .line 541
    if-eqz v0, :cond_4

    .line 542
    const-string v2, "hopenid"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 544
    :cond_4
    const-string v0, "hopenid"

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 548
    :cond_5
    iget-object v0, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    if-eqz v0, :cond_7

    .line 549
    const-string v0, "appid"

    iget-object v2, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v2}, Lcom/tencent/open/TContext;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    iget-object v0, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v0}, Lcom/tencent/open/TContext;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 551
    const-string v0, "keystr"

    iget-object v2, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v2}, Lcom/tencent/open/TContext;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    const-string v0, "keytype"

    const-string v2, "0x80"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    :cond_6
    iget-object v0, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v0}, Lcom/tencent/open/TContext;->c()Ljava/lang/String;

    move-result-object v0

    .line 556
    if-eqz v0, :cond_7

    .line 557
    const-string v2, "hopenid"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    :cond_7
    const-string v0, "platform"

    const-string v2, "androidqz"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    :try_start_0
    iget-object v0, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v0}, Lcom/tencent/open/TContext;->f()Landroid/content/Context;

    move-result-object v0

    const-string v2, "pfStore"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 567
    const-string v2, "pf"

    const-string v3, "openmobile_android"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 568
    const-string v2, "pf"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 569
    :catch_0
    move-exception v0

    .line 570
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 571
    const-string v0, "pf"

    const-string v2, "openmobile_android"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private c(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 579
    const-string v0, "display"

    const-string v1, "mobile"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 581
    const-string v1, "action_login"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "action_pay"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 583
    :cond_0
    const-string v1, "response_type"

    const-string v2, "token"

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    const-string v1, "redirect_uri"

    invoke-static {}, Lcom/tencent/open/ServerSetting;->getInstance()Lcom/tencent/open/ServerSetting;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v3}, Lcom/tencent/open/TContext;->f()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/tencent/open/ServerSetting;->getSettingUrl(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    const-string v1, "cancel_display"

    const-string v2, "1"

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    const-string v1, "switch"

    const-string v2, "1"

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    const-string v1, "sdkp"

    const-string v2, "a"

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    const-string v1, "sdkv"

    const-string v2, "1.5"

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    const-string v1, "status_userip"

    invoke-static {}, Lcom/tencent/open/Util;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    const-string v1, "status_os"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    const-string v1, "status_version"

    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    const-string v1, "status_machine"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    invoke-static {}, Lcom/tencent/open/ServerSetting;->getInstance()Lcom/tencent/open/ServerSetting;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v2}, Lcom/tencent/open/TContext;->f()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/tencent/open/ServerSetting;->getSettingUrl(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    invoke-static {p2}, Lcom/tencent/open/Util;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 604
    :cond_2
    const-string v1, "action_story"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 608
    invoke-static {}, Lcom/tencent/open/ServerSetting;->getInstance()Lcom/tencent/open/ServerSetting;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v2}, Lcom/tencent/open/TContext;->f()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/tencent/open/ServerSetting;->getSettingUrl(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    const-string v1, "sdkv"

    const-string v2, "1.5"

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    invoke-static {p2}, Lcom/tencent/open/Util;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 612
    :cond_3
    const-string v1, "action_invite"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 616
    invoke-static {}, Lcom/tencent/open/ServerSetting;->getInstance()Lcom/tencent/open/ServerSetting;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v2}, Lcom/tencent/open/TContext;->f()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Lcom/tencent/open/ServerSetting;->getSettingUrl(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    const-string v1, "sdkv"

    const-string v2, "1.5"

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    invoke-static {p2}, Lcom/tencent/open/Util;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 620
    :cond_4
    const-string v1, "action_challenge"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "action_brag"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 622
    :cond_5
    invoke-static {}, Lcom/tencent/open/ServerSetting;->getInstance()Lcom/tencent/open/ServerSetting;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v2}, Lcom/tencent/open/TContext;->f()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v1, v2, v3}, Lcom/tencent/open/ServerSetting;->getSettingUrl(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    const-string v1, "sdkv"

    const-string v2, "1.5"

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    invoke-static {p2}, Lcom/tencent/open/Util;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 627
    :cond_6
    const-string v1, "action_ask"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 628
    invoke-static {}, Lcom/tencent/open/ServerSetting;->getInstance()Lcom/tencent/open/ServerSetting;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v2}, Lcom/tencent/open/TContext;->f()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Lcom/tencent/open/ServerSetting;->getSettingUrl(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    const-string v1, "sdkv"

    const-string v2, "1.5"

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    invoke-static {p2}, Lcom/tencent/open/Util;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 632
    :cond_7
    const-string v1, "action_gift"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 633
    invoke-static {}, Lcom/tencent/open/ServerSetting;->getInstance()Lcom/tencent/open/ServerSetting;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v2}, Lcom/tencent/open/TContext;->f()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x9

    invoke-virtual {v1, v2, v3}, Lcom/tencent/open/ServerSetting;->getSettingUrl(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    const-string v1, "sdkv"

    const-string v2, "1.5"

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    invoke-static {p2}, Lcom/tencent/open/Util;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method


# virtual methods
.method public a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)I
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 121
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/open/OpenUi;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;Z)I

    move-result v0

    return v0
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;Z)I
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 143
    const-string v0, "action_challenge"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "action_brag"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "action_ask"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "action_gift"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 147
    :cond_0
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/open/OpenUi;->b(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;Z)V

    .line 148
    const/4 v5, 0x2

    .line 179
    :cond_1
    :goto_0
    return v5

    .line 153
    :cond_2
    if-nez p5, :cond_3

    .line 159
    iget-object v0, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v0}, Lcom/tencent/open/TContext;->b()Ljava/lang/String;

    move-result-object v0

    .line 160
    iget-object v1, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v1}, Lcom/tencent/open/TContext;->c()Ljava/lang/String;

    move-result-object v1

    .line 161
    iget-object v2, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v2}, Lcom/tencent/open/TContext;->d()Ljava/lang/String;

    move-result-object v2

    .line 163
    const-string v3, "toddtest"

    const-string v4, "OpenUI showUi"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    const-string v0, "action_login"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 168
    const-string v2, "action_check_token"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/open/OpenUi;->b(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;Z)V

    .line 169
    const/4 v5, 0x3

    goto :goto_0

    .line 173
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tencent/open/OpenUi;->b(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 174
    if-eqz p5, :cond_1

    .line 175
    const-string v0, "10785"

    const-wide/16 v1, 0x0

    iget-object v3, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v3}, Lcom/tencent/open/TContext;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v0, v1, v2, v3}, Lcom/tencent/open/Util;->a(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_0

    .line 179
    :cond_4
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tencent/open/OpenUi;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)I

    move-result v5

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)I
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 461
    invoke-static {p1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 463
    invoke-direct {p0, p2, p3}, Lcom/tencent/open/OpenUi;->a(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 465
    invoke-direct {p0, p2, v0}, Lcom/tencent/open/OpenUi;->c(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 467
    const-string v0, "action_login"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 468
    new-instance v0, Lcom/tencent/open/b;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p4, v3, v2}, Lcom/tencent/open/b;-><init>(Lcom/tencent/open/OpenUi;Lcom/tencent/tauth/IUiListener;ZZ)V

    move-object p4, v0

    .line 472
    :cond_0
    :goto_0
    const-string v0, "action_challenge"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "action_brag"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 473
    :cond_1
    new-instance v0, Lcom/tencent/open/PKDialog;

    invoke-direct {v0, p1, v1, p4}, Lcom/tencent/open/PKDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)V

    invoke-virtual {v0}, Lcom/tencent/open/PKDialog;->show()V

    .line 477
    :goto_1
    const/4 v0, 0x2

    return v0

    .line 469
    :cond_2
    const-string v0, "action_pay"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    new-instance v0, Lcom/tencent/open/b;

    invoke-direct {v0, p0, p4, v3, v3}, Lcom/tencent/open/b;-><init>(Lcom/tencent/open/OpenUi;Lcom/tencent/tauth/IUiListener;ZZ)V

    move-object p4, v0

    goto :goto_0

    .line 475
    :cond_3
    new-instance v0, Lcom/tencent/open/TDialog;

    invoke-direct {v0, p1, v1, p4}, Lcom/tencent/open/TDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)V

    invoke-virtual {v0}, Lcom/tencent/open/TDialog;->show()V

    goto :goto_1
.end method

.method public a(IILandroid/content/Intent;)Z
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 338
    const/16 v0, 0x1618

    if-lt p1, v0, :cond_3

    const/16 v0, 0x1a00

    if-gt p1, v0, :cond_3

    .line 340
    iget-object v0, p0, Lcom/tencent/open/OpenUi;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/open/k;

    .line 341
    iget-object v2, p0, Lcom/tencent/open/OpenUi;->c:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 342
    if-eqz v0, :cond_3

    iget-object v2, v0, Lcom/tencent/open/k;->a:Lcom/tencent/tauth/IUiListener;

    if-eqz v2, :cond_3

    .line 343
    const/4 v2, -0x1

    if-ne p2, v2, :cond_2

    .line 344
    const-string v2, "key_error_code"

    invoke-virtual {p3, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 345
    if-nez v1, :cond_1

    .line 346
    const-string v1, "key_response"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 349
    :try_start_0
    iget-object v2, v0, Lcom/tencent/open/k;->a:Lcom/tencent/tauth/IUiListener;

    invoke-static {v1}, Lcom/tencent/open/Util;->d(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/tencent/tauth/IUiListener;->onComplete(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 368
    :goto_1
    return v0

    .line 350
    :catch_0
    move-exception v2

    .line 351
    iget-object v0, v0, Lcom/tencent/open/k;->a:Lcom/tencent/tauth/IUiListener;

    new-instance v2, Lcom/tencent/tauth/UiError;

    const/4 v3, -0x4

    const-string v4, "\u670d\u52a1\u5668\u8fd4\u56de\u6570\u636e\u683c\u5f0f\u6709\u8bef!"

    invoke-direct {v2, v3, v4, v1}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    goto :goto_0

    .line 356
    :cond_1
    const-string v2, "key_error_msg"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 358
    const-string v3, "key_error_detail"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 360
    iget-object v0, v0, Lcom/tencent/open/k;->a:Lcom/tencent/tauth/IUiListener;

    new-instance v4, Lcom/tencent/tauth/UiError;

    invoke-direct {v4, v1, v2, v3}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    goto :goto_0

    .line 362
    :cond_2
    if-nez p2, :cond_0

    .line 363
    iget-object v0, v0, Lcom/tencent/open/k;->a:Lcom/tencent/tauth/IUiListener;

    invoke-interface {v0}, Lcom/tencent/tauth/IUiListener;->onCancel()V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 368
    goto :goto_1
.end method

.method public b(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;Z)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 194
    const-string v0, "toddtest"

    const-string v1, "OpenUI getEncryToken"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 197
    sget-object v0, Lcom/tencent/tauth/Constants;->PACKAGE_AGENT:Ljava/lang/String;

    const-string v1, "com.tencent.open.agent.EncryTokenActivity"

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    const-string v0, "key_request_code"

    invoke-direct {p0}, Lcom/tencent/open/OpenUi;->a()I

    move-result v1

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 199
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 200
    sget-object v0, Lcom/tencent/tauth/Constants;->PACKAGE_AGENT:Ljava/lang/String;

    const-string v1, "com.tencent.open.agent.AgentActivity"

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    new-instance v0, Lcom/tencent/open/a;

    iget-object v1, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v1}, Lcom/tencent/open/TContext;->d()Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v1}, Lcom/tencent/open/TContext;->c()Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v1}, Lcom/tencent/open/TContext;->b()Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/tencent/open/a;-><init>(Lcom/tencent/open/OpenUi;Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v1, "qzone3.4"

    .line 206
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, v9}, Lcom/tencent/open/OpenUi;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    const-string v1, "qzone3.5_up"

    .line 220
    :goto_0
    const-string v2, "qzone3.5_up"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 221
    const-string v2, "toddtest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OpenUI checkToken qzone exist, version = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const-string v1, "key_action"

    const-string v2, "action_check_token"

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    const-string v1, "oauth_consumer_key"

    iget-object v2, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v2}, Lcom/tencent/open/TContext;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    const-string v1, "openid"

    iget-object v2, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v2}, Lcom/tencent/open/TContext;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    const-string v1, "access_token"

    iget-object v2, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v2}, Lcom/tencent/open/TContext;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    invoke-direct {p0}, Lcom/tencent/open/OpenUi;->a()I

    move-result v1

    .line 227
    invoke-virtual {p1, v9, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 228
    iget-object v2, p0, Lcom/tencent/open/OpenUi;->c:Landroid/util/SparseArray;

    new-instance v3, Lcom/tencent/open/k;

    const-string v4, "action_check_token"

    invoke-direct {v3, p1, v4, p3, v0}, Lcom/tencent/open/k;-><init>(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 295
    :goto_1
    return-void

    .line 210
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, v10}, Lcom/tencent/open/OpenUi;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 212
    const-string v1, "qzone3.4"

    goto :goto_0

    .line 216
    :cond_1
    const-string v1, "qzone3.3_below"

    goto :goto_0

    .line 234
    :cond_2
    const-string v2, "qzone3.4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 235
    const-string v1, "tencent&sdk&qazxc***14969%%"

    .line 236
    iget-object v2, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v2}, Lcom/tencent/open/TContext;->b()Ljava/lang/String;

    move-result-object v2

    .line 237
    iget-object v3, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v3}, Lcom/tencent/open/TContext;->d()Ljava/lang/String;

    move-result-object v3

    .line 238
    iget-object v4, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v4}, Lcom/tencent/open/TContext;->c()Ljava/lang/String;

    move-result-object v4

    .line 239
    const-string v5, "qzone3.4"

    .line 240
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 242
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/open/Util;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 243
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 245
    :try_start_0
    const-string v3, "encry_token"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :goto_2
    invoke-interface {v0, v2}, Lcom/tencent/tauth/IUiListener;->onComplete(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 246
    :catch_0
    move-exception v1

    .line 247
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 252
    :cond_3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 254
    :try_start_1
    const-string v1, "encry_token"

    const-string v3, ""

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 258
    :goto_3
    invoke-interface {v0, v2}, Lcom/tencent/tauth/IUiListener;->onComplete(Lorg/json/JSONObject;)V

    goto/16 :goto_1

    .line 255
    :catch_1
    move-exception v1

    .line 256
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    .line 266
    :cond_4
    if-nez p5, :cond_5

    .line 267
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 269
    :try_start_2
    const-string v1, "encry_token"

    const-string v3, ""

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 273
    :goto_4
    invoke-interface {v0, v2}, Lcom/tencent/tauth/IUiListener;->onComplete(Lorg/json/JSONObject;)V

    goto/16 :goto_1

    .line 270
    :catch_2
    move-exception v1

    .line 271
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_4

    .line 278
    :cond_5
    new-instance v5, Landroid/webkit/WebView;

    invoke-direct {v5, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 279
    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 280
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 281
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 282
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 283
    const-string v2, "databases"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/app/Activity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 285
    new-instance v1, Lcom/tencent/open/m;

    iget-object v2, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v2}, Lcom/tencent/open/TContext;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v3}, Lcom/tencent/open/TContext;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/tencent/open/m;-><init>(Lcom/tencent/open/OpenUi;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 287
    new-instance v1, Lcom/tencent/open/n;

    invoke-direct {v1, p0, v0}, Lcom/tencent/open/n;-><init>(Lcom/tencent/open/OpenUi;Lcom/tencent/tauth/IUiListener;)V

    invoke-virtual {v5, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 288
    const-string v2, "<!DOCTYPE HTML><html lang=\"en-US\"><head><meta charset=\"UTF-8\"><title>localStorage Test</title><script type=\"text/javascript\">document.domain = \'qq.com\';</script></head><body></body></html>"

    .line 289
    invoke-static {}, Lcom/tencent/open/ServerSetting;->getInstance()Lcom/tencent/open/ServerSetting;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v1}, Lcom/tencent/open/TContext;->f()Landroid/content/Context;

    move-result-object v1

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v3}, Lcom/tencent/open/ServerSetting;->getSettingUrl(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 291
    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v0, v5

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public b(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)Z
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 299
    invoke-direct {p0, p2, p3}, Lcom/tencent/open/OpenUi;->b(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 301
    invoke-direct {p0, p1, p2}, Lcom/tencent/open/OpenUi;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 303
    if-eqz v3, :cond_2

    .line 304
    const-string v4, "key_action"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    const-string v4, "key_params"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 307
    :try_start_0
    const-string v2, "key_request_code"

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 308
    invoke-virtual {p1, v3, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 310
    const-string v2, "action_login"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 311
    new-instance v2, Lcom/tencent/open/b;

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, p0, p4, v3, v5}, Lcom/tencent/open/b;-><init>(Lcom/tencent/open/OpenUi;Lcom/tencent/tauth/IUiListener;ZZ)V

    move-object p4, v2

    .line 315
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/tencent/open/OpenUi;->c:Landroid/util/SparseArray;

    new-instance v3, Lcom/tencent/open/k;

    invoke-direct {v3, p1, p2, p3, p4}, Lcom/tencent/open/k;-><init>(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 323
    :goto_1
    return v0

    .line 312
    :cond_1
    const-string v2, "action_pay"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 313
    new-instance v2, Lcom/tencent/open/b;

    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-direct {v2, p0, p4, v3, v5}, Lcom/tencent/open/b;-><init>(Lcom/tencent/open/OpenUi;Lcom/tencent/tauth/IUiListener;ZZ)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p4, v2

    goto :goto_0

    .line 318
    :catch_0
    move-exception v0

    move v0, v1

    .line 319
    goto :goto_1

    :cond_2
    move v0, v1

    .line 323
    goto :goto_1
.end method
