.class Lcom/cymobile/ymwork/search/MSCButton$1;
.super Ljava/lang/Object;
.source "MSCButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/search/MSCButton;->setupListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/search/MSCButton;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/search/MSCButton;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/search/MSCButton$1;->this$0:Lcom/cymobile/ymwork/search/MSCButton;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 30
    const-string v0, "MSCButton"

    const-string v1, "click..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    return-void
.end method
