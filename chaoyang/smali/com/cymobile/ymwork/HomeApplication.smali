.class public Lcom/cymobile/ymwork/HomeApplication;
.super Landroid/app/Application;
.source "HomeApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cymobile/ymwork/HomeApplication$FileManagerThread;,
        Lcom/cymobile/ymwork/HomeApplication$TaskHandler;
    }
.end annotation


# static fields
.field public static CAR_DOCK_EXTRA:Ljava/lang/String; = null

.field public static final INTENT_ACTION_LOGGED_IN:Ljava/lang/String; = "com.cymobile.cy.intent.action.LOGGED_IN"

.field public static final INTENT_ACTION_LOGGED_OUT:Ljava/lang/String; = "com.cymobile.cy.intent.action.LOGGED_OUT"

.field public static final Intent_stringArrayExtra:Ljava/lang/String; = "Intent_stringArrayExtra"

.field private static SdcardStorage:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "CarHomeApplication"

.field public static final TotalFileSizeLimit:J = 0x5b8d80L


# instance fields
.field DEBUG:Z

.field private currentLocation:Lcom/cymobile/ymwork/server/Server$Location;

.field isLocated:Z

.field private login:Z

.field protected mCarAppsIntent:Landroid/content/Intent;

.field private mPrefs:Landroid/content/SharedPreferences;

.field mRemoteResourceManager:Lcom/cymobile/ymwork/server/RemoteResourceManager;

.field private mServer:Lcom/cymobile/ymwork/server/Server;

.field mTaskHandler:Lcom/cymobile/ymwork/HomeApplication$TaskHandler;

.field mVersion:Ljava/lang/String;

.field photoPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    const-string v0, "/com.cymobile.ymwork"

    sput-object v0, Lcom/cymobile/ymwork/HomeApplication;->SdcardStorage:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cymobile/ymwork/HomeApplication;->DEBUG:Z

    .line 97
    iput-object v1, p0, Lcom/cymobile/ymwork/HomeApplication;->photoPath:Ljava/lang/String;

    .line 197
    iput-object v1, p0, Lcom/cymobile/ymwork/HomeApplication;->currentLocation:Lcom/cymobile/ymwork/server/Server$Location;

    .line 232
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cymobile/ymwork/HomeApplication;->login:Z

    .line 57
    return-void
.end method

.method private static checkFsWritable()Z
    .locals 4

    .prologue
    .line 165
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    .line 166
    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/cymobile/ymwork/HomeApplication;->SdcardStorage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 165
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, directoryName:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 168
    .local v0, directory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    .line 169
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_0

    .line 170
    const/4 v2, 0x0

    .line 173
    :goto_0
    return v2

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v2

    goto :goto_0
.end method

.method public static final createHttpApi(Ljava/lang/String;Ljava/lang/String;ZI)Lcom/cymobile/ymwork/server/ServerHttpApiV1;
    .locals 2
    .parameter "domain"
    .parameter "clientVersion"
    .parameter "useOAuth"
    .parameter "port"

    .prologue
    .line 386
    const-string v0, "CarHomeApplication"

    const-string v1, "Using com for requests."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    new-instance v0, Lcom/cymobile/ymwork/server/ServerHttpApiV1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/cymobile/ymwork/server/ServerHttpApiV1;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    return-object v0
.end method

