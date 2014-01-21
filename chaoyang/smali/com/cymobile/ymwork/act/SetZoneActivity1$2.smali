.class Lcom/cymobile/ymwork/act/SetZoneActivity1$2;
.super Ljava/lang/Object;
.source "SetZoneActivity1.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/SetZoneActivity1;->ensureUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/SetZoneActivity1;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/SetZoneActivity1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1$2;->this$0:Lcom/cymobile/ymwork/act/SetZoneActivity1;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 115
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1$2;->this$0:Lcom/cymobile/ymwork/act/SetZoneActivity1;

    const-class v2, Lcom/cymobile/ymwork/act/SetZoneActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 116
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1$2;->this$0:Lcom/cymobile/ymwork/act/SetZoneActivity1;

    invoke-virtual {v1, v0}, Lcom/cymobile/ymwork/act/SetZoneActivity1;->startActivity(Landroid/content/Intent;)V

    .line 117
    iget-object v1, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1$2;->this$0:Lcom/cymobile/ymwork/act/SetZoneActivity1;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/SetZoneActivity1;->finish()V

    .line 118
    return-void
.end method
