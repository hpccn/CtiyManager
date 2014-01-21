.class Lcom/cymobile/ymwork/act/FullSizeImageActivity$2;
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
    iput-object p1, p0, Lcom/cymobile/ymwork/act/FullSizeImageActivity$2;->this$0:Lcom/cymobile/ymwork/act/FullSizeImageActivity;

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FullSizeImageActivity$2;->this$0:Lcom/cymobile/ymwork/act/FullSizeImageActivity;

    #calls: Lcom/cymobile/ymwork/act/FullSizeImageActivity;->startGalleryIntent()V
    invoke-static {v0}, Lcom/cymobile/ymwork/act/FullSizeImageActivity;->access$4(Lcom/cymobile/ymwork/act/FullSizeImageActivity;)V

    .line 151
    return-void
.end method
