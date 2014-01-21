.class Lcom/cymobile/ymwork/act/FetchImageForViewIntent$1;
.super Landroid/content/BroadcastReceiver;
.source "FetchImageForViewIntent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/act/FetchImageForViewIntent;
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
    iput-object p1, p0, Lcom/cymobile/ymwork/act/FetchImageForViewIntent$1;->this$0:Lcom/cymobile/ymwork/act/FetchImageForViewIntent;

    .line 63
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 66
    const-string v0, "FetchImageForViewIntent"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onReceive: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FetchImageForViewIntent$1;->this$0:Lcom/cymobile/ymwork/act/FetchImageForViewIntent;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/FetchImageForViewIntent;->finish()V

    .line 68
    return-void
.end method
