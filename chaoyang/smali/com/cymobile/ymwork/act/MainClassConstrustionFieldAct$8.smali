.class Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$8;
.super Ljava/lang/Object;
.source "MainClassConstrustionFieldAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->ensureUiListView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$8;->this$0:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;

    .line 560
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 562
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$8;->this$0:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->onBackPressed()V

    .line 563
    return-void
.end method
