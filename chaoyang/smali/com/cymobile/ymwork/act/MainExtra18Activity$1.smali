.class Lcom/cymobile/ymwork/act/MainExtra18Activity$1;
.super Landroid/content/BroadcastReceiver;
.source "MainExtra18Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/act/MainExtra18Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/MainExtra18Activity;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/MainExtra18Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/MainExtra18Activity$1;->this$0:Lcom/cymobile/ymwork/act/MainExtra18Activity;

    .line 178
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 182
    :try_start_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainExtra18Activity$1;->this$0:Lcom/cymobile/ymwork/act/MainExtra18Activity;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/MainExtra18Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :goto_0
    return-void

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, e:Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
