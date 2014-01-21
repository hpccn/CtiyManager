.class Lcom/cymobile/ymwork/widget/SeparatedListAdapter$1;
.super Landroid/database/DataSetObserver;
.source "SeparatedListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/widget/SeparatedListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/widget/SeparatedListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/widget/SeparatedListAdapter$1;->this$0:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    .line 146
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/SeparatedListAdapter$1;->this$0:Lcom/cymobile/ymwork/widget/SeparatedListAdapter;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/widget/SeparatedListAdapter;->notifyDataSetChanged()V

    .line 150
    return-void
.end method
