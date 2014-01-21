.class Lcom/cymobile/ymwork/act/MapFragmentActivity$5;
.super Ljava/lang/Object;
.source "MapFragmentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/MapFragmentActivity;->ensureUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/MapFragmentActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$5;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    .line 195
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$5;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    const v2, 0x7f080019

    invoke-virtual {v1, v2}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 196
    .local v0, rightBtn:Landroid/widget/ImageButton;
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$5;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    iget-object v1, v1, Lcom/cymobile/ymwork/act/MapFragmentActivity;->mapFragment:Lcom/cymobile/ymwork/act/MapDetailFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$5;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    iget-object v1, v1, Lcom/cymobile/ymwork/act/MapFragmentActivity;->mapFragment:Lcom/cymobile/ymwork/act/MapDetailFragment;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/MapDetailFragment;->getMap()Lcom/amap/api/maps/AMap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 197
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$5;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapFragmentActivity;->mapNormal:Z
    invoke-static {v1}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->access$28(Lcom/cymobile/ymwork/act/MapFragmentActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 198
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$5;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    const/4 v2, 0x0

    #setter for: Lcom/cymobile/ymwork/act/MapFragmentActivity;->mapNormal:Z
    invoke-static {v1, v2}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->access$29(Lcom/cymobile/ymwork/act/MapFragmentActivity;Z)V

    .line 199
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$5;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    iget-object v1, v1, Lcom/cymobile/ymwork/act/MapFragmentActivity;->mapFragment:Lcom/cymobile/ymwork/act/MapDetailFragment;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/MapDetailFragment;->getMap()Lcom/amap/api/maps/AMap;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/AMap;->setMapType(I)V

    .line 200
    const v1, 0x7f020159

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$5;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    #setter for: Lcom/cymobile/ymwork/act/MapFragmentActivity;->mapNormal:Z
    invoke-static {v1, v3}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->access$29(Lcom/cymobile/ymwork/act/MapFragmentActivity;Z)V

    .line 203
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$5;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    iget-object v1, v1, Lcom/cymobile/ymwork/act/MapFragmentActivity;->mapFragment:Lcom/cymobile/ymwork/act/MapDetailFragment;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/MapDetailFragment;->getMap()Lcom/amap/api/maps/AMap;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/amap/api/maps/AMap;->setMapType(I)V

    .line 204
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$5;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    iget-object v1, v1, Lcom/cymobile/ymwork/act/MapFragmentActivity;->mapFragment:Lcom/cymobile/ymwork/act/MapDetailFragment;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/MapDetailFragment;->getMap()Lcom/amap/api/maps/AMap;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/amap/api/maps/AMap;->setTrafficEnabled(Z)V

    .line 205
    const v1, 0x7f020158

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0
.end method
