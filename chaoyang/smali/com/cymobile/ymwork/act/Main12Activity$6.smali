.class Lcom/cymobile/ymwork/act/Main12Activity$6;
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


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/Main12Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/Main12Activity$6;->this$0:Lcom/cymobile/ymwork/act/Main12Activity;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 144
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/cymobile/ymwork/act/Main12Activity$6;->this$0:Lcom/cymobile/ymwork/act/Main12Activity;

    const-class v2, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 145
    .local v0, shopListIntent:Landroid/content/Intent;
    const-string v1, "Intent_ClassId"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 146
    iget-object v1, p0, Lcom/cymobile/ymwork/act/Main12Activity$6;->this$0:Lcom/cymobile/ymwork/act/Main12Activity;

    invoke-virtual {v1, v0}, Lcom/cymobile/ymwork/act/Main12Activity;->startActivity(Landroid/content/Intent;)V

    .line 147
    return-void
.end method
