.class Lcom/cymobile/ymwork/act/MainClassFireServiceAct$4;
.super Ljava/lang/Object;
.source "MainClassFireServiceAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->ensureUi()V
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
    iput-object p1, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$4;->this$0:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;

    .line 445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 447
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$4;->this$0:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->onBackPressed()V

    .line 448
    return-void
.end method
