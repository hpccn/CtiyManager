.class Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$7;
.super Ljava/lang/Object;
.source "NearbySearchActivityPublicReport.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->ensureUiListView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$7;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;

    .line 578
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 580
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$7;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;

    #getter for: Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->mStateHolder:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->access$7(Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;)Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$7;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;->startTask(Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;)V

    .line 581
    return-void
.end method
