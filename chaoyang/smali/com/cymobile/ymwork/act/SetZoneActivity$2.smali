.class Lcom/cymobile/ymwork/act/SetZoneActivity$2;
.super Ljava/lang/Object;
.source "SetZoneActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

.field private final synthetic val$setzone_submit_button:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/SetZoneActivity;Landroid/widget/Button;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/SetZoneActivity$2;->this$0:Lcom/cymobile/ymwork/act/SetZoneActivity;

    iput-object p2, p0, Lcom/cymobile/ymwork/act/SetZoneActivity$2;->val$setzone_submit_button:Landroid/widget/Button;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 77
    if-eqz p2, :cond_0

    .line 78
    iget-object v0, p0, Lcom/cymobile/ymwork/act/SetZoneActivity$2;->val$setzone_submit_button:Landroid/widget/Button;

    const v1, 0x7f0900c6

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/cymobile/ymwork/act/SetZoneActivity$2;->val$setzone_submit_button:Landroid/widget/Button;

    const v1, 0x7f0900c7

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method
