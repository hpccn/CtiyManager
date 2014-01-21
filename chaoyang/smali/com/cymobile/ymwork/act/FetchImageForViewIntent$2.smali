.class Lcom/cymobile/ymwork/act/FetchImageForViewIntent$2;
.super Ljava/lang/Object;
.source "FetchImageForViewIntent.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/FetchImageForViewIntent;->startProgressBar(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/FetchImageForViewIntent;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/FetchImageForViewIntent;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/FetchImageForViewIntent$2;->this$0:Lcom/cymobile/ymwork/act/FetchImageForViewIntent;

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dlg"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FetchImageForViewIntent$2;->this$0:Lcom/cymobile/ymwork/act/FetchImageForViewIntent;

    #getter for: Lcom/cymobile/ymwork/act/FetchImageForViewIntent;->mStateHolder:Lcom/cymobile/ymwork/act/FetchImageForViewIntent$StateHolder;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/FetchImageForViewIntent;->access$1(Lcom/cymobile/ymwork/act/FetchImageForViewIntent;)Lcom/cymobile/ymwork/act/FetchImageForViewIntent$StateHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/FetchImageForViewIntent$StateHolder;->cancel()V

    .line 171
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FetchImageForViewIntent$2;->this$0:Lcom/cymobile/ymwork/act/FetchImageForViewIntent;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/FetchImageForViewIntent;->finish()V

    .line 172
    return-void
.end method
