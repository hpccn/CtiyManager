.class Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity$ShopImageFetcher;
.super Lcom/cymobile/ymwork/server/RemoteResourceManager$ResourceRequestObserver;
.source "ShopDetailsConstructionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ShopImageFetcher"
.end annotation


# instance fields
.field imageView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;


# direct methods
.method public constructor <init>(Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;Landroid/net/Uri;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter "requestUri"
    .parameter "view"

    .prologue
    .line 726
    iput-object p1, p0, Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity$ShopImageFetcher;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;

    .line 727
    invoke-direct {p0, p2}, Lcom/cymobile/ymwork/server/RemoteResourceManager$ResourceRequestObserver;-><init>(Landroid/net/Uri;)V

    .line 728
    iput-object p3, p0, Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity$ShopImageFetcher;->imageView:Landroid/widget/ImageView;

    .line 729
    return-void
.end method


# virtual methods
.method public requestReceived(Ljava/util/Observable;Landroid/net/Uri;)V
    .locals 3
    .parameter "observable"
    .parameter "uri"

    .prologue
    .line 733
    invoke-virtual {p1, p0}, Ljava/util/Observable;->deleteObserver(Ljava/util/Observer;)V

    .line 736
    :try_start_0
    iget-object v2, p0, Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity$ShopImageFetcher;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;

    iget-object v2, v2, Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;->mRrm:Lcom/cymobile/ymwork/server/RemoteResourceManager;

    invoke-virtual {v2, p2}, Lcom/cymobile/ymwork/server/RemoteResourceManager;->getInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 737
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity$ShopImageFetcher;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 738
    iget-object v2, p0, Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity$ShopImageFetcher;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->refreshDrawableState()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 742
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 739
    :catch_0
    move-exception v1

    .line 740
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
