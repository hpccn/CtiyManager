.class Lcom/cymobile/ymwork/act/MainClassFireServiceAct$7;
.super Ljava/lang/Object;
.source "MainClassFireServiceAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->ensureUiListView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/MainClassFireServiceAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$7;->this$0:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;

    .line 613
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 615
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$7;->this$0:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;

    #getter for: Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->access$7(Lcom/cymobile/ymwork/act/MainClassFireServiceAct;)Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$7;->this$0:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->startTask(Lcom/cymobile/ymwork/act/MainClassFireServiceAct;)V

    .line 616
    return-void
.end method
