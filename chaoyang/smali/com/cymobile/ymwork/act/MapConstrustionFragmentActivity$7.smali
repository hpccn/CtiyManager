.class Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$7;
.super Ljava/lang/Object;
.source "MapConstrustionFragmentActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->onCreateDialog(I)Landroid/app/Dialog;
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
    iput-object p1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$7;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    .line 732
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 737
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 738
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$7;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->managerProxy:Lcom/amap/api/location/LocationManagerProxy;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$13(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Lcom/amap/api/location/LocationManagerProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$7;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    iget-object v1, v1, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->listener:Lcom/amap/api/location/AMapLocationListener;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/LocationManagerProxy;->removeUpdates(Lcom/amap/api/location/AMapLocationListener;)V

    .line 739
    return-void
.end method
