.class Lcom/cymobile/ymwork/act/RegisterActivity$1;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/RegisterActivity;->ensureUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/RegisterActivity;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/RegisterActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/RegisterActivity$1;->this$0:Lcom/cymobile/ymwork/act/RegisterActivity;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 156
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/cymobile/ymwork/act/RegisterActivity$1;->this$0:Lcom/cymobile/ymwork/act/RegisterActivity;

    const-class v2, Lcom/cymobile/ymwork/act/SetZoneActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 157
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/cymobile/ymwork/act/RegisterActivity$1;->this$0:Lcom/cymobile/ymwork/act/RegisterActivity;

    invoke-virtual {v1, v0}, Lcom/cymobile/ymwork/act/RegisterActivity;->startActivity(Landroid/content/Intent;)V

    .line 158
    iget-object v1, p0, Lcom/cymobile/ymwork/act/RegisterActivity$1;->this$0:Lcom/cymobile/ymwork/act/RegisterActivity;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/RegisterActivity;->finish()V

    .line 159
    return-void
.end method
