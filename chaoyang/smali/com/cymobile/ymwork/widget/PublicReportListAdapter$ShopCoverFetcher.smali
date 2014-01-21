.class Lcom/cymobile/ymwork/widget/PublicReportListAdapter$ShopCoverFetcher;
.super Lcom/cymobile/ymwork/server/RemoteResourceManager$ResourceRequestObserver;
.source "PublicReportListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/widget/PublicReportListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ShopCoverFetcher"
.end annotation


# instance fields
.field imageView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/cymobile/ymwork/widget/PublicReportListAdapter;


# direct methods
.method public constructor <init>(Lcom/cymobile/ymwork/widget/PublicReportListAdapter;Landroid/net/Uri;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter "requestUri"
    .parameter "view"

    .prologue
    .line 232
    iput-object p1, p0, Lcom/cymobile/ymwork/widget/PublicReportListAdapter$ShopCoverFetcher;->this$0:Lcom/cymobile/ymwork/widget/PublicReportListAdapter;

    .line 233
    invoke-direct {p0, p2}, Lcom/cymobile/ymwork/server/RemoteResourceManager$ResourceRequestObserver;-><init>(Landroid/net/Uri;)V

    .line 234
    iput-object p3, p0, Lcom/cymobile/ymwork/widget/PublicReportListAdapter$ShopCoverFetcher;->imageView:Landroid/widget/ImageView;

    .line 235
    return-void
.end method


# virtual methods
.method public requestReceived(Ljava/util/Observable;Landroid/net/Uri;)V
    .locals 5
    .parameter "observable"
    .parameter "uri"

    .prologue
    .line 239
    invoke-virtual {p1, p0}, Ljava/util/Observable;->deleteObserver(Ljava/util/Observer;)V

    .line 243
    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 244
    .local v2, option:Landroid/graphics/BitmapFactory$Options;
    iget-object v3, p0, Lcom/cymobile/ymwork/widget/PublicReportListAdapter$ShopCoverFetcher;->this$0:Lcom/cymobile/ymwork/widget/PublicReportListAdapter;

    #getter for: Lcom/cymobile/ymwork/widget/PublicReportListAdapter;->inTempStorage:I
    invoke-static {v3}, Lcom/cymobile/ymwork/widget/PublicReportListAdapter;->access$0(Lcom/cymobile/ymwork/widget/PublicReportListAdapter;)I

    move-result v3

    new-array v3, v3, [B

    iput-object v3, v2, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 245
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v3, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 246
    iget-object v3, p0, Lcom/cymobile/ymwork/widget/PublicReportListAdapter$ShopCoverFetcher;->this$0:Lcom/cymobile/ymwork/widget/PublicReportListAdapter;

    #getter for: Lcom/cymobile/ymwork/widget/PublicReportListAdapter;->sampleRate:I
    invoke-static {v3}, Lcom/cymobile/ymwork/widget/PublicReportListAdapter;->access$1(Lcom/cymobile/ymwork/widget/PublicReportListAdapter;)I

    move-result v3

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 247
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 248
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 249
    iget-object v3, p0, Lcom/cymobile/ymwork/widget/PublicReportListAdapter$ShopCoverFetcher;->this$0:Lcom/cymobile/ymwork/widget/PublicReportListAdapter;

    #getter for: Lcom/cymobile/ymwork/widget/PublicReportListAdapter;->mRrm:Lcom/cymobile/ymwork/server/RemoteResourceManager;
    invoke-static {v3}, Lcom/cymobile/ymwork/widget/PublicReportListAdapter;->access$2(Lcom/cymobile/ymwork/widget/PublicReportListAdapter;)Lcom/cymobile/ymwork/server/RemoteResourceManager;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/cymobile/ymwork/server/RemoteResourceManager;->getInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 250
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/cymobile/ymwork/widget/PublicReportListAdapter$ShopCoverFetcher;->this$0:Lcom/cymobile/ymwork/widget/PublicReportListAdapter;

    iget-object v3, v3, Lcom/cymobile/ymwork/widget/PublicReportListAdapter;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    new-instance v4, Lcom/cymobile/ymwork/widget/PublicReportListAdapter$ShopCoverFetcher$1;

    invoke-direct {v4, p0, v0}, Lcom/cymobile/ymwork/widget/PublicReportListAdapter$ShopCoverFetcher$1;-><init>(Lcom/cymobile/ymwork/widget/PublicReportListAdapter$ShopCoverFetcher;Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #option:Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return-void

    .line 257
    :catch_0
    move-exception v1

    .line 258
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
