.class Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$4;
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
    iput-object p1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$4;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/4 v7, 0x0

    .line 188
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$4;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->centerView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$28(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 190
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$4;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->mLocation:Landroid/location/Location;
    invoke-static {v1}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$9(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 191
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$4;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->aMap:Lcom/amap/api/maps/AMap;
    invoke-static {v1}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$10(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Lcom/amap/api/maps/AMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/maps/AMap;->getCameraPosition()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v1

    iget v0, v1, Lcom/amap/api/maps/model/CameraPosition;->zoom:F

    .line 192
    .local v0, a:F
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$4;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->aMap:Lcom/amap/api/maps/AMap;
    invoke-static {v1}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$10(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Lcom/amap/api/maps/AMap;

    move-result-object v1

    .line 193
    new-instance v2, Lcom/amap/api/maps/model/LatLng;

    iget-object v3, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$4;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->mLocation:Landroid/location/Location;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$9(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Landroid/location/Location;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    iget-object v5, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$4;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->mLocation:Landroid/location/Location;
    invoke-static {v5}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$9(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Landroid/location/Location;

    move-result-object v5

    .line 194
    invoke-virtual {v5}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    .line 193
    invoke-direct {v2, v3, v4, v5, v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    .line 192
    invoke-static {v2, v0}, Lcom/amap/api/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/amap/api/maps/model/LatLng;F)Lcom/amap/api/maps/CameraUpdate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/AMap;->animateCamera(Lcom/amap/api/maps/CameraUpdate;)V

    .line 196
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$4;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->isProgressShowing:Z
    invoke-static {v1}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$11(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$4;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->dismissDialog(I)V

    .line 198
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$4;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #setter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->isProgressShowing:Z
    invoke-static {v1, v7}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$12(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;Z)V

    .line 204
    .end local v0           #a:F
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$4;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #calls: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->startLocating()V
    invoke-static {v1}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$29(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)V

    .line 202
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$4;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #calls: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->doLocating()V
    invoke-static {v1}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$30(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)V

    goto :goto_0
.end method
