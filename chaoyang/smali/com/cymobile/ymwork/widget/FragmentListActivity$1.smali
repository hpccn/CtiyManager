.class Lcom/cymobile/ymwork/widget/FragmentListActivity$1;
.super Ljava/lang/Object;
.source "FragmentListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/widget/FragmentListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/widget/FragmentListActivity;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/widget/FragmentListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/widget/FragmentListActivity$1;->this$0:Lcom/cymobile/ymwork/widget/FragmentListActivity;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/FragmentListActivity$1;->this$0:Lcom/cymobile/ymwork/widget/FragmentListActivity;

    iget-object v0, v0, Lcom/cymobile/ymwork/widget/FragmentListActivity;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/cymobile/ymwork/widget/FragmentListActivity$1;->this$0:Lcom/cymobile/ymwork/widget/FragmentListActivity;

    iget-object v1, v1, Lcom/cymobile/ymwork/widget/FragmentListActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->focusableViewAvailable(Landroid/view/View;)V

    .line 32
    return-void
.end method
