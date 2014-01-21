.class public Lcom/cymobile/ymwork/act/FetchImageForViewIntent;
.super Landroid/app/Activity;
.source "FetchImageForViewIntent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cymobile/ymwork/act/FetchImageForViewIntent$FetchImageTask;,
        Lcom/cymobile/ymwork/act/FetchImageForViewIntent$StateHolder;
    }
.end annotation


# static fields
.field public static final CONNECTION_TIMEOUT_IN_SECONDS:Ljava/lang/String; = "com.cymobile.ymwork.act.FetchImageForViewIntent.CONNECTION_TIMEOUT_IN_SECONDS"

.field private static final DEBUG:Z = true

.field public static final EXTRA_SAVED_IMAGE_PATH_RETURNED:Ljava/lang/String; = "com.cymobile.ymwork.act.FetchImageForViewIntent.EXTRA_SAVED_IMAGE_PATH_RETURNED"

.field public static final IMAGE_URL:Ljava/lang/String; = "com.cymobile.ymwork.act.FetchImageForViewIntent.IMAGE_URL"

.field public static final LAUNCH_VIEW_INTENT_ON_COMPLETION:Ljava/lang/String; = "com.cymobile.ymwork.act.FetchImageForViewIntent.LAUNCH_VIEW_INTENT_ON_COMPLETION"

.field public static final PROGRESS_BAR_MESSAGE:Ljava/lang/String; = "com.cymobile.ymwork.act.FetchImageForViewIntent.PROGRESS_BAR_MESSAGE"

.field public static final PROGRESS_BAR_TITLE:Ljava/lang/String; = "com.cymobile.ymwork.act.FetchImageForViewIntent.PROGRESS_BAR_TITLE"

.field public static final READ_TIMEOUT_IN_SECONDS:Ljava/lang/String; = "com.cymobile.ymwork.act.FetchImageForViewIntent.READ_TIMEOUT_IN_SECONDS"

.field private static final TAG:Ljava/lang/String; = "FetchImageForViewIntent"

.field private static final TEMP_FILE_NAME:Ljava/lang/String; = "tmp_fsq"


# instance fields
.field private mDlgProgress:Landroid/app/ProgressDialog;

.field private mLoggedOutReceiver:Landroid/content/BroadcastReceiver;

.field private mStateHolder:Lcom/cymobile/ymwork/act/FetchImageForViewIntent$StateHolder;

.field owner:Ljava/lang/String;

.field thumb:Ljava/lang/String;

