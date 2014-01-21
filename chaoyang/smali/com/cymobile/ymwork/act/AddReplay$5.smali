.class Lcom/cymobile/ymwork/act/AddReplay$5;
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
    iput-object p1, p0, Lcom/cymobile/ymwork/act/AddReplay$5;->this$0:Lcom/cymobile/ymwork/act/AddReplay;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/cymobile/ymwork/act/AddReplay$5;->this$0:Lcom/cymobile/ymwork/act/AddReplay;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/act/AddReplay;->showDialog(I)V

    .line 121
    return-void
.end method
