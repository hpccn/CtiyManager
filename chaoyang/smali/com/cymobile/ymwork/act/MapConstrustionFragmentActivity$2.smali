.class Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$2;
.super Ljava/lang/Object;
.source "MapConstrustionFragmentActivity.java"

# interfaces
.implements Lcom/amap/api/location/AMapLocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;
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
    iput-object p1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$2;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    .line 780
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2
    .parameter "location"

    .prologue
    .line 803
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 804
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 805
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$2;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    iget-object v1, v1, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 807
    return-void
.end method

.method public onLocationChanged(Lcom/amap/api/location/AMapLocation;)V
    .locals 2
    .parameter "location"

    .prologue
    .line 812
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 813
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 814
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$2;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    iget-object v1, v1, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 816
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 798
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 792
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 786
    return-void
.end method
