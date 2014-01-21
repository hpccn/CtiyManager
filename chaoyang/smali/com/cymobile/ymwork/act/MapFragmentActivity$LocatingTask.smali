.class public Lcom/cymobile/ymwork/act/MapFragmentActivity$LocatingTask;
.super Landroid/os/AsyncTask;
.source "MapFragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/act/MapFragmentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocatingTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Landroid/location/Address;",
        ">;>;"
    }
.end annotation


# instance fields
.field private ex:Ljava/lang/Exception;

.field private mActivity:Lcom/cymobile/ymwork/act/MapFragmentActivity;

.field final synthetic this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;


# direct methods
.method public constructor <init>(Lcom/cymobile/ymwork/act/MapFragmentActivity;Lcom/cymobile/ymwork/act/MapFragmentActivity;)V
    .locals 0
    .parameter
    .parameter "activity"

    .prologue
    .line 659
    iput-object p1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$LocatingTask;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 660
    iput-object p2, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$LocatingTask;->mActivity:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    .line 661
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/act/MapFragmentActivity$LocatingTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 13
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation

    .prologue
    .line 669
    const/4 v6, 0x0

    .line 670
    .local v6, addresses:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$LocatingTask;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapFragmentActivity;->aMap:Lcom/amap/api/maps/AMap;
    invoke-static {v1}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->access$7(Lcom/cymobile/ymwork/act/MapFragmentActivity;)Lcom/amap/api/maps/AMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/maps/AMap;->getProjection()Lcom/amap/api/maps/Projection;

    move-result-object v10

    .line 671
    .local v10, projection:Lcom/amap/api/maps/Projection;
    invoke-virtual {v10}, Lcom/amap/api/maps/Projection;->getVisibleRegion()Lcom/amap/api/maps/model/VisibleRegion;

    move-result-object v12

    .line 672
    .local v12, visibleRegion:Lcom/amap/api/maps/model/VisibleRegion;
    iget-object v8, v12, Lcom/amap/api/maps/model/VisibleRegion;->latLngBounds:Lcom/amap/api/maps/model/LatLngBounds;

    .line 673
    .local v8, latLngBounds:Lcom/amap/api/maps/model/LatLngBounds;
    iget-object v9, v8, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    .line 674
    .local v9, northeast:Lcom/amap/api/maps/model/LatLng;
    iget-object v11, v8, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    .line 675
    .local v11, southwest:Lcom/amap/api/maps/model/LatLng;
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$LocatingTask;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    iget-wide v2, v9, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v4, v11, Lcom/amap/api/maps/model/LatLng;->latitude:D

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000

    div-double/2addr v2, v4

    #setter for: Lcom/cymobile/ymwork/act/MapFragmentActivity;->shoplat:D
    invoke-static {v1, v2, v3}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->access$21(Lcom/cymobile/ymwork/act/MapFragmentActivity;D)V

    .line 676
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$LocatingTask;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    iget-wide v2, v9, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v4, v11, Lcom/amap/api/maps/model/LatLng;->longitude:D

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000

    div-double/2addr v2, v4

    #setter for: Lcom/cymobile/ymwork/act/MapFragmentActivity;->shoplng:D
    invoke-static {v1, v2, v3}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->access$22(Lcom/cymobile/ymwork/act/MapFragmentActivity;D)V

    .line 677
    const-string v1, "MapFragmentActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Lat:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$LocatingTask;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapFragmentActivity;->shoplat:D
    invoke-static {v3}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->access$23(Lcom/cymobile/ymwork/act/MapFragmentActivity;)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",Lng:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$LocatingTask;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapFragmentActivity;->shoplng:D
    invoke-static {v3}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->access$24(Lcom/cymobile/ymwork/act/MapFragmentActivity;)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    new-instance v0, Lcom/amap/api/search/geocoder/Geocoder;

    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$LocatingTask;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    invoke-direct {v0, v1}, Lcom/amap/api/search/geocoder/Geocoder;-><init>(Landroid/content/Context;)V

    .line 680
    .local v0, geo:Lcom/amap/api/search/geocoder/Geocoder;
    :try_start_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$LocatingTask;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapFragmentActivity;->shoplat:D
    invoke-static {v1}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->access$23(Lcom/cymobile/ymwork/act/MapFragmentActivity;)D

    move-result-wide v1

    iget-object v3, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$LocatingTask;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapFragmentActivity;->shoplng:D
    invoke-static {v3}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->access$24(Lcom/cymobile/ymwork/act/MapFragmentActivity;)D

    move-result-wide v3

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/search/geocoder/Geocoder;->getFromLocation(DDI)Ljava/util/List;
    :try_end_0
    .catch Lcom/amap/api/search/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 687
    :goto_0
    return-object v6

    .line 682
    :catch_0
    move-exception v7

    .line 684
    .local v7, e:Lcom/amap/api/search/core/AMapException;
    invoke-virtual {v7}, Lcom/amap/api/search/core/AMapException;->printStackTrace()V

    .line 685
    iput-object v7, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$LocatingTask;->ex:Ljava/lang/Exception;

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 663
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 664
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$LocatingTask;->mActivity:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    #calls: Lcom/cymobile/ymwork/act/MapFragmentActivity;->preLocateTask()V
    invoke-static {v0}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->access$20(Lcom/cymobile/ymwork/act/MapFragmentActivity;)V

    .line 665
    return-void
.end method
