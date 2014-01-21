.class Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$8;
.super Ljava/lang/Object;
.source "VisitorvolumeReportAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->ensureUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$8;->this$0:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 278
    iget-object v0, p0, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct$8;->this$0:Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/VisitorvolumeReportAct;->onBackPressed()V

    .line 279
    return-void
.end method
