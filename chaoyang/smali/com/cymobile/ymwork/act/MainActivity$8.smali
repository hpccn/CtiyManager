.class Lcom/cymobile/ymwork/act/MainActivity$8;
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

.field private final synthetic val$shopListIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/MainActivity;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/MainActivity$8;->this$0:Lcom/cymobile/ymwork/act/MainActivity;

    iput-object p2, p0, Lcom/cymobile/ymwork/act/MainActivity$8;->val$shopListIntent:Landroid/content/Intent;

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainActivity$8;->val$shopListIntent:Landroid/content/Intent;

    const-string v1, "Intent_ClassId"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 194
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainActivity$8;->this$0:Lcom/cymobile/ymwork/act/MainActivity;

    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainActivity$8;->val$shopListIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/act/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 195
    return-void
.end method