.field time:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 60
    iput-object v0, p0, Lcom/cymobile/ymwork/act/FetchImageForViewIntent;->owner:Ljava/lang/String;

    .line 61
    iput-object v0, p0, Lcom/cymobile/ymwork/act/FetchImageForViewIntent;->thumb:Ljava/lang/String;

    .line 62
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/cymobile/ymwork/act/FetchImageForViewIntent;->time:J

    .line 63
    new-instance v0, Lcom/cymobile/ymwork/act/FetchImageForViewIntent$1;

    invoke-direct {v0, p0}, Lcom/cymobile/ymwork/act/FetchImageForViewIntent$1;-><init>(Lcom/cymobile/ymwork/act/FetchImageForViewIntent;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/FetchImageForViewIntent;->mLoggedOutReceiver:Landroid/content/BroadcastReceiver;

    .line 35
    return-void
.end method

.method static synthetic access$0(Lcom/cymobile/ymwork/act/FetchImageForViewIntent;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 187
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/cymobile/ymwork/act/FetchImageForViewIntent;->onFetchImageTaskComplete(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$1(Lcom/cymobile/ymwork/act/FetchImageForViewIntent;)Lcom/cymobile/ymwork/act/FetchImageForViewIntent$StateHolder;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FetchImageForViewIntent;->mStateHolder:Lcom/cymobile/ymwork/act/FetchImageForViewIntent$StateHolder;

    return-object v0
.end method

.method private launchViewIntent(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .parameter "outputPath"
    .parameter "extension"

    .prologue
    const v8, 0x7f09007c

    const/4 v5, 0x0

    .line 222
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/FetchImageForViewIntent;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/cymobile/ymwork/HomeApplication;

    .line 223
    .local v2, homeApplication:Lcom/cymobile/ymwork/HomeApplication;
    invoke-virtual {v2}, Lcom/cymobile/ymwork/HomeApplication;->getUseNativeImageViewerForFullScreenImages()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 226
    const/4 v4, 0x0

    .line 228
    .local v4, uri:Landroid/net/Uri;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 229
    .local v1, file:Ljava/io/File;
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 240
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 241
    .local v3, intent:Landroid/content/Intent;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "image/"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    invoke-virtual {p0, v3}, Lcom/cymobile/ymwork/act/FetchImageForViewIntent;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 256
    .end local v1           #file:Ljava/io/File;
    .end local v4           #uri:Landroid/net/Uri;
    :goto_0
    const/4 v5, 0x1

    .end local v3           #intent:Landroid/content/Intent;
    :goto_1
    return v5

    .line 230
    .restart local v4       #uri:Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 231
    .local v0, ex:Ljava/lang/Exception;
    const-string v6, "FetchImageForViewIntent"

    const-string v7, "Error opening downloaded image from temp location: "

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 232
    invoke-static {p0, v8, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    .line 233
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 243
    .end local v0           #ex:Ljava/lang/Exception;
    .restart local v1       #file:Ljava/io/File;
    :catch_1
    move-exception v0

    .line 244
    .restart local v0       #ex:Ljava/lang/Exception;
    const-string v6, "FetchImageForViewIntent"

    const-string v7, "Error starting intent to view image: "

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 245
    invoke-static {p0, v8, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 249
    .end local v0           #ex:Ljava/lang/Exception;
    .end local v1           #file:Ljava/io/File;
    .end local v4           #uri:Landroid/net/Uri;
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lcom/cymobile/ymwork/act/FullSizeImageActivity;

    invoke-direct {v3, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 250
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v5, "com.cymobile.ymwork.act.FullSizeImageActivity.INTENT_EXTRA_IMAGE_PATH"

    invoke-virtual {v3, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    const-string v5, "com.cymobile.ymwork.FullSizeImageActivity.INTENT_EXTRA_Photoowner"

    iget-object v6, p0, Lcom/cymobile/ymwork/act/FetchImageForViewIntent;->owner:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    const-string v5, "com.cymobile.ymwork.FullSizeImageActivity.INTENT_EXTRA_Photethumb"

    iget-object v6, p0, Lcom/cymobile/ymwork/act/FetchImageForViewIntent;->thumb:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    invoke-virtual {p0, v3}, Lcom/cymobile/ymwork/act/FetchImageForViewIntent;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private onFetchImageTaskComplete(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 4
    .parameter "result"
    .parameter "path"
    .parameter "extension"
    .parameter "ex"

    .prologue
    const/4 v3, 0x0

    .line 191
    if-eqz p1, :cond_1

    :try_start_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 195
    iget-object v1, p0, Lcom/cymobile/ymwork/act/FetchImageForViewIntent;->mStateHolder:Lcom/cymobile/ymwork/act/FetchImageForViewIntent$StateHolder;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/FetchImageForViewIntent$StateHolder;->getLaunchViewIntentOnCompletion()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    invoke-direct {p0, p2, p3}, Lcom/cymobile/ymwork/act/FetchImageForViewIntent;->launchViewIntent(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    :goto_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/FetchImageForViewIntent;->mStateHolder:Lcom/cymobile/ymwork/act/FetchImageForViewIntent$StateHolder;

    invoke-virtual {v1, v3}, Lcom/cymobile/ymwork/act/FetchImageForViewIntent$StateHolder;->setIsRunning(Z)V

    .line 215
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/FetchImageForViewIntent;->stopProgressBar()V

    .line 216
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/FetchImageForViewIntent;->finish()V

    .line 218
    return-void

    .line 200
    :cond_0
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 201
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.cymobile.ymwork.act.FetchImageForViewIntent.EXTRA_SAVED_IMAGE_PATH_RETURNED"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/cymobile/ymwork/act/FetchImageForViewIntent;->setResult(ILandroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 211
    .end local v0           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v1

    .line 214
    iget-object v2, p0, Lcom/cymobile/ymwork/act/FetchImageForViewIntent;->mStateHolder:Lcom/cymobile/ymwork/act/FetchImageForViewIntent$StateHolder;

    invoke-virtual {v2, v3}, Lcom/cymobile/ymwork/act/FetchImageForViewIntent$StateHolder;->setIsRunning(Z)V

    .line 215
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/FetchImageForViewIntent;->stopProgressBar()V

    .line 216
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/FetchImageForViewIntent;->finish()V

    .line 217
    throw v1

    .line 205
    :cond_1
    if-eqz p4, :cond_2

    :try_start_2
    instance-of v1, p4, Ljava/io/IOException;

    if-eqz v1, :cond_2

    .line 206
    const v1, 0x7f090093

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 208
    :cond_2
    invoke-static {p0, p4}, Lcom/cymobile/ymwork/utils/NotificationsUtil;->ToastReasonForFailure(Landroid/content/Context;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static saveImage(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 14
    .parameter "urlImage"
    .parameter "savePath"
    .parameter "connectionTimeoutInSeconds"
    .parameter "readTimeoutInSeconds"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 318
    new-instance v10, Ljava/net/URL;

    invoke-direct {v10, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 319
    .local v10, url:Ljava/net/URL;
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 320
    .local v2, conn:Ljava/net/URLConnection;
    move/from16 v0, p2

    mul-int/lit16 v11, v0, 0x3e8

    invoke-virtual {v2, v11}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 321
    move/from16 v0, p3

    mul-int/lit16 v11, v0, 0x3e8

    invoke-virtual {v2, v11}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 322
    invoke-virtual {v2}, Ljava/net/URLConnection;->getContentLength()I

    move-result v3

    .line 323
    .local v3, contentLength:I
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    .line 324
    .local v9, raw:Ljava/io/InputStream;
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-direct {v6, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 325
    .local v6, in:Ljava/io/InputStream;
    new-array v4, v3, [B

    .line 326
    .local v4, data:[B
    const/4 v1, 0x0

    .line 327
    .local v1, bytesRead:I
    const/4 v7, 0x0

    .line 328
    .local v7, offset:I
    :goto_0
    if-lt v7, v3, :cond_1

    .line 335
    :cond_0
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 337
    if-eq v7, v3, :cond_2

    .line 338
    const-string v11, "FetchImageForViewIntent"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Error fetching image, only read "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " bytes of "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 339
    const-string v13, " total."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 338
    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    new-instance v11, Lcom/cymobile/ymwork/server/error/ServerException;

    const-string v12, "Error fetching full image, please try again."

    invoke-direct {v11, v12}, Lcom/cymobile/ymwork/server/error/ServerException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 329
    :cond_1
    array-length v11, v4

    sub-int/2addr v11, v7

    invoke-virtual {v6, v4, v7, v11}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 330
    const/4 v11, -0x1

    if-eq v1, v11, :cond_0

    .line 333
    add-int/2addr v7, v1

    goto :goto_0

    .line 346
    :cond_2
    :try_start_0
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 347
    .local v8, out:Ljava/io/FileOutputStream;
    invoke-virtual {v8, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 348
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V

    .line 349
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    return-void

    .line 350
    .end local v8           #out:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v5

    .line 351
    .local v5, ex:Ljava/lang/Exception;
    const-string v11, "FetchImageForViewIntent"

    const-string v12, "Error saving fetched image to disk."

    invoke-static {v11, v12, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 352
    new-instance v11, Lcom/cymobile/ymwork/server/error/ServerException;

    const-string v12, "Error opening fetched image, make sure an sdcard is present."

    invoke-direct {v11, v12}, Lcom/cymobile/ymwork/server/error/ServerException;-><init>(Ljava/lang/String;)V

    throw v11
.end method

.method private startProgressBar(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "title"
    .parameter "message"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FetchImageForViewIntent;->mDlgProgress:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 166
    invoke-static {p0, p1, p2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/cymobile/ymwork/act/FetchImageForViewIntent;->mDlgProgress:Landroid/app/ProgressDialog;

    .line 167
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FetchImageForViewIntent;->mDlgProgress:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/cymobile/ymwork/act/FetchImageForViewIntent$2;

    invoke-direct {v1, p0}, Lcom/cymobile/ymwork/act/FetchImageForViewIntent$2;-><init>(Lcom/cymobile/ymwork/act/FetchImageForViewIntent;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 174
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FetchImageForViewIntent;->mDlgProgress:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FetchImageForViewIntent;->mDlgProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FetchImageForViewIntent;->mDlgProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 178
    return-void
.end method

.method private stopProgressBar()V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FetchImageForViewIntent;->mDlgProgress:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cymobile/ymwork/act/FetchImageForViewIntent;->mDlgProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FetchImageForViewIntent;->mDlgProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 184
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cymobile/ymwork/act/FetchImageForViewIntent;->mDlgProgress:Landroid/app/ProgressDialog;

    .line 185
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/16 v10, 0x14

    .line 73
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const-string v0, "FetchImageForViewIntent"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const v0, 0x7f030014

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/FetchImageForViewIntent;->setContentView(I)V

    .line 78
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/FetchImageForViewIntent;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v9

    .line 79
    .local v9, retained:Ljava/lang/Object;
    if-eqz v9, :cond_0

    instance-of v0, v9, Lcom/cymobile/ymwork/act/FetchImageForViewIntent$StateHolder;

    if-eqz v0, :cond_0

    .line 80
    check-cast v9, Lcom/cymobile/ymwork/act/FetchImageForViewIntent$StateHolder;

    .end local v9           #retained:Ljava/lang/Object;
    iput-object v9, p0, Lcom/cymobile/ymwork/act/FetchImageForViewIntent;->mStateHolder:Lcom/cymobile/ymwork/act/FetchImageForViewIntent$StateHolder;

    .line 81
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FetchImageForViewIntent;->mStateHolder:Lcom/cymobile/ymwork/act/FetchImageForViewIntent$StateHolder;

    invoke-virtual {v0, p0}, Lcom/cymobile/ymwork/act/FetchImageForViewIntent$StateHolder;->setActivity(Lcom/cymobile/ymwork/act/FetchImageForViewIntent;)V

    .line 129
    :goto_0
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FetchImageForViewIntent;->mLoggedOutReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    .line 130
    const-string v6, "com.cymobile.ymwork.intent.action.LOGGED_OUT"

    invoke-direct {v1, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0, v0, v1}, Lcom/cymobile/ymwork/act/FetchImageForViewIntent;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 131
    :goto_1
    return-void

    .line 83
    .restart local v9       #retained:Ljava/lang/Object;
    :cond_0
    const/4 v2, 0x0

    .line 84
    .local v2, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/FetchImageForViewIntent;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.cymobile.ymwork.act.FetchImageForViewIntent.IMAGE_URL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/FetchImageForViewIntent;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.cymobile.ymwork.act.FetchImageForViewIntent.IMAGE_URL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 92
    const-string v0, "FetchImageForViewIntent"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "Fetching image: "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const-string v0, "."

    invoke-virtual {v2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    .line 98
    .local v8, posdot:I
    if-gez v8, :cond_2

    .line 99
    const-string v0, "FetchImageForViewIntent"

    const-string v1, "FetchImageForViewIntent requires a url to an image resource with a file extension in its name."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/FetchImageForViewIntent;->finish()V

    goto :goto_1

    .line 87
    .end local v8           #posdot:I
    :cond_1
    const-string v0, "FetchImageForViewIntent"

    const-string v1, "FetchImageForViewIntent requires intent extras parameter \'IMAGE_URL\'."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/FetchImageForViewIntent;->finish()V

    goto :goto_1

    .line 104
    .restart local v8       #posdot:I
    :cond_2
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/FetchImageForViewIntent;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.cymobile.ymwork.act.FetchImageForViewIntent.PROGRESS_BAR_TITLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 105
    .local v4, progressBarTitle:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/FetchImageForViewIntent;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.cymobile.ymwork.act.FetchImageForViewIntent.PROGRESS_BAR_MESSAGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 106
    .local v5, progressBarMessage:Ljava/lang/String;
    if-nez v5, :cond_3

    .line 107
    const-string v5, "Fetching image..."

    .line 110
    :cond_3
    new-instance v0, Lcom/cymobile/ymwork/act/FetchImageForViewIntent$StateHolder;

    invoke-direct {v0}, Lcom/cymobile/ymwork/act/FetchImageForViewIntent$StateHolder;-><init>()V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/FetchImageForViewIntent;->mStateHolder:Lcom/cymobile/ymwork/act/FetchImageForViewIntent$StateHolder;

    .line 111
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FetchImageForViewIntent;->mStateHolder:Lcom/cymobile/ymwork/act/FetchImageForViewIntent$StateHolder;

    .line 112
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/FetchImageForViewIntent;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v6, "com.cymobile.ymwork.act.FetchImageForViewIntent.LAUNCH_VIEW_INTENT_ON_COMPLETION"

    const/4 v7, 0x1

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 111
    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/act/FetchImageForViewIntent$StateHolder;->setLaunchViewIntentOnCompletion(Z)V

    .line 113
    const-string v3, "jpeg"

    .line 114
    .local v3, jpeg:Ljava/lang/String;
    add-int/lit8 v0, v8, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    add-int/lit8 v0, v8, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "jpg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 115
    const-string v3, "jpeg"

    .line 119
    :goto_2
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FetchImageForViewIntent;->mStateHolder:Lcom/cymobile/ymwork/act/FetchImageForViewIntent$StateHolder;

    .line 125
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/FetchImageForViewIntent;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v6, "com.cymobile.ymwork.act.FetchImageForViewIntent.CONNECTION_TIMEOUT_IN_SECONDS"

    invoke-virtual {v1, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 126
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/FetchImageForViewIntent;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v7, "com.cymobile.ymwork.act.FetchImageForViewIntent.READ_TIMEOUT_IN_SECONDS"

    invoke-virtual {v1, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    move-object v1, p0

    .line 119
    invoke-virtual/range {v0 .. v7}, Lcom/cymobile/ymwork/act/FetchImageForViewIntent$StateHolder;->startTask(Lcom/cymobile/ymwork/act/FetchImageForViewIntent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 117
    :cond_4
    add-int/lit8 v0, v8, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 150
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 152
    :try_start_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/FetchImageForViewIntent;->mLoggedOutReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/FetchImageForViewIntent;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :goto_0
    return-void

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, ee:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 144
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 145
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/FetchImageForViewIntent;->stopProgressBar()V

    .line 146
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 135
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 137
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FetchImageForViewIntent;->mStateHolder:Lcom/cymobile/ymwork/act/FetchImageForViewIntent$StateHolder;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/FetchImageForViewIntent$StateHolder;->getIsRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FetchImageForViewIntent;->mStateHolder:Lcom/cymobile/ymwork/act/FetchImageForViewIntent$StateHolder;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/FetchImageForViewIntent$StateHolder;->getProgressTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cymobile/ymwork/act/FetchImageForViewIntent;->mStateHolder:Lcom/cymobile/ymwork/act/FetchImageForViewIntent$StateHolder;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/FetchImageForViewIntent$StateHolder;->getProgressMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/cymobile/ymwork/act/FetchImageForViewIntent;->startProgressBar(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_0
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FetchImageForViewIntent;->mStateHolder:Lcom/cymobile/ymwork/act/FetchImageForViewIntent$StateHolder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/act/FetchImageForViewIntent$StateHolder;->setActivity(Lcom/cymobile/ymwork/act/FetchImageForViewIntent;)V

    .line 161
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FetchImageForViewIntent;->mStateHolder:Lcom/cymobile/ymwork/act/FetchImageForViewIntent$StateHolder;

    return-object v0
.end method
