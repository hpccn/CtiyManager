.class Lcom/cymobile/ymwork/act/MapFragmentActivity$4;
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
    iput-object p1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$4;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/4 v7, 0x0

    .line 166
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$4;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapFragmentActivity;->centerView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->access$25(Lcom/cymobile/ymwork/act/MapFragmentActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 168
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$4;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapFragmentActivity;->mLocation:Landroid/location/Location;
    invoke-static {v1}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->access$6(Lcom/cymobile/ymwork/act/MapFragmentActivity;)Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 169
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$4;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapFragmentActivity;->aMap:Lcom/amap/api/maps/AMap;
    invoke-static {v1}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->access$7(Lcom/cymobile/ymwork/act/MapFragmentActivity;)Lcom/amap/api/maps/AMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/maps/AMap;->getCameraPosition()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v1

    iget v0, v1, Lcom/amap/api/maps/model/CameraPosition;->zoom:F

    .line 170
    .local v0, a:F
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$4;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapFragmentActivity;->aMap:Lcom/amap/api/maps/AMap;
    invoke-static {v1}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->access$7(Lcom/cymobile/ymwork/act/MapFragmentActivity;)Lcom/amap/api/maps/AMap;

    move-result-object v1

    new-instance v2, Lcom/amap/api/maps/model/LatLng;

    iget-object v3, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$4;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapFragmentActivity;->mLocation:Landroid/location/Location;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->access$6(Lcom/cymobile/ymwork/act/MapFragmentActivity;)Landroid/location/Location;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    iget-object v5, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$4;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapFragmentActivity;->mLocation:Landroid/location/Location;
    invoke-static {v5}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->access$6(Lcom/cymobile/ymwork/act/MapFragmentActivity;)Landroid/location/Location;

    move-result-object v5

    invoke-virtual {v5}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-static {v2, v0}, Lcom/amap/api/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/amap/api/maps/model/LatLng;F)Lcom/amap/api/maps/CameraUpdate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/AMap;->animateCamera(Lcom/amap/api/maps/CameraUpdate;)V

    .line 172
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$4;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapFragmentActivity;->isProgressShowing:Z
    invoke-static {v1}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->access$8(Lcom/cymobile/ymwork/act/MapFragmentActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$4;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->dismissDialog(I)V

    .line 174
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$4;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    #setter for: Lcom/cymobile/ymwork/act/MapFragmentActivity;->isProgressShowing:Z
    invoke-static {v1, v7}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->access$9(Lcom/cymobile/ymwork/act/MapFragmentActivity;Z)V

    .line 180
    .end local v0           #a:F
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$4;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    #calls: Lcom/cymobile/ymwork/act/MapFragmentActivity;->startLocating()V
    invoke-static {v1}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->access$26(Lcom/cymobile/ymwork/act/MapFragmentActivity;)V

    .line 178
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$4;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    #calls: Lcom/cymobile/ymwork/act/MapFragmentActivity;->doLocating()V
    invoke-static {v1}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->access$27(Lcom/cymobile/ymwork/act/MapFragmentActivity;)V

    goto :goto_0
.end method
