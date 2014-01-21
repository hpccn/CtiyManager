.class Lcom/cymobile/ymwork/widget/SegmentedButton$1;
.super Ljava/lang/Object;
.source "SegmentedButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/widget/SegmentedButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/widget/SegmentedButton;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/widget/SegmentedButton;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/widget/SegmentedButton$1;->this$0:Lcom/cymobile/ymwork/widget/SegmentedButton;

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 274
    move-object v0, p1

    check-cast v0, Landroid/widget/Button;

    .line 275
    .local v0, btnNext:Landroid/widget/Button;
    invoke-virtual {v0}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 280
    .local v1, btnNextIndex:I
    iget-object v2, p0, Lcom/cymobile/ymwork/widget/SegmentedButton$1;->this$0:Lcom/cymobile/ymwork/widget/SegmentedButton;

    iget-object v3, p0, Lcom/cymobile/ymwork/widget/SegmentedButton$1;->this$0:Lcom/cymobile/ymwork/widget/SegmentedButton;

    #getter for: Lcom/cymobile/ymwork/widget/SegmentedButton;->mSelectedButtonIndex:I
    invoke-static {v3}, Lcom/cymobile/ymwork/widget/SegmentedButton;->access$0(Lcom/cymobile/ymwork/widget/SegmentedButton;)I

    move-result v3

    #calls: Lcom/cymobile/ymwork/widget/SegmentedButton;->handleStateChange(II)V
    invoke-static {v2, v3, v1}, Lcom/cymobile/ymwork/widget/SegmentedButton;->access$1(Lcom/cymobile/ymwork/widget/SegmentedButton;II)V

    .line 282
    iget-object v2, p0, Lcom/cymobile/ymwork/widget/SegmentedButton$1;->this$0:Lcom/cymobile/ymwork/widget/SegmentedButton;

    #getter for: Lcom/cymobile/ymwork/widget/SegmentedButton;->mOnClickListenerExternal:Lcom/cymobile/ymwork/widget/SegmentedButton$OnClickListenerSegmentedButton;
    invoke-static {v2}, Lcom/cymobile/ymwork/widget/SegmentedButton;->access$2(Lcom/cymobile/ymwork/widget/SegmentedButton;)Lcom/cymobile/ymwork/widget/SegmentedButton$OnClickListenerSegmentedButton;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 283
    iget-object v2, p0, Lcom/cymobile/ymwork/widget/SegmentedButton$1;->this$0:Lcom/cymobile/ymwork/widget/SegmentedButton;

    #getter for: Lcom/cymobile/ymwork/widget/SegmentedButton;->mOnClickListenerExternal:Lcom/cymobile/ymwork/widget/SegmentedButton$OnClickListenerSegmentedButton;
    invoke-static {v2}, Lcom/cymobile/ymwork/widget/SegmentedButton;->access$2(Lcom/cymobile/ymwork/widget/SegmentedButton;)Lcom/cymobile/ymwork/widget/SegmentedButton$OnClickListenerSegmentedButton;

    move-result-object v2

    iget-object v3, p0, Lcom/cymobile/ymwork/widget/SegmentedButton$1;->this$0:Lcom/cymobile/ymwork/widget/SegmentedButton;

    #getter for: Lcom/cymobile/ymwork/widget/SegmentedButton;->mSelectedButtonIndex:I
    invoke-static {v3}, Lcom/cymobile/ymwork/widget/SegmentedButton;->access$0(Lcom/cymobile/ymwork/widget/SegmentedButton;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/cymobile/ymwork/widget/SegmentedButton$OnClickListenerSegmentedButton;->onClick(I)V

    .line 285
    :cond_0
    return-void
.end method
