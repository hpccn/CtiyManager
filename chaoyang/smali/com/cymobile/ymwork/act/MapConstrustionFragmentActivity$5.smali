.class Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$5;
.super Ljava/lang/Object;
.source "MapConstrustionFragmentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->ensureUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$5;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    .line 219
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$5;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    const v2, 0x7f080019

    invoke-virtual {v1, v2}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 220
    .local v0, rightBtn:Landroid/widget/ImageButton;
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$5;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    iget-object v1, v1, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->mapFragment:Lcom/cymobile/ymwork/act/MapConstrustionDetailFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$5;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    iget-object v1, v1, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->mapFragment:Lcom/cymobile/ymwork/act/MapConstrustionDetailFragment;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/MapConstrustionDetailFragment;->getMap()Lcom/amap/api/maps/AMap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 221
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$5;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->mapNormal:Z
    invoke-static {v1}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$31(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 222
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$5;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    const/4 v2, 0x0

    #setter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->mapNormal:Z
    invoke-static {v1, v2}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$32(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;Z)V

    .line 223
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$5;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    iget-object v1, v1, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->mapFragment:Lcom/cymobile/ymwork/act/MapConstrustionDetailFragment;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/MapConstrustionDetailFragment;->getMap()Lcom/amap/api/maps/AMap;

    move-result-object v1

    .line 224
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/AMap;->setMapType(I)V

    .line 225
    const v1, 0x7f020159

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$5;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #setter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->mapNormal:Z
    invoke-static {v1, v3}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$32(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;Z)V

    .line 228
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$5;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    iget-object v1, v1, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->mapFragment:Lcom/cymobile/ymwork/act/MapConstrustionDetailFragment;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/MapConstrustionDetailFragment;->getMap()Lcom/amap/api/maps/AMap;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/amap/api/maps/AMap;->setMapType(I)V

    .line 229
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$5;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    iget-object v1, v1, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->mapFragment:Lcom/cymobile/ymwork/act/MapConstrustionDetailFragment;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/MapConstrustionDetailFragment;->getMap()Lcom/amap/api/maps/AMap;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/amap/api/maps/AMap;->setTrafficEnabled(Z)V

    .line 230
    const v1, 0x7f020158

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0
.end method
