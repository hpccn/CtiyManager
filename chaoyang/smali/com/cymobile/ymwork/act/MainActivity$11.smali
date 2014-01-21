.class Lcom/cymobile/ymwork/act/MainActivity$11;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/MainActivity;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/MainActivity$11;->this$0:Lcom/cymobile/ymwork/act/MainActivity;

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 218
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainActivity$11;->this$0:Lcom/cymobile/ymwork/act/MainActivity;

    const-class v2, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 219
    .local v0, shopListIntent:Landroid/content/Intent;
    const-string v1, "Intent_ClassId"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 220
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainActivity$11;->this$0:Lcom/cymobile/ymwork/act/MainActivity;

    invoke-virtual {v1, v0}, Lcom/cymobile/ymwork/act/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 221
    return-void
.end method
