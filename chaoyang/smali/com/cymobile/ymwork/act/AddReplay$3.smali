.class Lcom/cymobile/ymwork/act/AddReplay$3;
.super Ljava/lang/Object;
.source "AddReplay.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/AddReplay;->initUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/AddReplay;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/AddReplay;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/AddReplay$3;->this$0:Lcom/cymobile/ymwork/act/AddReplay;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/cymobile/ymwork/act/AddReplay$3;->this$0:Lcom/cymobile/ymwork/act/AddReplay;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/AddReplay;->onBackPressed()V

    .line 99
    return-void
.end method
