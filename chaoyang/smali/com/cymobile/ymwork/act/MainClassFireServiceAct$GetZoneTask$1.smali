.class Lcom/cymobile/ymwork/act/MainClassFireServiceAct$GetZoneTask$1;
.super Ljava/lang/Object;
.source "MainClassFireServiceAct.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/MainClassFireServiceAct$GetZoneTask;->onPostExecute(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cymobile/ymwork/act/MainClassFireServiceAct$GetZoneTask;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/MainClassFireServiceAct$GetZoneTask;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$GetZoneTask$1;->this$1:Lcom/cymobile/ymwork/act/MainClassFireServiceAct$GetZoneTask;

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 284
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$GetZoneTask$1;->this$1:Lcom/cymobile/ymwork/act/MainClassFireServiceAct$GetZoneTask;

    #getter for: Lcom/cymobile/ymwork/act/MainClassFireServiceAct$GetZoneTask;->this$0:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$GetZoneTask;->access$2(Lcom/cymobile/ymwork/act/MainClassFireServiceAct$GetZoneTask;)Lcom/cymobile/ymwork/act/MainClassFireServiceAct;

    move-result-object v0

    const v1, 0x7f09006b

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 285
    return-void
.end method
