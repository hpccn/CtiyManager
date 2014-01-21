.class Lcom/cymobile/ymwork/act/Main12Activity$5;
.super Ljava/lang/Object;
.source "Main12Activity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/Main12Activity;->ensureUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/Main12Activity;

.field private final synthetic val$shopListIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/Main12Activity;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/Main12Activity$5;->this$0:Lcom/cymobile/ymwork/act/Main12Activity;

    iput-object p2, p0, Lcom/cymobile/ymwork/act/Main12Activity$5;->val$shopListIntent:Landroid/content/Intent;

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/cymobile/ymwork/act/Main12Activity$5;->val$shopListIntent:Landroid/content/Intent;

    const-string v1, "Intent_ClassId"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 139
    iget-object v0, p0, Lcom/cymobile/ymwork/act/Main12Activity$5;->this$0:Lcom/cymobile/ymwork/act/Main12Activity;

    iget-object v1, p0, Lcom/cymobile/ymwork/act/Main12Activity$5;->val$shopListIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/act/Main12Activity;->startActivity(Landroid/content/Intent;)V

    .line 140
    return-void
.end method
