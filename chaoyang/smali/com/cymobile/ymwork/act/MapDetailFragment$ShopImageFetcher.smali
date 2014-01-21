.class Lcom/cymobile/ymwork/act/MapDetailFragment$ShopImageFetcher;
.super Lcom/cymobile/ymwork/server/RemoteResourceManager$ResourceRequestObserver;
.source "MapDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/act/MapDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ShopImageFetcher"
.end annotation


# instance fields
.field imageView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/cymobile/ymwork/act/MapDetailFragment;


# direct methods
.method public constructor <init>(Lcom/cymobile/ymwork/act/MapDetailFragment;Landroid/net/Uri;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter "requestUri"
    .parameter "view"

    .prologue
    .line 416
    iput-object p1, p0, Lcom/cymobile/ymwork/act/MapDetailFragment$ShopImageFetcher;->this$0:Lcom/cymobile/ymwork/act/MapDetailFragment;

    .line 417
    invoke-direct {p0, p2}, Lcom/cymobile/ymwork/server/RemoteResourceManager$ResourceRequestObserver;-><init>(Landroid/net/Uri;)V

    .line 418
    iput-object p3, p0, Lcom/cymobile/ymwork/act/MapDetailFragment$ShopImageFetcher;->imageView:Landroid/widget/ImageView;

    .line 419
    return-void
.end method


# virtual methods
.method public requestReceived(Ljava/util/Observable;Landroid/net/Uri;)V
    .locals 6
    .parameter "observable"
    .parameter "uri"

    .prologue
    .line 423
    invoke-virtual {p1, p0}, Ljava/util/Observable;->deleteObserver(Ljava/util/Observer;)V

    .line 426
    :try_start_0
    iget-object v2, p0, Lcom/cymobile/ymwork/act/MapDetailFragment$ShopImageFetcher;->this$0:Lcom/cymobile/ymwork/act/MapDetailFragment;

    iget-object v2, v2, Lcom/cymobile/ymwork/act/MapDetailFragment;->mRrm:Lcom/cymobile/ymwork/server/RemoteResourceManager;

    invoke-virtual {v2, p2}, Lcom/cymobile/ymwork/server/RemoteResourceManager;->getInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 427
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/cymobile/ymwork/act/MapDetailFragment$ShopImageFetcher;->imageView:Landroid/widget/ImageView;

    const/16 v3, 0x78

    .line 428
    const/16 v4, 0x78

    const/4 v5, 0x0

    .line 427
    invoke-static {v0, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 430
    iget-object v2, p0, Lcom/cymobile/ymwork/act/MapDetailFragment$ShopImageFetcher;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->refreshDrawableState()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 434
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 431
    :catch_0
    move-exception v1

    .line 432
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
