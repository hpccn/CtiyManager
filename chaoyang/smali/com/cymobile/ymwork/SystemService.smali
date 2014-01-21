.class public Lcom/cymobile/ymwork/SystemService;
.super Landroid/app/Service;
.source "SystemService.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cymobile/ymwork/SystemService$GetCaseNumberTask;,
        Lcom/cymobile/ymwork/SystemService$RetreiveServerSettingTask;,
        Lcom/cymobile/ymwork/SystemService$ServiceStub;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SystemService"

.field static settingParsed:Z


# instance fields
.field batteryInfoAvailable:Z

.field cachedFileName:Ljava/lang/String;

.field cachedFileWriter:Ljava/io/FileWriter;

.field private contexts:Landroid/content/Context;

.field currentServerSettings:Lcom/cymobile/ymwork/types/ServerSettings;

.field gpslocated:Z

.field private handler:Landroid/os/Handler;

.field lastRequestTime:J

.field lm:Landroid/location/LocationManager;

.field private final mBinder:Landroid/os/IBinder;

.field private mHomeApplication:Lcom/cymobile/ymwork/HomeApplication;

.field private mLoggedOutReceiver:Landroid/content/BroadcastReceiver;

.field mPrefs:Landroid/content/SharedPreferences;

.field private mRequestReceiver:Landroid/content/BroadcastReceiver;

.field numberChanged:Z

.field numbers:Lcom/cymobile/ymwork/types/CaseNumber;

.field private runnableRef:Ljava/lang/Runnable;

