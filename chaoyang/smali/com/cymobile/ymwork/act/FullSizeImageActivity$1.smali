.class Lcom/cymobile/ymwork/act/FullSizeImageActivity$1;
.super Ljava/lang/Object;
.source "FullSizeImageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/FullSizeImageActivity;->ensureUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/FullSizeImageActivity;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/FullSizeImageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/FullSizeImageActivity$1;->this$0:Lcom/cymobile/ymwork/act/FullSizeImageActivity;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    const v3, 0x7f08004f

    const/4 v1, 0x0

    .line 127
    iget-object v2, p0, Lcom/cymobile/ymwork/act/FullSizeImageActivity$1;->this$0:Lcom/cymobile/ymwork/act/FullSizeImageActivity;

    #getter for: Lcom/cymobile/ymwork/act/FullSizeImageActivity;->toogleFullScreen:Z
    invoke-static {v2}, Lcom/cymobile/ymwork/act/FullSizeImageActivity;->access$2(Lcom/cymobile/ymwork/act/FullSizeImageActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    iget-object v2, p0, Lcom/cymobile/ymwork/act/FullSizeImageActivity$1;->this$0:Lcom/cymobile/ymwork/act/FullSizeImageActivity;

    invoke-virtual {v2, v3}, Lcom/cymobile/ymwork/act/FullSizeImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 129
    .local v0, imageIntro:Landroid/widget/LinearLayout;
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 134
    :goto_0
    iget-object v2, p0, Lcom/cymobile/ymwork/act/FullSizeImageActivity$1;->this$0:Lcom/cymobile/ymwork/act/FullSizeImageActivity;

    iget-object v3, p0, Lcom/cymobile/ymwork/act/FullSizeImageActivity$1;->this$0:Lcom/cymobile/ymwork/act/FullSizeImageActivity;

    #getter for: Lcom/cymobile/ymwork/act/FullSizeImageActivity;->toogleFullScreen:Z
    invoke-static {v3}, Lcom/cymobile/ymwork/act/FullSizeImageActivity;->access$2(Lcom/cymobile/ymwork/act/FullSizeImageActivity;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    #setter for: Lcom/cymobile/ymwork/act/FullSizeImageActivity;->toogleFullScreen:Z
    invoke-static {v2, v1}, Lcom/cymobile/ymwork/act/FullSizeImageActivity;->access$3(Lcom/cymobile/ymwork/act/FullSizeImageActivity;Z)V

    .line 135
    return-void

    .line 131
    .end local v0           #imageIntro:Landroid/widget/LinearLayout;
    :cond_0
    iget-object v2, p0, Lcom/cymobile/ymwork/act/FullSizeImageActivity$1;->this$0:Lcom/cymobile/ymwork/act/FullSizeImageActivity;

    invoke-virtual {v2, v3}, Lcom/cymobile/ymwork/act/FullSizeImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 132
    .restart local v0       #imageIntro:Landroid/widget/LinearLayout;
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 134
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method
