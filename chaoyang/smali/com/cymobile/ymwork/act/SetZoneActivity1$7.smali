.class Lcom/cymobile/ymwork/act/SetZoneActivity1$7;
.super Ljava/lang/Object;
.source "SetZoneActivity1.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/SetZoneActivity1;->onCreateDialog(I)Landroid/app/Dialog;
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
    iput-object p1, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1$7;->this$0:Lcom/cymobile/ymwork/act/SetZoneActivity1;

    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 434
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 435
    iget-object v0, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1$7;->this$0:Lcom/cymobile/ymwork/act/SetZoneActivity1;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/SetZoneActivity1;->finish()V

    .line 436
    return-void
.end method
