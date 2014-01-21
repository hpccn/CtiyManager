.class Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity$6;
.super Ljava/lang/Object;
.source "ShopDetailsConstructionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;->ensureUi()V
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
    iput-object p1, p0, Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity$6;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;

    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 396
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity$6;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;

    iget-object v1, p0, Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity$6;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;->startTask(Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;)V

    .line 397
    return-void
.end method
