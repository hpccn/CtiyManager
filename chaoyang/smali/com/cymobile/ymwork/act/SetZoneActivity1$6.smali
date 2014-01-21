.class Lcom/cymobile/ymwork/act/SetZoneActivity1$6;
.super Ljava/lang/Object;
.source "SetZoneActivity1.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/SetZoneActivity1;->resetStreetZoneSpinner()V
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
    iput-object p1, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1$6;->this$0:Lcom/cymobile/ymwork/act/SetZoneActivity1;

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1$6;->this$0:Lcom/cymobile/ymwork/act/SetZoneActivity1;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/SetZoneActivity1;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1$6;->this$0:Lcom/cymobile/ymwork/act/SetZoneActivity1;

    #getter for: Lcom/cymobile/ymwork/act/SetZoneActivity1;->streetZoneSpinner:Landroid/widget/Spinner;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/SetZoneActivity1;->access$4(Lcom/cymobile/ymwork/act/SetZoneActivity1;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->performClick()Z

    .line 299
    :cond_0
    return-void
.end method
