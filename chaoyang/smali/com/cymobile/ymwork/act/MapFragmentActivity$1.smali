.class Lcom/cymobile/ymwork/act/MapFragmentActivity$1;
.super Landroid/os/Handler;
.source "MapFragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/act/MapFragmentActivity;
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
    iput-object p1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    .line 465
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const/16 v11, 0x14

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v10, 0x0

    .line 467
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 468
    iget v4, p1, Landroid/os/Message;->what:I

    if-eqz v4, :cond_9

    .line 469
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 552
    :goto_0
    return-void

    .line 471
    :sswitch_0
    iget-object v4, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapFragmentActivity;->bd:Landroid/os/Bundle;
    invoke-static {v4}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->access$0(Lcom/cymobile/ymwork/act/MapFragmentActivity;)Landroid/os/Bundle;

    move-result-object v4

    if-nez v4, :cond_0

    .line 473
    :try_start_0
    iget-object v4, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    new-instance v5, Lcom/cymobile/ymwork/act/MapDetailFragment;

    invoke-direct {v5}, Lcom/cymobile/ymwork/act/MapDetailFragment;-><init>()V

    iput-object v5, v4, Lcom/cymobile/ymwork/act/MapFragmentActivity;->mapFragment:Lcom/cymobile/ymwork/act/MapDetailFragment;

    .line 474
    iget-object v4, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    invoke-virtual {v4}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    .line 475
    const v5, 0x7f080010

    iget-object v6, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    iget-object v6, v6, Lcom/cymobile/ymwork/act/MapFragmentActivity;->mapFragment:Lcom/cymobile/ymwork/act/MapDetailFragment;

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    .line 476
    invoke-virtual {v4}, Landroid/support/v4/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 481
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    const v5, 0x7f08002f

    invoke-virtual {v4, v5}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 483
    .local v1, commonTitle:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapFragmentActivity;->AreaName:Ljava/lang/String;
    invoke-static {v4}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->access$1(Lcom/cymobile/ymwork/act/MapFragmentActivity;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 484
    iget-object v4, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    const-string v5, ""

    #setter for: Lcom/cymobile/ymwork/act/MapFragmentActivity;->AreaName:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->access$2(Lcom/cymobile/ymwork/act/MapFragmentActivity;Ljava/lang/String;)V

    .line 486
    :cond_1
    iget-object v4, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapFragmentActivity;->shops:Lcom/cymobile/ymwork/types/Group;
    invoke-static {v4}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->access$3(Lcom/cymobile/ymwork/act/MapFragmentActivity;)Lcom/cymobile/ymwork/types/Group;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cymobile/ymwork/types/Group;->getNumber()I

    move-result v4

    if-nez v4, :cond_5

    .line 487
    invoke-static {}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->access$4()I

    move-result v4

    if-nez v4, :cond_3

    .line 488
    const-string v4, "\u65b0\u589e\u5efa\u7b51"

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 508
    :cond_2
    :goto_2
    iget-object v4, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    #calls: Lcom/cymobile/ymwork/act/MapFragmentActivity;->resetPaginate()V
    invoke-static {v4}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->access$5(Lcom/cymobile/ymwork/act/MapFragmentActivity;)V

    goto :goto_0

    .line 477
    .end local v1           #commonTitle:Landroid/widget/TextView;
    :catch_0
    move-exception v3

    .line 478
    .local v3, ee:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 489
    .end local v3           #ee:Ljava/lang/Exception;
    .restart local v1       #commonTitle:Landroid/widget/TextView;
    :cond_3
    invoke-static {}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->access$4()I

    move-result v4

    if-ne v4, v7, :cond_4

    .line 490
    const-string v4, "\u7591\u4f3c\u65b0\u589e\u5efa\u7b51"

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 491
    :cond_4
    invoke-static {}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->access$4()I

    move-result v4

    if-ne v4, v8, :cond_2

    .line 492
    const-string v4, "\u516c\u4f17\u4e3e\u62a5\u8fdd\u5efa"

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 496
    :cond_5
    invoke-static {}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->access$4()I

    move-result v4

    if-nez v4, :cond_6

    .line 497
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u65b0\u589e\u5efa\u7b51\u3010\u5171"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapFragmentActivity;->shops:Lcom/cymobile/ymwork/types/Group;
    invoke-static {v5}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->access$3(Lcom/cymobile/ymwork/act/MapFragmentActivity;)Lcom/cymobile/ymwork/types/Group;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/Group;->getNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 498
    const-string v5, "\u4ef6\u3011"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 497
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 499
    :cond_6
    invoke-static {}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->access$4()I

    move-result v4

    if-ne v4, v7, :cond_7

    .line 500
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u7591\u4f3c\u65b0\u589e\u5efa\u7b51\u3010\u5171"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapFragmentActivity;->shops:Lcom/cymobile/ymwork/types/Group;
    invoke-static {v5}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->access$3(Lcom/cymobile/ymwork/act/MapFragmentActivity;)Lcom/cymobile/ymwork/types/Group;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/Group;->getNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 501
    const-string v5, "\u4ef6\u3011"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 500
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 502
    :cond_7
    invoke-static {}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->access$4()I

    move-result v4

    if-ne v4, v8, :cond_2

    .line 503
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u516c\u4f17\u4e3e\u62a5\u8fdd\u5efa\u3010\u5171"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapFragmentActivity;->shops:Lcom/cymobile/ymwork/types/Group;
    invoke-static {v5}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->access$3(Lcom/cymobile/ymwork/act/MapFragmentActivity;)Lcom/cymobile/ymwork/types/Group;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/Group;->getNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 504
    const-string v5, "\u4ef6\u3011"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 503
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 512
    .end local v1           #commonTitle:Landroid/widget/TextView;
    :sswitch_1
    iget-object v4, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    iget-object v4, v4, Lcom/cymobile/ymwork/act/MapFragmentActivity;->mapFragment:Lcom/cymobile/ymwork/act/MapDetailFragment;

    invoke-virtual {v4}, Lcom/cymobile/ymwork/act/MapDetailFragment;->setUpMap()V

    .line 513
    iget-object v4, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    #calls: Lcom/cymobile/ymwork/act/MapFragmentActivity;->resetPaginate()V
    invoke-static {v4}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->access$5(Lcom/cymobile/ymwork/act/MapFragmentActivity;)V

    goto/16 :goto_0

    .line 516
    :sswitch_2
    iget-object v4, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapFragmentActivity;->mLocation:Landroid/location/Location;
    invoke-static {v4}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->access$6(Lcom/cymobile/ymwork/act/MapFragmentActivity;)Landroid/location/Location;

    move-result-object v4

    if-nez v4, :cond_8

    .line 518
    iget-object v4, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapFragmentActivity;->aMap:Lcom/amap/api/maps/AMap;
    invoke-static {v4}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->access$7(Lcom/cymobile/ymwork/act/MapFragmentActivity;)Lcom/amap/api/maps/AMap;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amap/api/maps/AMap;->getCameraPosition()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v4

    iget v0, v4, Lcom/amap/api/maps/model/CameraPosition;->zoom:F

    .line 519
    .local v0, a:F
    iget-object v4, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapFragmentActivity;->aMap:Lcom/amap/api/maps/AMap;
    invoke-static {v4}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->access$7(Lcom/cymobile/ymwork/act/MapFragmentActivity;)Lcom/amap/api/maps/AMap;

    move-result-object v4

    new-instance v5, Lcom/amap/api/maps/model/LatLng;

    const-wide v6, 0x4043f61f85d744f6L

    const-wide v8, 0x405d1c60a2014728L

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-static {v5, v0}, Lcom/amap/api/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/amap/api/maps/model/LatLng;F)Lcom/amap/api/maps/CameraUpdate;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amap/api/maps/AMap;->animateCamera(Lcom/amap/api/maps/CameraUpdate;)V

    .line 523
    iget-object v4, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapFragmentActivity;->isProgressShowing:Z
    invoke-static {v4}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->access$8(Lcom/cymobile/ymwork/act/MapFragmentActivity;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 524
    iget-object v4, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    invoke-virtual {v4, v11}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->dismissDialog(I)V

    .line 525
    iget-object v4, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    #setter for: Lcom/cymobile/ymwork/act/MapFragmentActivity;->isProgressShowing:Z
    invoke-static {v4, v10}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->access$9(Lcom/cymobile/ymwork/act/MapFragmentActivity;Z)V

    .line 529
    .end local v0           #a:F
    :cond_8
    :try_start_1
    iget-object v4, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapFragmentActivity;->managerProxy:Lcom/amap/api/location/LocationManagerProxy;
    invoke-static {v4}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->access$10(Lcom/cymobile/ymwork/act/MapFragmentActivity;)Lcom/amap/api/location/LocationManagerProxy;

    move-result-object v4

    iget-object v5, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    iget-object v5, v5, Lcom/cymobile/ymwork/act/MapFragmentActivity;->listener:Lcom/amap/api/location/AMapLocationListener;

    invoke-virtual {v4, v5}, Lcom/amap/api/location/LocationManagerProxy;->removeUpdates(Lcom/amap/api/location/AMapLocationListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 530
    :catch_1
    move-exception v2

    .line 531
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 537
    .end local v2           #e:Ljava/lang/Exception;
    :cond_9
    iget-object v5, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/location/Location;

    #setter for: Lcom/cymobile/ymwork/act/MapFragmentActivity;->mLocation:Landroid/location/Location;
    invoke-static {v5, v4}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->access$11(Lcom/cymobile/ymwork/act/MapFragmentActivity;Landroid/location/Location;)V

    .line 538
    iget-object v4, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapFragmentActivity;->aMap:Lcom/amap/api/maps/AMap;
    invoke-static {v4}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->access$7(Lcom/cymobile/ymwork/act/MapFragmentActivity;)Lcom/amap/api/maps/AMap;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amap/api/maps/AMap;->getCameraPosition()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v4

    iget v0, v4, Lcom/amap/api/maps/model/CameraPosition;->zoom:F

    .line 539
    .restart local v0       #a:F
    iget-object v4, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapFragmentActivity;->aMap:Lcom/amap/api/maps/AMap;
    invoke-static {v4}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->access$7(Lcom/cymobile/ymwork/act/MapFragmentActivity;)Lcom/amap/api/maps/AMap;

    move-result-object v4

    new-instance v5, Lcom/amap/api/maps/model/LatLng;

    iget-object v6, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapFragmentActivity;->mLocation:Landroid/location/Location;
    invoke-static {v6}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->access$6(Lcom/cymobile/ymwork/act/MapFragmentActivity;)Landroid/location/Location;

    move-result-object v6

    invoke-virtual {v6}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    iget-object v8, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapFragmentActivity;->mLocation:Landroid/location/Location;
    invoke-static {v8}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->access$6(Lcom/cymobile/ymwork/act/MapFragmentActivity;)Landroid/location/Location;

    move-result-object v8

    invoke-virtual {v8}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-static {v5, v0}, Lcom/amap/api/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/amap/api/maps/model/LatLng;F)Lcom/amap/api/maps/CameraUpdate;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amap/api/maps/AMap;->animateCamera(Lcom/amap/api/maps/CameraUpdate;)V

    .line 542
    iget-object v4, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapFragmentActivity;->isProgressShowing:Z
    invoke-static {v4}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->access$8(Lcom/cymobile/ymwork/act/MapFragmentActivity;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 543
    iget-object v4, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    invoke-virtual {v4, v11}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->dismissDialog(I)V

    .line 544
    iget-object v4, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    #setter for: Lcom/cymobile/ymwork/act/MapFragmentActivity;->isProgressShowing:Z
    invoke-static {v4, v10}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->access$9(Lcom/cymobile/ymwork/act/MapFragmentActivity;Z)V

    .line 547
    :cond_a
    :try_start_2
    iget-object v4, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapFragmentActivity;->managerProxy:Lcom/amap/api/location/LocationManagerProxy;
    invoke-static {v4}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->access$10(Lcom/cymobile/ymwork/act/MapFragmentActivity;)Lcom/amap/api/location/LocationManagerProxy;

    move-result-object v4

    iget-object v5, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$1;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    iget-object v5, v5, Lcom/cymobile/ymwork/act/MapFragmentActivity;->listener:Lcom/amap/api/location/AMapLocationListener;

    invoke-virtual {v4, v5}, Lcom/amap/api/location/LocationManagerProxy;->removeUpdates(Lcom/amap/api/location/AMapLocationListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 548
    :catch_2
    move-exception v2

    .line 549
    .restart local v2       #e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 469
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0xa -> :sswitch_0
        0x65 -> :sswitch_2
    .end sparse-switch
.end method
