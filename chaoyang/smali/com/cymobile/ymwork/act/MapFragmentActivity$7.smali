.class Lcom/cymobile/ymwork/act/MapFragmentActivity$7;
.super Ljava/lang/Object;
.source "MapFragmentActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/MapFragmentActivity;->onCreateDialog(I)Landroid/app/Dialog;
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
    iput-object p1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$7;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    .line 568
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 573
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 574
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$7;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapFragmentActivity;->managerProxy:Lcom/amap/api/location/LocationManagerProxy;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->access$10(Lcom/cymobile/ymwork/act/MapFragmentActivity;)Lcom/amap/api/location/LocationManagerProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$7;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    iget-object v1, v1, Lcom/cymobile/ymwork/act/MapFragmentActivity;->listener:Lcom/amap/api/location/AMapLocationListener;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/LocationManagerProxy;->removeUpdates(Lcom/amap/api/location/AMapLocationListener;)V

    .line 575
    return-void
.end method
