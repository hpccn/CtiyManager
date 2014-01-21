.class Lcom/cymobile/ymwork/act/Main12Activity$2;
.super Landroid/content/BroadcastReceiver;
.source "Main12Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/act/Main12Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/Main12Activity;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/Main12Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/Main12Activity$2;->this$0:Lcom/cymobile/ymwork/act/Main12Activity;

    .line 169
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/cymobile/ymwork/act/Main12Activity$2;->this$0:Lcom/cymobile/ymwork/act/Main12Activity;

    #calls: Lcom/cymobile/ymwork/act/Main12Activity;->readNumberFromService()V
    invoke-static {v0}, Lcom/cymobile/ymwork/act/Main12Activity;->access$0(Lcom/cymobile/ymwork/act/Main12Activity;)V

    .line 173
    return-void
.end method
