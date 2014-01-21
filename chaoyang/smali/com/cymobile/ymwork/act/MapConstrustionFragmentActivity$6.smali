.class Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$6;
.super Ljava/lang/Object;
.source "MapConstrustionFragmentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->ensureUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$6;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 240
    const/4 v0, 0x0

    .line 241
    .local v0, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$6()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 242
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$6;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    .line 243
    const-class v2, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;

    .line 242
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 251
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$6;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->flag:Z
    invoke-static {v1}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$33(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 252
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$6;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    .line 253
    const-class v2, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;

    .line 252
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 254
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "userZoneId"

    iget-object v2, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$6;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    iget-object v2, v2, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->userZoneId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    const-string v1, "userZoneName"

    iget-object v2, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$6;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    iget-object v2, v2, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->userZoneName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    :goto_1
    const-string v1, "Intent_ClassId"

    invoke-static {}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$6()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 265
    const-string v1, "Intent_Days"

    iget-object v2, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$6;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->days:I
    invoke-static {v2}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$21(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 266
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$6;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    invoke-virtual {v1, v0}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 267
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$6;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->finish()V

    .line 268
    return-void

    .line 244
    :cond_1
    invoke-static {}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$6()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    invoke-static {}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$6()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    invoke-static {}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$6()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_3

    .line 245
    :cond_2
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$6;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    .line 246
    const-class v2, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;

    .line 245
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_0

    .line 247
    :cond_3
    invoke-static {}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$6()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 248
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$6;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    .line 249
    const-class v2, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;

    .line 248
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_0

    .line 257
    :cond_4
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$6;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->zoneId:Ljava/lang/String;
    invoke-static {v1}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$17(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 258
    const-string v1, "Intent_ZoneId"

    iget-object v2, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$6;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->zoneId:Ljava/lang/String;
    invoke-static {v2}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$17(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    :cond_5
    const-string v1, "EM"

    iget-object v2, p0, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity$6;->this$0:Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    #getter for: Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->mark:Ljava/lang/String;
    invoke-static {v2}, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;->access$7(Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method
