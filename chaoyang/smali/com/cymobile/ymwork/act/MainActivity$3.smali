.class Lcom/cymobile/ymwork/act/MainActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/act/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/MainActivity;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/MainActivity$3;->this$0:Lcom/cymobile/ymwork/act/MainActivity;

    .line 419
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 422
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainActivity$3;->this$0:Lcom/cymobile/ymwork/act/MainActivity;

    #calls: Lcom/cymobile/ymwork/act/MainActivity;->readNumberFromService()V
    invoke-static {v0}, Lcom/cymobile/ymwork/act/MainActivity;->access$0(Lcom/cymobile/ymwork/act/MainActivity;)V

    .line 423
    return-void
.end method
