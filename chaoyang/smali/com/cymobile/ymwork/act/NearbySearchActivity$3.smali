.class Lcom/cymobile/ymwork/act/NearbySearchActivity$3;
.super Ljava/lang/Object;
.source "NearbySearchActivity.java"

# interfaces
.implements Lcom/cymobile/ymwork/widget/PullToRefreshListView$OnAddMoreListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/NearbySearchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/NearbySearchActivity;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/NearbySearchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity$3;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivity;

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddMore()V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity$3;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivity;

    #getter for: Lcom/cymobile/ymwork/act/NearbySearchActivity;->mStateHolder:Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->access$6(Lcom/cymobile/ymwork/act/NearbySearchActivity;)Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity$3;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivity;

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;->startMoreTask(Lcom/cymobile/ymwork/act/NearbySearchActivity;)V

    .line 160
    return-void
.end method
