.class Lcom/cymobile/ymwork/act/SetZoneActivity$3;
.super Ljava/lang/Object;
.source "SetZoneActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/SetZoneActivity;->ensureUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/SetZoneActivity;

.field private final synthetic val$community:Landroid/widget/RadioButton;

.field private final synthetic val$street:Landroid/widget/RadioButton;

.field private final synthetic val$wholezone:Landroid/widget/RadioButton;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/SetZoneActivity;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/SetZoneActivity$3;->this$0:Lcom/cymobile/ymwork/act/SetZoneActivity;

    iput-object p2, p0, Lcom/cymobile/ymwork/act/SetZoneActivity$3;->val$wholezone:Landroid/widget/RadioButton;

    iput-object p3, p0, Lcom/cymobile/ymwork/act/SetZoneActivity$3;->val$street:Landroid/widget/RadioButton;

    iput-object p4, p0, Lcom/cymobile/ymwork/act/SetZoneActivity$3;->val$community:Landroid/widget/RadioButton;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 87
    iget-object v1, p0, Lcom/cymobile/ymwork/act/SetZoneActivity$3;->val$wholezone:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 88
    iget-object v1, p0, Lcom/cymobile/ymwork/act/SetZoneActivity$3;->this$0:Lcom/cymobile/ymwork/act/SetZoneActivity;

    #calls: Lcom/cymobile/ymwork/act/SetZoneActivity;->setZoneWholeZone()V
    invoke-static {v1}, Lcom/cymobile/ymwork/act/SetZoneActivity;->access$0(Lcom/cymobile/ymwork/act/SetZoneActivity;)V

    .line 89
    iget-object v1, p0, Lcom/cymobile/ymwork/act/SetZoneActivity$3;->this$0:Lcom/cymobile/ymwork/act/SetZoneActivity;

    iget-object v1, v1, Lcom/cymobile/ymwork/act/SetZoneActivity;->iSystemService:Lcom/cymobile/ymwork/ISystemService;

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/cymobile/ymwork/act/SetZoneActivity$3;->this$0:Lcom/cymobile/ymwork/act/SetZoneActivity;

    #calls: Lcom/cymobile/ymwork/act/SetZoneActivity;->readNumberFromService()V
    invoke-static {v1}, Lcom/cymobile/ymwork/act/SetZoneActivity;->access$1(Lcom/cymobile/ymwork/act/SetZoneActivity;)V

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/SetZoneActivity$3;->this$0:Lcom/cymobile/ymwork/act/SetZoneActivity;

    #calls: Lcom/cymobile/ymwork/act/SetZoneActivity;->gotoRister()V
    invoke-static {v1}, Lcom/cymobile/ymwork/act/SetZoneActivity;->access$2(Lcom/cymobile/ymwork/act/SetZoneActivity;)V

    .line 104
    :cond_1
    :goto_0
    return-void

    .line 93
    :cond_2
    iget-object v1, p0, Lcom/cymobile/ymwork/act/SetZoneActivity$3;->val$street:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 94
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/cymobile/ymwork/act/SetZoneActivity$3;->this$0:Lcom/cymobile/ymwork/act/SetZoneActivity;

    const-class v2, Lcom/cymobile/ymwork/act/SetZoneActivity1;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 95
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "Intent_zone"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 96
    iget-object v1, p0, Lcom/cymobile/ymwork/act/SetZoneActivity$3;->this$0:Lcom/cymobile/ymwork/act/SetZoneActivity;

    invoke-virtual {v1, v0}, Lcom/cymobile/ymwork/act/SetZoneActivity;->startActivity(Landroid/content/Intent;)V

    .line 97
    iget-object v1, p0, Lcom/cymobile/ymwork/act/SetZoneActivity$3;->this$0:Lcom/cymobile/ymwork/act/SetZoneActivity;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/SetZoneActivity;->finish()V

    goto :goto_0

    .line 98
    .end local v0           #intent:Landroid/content/Intent;
    :cond_3
    iget-object v1, p0, Lcom/cymobile/ymwork/act/SetZoneActivity$3;->val$community:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/cymobile/ymwork/act/SetZoneActivity$3;->this$0:Lcom/cymobile/ymwork/act/SetZoneActivity;

    const-class v2, Lcom/cymobile/ymwork/act/SetZoneActivity1;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 100
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "Intent_zone"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 101
    iget-object v1, p0, Lcom/cymobile/ymwork/act/SetZoneActivity$3;->this$0:Lcom/cymobile/ymwork/act/SetZoneActivity;

    invoke-virtual {v1, v0}, Lcom/cymobile/ymwork/act/SetZoneActivity;->startActivity(Landroid/content/Intent;)V

    .line 102
    iget-object v1, p0, Lcom/cymobile/ymwork/act/SetZoneActivity$3;->this$0:Lcom/cymobile/ymwork/act/SetZoneActivity;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/SetZoneActivity;->finish()V

    goto :goto_0
.end method
