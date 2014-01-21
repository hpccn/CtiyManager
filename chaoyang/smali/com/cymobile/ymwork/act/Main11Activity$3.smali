.class Lcom/cymobile/ymwork/act/Main11Activity$3;
.super Ljava/lang/Object;
.source "Main11Activity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/Main11Activity;->ensureUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/Main11Activity;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/Main11Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/Main11Activity$3;->this$0:Lcom/cymobile/ymwork/act/Main11Activity;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/cymobile/ymwork/act/Main11Activity$3;->this$0:Lcom/cymobile/ymwork/act/Main11Activity;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/Main11Activity;->onBackPressed()V

    .line 116
    return-void
.end method
