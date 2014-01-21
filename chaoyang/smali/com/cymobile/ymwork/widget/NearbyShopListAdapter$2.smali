.class Lcom/cymobile/ymwork/widget/NearbyShopListAdapter$2;
.super Ljava/lang/Object;
.source "NearbyShopListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;

.field private final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field private final synthetic val$holder:Lcom/cymobile/ymwork/widget/NearbyShopListAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;Lcom/cymobile/ymwork/widget/NearbyShopListAdapter$ViewHolder;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter$2;->this$0:Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;

    iput-object p2, p0, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter$2;->val$holder:Lcom/cymobile/ymwork/widget/NearbyShopListAdapter$ViewHolder;

    iput-object p3, p0, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter$2;->val$bitmap:Landroid/graphics/Bitmap;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter$2;->val$holder:Lcom/cymobile/ymwork/widget/NearbyShopListAdapter$ViewHolder;

    iget-object v0, v0, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter$ViewHolder;->photo:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter$2;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 134
    return-void
.end method
