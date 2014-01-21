.class Lcom/cymobile/ymwork/act/MapFragmentActivity$3;
.super Ljava/lang/Object;
.source "MapFragmentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/MapFragmentActivity;->ensureUi()V
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
    iput-object p1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$3;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$3;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->onBackPressed()V

    .line 156
    return-void
.end method
