.class Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity$2;
.super Landroid/os/Handler;
.source "ShopDetailsConstructionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity$2;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;

    .line 538
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 540
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 547
    :goto_0
    return-void

    .line 542
    :pswitch_0
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity$2;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;

    #calls: Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;->loadShop()V
    invoke-static {v0}, Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;->access$1(Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;)V

    goto :goto_0

    .line 540
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
