.class Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$8;
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
    iput-object p1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$8;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;

    .line 586
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 588
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$8;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->onBackPressed()V

    .line 589
    return-void
.end method
