.class Lcom/cymobile/ymwork/widget/DoubleClassList$2;
.super Ljava/lang/Object;
.source "DoubleClassList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/widget/DoubleClassList;->setOnDoubleItemClickListener(Lcom/cymobile/ymwork/widget/DoubleClassList$OnDoubleItemClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/widget/DoubleClassList;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/widget/DoubleClassList;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/widget/DoubleClassList$2;->this$0:Lcom/cymobile/ymwork/widget/DoubleClassList;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
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
    .line 83
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/DoubleClassList$2;->this$0:Lcom/cymobile/ymwork/widget/DoubleClassList;

    #getter for: Lcom/cymobile/ymwork/widget/DoubleClassList;->onItemClickListener:Lcom/cymobile/ymwork/widget/DoubleClassList$OnDoubleItemClickListener;
    invoke-static {v0}, Lcom/cymobile/ymwork/widget/DoubleClassList;->access$0(Lcom/cymobile/ymwork/widget/DoubleClassList;)Lcom/cymobile/ymwork/widget/DoubleClassList$OnDoubleItemClickListener;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    .line 84
    invoke-interface/range {v0 .. v5}, Lcom/cymobile/ymwork/widget/DoubleClassList$OnDoubleItemClickListener;->onSubItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 85
    return-void
.end method
