.class Lcom/cymobile/ymwork/widget/NearbyShopListAdapter$1;
.super Ljava/lang/Object;
.source "NearbyShopListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter$1;->this$0:Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter$1;->this$0:Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;->notifyDataSetChanged()V

    .line 298
    return-void
.end method
