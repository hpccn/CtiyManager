.class Lcom/cymobile/ymwork/act/Static1Activity$2;
.super Ljava/lang/Object;
.source "Static1Activity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/Static1Activity;->ensureUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/Static1Activity;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/Static1Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/Static1Activity$2;->this$0:Lcom/cymobile/ymwork/act/Static1Activity;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 101
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/cymobile/ymwork/act/Static1Activity$2;->this$0:Lcom/cymobile/ymwork/act/Static1Activity;

    const-class v2, Lcom/cymobile/ymwork/act/NewBuildingReportAct;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    .local v0, shopListIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/cymobile/ymwork/act/Static1Activity$2;->this$0:Lcom/cymobile/ymwork/act/Static1Activity;

    invoke-virtual {v1, v0}, Lcom/cymobile/ymwork/act/Static1Activity;->startActivity(Landroid/content/Intent;)V

    .line 103
    return-void
.end method
