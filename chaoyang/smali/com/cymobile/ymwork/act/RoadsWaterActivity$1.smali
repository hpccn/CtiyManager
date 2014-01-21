.class Lcom/cymobile/ymwork/act/RoadsWaterActivity$1;
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
    iput-object p1, p0, Lcom/cymobile/ymwork/act/RoadsWaterActivity$1;->this$0:Lcom/cymobile/ymwork/act/RoadsWaterActivity;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/cymobile/ymwork/act/RoadsWaterActivity$1;->this$0:Lcom/cymobile/ymwork/act/RoadsWaterActivity;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/RoadsWaterActivity;->onBackPressed()V

    .line 68
    return-void
.end method