.method private createName(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "dateTaken"
    .parameter "prefix"
    .parameter "suffix"

    .prologue
    .line 154
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 155
    .local v0, date:Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 156
    const v2, 0x7f090015

    invoke-virtual {p0, v2}, Lcom/cymobile/ymwork/HomeApplication;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 155
    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 158
    .local v1, dateFormat:Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static hasStorage()Z
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/cymobile/ymwork/HomeApplication;->hasStorage(Z)Z

    move-result v0

    return v0
.end method

.method public static hasStorage(Z)Z
    .locals 3
    .parameter "requireWriteAccess"

    .prologue
    const/4 v1, 0x1

    .line 181
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, state:Ljava/lang/String;
    const-string v2, "mounted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 184
    if-eqz p0, :cond_0

    .line 185
    invoke-static {}, Lcom/cymobile/ymwork/HomeApplication;->checkFsWritable()Z

    move-result v1

    .line 194
    :cond_0
    :goto_0
    return v1

    .line 190
    :cond_1
    if-nez p0, :cond_2

    .line 191
    const-string v2, "mounted_ro"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 194
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadResourceManagers()V
    .locals 3

    .prologue
    .line 207
    :try_start_0
    new-instance v1, Lcom/cymobile/ymwork/server/RemoteResourceManager;

    const-string v2, "cache"

    invoke-direct {v1, v2}, Lcom/cymobile/ymwork/server/RemoteResourceManager;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/cymobile/ymwork/HomeApplication;->mRemoteResourceManager:Lcom/cymobile/ymwork/server/RemoteResourceManager;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :goto_0
    return-void

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, e:Ljava/lang/IllegalStateException;
    new-instance v1, Lcom/cymobile/ymwork/server/RemoteResourceManager;

    .line 210
    new-instance v2, Lcom/cymobile/ymwork/server/NullDiskCache;

    invoke-direct {v2}, Lcom/cymobile/ymwork/server/NullDiskCache;-><init>()V

    invoke-direct {v1, v2}, Lcom/cymobile/ymwork/server/RemoteResourceManager;-><init>(Lcom/cymobile/ymwork/server/DiskCache;)V

    .line 209
    iput-object v1, p0, Lcom/cymobile/ymwork/HomeApplication;->mRemoteResourceManager:Lcom/cymobile/ymwork/server/RemoteResourceManager;

    goto :goto_0
.end method

.method private loadServer()V
    .locals 3

    .prologue
    .line 86
    new-instance v0, Lcom/cymobile/ymwork/server/Server;

    iget-object v1, p0, Lcom/cymobile/ymwork/HomeApplication;->mVersion:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/cymobile/ymwork/server/Server;->createHttpApi(Ljava/lang/String;Z)Lcom/cymobile/ymwork/server/ServerHttpApiV2;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/cymobile/ymwork/server/Server;-><init>(Lcom/cymobile/ymwork/server/ServerHttpApiV2;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/HomeApplication;->mServer:Lcom/cymobile/ymwork/server/Server;

    .line 87
    return-void
.end method

.method public static redirectToLoginActivityAndBack(Landroid/app/Activity;Ljava/lang/Class;[Ljava/lang/String;)V
    .locals 2
    .parameter "act"
    .parameter "cla"
    .parameter "extra"

    .prologue
    .line 324
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cymobile/ymwork/act/LoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 325
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "Intent_backClass"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 326
    if-eqz p2, :cond_0

    array-length v1, p2

    if-lez v1, :cond_0

    .line 327
    const-string v1, "Intent_stringArrayExtra"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 329
    :cond_0
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 331
    const/high16 v1, 0x4480

    .line 330
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 335
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 336
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 337
    return-void
.end method

.method public static redirectToLoginActivityAndNoBack(Landroid/app/Activity;)V
    .locals 2
    .parameter "act"

    .prologue
    .line 312
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cymobile/ymwork/act/LoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 313
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 315
    const/high16 v1, 0x4480

    .line 314
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 319
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 320
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 321
    return-void
.end method


# virtual methods
.method public getCurrentLocation()Lcom/cymobile/ymwork/server/Server$Location;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/cymobile/ymwork/HomeApplication;->currentLocation:Lcom/cymobile/ymwork/server/Server$Location;

    return-object v0
.end method

.method public getLastKnownLocation()Lcom/cymobile/ymwork/server/Server$Location;
    .locals 3

    .prologue
    .line 372
    iget-object v0, p0, Lcom/cymobile/ymwork/HomeApplication;->currentLocation:Lcom/cymobile/ymwork/server/Server$Location;

    if-nez v0, :cond_0

    .line 373
    new-instance v0, Lcom/cymobile/ymwork/server/Server$Location;

    const-string v1, "116.3974"

    const-string v2, "39.908716"

    invoke-direct {v0, v1, v2}, Lcom/cymobile/ymwork/server/Server$Location;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/HomeApplication;->currentLocation:Lcom/cymobile/ymwork/server/Server$Location;

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/cymobile/ymwork/HomeApplication;->currentLocation:Lcom/cymobile/ymwork/server/Server$Location;

    return-object v0
.end method

.method public getLocation()Lcom/cymobile/ymwork/server/Server$Location;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/cymobile/ymwork/HomeApplication;->currentLocation:Lcom/cymobile/ymwork/server/Server$Location;

    return-object v0
.end method

.method public final getPhotoPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 100
    iget-object v2, p0, Lcom/cymobile/ymwork/HomeApplication;->photoPath:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 101
    iget-object v0, p0, Lcom/cymobile/ymwork/HomeApplication;->photoPath:Ljava/lang/String;

    .line 111
    :cond_0
    :goto_0
    return-object v0

    .line 103
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    sget-object v3, Lcom/cymobile/ymwork/HomeApplication;->SdcardStorage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ymwork"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/photos"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 103
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, dirName:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 106
    .local v1, directory:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    .line 107
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_0

    .line 108
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRemoteResourceManager()Lcom/cymobile/ymwork/server/RemoteResourceManager;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/cymobile/ymwork/HomeApplication;->mRemoteResourceManager:Lcom/cymobile/ymwork/server/RemoteResourceManager;

    return-object v0
.end method

.method public getServer()Lcom/cymobile/ymwork/server/Server;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/cymobile/ymwork/HomeApplication;->mServer:Lcom/cymobile/ymwork/server/Server;

    return-object v0
.end method

.method public getUseNativeImageViewerForFullScreenImages()Z
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/cymobile/ymwork/HomeApplication;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getUseNativeImageViewerForFullScreenImages(Landroid/content/SharedPreferences;)Z

    move-result v0

    .line 394
    return v0
.end method

.method public haveId()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 235
    iget-object v3, p0, Lcom/cymobile/ymwork/HomeApplication;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "key_newGlobalUserPhone"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, id:Ljava/lang/String;
    const-string v1, "123456"

    .line 238
    .local v1, passwd:Ljava/lang/String;
    iget-object v3, p0, Lcom/cymobile/ymwork/HomeApplication;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "key_GlobalZoneId"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 239
    .local v2, zoneid:Ljava/lang/String;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 240
    const/4 v3, 0x1

    .line 242
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isLocated()Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/cymobile/ymwork/HomeApplication;->isLocated:Z

    return v0
.end method

.method public isLogined()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 245
    iget-boolean v3, p0, Lcom/cymobile/ymwork/HomeApplication;->login:Z

    if-eqz v3, :cond_0

    .line 246
    iget-boolean v2, p0, Lcom/cymobile/ymwork/HomeApplication;->login:Z

    .line 271
    :goto_0
    return v2

    .line 260
    :cond_0
    iget-object v3, p0, Lcom/cymobile/ymwork/HomeApplication;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "key_newGlobalUserPhone"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, id:Ljava/lang/String;
    const/4 v1, 0x1

    .line 263
    .local v1, logined:Z
    if-nez v0, :cond_1

    .line 264
    iput-boolean v2, p0, Lcom/cymobile/ymwork/HomeApplication;->login:Z

    .line 271
    :goto_1
    iget-boolean v2, p0, Lcom/cymobile/ymwork/HomeApplication;->login:Z

    goto :goto_0

    .line 268
    :cond_1
    if-eqz v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    iput-boolean v2, p0, Lcom/cymobile/ymwork/HomeApplication;->login:Z

    goto :goto_1
.end method

.method public logout()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 275
    iput-boolean v3, p0, Lcom/cymobile/ymwork/HomeApplication;->login:Z

    .line 276
    iget-object v1, p0, Lcom/cymobile/ymwork/HomeApplication;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 277
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "Pref__new_key_isLogined"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 280
    const-string v1, "key_newGlobalUserPhone"

    .line 279
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 282
    const-string v1, "key_GlobalUserPasswd"

    .line 281
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 284
    const-string v1, "key_GlobalZoneId"

    .line 283
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 285
    invoke-static {}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->emptySubZone()V

    .line 286
    invoke-static {}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->emptyStreetZone()V

    .line 288
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 289
    return-void
.end method

.method public onCreate()V
    .locals 5

    .prologue
    .line 61
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 63
    const-class v3, Lcom/cymobile/ymwork/SettingBase;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 62
    invoke-virtual {p0, v3, v4}, Lcom/cymobile/ymwork/HomeApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/cymobile/ymwork/HomeApplication;->mPrefs:Landroid/content/SharedPreferences;

    .line 64
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/cymobile/ymwork/HomeApplication;->hasStorage(Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 65
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    .line 66
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    sget-object v4, Lcom/cymobile/ymwork/HomeApplication;->SdcardStorage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 68
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".nomedia"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 65
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 69
    .local v2, noMediaFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 71
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/cymobile/ymwork/HomeApplication;->getPhotoPath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/cymobile/ymwork/HomeApplication;->photoPath:Ljava/lang/String;

    .line 77
    new-instance v1, Ljava/lang/Thread;

    new-instance v3, Lcom/cymobile/ymwork/HomeApplication$FileManagerThread;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/cymobile/ymwork/HomeApplication$FileManagerThread;-><init>(Lcom/cymobile/ymwork/HomeApplication;Lcom/cymobile/ymwork/HomeApplication$FileManagerThread;)V

    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 78
    .local v1, managerFileThread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 80
    .end local v1           #managerFileThread:Ljava/lang/Thread;
    .end local v2           #noMediaFile:Ljava/io/File;
    :cond_1
    invoke-direct {p0}, Lcom/cymobile/ymwork/HomeApplication;->loadResourceManagers()V

    .line 82
    invoke-direct {p0}, Lcom/cymobile/ymwork/HomeApplication;->loadServer()V

    .line 84
    return-void

    .line 72
    .restart local v2       #noMediaFile:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 73
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public onTerminate()V
    .locals 0

    .prologue
    .line 90
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 91
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 92
    return-void
.end method

.method public requestUpdateUser()V
    .locals 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/cymobile/ymwork/HomeApplication;->mTaskHandler:Lcom/cymobile/ymwork/HomeApplication$TaskHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/HomeApplication$TaskHandler;->sendEmptyMessage(I)Z

    .line 340
    return-void
.end method

.method public setCurrentLocation(Lcom/cymobile/ymwork/server/Server$Location;)V
    .locals 0
    .parameter "currentLocation"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/cymobile/ymwork/HomeApplication;->currentLocation:Lcom/cymobile/ymwork/server/Server$Location;

    .line 49
    return-void
.end method

.method public setLocated(Z)V
    .locals 0
    .parameter "isLocated"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/cymobile/ymwork/HomeApplication;->isLocated:Z

    .line 53
    return-void
.end method

.method public setServerCredentials()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 226
    iget-object v2, p0, Lcom/cymobile/ymwork/HomeApplication;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "key_newGlobalUserPhone"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 227
    .local v1, phone:Ljava/lang/String;
    iget-object v2, p0, Lcom/cymobile/ymwork/HomeApplication;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "key_GlobalUserPasswd"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, passwd:Ljava/lang/String;
    iget-object v2, p0, Lcom/cymobile/ymwork/HomeApplication;->mServer:Lcom/cymobile/ymwork/server/Server;

    invoke-virtual {v2, v1, v0}, Lcom/cymobile/ymwork/server/Server;->setCredentials(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    return-void
.end method
