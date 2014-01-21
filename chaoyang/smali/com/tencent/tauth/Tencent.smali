.class public Lcom/tencent/tauth/Tencent;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private mOpenApi:Lcom/tencent/open/OpenApi;

.field private mOpenUi:Lcom/tencent/open/OpenUi;

.field private mTContext:Lcom/tencent/open/TContext;


# direct methods
.method private constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lcom/tencent/open/TContext;

    invoke-direct {v0, p1, p2}, Lcom/tencent/open/TContext;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/tauth/Tencent;->mTContext:Lcom/tencent/open/TContext;

    .line 51
    new-instance v0, Lcom/tencent/open/OpenApi;

    iget-object v1, p0, Lcom/tencent/tauth/Tencent;->mTContext:Lcom/tencent/open/TContext;

    invoke-direct {v0, v1}, Lcom/tencent/open/OpenApi;-><init>(Lcom/tencent/open/TContext;)V

    iput-object v0, p0, Lcom/tencent/tauth/Tencent;->mOpenApi:Lcom/tencent/open/OpenApi;

    .line 52
    new-instance v0, Lcom/tencent/open/OpenUi;

    iget-object v1, p0, Lcom/tencent/tauth/Tencent;->mTContext:Lcom/tencent/open/TContext;

    invoke-direct {v0, v1}, Lcom/tencent/open/OpenUi;-><init>(Lcom/tencent/open/TContext;)V

    iput-object v0, p0, Lcom/tencent/tauth/Tencent;->mOpenUi:Lcom/tencent/open/OpenUi;

    .line 56
    iget-object v0, p0, Lcom/tencent/tauth/Tencent;->mTContext:Lcom/tencent/open/TContext;

    invoke-static {v0, p1}, Lcom/tencent/open/TencentStat;->a(Lcom/tencent/open/TContext;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public static createInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/tauth/Tencent;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 70
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.tencent.tauth.AuthActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 74
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    new-instance v0, Lcom/tencent/tauth/Tencent;

    invoke-direct {v0, p0, p1}, Lcom/tencent/tauth/Tencent;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    :goto_0
    return-object v0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6ca1\u6709\u5728AndroidManifest.xml\u4e2d\u68c0\u6d4b\u5230com.tencent.tauth.AuthActivity,\u8bf7\u52a0\u4e0acom.tencent.open.AuthActivity,\u5e76\u914d\u7f6e<data android:scheme=\"tencent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" />,\u8be6\u7ec6\u4fe1\u606f\u8bf7\u67e5\u770b\u5b98\u7f51\u6587\u6863."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\u914d\u7f6e\u793a\u4f8b\u5982\u4e0b: \n<activity\n     android:name=\"com.tencent.tauth.AuthActivity\"\n     android:noHistory=\"true\"\n     android:launchMode=\"singleTask\">\n<intent-filter>\n    <action android:name=\"android.intent.action.VIEW\" />\n     <category android:name=\"android.intent.category.DEFAULT\" />\n    <category android:name=\"android.intent.category.BROWSABLE\" />\n    <data android:scheme=\"tencent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" />\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</intent-filter>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</activity>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    const-string v1, "Tencent"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private fillShareToQQParams(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/16 v6, 0x32

    const/16 v5, 0x28

    const/4 v4, 0x0

    .line 599
    const-string v0, "..."

    .line 600
    const-string v1, "action"

    const-string v2, "shareToQQ"

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    const-string v1, "appId"

    invoke-virtual {p0}, Lcom/tencent/tauth/Tencent;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    const-string v1, "sdkp"

    const-string v2, "a"

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    const-string v1, "sdkv"

    const-string v2, "1.5"

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    const-string v1, "status_os"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    const-string v1, "status_machine"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    const-string v1, "content"

    .line 609
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v5, :cond_0

    .line 610
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    :cond_0
    const-string v1, "summary"

    .line 613
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v6, :cond_1

    .line 614
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    :cond_1
    invoke-static {p2}, Lcom/tencent/open/Util;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 619
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\\+"

    const-string v3, "%20"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 620
    return-object v0
.end method


# virtual methods
.method public ask(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 312
    const-string v0, "type"

    const-string v1, "request"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/tencent/tauth/Tencent;->mOpenUi:Lcom/tencent/open/OpenUi;

    const-string v1, "action_ask"

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/tencent/open/OpenUi;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)I

    move-result v0

    return v0
.end method

.method public brag(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 404
    const-string v0, "type"

    const-string v1, "brag"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    iget-object v0, p0, Lcom/tencent/tauth/Tencent;->mOpenUi:Lcom/tencent/open/OpenUi;

    const-string v1, "action_brag"

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/tencent/open/OpenUi;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)I

    move-result v0

    return v0
.end method

.method public challenge(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 382
    const-string v0, "type"

    const-string v1, "pk"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Lcom/tencent/tauth/Tencent;->mOpenUi:Lcom/tencent/open/OpenUi;

    const-string v1, "action_challenge"

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/tencent/open/OpenUi;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)I

    move-result v0

    return v0
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/tencent/tauth/Tencent;->mTContext:Lcom/tencent/open/TContext;

    invoke-virtual {v0}, Lcom/tencent/open/TContext;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppFriends(Lcom/tencent/tauth/IRequestListener;)V
    .locals 1
    .parameter

    .prologue
    .line 415
    iget-object v0, p0, Lcom/tencent/tauth/Tencent;->mOpenApi:Lcom/tencent/open/OpenApi;

    invoke-virtual {v0, p1}, Lcom/tencent/open/OpenApi;->a(Lcom/tencent/tauth/IRequestListener;)V

    .line 416
    return-void
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/tencent/tauth/Tencent;->mTContext:Lcom/tencent/open/TContext;

    invoke-virtual {v0}, Lcom/tencent/open/TContext;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOpenId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/tencent/tauth/Tencent;->mTContext:Lcom/tencent/open/TContext;

    invoke-virtual {v0}, Lcom/tencent/open/TContext;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 500
    invoke-static {}, Lcom/tencent/open/OpenApi;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public gift(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 334
    const-string v0, "type"

    const-string v1, "freegift"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lcom/tencent/tauth/Tencent;->mOpenUi:Lcom/tencent/open/OpenUi;

    const-string v1, "action_gift"

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/tencent/open/OpenUi;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)I

    move-result v0

    return v0
.end method

.method public invite(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)I
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 266
    iget-object v0, p0, Lcom/tencent/tauth/Tencent;->mTContext:Lcom/tencent/open/TContext;

    const-string v1, "requireApi"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "invite"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/open/TencentStat;->a(Lcom/tencent/open/TContext;Ljava/lang/String;[Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/tencent/tauth/Tencent;->mOpenUi:Lcom/tencent/open/OpenUi;

    const-string v1, "action_invite"

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/tencent/open/OpenUi;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)I

    move-result v0

    return v0
.end method

.method public isSessionValid()Z
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/tencent/tauth/Tencent;->mTContext:Lcom/tencent/open/TContext;

    invoke-virtual {v0}, Lcom/tencent/open/TContext;->a()Z

    move-result v0

    return v0
.end method

.method public login(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 199
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 200
    const-string v1, "scope"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object v1, p0, Lcom/tencent/tauth/Tencent;->mOpenUi:Lcom/tencent/open/OpenUi;

    const-string v2, "action_login"

    invoke-virtual {v1, p1, v2, v0, p3}, Lcom/tencent/open/OpenUi;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)I

    move-result v0

    return v0
.end method

.method public logout(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 239
    invoke-static {p1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 244
    invoke-virtual {p0, v0, v0}, Lcom/tencent/tauth/Tencent;->setAccessToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-virtual {p0, v0}, Lcom/tencent/tauth/Tencent;->setOpenId(Ljava/lang/String;)V

    .line 246
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 491
    iget-object v0, p0, Lcom/tencent/tauth/Tencent;->mOpenUi:Lcom/tencent/open/OpenUi;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/open/OpenUi;->a(IILandroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public pay(Landroid/app/Activity;Lcom/tencent/tauth/IUiListener;)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 359
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 360
    const-string v1, "scope"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget-object v1, p0, Lcom/tencent/tauth/Tencent;->mOpenUi:Lcom/tencent/open/OpenUi;

    const-string v2, "action_pay"

    invoke-virtual {v1, p1, v2, v0, p2}, Lcom/tencent/open/OpenUi;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)I

    move-result v0

    return v0
.end method

.method public reAuth(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)I
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 224
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 225
    const-string v0, "scope"

    invoke-virtual {v3, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string v0, "isadd"

    const-string v1, "1"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/tencent/tauth/Tencent;->mOpenUi:Lcom/tencent/open/OpenUi;

    const-string v2, "action_login"

    const/4 v5, 0x1

    move-object v1, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/open/OpenUi;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;Z)I

    move-result v0

    return v0
.end method

.method public request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 446
    iget-object v0, p0, Lcom/tencent/tauth/Tencent;->mOpenApi:Lcom/tencent/open/OpenApi;

    iget-object v1, p0, Lcom/tencent/tauth/Tencent;->mTContext:Lcom/tencent/open/TContext;

    invoke-virtual {v1}, Lcom/tencent/open/TContext;->f()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/tencent/open/OpenApi;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public requestAsync(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IRequestListener;Ljava/lang/Object;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 466
    iget-object v0, p0, Lcom/tencent/tauth/Tencent;->mOpenApi:Lcom/tencent/open/OpenApi;

    iget-object v1, p0, Lcom/tencent/tauth/Tencent;->mTContext:Lcom/tencent/open/TContext;

    invoke-virtual {v1}, Lcom/tencent/open/TContext;->f()Landroid/content/Context;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/open/OpenApi;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IRequestListener;Ljava/lang/Object;)V

    .line 468
    return-void
.end method

.method public setAccessToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 139
    iget-object v0, p0, Lcom/tencent/tauth/Tencent;->mTContext:Lcom/tencent/open/TContext;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/open/TContext;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public setAvatar(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 516
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/tencent/tauth/Tencent;->setAvatar(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    .line 517
    return-void
.end method

.method public setAvatar(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 534
    const-string v0, "appid"

    iget-object v1, p0, Lcom/tencent/tauth/Tencent;->mTContext:Lcom/tencent/open/TContext;

    invoke-virtual {v1}, Lcom/tencent/open/TContext;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    const-string v0, "access_token"

    iget-object v1, p0, Lcom/tencent/tauth/Tencent;->mTContext:Lcom/tencent/open/TContext;

    invoke-virtual {v1}, Lcom/tencent/open/TContext;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    const-string v0, "expires_in"

    iget-object v1, p0, Lcom/tencent/tauth/Tencent;->mTContext:Lcom/tencent/open/TContext;

    invoke-virtual {v1}, Lcom/tencent/open/TContext;->e()J

    move-result-wide v1

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 537
    const-string v0, "openid"

    iget-object v1, p0, Lcom/tencent/tauth/Tencent;->mTContext:Lcom/tencent/open/TContext;

    invoke-virtual {v1}, Lcom/tencent/open/TContext;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    iget-object v0, p0, Lcom/tencent/tauth/Tencent;->mOpenUi:Lcom/tencent/open/OpenUi;

    const-string v1, "action_avatar"

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/tencent/open/OpenUi;->b(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)Z

    .line 540
    return-void
.end method

.method public setAvatar(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;II)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 561
    const-string v0, "exitAnim"

    invoke-virtual {p2, v0, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 563
    const/4 v0, 0x0

    invoke-virtual {p1, p4, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 565
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/tauth/Tencent;->setAvatar(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    .line 566
    return-void
.end method

.method public setEnvironment(Landroid/app/Activity;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 630
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    .line 631
    const-string v0, "TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5207\u6362\u73af\u5883\u53c2\u6570\u9519\u8bef\uff0c\u6b63\u5f0f\u73af\u5883\u4e3a0\uff0c\u4f53\u9a8c\u73af\u5883\u4e3a1, which="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    :goto_0
    return-void

    .line 634
    :cond_0
    invoke-static {}, Lcom/tencent/open/ServerSetting;->getInstance()Lcom/tencent/open/ServerSetting;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/tencent/open/ServerSetting;->setEnvironment(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public setOpenId(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 165
    iget-object v0, p0, Lcom/tencent/tauth/Tencent;->mTContext:Lcom/tencent/open/TContext;

    invoke-virtual {v0, p1}, Lcom/tencent/open/TContext;->a(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/tencent/tauth/Tencent;->mTContext:Lcom/tencent/open/TContext;

    invoke-static {v0, p1}, Lcom/tencent/open/TencentStat;->b(Lcom/tencent/open/TContext;Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method public shareToQQ(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 580
    const-string v1, "http://openmobile.qq.com/api/check?page=shareindex.html&style=9"

    .line 581
    const-string v0, "shareToQQ"

    invoke-static {v0, p3}, Lcom/tencent/open/TemporaryStorage;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 582
    if-eqz v0, :cond_0

    .line 583
    check-cast v0, Lcom/tencent/tauth/IUiListener;

    invoke-interface {v0}, Lcom/tencent/tauth/IUiListener;->onCancel()V

    .line 585
    :cond_0
    if-nez p2, :cond_1

    .line 586
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 588
    :cond_1
    invoke-direct {p0, v1, p2}, Lcom/tencent/tauth/Tencent;->fillShareToQQParams(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 589
    invoke-static {p1, v0}, Lcom/tencent/open/Util;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 590
    if-nez v0, :cond_2

    .line 591
    if-eqz p3, :cond_2

    .line 592
    new-instance v0, Lcom/tencent/tauth/UiError;

    const/4 v1, -0x6

    const-string v2, "\u6253\u5f00\u6d4f\u89c8\u5668\u5931\u8d25!"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    .line 596
    :cond_2
    return-void
.end method

.method public story(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)I
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 289
    iget-object v0, p0, Lcom/tencent/tauth/Tencent;->mTContext:Lcom/tencent/open/TContext;

    const-string v1, "requireApi"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "story"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/open/TencentStat;->a(Lcom/tencent/open/TContext;Ljava/lang/String;[Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/tencent/tauth/Tencent;->mOpenUi:Lcom/tencent/open/OpenUi;

    const-string v1, "action_story"

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/tencent/open/OpenUi;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)I

    move-result v0

    return v0
.end method
