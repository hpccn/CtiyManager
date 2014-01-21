.class Lcom/cymobile/ymwork/widget/RangeFilterFragmentFire$1;
.super Ljava/lang/Object;
.source "RangeFilterFragmentFire.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/widget/RangeFilterFragmentFire;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/widget/RangeFilterFragmentFire;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/widget/RangeFilterFragmentFire;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentFire$1;->this$0:Lcom/cymobile/ymwork/widget/RangeFilterFragmentFire;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/RangeFilterFragmentFire$1;->this$0:Lcom/cymobile/ymwork/widget/RangeFilterFragmentFire;

    const/4 v1, 0x1

    #calls: Lcom/cymobile/ymwork/widget/RangeFilterFragmentFire;->dismissRange(Z)V
    invoke-static {v0, v1}, Lcom/cymobile/ymwork/widget/RangeFilterFragmentFire;->access$0(Lcom/cymobile/ymwork/widget/RangeFilterFragmentFire;Z)V

    .line 103
    return-void
.end method
