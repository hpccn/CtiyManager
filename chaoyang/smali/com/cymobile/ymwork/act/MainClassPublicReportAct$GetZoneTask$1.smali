.class Lcom/cymobile/ymwork/act/MainClassPublicReportAct$GetZoneTask$1;
.super Ljava/lang/Object;
.source "MainClassPublicReportAct.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/MainClassPublicReportAct$GetZoneTask;->onPostExecute(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cymobile/ymwork/act/MainClassPublicReportAct$GetZoneTask;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/MainClassPublicReportAct$GetZoneTask;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$GetZoneTask$1;->this$1:Lcom/cymobile/ymwork/act/MainClassPublicReportAct$GetZoneTask;

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 274
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$GetZoneTask$1;->this$1:Lcom/cymobile/ymwork/act/MainClassPublicReportAct$GetZoneTask;

    #getter for: Lcom/cymobile/ymwork/act/MainClassPublicReportAct$GetZoneTask;->this$0:Lcom/cymobile/ymwork/act/MainClassPublicReportAct;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$GetZoneTask;->access$2(Lcom/cymobile/ymwork/act/MainClassPublicReportAct$GetZoneTask;)Lcom/cymobile/ymwork/act/MainClassPublicReportAct;

    move-result-object v0

    .line 275
    const v1, 0x7f09006b

    .line 276
    const/4 v2, 0x1

    .line 274
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 276
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 277
    return-void
.end method
