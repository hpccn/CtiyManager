.class Lcom/cymobile/ymwork/act/SetZoneActivity1$4;
.super Ljava/lang/Object;
.source "SetZoneActivity1.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/SetZoneActivity1;->ensureUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/SetZoneActivity1;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/SetZoneActivity1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1$4;->this$0:Lcom/cymobile/ymwork/act/SetZoneActivity1;

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 159
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1$4;->this$0:Lcom/cymobile/ymwork/act/SetZoneActivity1;

    iget v0, v0, Lcom/cymobile/ymwork/act/SetZoneActivity1;->zoneIntent:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 160
    iget-object v0, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1$4;->this$0:Lcom/cymobile/ymwork/act/SetZoneActivity1;

    #calls: Lcom/cymobile/ymwork/act/SetZoneActivity1;->requestCommunitySpinner()V
    invoke-static {v0}, Lcom/cymobile/ymwork/act/SetZoneActivity1;->access$5(Lcom/cymobile/ymwork/act/SetZoneActivity1;)V

    .line 162
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 166
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
