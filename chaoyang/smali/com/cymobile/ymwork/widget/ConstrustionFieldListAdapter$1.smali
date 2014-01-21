.class Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter$1;
.super Ljava/lang/Object;
.source "ConstrustionFieldListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter$1;->this$0:Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter$1;->this$0:Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;->notifyDataSetChanged()V

    .line 306
    return-void
.end method