.field public temporaryRecordTrack:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 477
    const/4 v0, 0x0

    sput-boolean v0, Lcom/cymobile/ymwork/SystemService;->settingParsed:Z

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 39
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 42
    new-instance v0, Lcom/cymobile/ymwork/SystemService$1;

    invoke-direct {v0, p0}, Lcom/cymobile/ymwork/SystemService$1;-><init>(Lcom/cymobile/ymwork/SystemService;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/SystemService;->mRequestReceiver:Landroid/content/BroadcastReceiver;

    .line 48
    iput-object v3, p0, Lcom/cymobile/ymwork/SystemService;->mPrefs:Landroid/content/SharedPreferences;

    .line 63
    new-instance v0, Lcom/cymobile/ymwork/SystemService$2;

    invoke-direct {v0, p0}, Lcom/cymobile/ymwork/SystemService$2;-><init>(Lcom/cymobile/ymwork/SystemService;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/SystemService;->mLoggedOutReceiver:Landroid/content/BroadcastReceiver;

    .line 74
    new-instance v0, Lcom/cymobile/ymwork/SystemService$3;

    invoke-direct {v0, p0}, Lcom/cymobile/ymwork/SystemService$3;-><init>(Lcom/cymobile/ymwork/SystemService;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/SystemService;->runnableRef:Ljava/lang/Runnable;

    .line 87
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/cymobile/ymwork/SystemService;->handler:Landroid/os/Handler;

    .line 105
    new-instance v0, Lcom/cymobile/ymwork/SystemService$ServiceStub;

    invoke-direct {v0, p0}, Lcom/cymobile/ymwork/SystemService$ServiceStub;-><init>(Lcom/cymobile/ymwork/SystemService;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/SystemService;->mBinder:Landroid/os/IBinder;

    .line 117
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/cymobile/ymwork/SystemService;->lastRequestTime:J

    .line 164
    iput-boolean v2, p0, Lcom/cymobile/ymwork/SystemService;->batteryInfoAvailable:Z

    .line 246
    iput-boolean v2, p0, Lcom/cymobile/ymwork/SystemService;->numberChanged:Z

    .line 485
    iput-boolean v2, p0, Lcom/cymobile/ymwork/SystemService;->temporaryRecordTrack:Z

    .line 495
    iput-object v3, p0, Lcom/cymobile/ymwork/SystemService;->cachedFileWriter:Ljava/io/FileWriter;

    .line 496
    iput-object v3, p0, Lcom/cymobile/ymwork/SystemService;->cachedFileName:Ljava/lang/String;

    .line 522
    iput-boolean v2, p0, Lcom/cymobile/ymwork/SystemService;->gpslocated:Z

    .line 39
    return-void
.end method

.method static synthetic access$0(Lcom/cymobile/ymwork/SystemService;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/cymobile/ymwork/SystemService;->handleRequestIntent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1(Lcom/cymobile/ymwork/SystemService;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/cymobile/ymwork/SystemService;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Lcom/cymobile/ymwork/SystemService;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/cymobile/ymwork/SystemService;->runnableRef:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3(Lcom/cymobile/ymwork/SystemService;)Lcom/cymobile/ymwork/HomeApplication;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/cymobile/ymwork/SystemService;->mHomeApplication:Lcom/cymobile/ymwork/HomeApplication;

    return-object v0
.end method

.method static synthetic access$4(Lcom/cymobile/ymwork/SystemService;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/cymobile/ymwork/SystemService;->contexts:Landroid/content/Context;

    return-object v0
.end method

.method private handleRequestIntent(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    .line 120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 121
    .local v0, currentTime:J
    iget-wide v2, p0, Lcom/cymobile/ymwork/SystemService;->lastRequestTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xbb8

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    iput-wide v0, p0, Lcom/cymobile/ymwork/SystemService;->lastRequestTime:J

    .line 125
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 126
    :cond_2
    const-string v2, "SystemService"

    const-string v3, "null Intent"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public cancelNotification()V
    .locals 3

    .prologue
    .line 445
    :try_start_0
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Lcom/cymobile/ymwork/SystemService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 446
    .local v1, nm:Landroid/app/NotificationManager;
    const v2, 0x1248c57

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 450
    .end local v1           #nm:Landroid/app/NotificationManager;
    :goto_0
    return-void

    .line 447
    :catch_0
    move-exception v0

    .line 448
    .local v0, ee:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public checkNewVersion()V
    .locals 3

    .prologue
    .line 176
    const/4 v1, 0x0

    sput-boolean v1, Lcom/cymobile/ymwork/SystemService;->settingParsed:Z

    .line 177
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/cymobile/ymwork/SystemService;->currentServerSettings:Lcom/cymobile/ymwork/types/ServerSettings;

    .line 180
    :try_start_0
    new-instance v1, Lcom/cymobile/ymwork/SystemService$RetreiveServerSettingTask;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/cymobile/ymwork/SystemService$RetreiveServerSettingTask;-><init>(Lcom/cymobile/ymwork/SystemService;Z)V

    invoke-static {v1}, Lcom/cymobile/ymwork/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :goto_0
    return-void

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public clearNumbers()V
    .locals 1

    .prologue
    .line 248
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cymobile/ymwork/SystemService;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    .line 249
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cymobile/ymwork/SystemService;->numberChanged:Z

    .line 250
    return-void
.end method

.method createVersionDialog()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 453
    iget-object v0, p0, Lcom/cymobile/ymwork/SystemService;->currentServerSettings:Lcom/cymobile/ymwork/types/ServerSettings;

    if-eqz v0, :cond_1

    .line 454
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 455
    invoke-virtual {p0}, Lcom/cymobile/ymwork/SystemService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090088

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 456
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/cymobile/ymwork/SystemService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f090089

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cymobile/ymwork/SystemService;->currentServerSettings:Lcom/cymobile/ymwork/types/ServerSettings;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/types/ServerSettings;->getVersionName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cymobile/ymwork/SystemService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09008a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/cymobile/ymwork/SystemService;->currentServerSettings:Lcom/cymobile/ymwork/types/ServerSettings;

    invoke-virtual {v2}, Lcom/cymobile/ymwork/types/ServerSettings;->getVersiondesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cymobile/ymwork/SystemService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09008b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 457
    invoke-virtual {p0}, Lcom/cymobile/ymwork/SystemService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09008c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cymobile/ymwork/SystemService$4;

    invoke-direct {v2, p0}, Lcom/cymobile/ymwork/SystemService$4;-><init>(Lcom/cymobile/ymwork/SystemService;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 468
    invoke-virtual {p0}, Lcom/cymobile/ymwork/SystemService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09008d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cymobile/ymwork/SystemService$5;

    invoke-direct {v2, p0}, Lcom/cymobile/ymwork/SystemService$5;-><init>(Lcom/cymobile/ymwork/SystemService;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 473
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 475
    :goto_1
    return-object v0

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/cymobile/ymwork/SystemService;->currentServerSettings:Lcom/cymobile/ymwork/types/ServerSettings;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/types/ServerSettings;->getVersionName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 475
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getCurrentCaseNumber()[I
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 252
    iget-object v1, p0, Lcom/cymobile/ymwork/SystemService;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    if-eqz v1, :cond_0

    .line 253
    const/16 v1, 0x11

    new-array v0, v1, [I

    .line 254
    .local v0, ret:[I
    iget-object v1, p0, Lcom/cymobile/ymwork/SystemService;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    invoke-virtual {v1, v2}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v1

    aput v1, v0, v2

    .line 255
    iget-object v1, p0, Lcom/cymobile/ymwork/SystemService;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    invoke-virtual {v1, v3}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v1

    aput v1, v0, v3

    .line 256
    iget-object v1, p0, Lcom/cymobile/ymwork/SystemService;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    invoke-virtual {v1, v4}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v1

    aput v1, v0, v4

    .line 257
    iget-object v1, p0, Lcom/cymobile/ymwork/SystemService;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    invoke-virtual {v1, v5}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v1

    aput v1, v0, v5

    .line 258
    iget-object v1, p0, Lcom/cymobile/ymwork/SystemService;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    invoke-virtual {v1, v6}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v1

    aput v1, v0, v6

    .line 259
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/cymobile/ymwork/SystemService;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v2

    aput v2, v0, v1

    .line 260
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/cymobile/ymwork/SystemService;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v2

    aput v2, v0, v1

    .line 261
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/cymobile/ymwork/SystemService;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v2

    aput v2, v0, v1

    .line 262
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/cymobile/ymwork/SystemService;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v2

    aput v2, v0, v1

    .line 263
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/cymobile/ymwork/SystemService;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v2

    aput v2, v0, v1

    .line 264
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/cymobile/ymwork/SystemService;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v2

    aput v2, v0, v1

    .line 265
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/cymobile/ymwork/SystemService;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v2

    aput v2, v0, v1

    .line 266
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/cymobile/ymwork/SystemService;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v2

    aput v2, v0, v1

    .line 267
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/cymobile/ymwork/SystemService;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v2

    aput v2, v0, v1

    .line 268
    const/16 v1, 0xe

    iget-object v2, p0, Lcom/cymobile/ymwork/SystemService;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v2

    aput v2, v0, v1

    .line 269
    const/16 v1, 0xf

    iget-object v2, p0, Lcom/cymobile/ymwork/SystemService;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v2

    aput v2, v0, v1

    .line 270
    const/16 v1, 0x10

    iget-object v2, p0, Lcom/cymobile/ymwork/SystemService;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v2

    aput v2, v0, v1

    .line 273
    .end local v0           #ret:[I
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hushReadNumber()V
    .locals 5

    .prologue
    .line 188
    :try_start_0
    iget-object v1, p0, Lcom/cymobile/ymwork/SystemService;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/cymobile/ymwork/SystemService;->runnableRef:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 189
    iget-object v1, p0, Lcom/cymobile/ymwork/SystemService;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/cymobile/ymwork/SystemService;->runnableRef:Ljava/lang/Runnable;

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :goto_0
    return-void

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, ee:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method isTemporaryRecordTrack()Z
    .locals 1

    .prologue
    .line 492
    iget-boolean v0, p0, Lcom/cymobile/ymwork/SystemService;->temporaryRecordTrack:Z

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/cymobile/ymwork/SystemService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 53
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 54
    const-class v0, Lcom/cymobile/ymwork/SettingBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/cymobile/ymwork/SystemService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/cymobile/ymwork/SystemService;->mPrefs:Landroid/content/SharedPreferences;

    .line 55
    invoke-virtual {p0}, Lcom/cymobile/ymwork/SystemService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/cymobile/ymwork/HomeApplication;

    iput-object v0, p0, Lcom/cymobile/ymwork/SystemService;->mHomeApplication:Lcom/cymobile/ymwork/HomeApplication;

    .line 56
    invoke-virtual {p0}, Lcom/cymobile/ymwork/SystemService;->subscribeToLocationUpdates()V

    .line 57
    iput-object p0, p0, Lcom/cymobile/ymwork/SystemService;->contexts:Landroid/content/Context;

    .line 58
    iget-object v0, p0, Lcom/cymobile/ymwork/SystemService;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/cymobile/ymwork/SystemService;->runnableRef:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 60
    iget-object v0, p0, Lcom/cymobile/ymwork/SystemService;->mLoggedOutReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    .line 61
    const-string v2, "com.cymobile.ymwork.intent.action.LOGGED_OUT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0, v0, v1}, Lcom/cymobile/ymwork/SystemService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 62
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 90
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 92
    :try_start_0
    iget-object v1, p0, Lcom/cymobile/ymwork/SystemService;->mRequestReceiver:Landroid/content/BroadcastReceiver;

    invoke-super {p0, v1}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 93
    iget-object v1, p0, Lcom/cymobile/ymwork/SystemService;->lm:Landroid/location/LocationManager;

    invoke-virtual {v1, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/cymobile/ymwork/SystemService;->mLoggedOutReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/SystemService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 102
    :goto_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/cymobile/ymwork/SystemService;->lm:Landroid/location/LocationManager;

    .line 103
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, ee:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 99
    .end local v0           #ee:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 100
    .restart local v0       #ee:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public declared-synchronized onLocationChanged(Landroid/location/Location;)V
    .locals 0
    .parameter "loc"

    .prologue
    .line 500
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 526
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 519
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1
    .parameter "arg0"
    .parameter "status"
    .parameter "arg2"

    .prologue
    .line 503
    if-eqz p2, :cond_0

    .line 505
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 513
    :cond_0
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .parameter "intent"

    .prologue
    .line 114
    const/4 v0, 0x1

    return v0
.end method

.method public readServerInfo()V
    .locals 3

    .prologue
    .line 169
    :try_start_0
    new-instance v1, Lcom/cymobile/ymwork/SystemService$RetreiveServerSettingTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/cymobile/ymwork/SystemService$RetreiveServerSettingTask;-><init>(Lcom/cymobile/ymwork/SystemService;Z)V

    invoke-static {v1}, Lcom/cymobile/ymwork/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :goto_0
    return-void

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method setTemporaryRecordTrack(Z)V
    .locals 0
    .parameter "t"

    .prologue
    .line 488
    iput-boolean p1, p0, Lcom/cymobile/ymwork/SystemService;->temporaryRecordTrack:Z

    .line 489
    return-void
.end method

.method public showNotification(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "icon"
    .parameter "tickertext"
    .parameter "title"
    .parameter "content"

    .prologue
    const/4 v9, 0x0

    .line 415
    invoke-virtual {p0}, Lcom/cymobile/ymwork/SystemService;->cancelNotification()V

    .line 416
    new-instance v4, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p0}, Lcom/cymobile/ymwork/SystemService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 417
    invoke-virtual {v4, p3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 418
    invoke-virtual {v4, p4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 419
    invoke-virtual {v4, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 420
    new-instance v5, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v5}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 421
    invoke-virtual {v5, p4}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v5

    .line 420
    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 422
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x1388

    add-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 423
    invoke-virtual {v4}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 426
    .local v2, notification:Landroid/app/Notification;
    iget-object v4, p0, Lcom/cymobile/ymwork/SystemService;->mPrefs:Landroid/content/SharedPreferences;

    const-string v5, "pref_notif"

    const-string v6, "3"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 427
    .local v0, methodIndex:Ljava/lang/String;
    const-string v4, "0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 428
    const/4 v4, -0x1

    iput v4, v2, Landroid/app/Notification;->defaults:I

    .line 436
    :goto_0
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/cymobile/ymwork/act/MainActivityGroup;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v9, v4, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 437
    .local v3, pt:Landroid/app/PendingIntent;
    invoke-virtual {v2, p0, p3, p4, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 438
    const-string v4, "notification"

    invoke-virtual {p0, v4}, Lcom/cymobile/ymwork/SystemService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 439
    .local v1, nm:Landroid/app/NotificationManager;
    iget v4, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v2, Landroid/app/Notification;->flags:I

    .line 440
    const v4, 0x1248c57

    invoke-virtual {v1, v4, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 441
    return-void

    .line 429
    .end local v1           #nm:Landroid/app/NotificationManager;
    .end local v3           #pt:Landroid/app/PendingIntent;
    :cond_0
    const-string v4, "1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 430
    const/4 v4, 0x1

    iput v4, v2, Landroid/app/Notification;->defaults:I

    goto :goto_0

    .line 431
    :cond_1
    const-string v4, "2"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 432
    const/4 v4, 0x2

    iput v4, v2, Landroid/app/Notification;->defaults:I

    goto :goto_0

    .line 434
    :cond_2
    const/4 v4, 0x4

    iput v4, v2, Landroid/app/Notification;->defaults:I

    goto :goto_0
.end method

.method public subscribeToLocationUpdates()V
    .locals 6

    .prologue
    .line 481
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/SystemService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/cymobile/ymwork/SystemService;->lm:Landroid/location/LocationManager;

    .line 482
    iget-object v0, p0, Lcom/cymobile/ymwork/SystemService;->lm:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 483
    return-void
.end method
