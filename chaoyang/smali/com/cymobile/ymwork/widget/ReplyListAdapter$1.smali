.class Lcom/cymobile/ymwork/widget/ReplyListAdapter$1;
.super Ljava/lang/Object;
.source "ReplyListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/widget/ReplyListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/widget/ReplyListAdapter;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/widget/ReplyListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/widget/ReplyListAdapter$1;->this$0:Lcom/cymobile/ymwork/widget/ReplyListAdapter;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ReplyListAdapter$1;->this$0:Lcom/cymobile/ymwork/widget/ReplyListAdapter;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/widget/ReplyListAdapter;->notifyDataSetChanged()V

    .line 133
    return-void
.end method
