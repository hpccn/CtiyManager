.class Lcom/cymobile/ymwork/widget/PublicReportListAdapter$1;
.super Ljava/lang/Object;
.source "PublicReportListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/widget/PublicReportListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/widget/PublicReportListAdapter;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/widget/PublicReportListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/widget/PublicReportListAdapter$1;->this$0:Lcom/cymobile/ymwork/widget/PublicReportListAdapter;

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PublicReportListAdapter$1;->this$0:Lcom/cymobile/ymwork/widget/PublicReportListAdapter;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/widget/PublicReportListAdapter;->notifyDataSetChanged()V

    .line 304
    return-void
.end method
