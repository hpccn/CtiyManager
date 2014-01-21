.class Lcom/cymobile/ymwork/act/MapFragmentActivity$6;
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
    iput-object p1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$6;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 215
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$6;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    const-class v2, Lcom/cymobile/ymwork/act/NearbySearchActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 217
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "Intent_ClassId"

    invoke-static {}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->access$4()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 218
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$6;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapFragmentActivity;->zoneId:Ljava/lang/String;
    invoke-static {v1}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->access$14(Lcom/cymobile/ymwork/act/MapFragmentActivity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 219
    const-string v1, "Intent_ZoneId"

    iget-object v2, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$6;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapFragmentActivity;->zoneId:Ljava/lang/String;
    invoke-static {v2}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->access$14(Lcom/cymobile/ymwork/act/MapFragmentActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    :cond_0
    const-string v1, "Intent_Days"

    iget-object v2, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$6;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapFragmentActivity;->days:I
    invoke-static {v2}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->access$18(Lcom/cymobile/ymwork/act/MapFragmentActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 222
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$6;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    invoke-virtual {v1, v0}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 223
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$6;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->finish()V

    .line 224
    return-void
.end method
