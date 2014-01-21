.class Lcom/cymobile/ymwork/act/RoadsWaterActivity$2;
.super Ljava/lang/Object;
.source "RoadsWaterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/RoadsWaterActivity;->ensureUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/RoadsWaterActivity;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/RoadsWaterActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/RoadsWaterActivity$2;->this$0:Lcom/cymobile/ymwork/act/RoadsWaterActivity;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    .line 74
    iget-object v1, p0, Lcom/cymobile/ymwork/act/RoadsWaterActivity$2;->this$0:Lcom/cymobile/ymwork/act/RoadsWaterActivity;

    const v2, 0x7f080030

    invoke-virtual {v1, v2}, Lcom/cymobile/ymwork/act/RoadsWaterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 75
    .local v0, rightBtn:Landroid/widget/ImageButton;
    iget-object v1, p0, Lcom/cymobile/ymwork/act/RoadsWaterActivity$2;->this$0:Lcom/cymobile/ymwork/act/RoadsWaterActivity;

    iget-object v1, v1, Lcom/cymobile/ymwork/act/RoadsWaterActivity;->mapFragment:Lcom/cymobile/ymwork/act/MapDetailFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cymobile/ymwork/act/RoadsWaterActivity$2;->this$0:Lcom/cymobile/ymwork/act/RoadsWaterActivity;

    iget-object v1, v1, Lcom/cymobile/ymwork/act/RoadsWaterActivity;->mapFragment:Lcom/cymobile/ymwork/act/MapDetailFragment;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/MapDetailFragment;->getMap()Lcom/amap/api/maps/AMap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/cymobile/ymwork/act/RoadsWaterActivity$2;->this$0:Lcom/cymobile/ymwork/act/RoadsWaterActivity;

    #getter for: Lcom/cymobile/ymwork/act/RoadsWaterActivity;->mapNormal:Z
    invoke-static {v1}, Lcom/cymobile/ymwork/act/RoadsWaterActivity;->access$0(Lcom/cymobile/ymwork/act/RoadsWaterActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 77
    iget-object v1, p0, Lcom/cymobile/ymwork/act/RoadsWaterActivity$2;->this$0:Lcom/cymobile/ymwork/act/RoadsWaterActivity;

    const/4 v2, 0x0

    #setter for: Lcom/cymobile/ymwork/act/RoadsWaterActivity;->mapNormal:Z
    invoke-static {v1, v2}, Lcom/cymobile/ymwork/act/RoadsWaterActivity;->access$1(Lcom/cymobile/ymwork/act/RoadsWaterActivity;Z)V

    .line 78
    iget-object v1, p0, Lcom/cymobile/ymwork/act/RoadsWaterActivity$2;->this$0:Lcom/cymobile/ymwork/act/RoadsWaterActivity;

    iget-object v1, v1, Lcom/cymobile/ymwork/act/RoadsWaterActivity;->mapFragment:Lcom/cymobile/ymwork/act/MapDetailFragment;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/MapDetailFragment;->getMap()Lcom/amap/api/maps/AMap;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/AMap;->setMapType(I)V

    .line 79
    const v1, 0x7f020159

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    iget-object v1, p0, Lcom/cymobile/ymwork/act/RoadsWaterActivity$2;->this$0:Lcom/cymobile/ymwork/act/RoadsWaterActivity;

    #setter for: Lcom/cymobile/ymwork/act/RoadsWaterActivity;->mapNormal:Z
    invoke-static {v1, v3}, Lcom/cymobile/ymwork/act/RoadsWaterActivity;->access$1(Lcom/cymobile/ymwork/act/RoadsWaterActivity;Z)V

    .line 82
    iget-object v1, p0, Lcom/cymobile/ymwork/act/RoadsWaterActivity$2;->this$0:Lcom/cymobile/ymwork/act/RoadsWaterActivity;

    iget-object v1, v1, Lcom/cymobile/ymwork/act/RoadsWaterActivity;->mapFragment:Lcom/cymobile/ymwork/act/MapDetailFragment;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/MapDetailFragment;->getMap()Lcom/amap/api/maps/AMap;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/amap/api/maps/AMap;->setMapType(I)V

    .line 83
    const v1, 0x7f020158

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0
.end method
