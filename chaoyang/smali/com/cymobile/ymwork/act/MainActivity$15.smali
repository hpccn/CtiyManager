.class Lcom/cymobile/ymwork/act/MainActivity$15;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/MainActivity;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/MainActivity$15;->this$0:Lcom/cymobile/ymwork/act/MainActivity;

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 246
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainActivity$15;->this$0:Lcom/cymobile/ymwork/act/MainActivity;

    invoke-virtual {v0, p1}, Lcom/cymobile/ymwork/act/MainActivity;->gotomain1(Landroid/view/View;)V

    return-void
.end method
