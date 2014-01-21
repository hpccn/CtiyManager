.class Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter$ShopCoverFetcher;
.super Lcom/cymobile/ymwork/server/RemoteResourceManager$ResourceRequestObserver;
.source "ConstrustionFieldListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ShopCoverFetcher"
.end annotation


# instance fields
.field imageView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;


# direct methods
.method public constructor <init>(Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;Landroid/net/Uri;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter "requestUri"
    .parameter "view"

    .prologue
    .line 234
    iput-object p1, p0, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter$ShopCoverFetcher;->this$0:Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;

    .line 235
    invoke-direct {p0, p2}, Lcom/cymobile/ymwork/server/RemoteResourceManager$ResourceRequestObserver;-><init>(Landroid/net/Uri;)V

    .line 236
    iput-object p3, p0, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter$ShopCoverFetcher;->imageView:Landroid/widget/ImageView;

    .line 237
    return-void
.end method


# virtual methods
.method public requestReceived(Ljava/util/Observable;Landroid/net/Uri;)V
    .locals 5
    .parameter "observable"
    .parameter "uri"

    .prologue
    .line 241
    invoke-virtual {p1, p0}, Ljava/util/Observable;->deleteObserver(Ljava/util/Observer;)V

    .line 245
    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 246
    .local v2, option:Landroid/graphics/BitmapFactory$Options;
    iget-object v3, p0, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter$ShopCoverFetcher;->this$0:Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;

    #getter for: Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;->inTempStorage:I
    invoke-static {v3}, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;->access$0(Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;)I

    move-result v3

    new-array v3, v3, [B

    iput-object v3, v2, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 247
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v3, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 248
    iget-object v3, p0, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter$ShopCoverFetcher;->this$0:Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;

    #getter for: Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;->sampleRate:I
    invoke-static {v3}, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;->access$1(Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;)I

    move-result v3

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 249
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 250
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 251
    iget-object v3, p0, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter$ShopCoverFetcher;->this$0:Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;

    #getter for: Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;->mRrm:Lcom/cymobile/ymwork/server/RemoteResourceManager;
    invoke-static {v3}, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;->access$2(Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;)Lcom/cymobile/ymwork/server/RemoteResourceManager;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/cymobile/ymwork/server/RemoteResourceManager;->getInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 252
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter$ShopCoverFetcher;->this$0:Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;

    iget-object v3, v3, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    new-instance v4, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter$ShopCoverFetcher$1;

    invoke-direct {v4, p0, v0}, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter$ShopCoverFetcher$1;-><init>(Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter$ShopCoverFetcher;Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #option:Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return-void

    .line 259
    :catch_0
    move-exception v1

    .line 260
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
