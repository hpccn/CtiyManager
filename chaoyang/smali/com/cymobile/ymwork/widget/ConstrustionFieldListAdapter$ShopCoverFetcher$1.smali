.class Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter$ShopCoverFetcher$1;
.super Ljava/lang/Object;
.source "ConstrustionFieldListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter$ShopCoverFetcher;->requestReceived(Ljava/util/Observable;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter$ShopCoverFetcher;

.field private final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter$ShopCoverFetcher;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter$ShopCoverFetcher$1;->this$1:Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter$ShopCoverFetcher;

    iput-object p2, p0, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter$ShopCoverFetcher$1;->val$bitmap:Landroid/graphics/Bitmap;

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter$ShopCoverFetcher$1;->this$1:Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter$ShopCoverFetcher;

    iget-object v0, v0, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter$ShopCoverFetcher;->imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter$ShopCoverFetcher$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 257
    return-void
.end method
