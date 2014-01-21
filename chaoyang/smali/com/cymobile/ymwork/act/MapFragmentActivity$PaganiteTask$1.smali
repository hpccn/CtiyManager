.class Lcom/cymobile/ymwork/act/MapFragmentActivity$PaganiteTask$1;
.super Ljava/lang/Object;
.source "MapFragmentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/MapFragmentActivity$PaganiteTask;->doInBackground([Ljava/lang/Boolean;)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cymobile/ymwork/act/MapFragmentActivity$PaganiteTask;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/MapFragmentActivity$PaganiteTask;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$PaganiteTask$1;->this$1:Lcom/cymobile/ymwork/act/MapFragmentActivity$PaganiteTask;

    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 408
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MapFragmentActivity$PaganiteTask$1;->this$1:Lcom/cymobile/ymwork/act/MapFragmentActivity$PaganiteTask;

    #getter for: Lcom/cymobile/ymwork/act/MapFragmentActivity$PaganiteTask;->this$0:Lcom/cymobile/ymwork/act/MapFragmentActivity;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/MapFragmentActivity$PaganiteTask;->access$3(Lcom/cymobile/ymwork/act/MapFragmentActivity$PaganiteTask;)Lcom/cymobile/ymwork/act/MapFragmentActivity;

    move-result-object v0

    #getter for: Lcom/cymobile/ymwork/act/MapFragmentActivity;->circleProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/MapFragmentActivity;->access$12(Lcom/cymobile/ymwork/act/MapFragmentActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 409
    return-void
.end method
