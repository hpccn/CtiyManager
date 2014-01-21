.class Lcom/cymobile/ymwork/act/Main11Activity$5;
.super Ljava/lang/Object;
.source "Main11Activity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/Main11Activity;->ensureUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/Main11Activity;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/Main11Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/Main11Activity$5;->this$0:Lcom/cymobile/ymwork/act/Main11Activity;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 148
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/cymobile/ymwork/act/Main11Activity$5;->this$0:Lcom/cymobile/ymwork/act/Main11Activity;

    .line 149
    const-class v2, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;

    .line 148
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 150
    .local v0, shopListIntent:Landroid/content/Intent;
    const-string v1, "Intent_ClassId"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 151
    const-string v1, "EM"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    const-string v1, "userZoneId"

    iget-object v2, p0, Lcom/cymobile/ymwork/act/Main11Activity$5;->this$0:Lcom/cymobile/ymwork/act/Main11Activity;

    #getter for: Lcom/cymobile/ymwork/act/Main11Activity;->userZoneId:Ljava/lang/String;
    invoke-static {v2}, Lcom/cymobile/ymwork/act/Main11Activity;->access$1(Lcom/cymobile/ymwork/act/Main11Activity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    const-string v1, "userZoneName"

    iget-object v2, p0, Lcom/cymobile/ymwork/act/Main11Activity$5;->this$0:Lcom/cymobile/ymwork/act/Main11Activity;

    #getter for: Lcom/cymobile/ymwork/act/Main11Activity;->userZoneName:Ljava/lang/String;
    invoke-static {v2}, Lcom/cymobile/ymwork/act/Main11Activity;->access$2(Lcom/cymobile/ymwork/act/Main11Activity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    iget-object v1, p0, Lcom/cymobile/ymwork/act/Main11Activity$5;->this$0:Lcom/cymobile/ymwork/act/Main11Activity;

    invoke-virtual {v1, v0}, Lcom/cymobile/ymwork/act/Main11Activity;->startActivity(Landroid/content/Intent;)V

    .line 155
    return-void
.end method
