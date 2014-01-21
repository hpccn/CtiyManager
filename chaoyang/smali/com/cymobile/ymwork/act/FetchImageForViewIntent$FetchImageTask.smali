.class Lcom/cymobile/ymwork/act/FetchImageForViewIntent$FetchImageTask;
.super Landroid/os/AsyncTask;
.source "FetchImageForViewIntent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/act/FetchImageForViewIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FetchImageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mActivity:Lcom/cymobile/ymwork/act/FetchImageForViewIntent;

.field private final mConnectionTimeoutInSeconds:I

.field private mExtension:Ljava/lang/String;

.field private final mOutputPath:Ljava/lang/String;

.field private final mReadTimeoutInSeconds:I

.field private mReason:Ljava/lang/Exception;

.field private final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/cymobile/ymwork/act/FetchImageForViewIntent;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2
    .parameter "activity"
    .parameter "url"
    .parameter "extension"
    .parameter "connectionTimeoutInSeconds"
    .parameter "readTimeoutInSeconds"

    .prologue
    .line 272
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 274
    iput-object p1, p0, Lcom/cymobile/ymwork/act/FetchImageForViewIntent$FetchImageTask;->mActivity:Lcom/cymobile/ymwork/act/FetchImageForViewIntent;

    .line 275
    iput-object p2, p0, Lcom/cymobile/ymwork/act/FetchImageForViewIntent$FetchImageTask;->mUrl:Ljava/lang/String;

    .line 276
    iput-object p3, p0, Lcom/cymobile/ymwork/act/FetchImageForViewIntent$FetchImageTask;->mExtension:Ljava/lang/String;

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "tmp_fsq"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cymobile/ymwork/act/FetchImageForViewIntent$FetchImageTask;->mOutputPath:Ljava/lang/String;

    .line 278
    iput p4, p0, Lcom/cymobile/ymwork/act/FetchImageForViewIntent$FetchImageTask;->mConnectionTimeoutInSeconds:I

    .line 279
    iput p5, p0, Lcom/cymobile/ymwork/act/FetchImageForViewIntent$FetchImageTask;->mReadTimeoutInSeconds:I

    .line 280
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 5
    .parameter "params"

    .prologue
    .line 289
    :try_start_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/FetchImageForViewIntent$FetchImageTask;->mUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/cymobile/ymwork/act/FetchImageForViewIntent$FetchImageTask;->mOutputPath:Ljava/lang/String;

    iget v3, p0, Lcom/cymobile/ymwork/act/FetchImageForViewIntent$FetchImageTask;->mConnectionTimeoutInSeconds:I

    iget v4, p0, Lcom/cymobile/ymwork/act/FetchImageForViewIntent$FetchImageTask;->mReadTimeoutInSeconds:I

    invoke-static {v1, v2, v3, v4}, Lcom/cymobile/ymwork/act/FetchImageForViewIntent;->saveImage(Ljava/lang/String;Ljava/lang/String;II)V

    .line 290
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    :goto_0
    return-object v1

    .line 292
    :catch_0
    move-exception v0

    .line 293
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "FetchImageForViewIntent"

    const-string v2, "FetchImageTask: Exception while fetching image."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 294
    iput-object v0, p0, Lcom/cymobile/ymwork/act/FetchImageForViewIntent$FetchImageTask;->mReason:Ljava/lang/Exception;

    .line 296
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/act/FetchImageForViewIntent$FetchImageTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 309
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FetchImageForViewIntent$FetchImageTask;->mActivity:Lcom/cymobile/ymwork/act/FetchImageForViewIntent;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FetchImageForViewIntent$FetchImageTask;->mActivity:Lcom/cymobile/ymwork/act/FetchImageForViewIntent;

    .line 311
    new-instance v1, Lcom/cymobile/ymwork/server/error/ServerException;

    const-string v2, "Image download cancelled."

    invoke-direct {v1, v2}, Lcom/cymobile/ymwork/server/error/ServerException;-><init>(Ljava/lang/String;)V

    .line 310
    #calls: Lcom/cymobile/ymwork/act/FetchImageForViewIntent;->onFetchImageTaskComplete(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    invoke-static {v0, v3, v3, v3, v1}, Lcom/cymobile/ymwork/act/FetchImageForViewIntent;->access$0(Lcom/cymobile/ymwork/act/FetchImageForViewIntent;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 313
    :cond_0
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 301
    const-string v0, "FetchImageForViewIntent"

    const-string v1, "FetchImageTask: onPostExecute()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FetchImageForViewIntent$FetchImageTask;->mActivity:Lcom/cymobile/ymwork/act/FetchImageForViewIntent;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FetchImageForViewIntent$FetchImageTask;->mActivity:Lcom/cymobile/ymwork/act/FetchImageForViewIntent;

    iget-object v1, p0, Lcom/cymobile/ymwork/act/FetchImageForViewIntent$FetchImageTask;->mOutputPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/cymobile/ymwork/act/FetchImageForViewIntent$FetchImageTask;->mExtension:Ljava/lang/String;

    iget-object v3, p0, Lcom/cymobile/ymwork/act/FetchImageForViewIntent$FetchImageTask;->mReason:Ljava/lang/Exception;

    #calls: Lcom/cymobile/ymwork/act/FetchImageForViewIntent;->onFetchImageTaskComplete(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    invoke-static {v0, p1, v1, v2, v3}, Lcom/cymobile/ymwork/act/FetchImageForViewIntent;->access$0(Lcom/cymobile/ymwork/act/FetchImageForViewIntent;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 305
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/act/FetchImageForViewIntent$FetchImageTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method public setActivity(Lcom/cymobile/ymwork/act/FetchImageForViewIntent;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 283
    iput-object p1, p0, Lcom/cymobile/ymwork/act/FetchImageForViewIntent$FetchImageTask;->mActivity:Lcom/cymobile/ymwork/act/FetchImageForViewIntent;

    .line 284
    return-void
.end method
