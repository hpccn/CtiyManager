.class Lcom/cymobile/ymwork/act/MainExtra18Activity$10;
.super Ljava/lang/Object;
.source "MainExtra18Activity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/MainExtra18Activity;->ensureUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/MainExtra18Activity;

.field private final synthetic val$shopListIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/MainExtra18Activity;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/MainExtra18Activity$10;->this$0:Lcom/cymobile/ymwork/act/MainExtra18Activity;

    iput-object p2, p0, Lcom/cymobile/ymwork/act/MainExtra18Activity$10;->val$shopListIntent:Landroid/content/Intent;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainExtra18Activity$10;->val$shopListIntent:Landroid/content/Intent;

    const-string v1, "userZoneId"

    const-string v2, "110105202"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainExtra18Activity$10;->val$shopListIntent:Landroid/content/Intent;

    const-string v1, "userZoneName"

    const-string v2, "\u5341\u516b\u91cc\u5e97\u5730\u533a"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainExtra18Activity$10;->val$shopListIntent:Landroid/content/Intent;

    const-string v1, "Intent_ClassId"

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 148
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainExtra18Activity$10;->this$0:Lcom/cymobile/ymwork/act/MainExtra18Activity;

    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainExtra18Activity$10;->val$shopListIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/act/MainExtra18Activity;->startActivity(Landroid/content/Intent;)V

    .line 149
    return-void
.end method
