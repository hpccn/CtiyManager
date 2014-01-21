.class Lcom/cymobile/ymwork/act/StaticActivity$6;
.super Ljava/lang/Object;
.source "StaticActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/StaticActivity;->ensureUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/StaticActivity;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/StaticActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/StaticActivity$6;->this$0:Lcom/cymobile/ymwork/act/StaticActivity;

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
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/cymobile/ymwork/act/StaticActivity$6;->this$0:Lcom/cymobile/ymwork/act/StaticActivity;

    const-class v2, Lcom/cymobile/ymwork/act/PublicReportAct;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 139
    .local v0, shopListIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/cymobile/ymwork/act/StaticActivity$6;->this$0:Lcom/cymobile/ymwork/act/StaticActivity;

    invoke-virtual {v1, v0}, Lcom/cymobile/ymwork/act/StaticActivity;->startActivity(Landroid/content/Intent;)V

    .line 140
    return-void
.end method
