.class Lcom/cymobile/ymwork/act/MainExtra18Activity$4;
.super Ljava/lang/Object;
.source "MainExtra18Activity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/MainExtra18Activity;->ensureUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/MainExtra18Activity;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/MainExtra18Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/MainExtra18Activity$4;->this$0:Lcom/cymobile/ymwork/act/MainExtra18Activity;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainExtra18Activity$4;->this$0:Lcom/cymobile/ymwork/act/MainExtra18Activity;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/MainExtra18Activity;->onBackPressed()V

    .line 79
    return-void
.end method
