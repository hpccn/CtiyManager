.class Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity$7;
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
    iput-object p1, p0, Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity$7;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;

    .line 402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 404
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity$7;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/ShopDetailsConstructionActivity;->onBackPressed()V

    .line 405
    return-void
.end method
