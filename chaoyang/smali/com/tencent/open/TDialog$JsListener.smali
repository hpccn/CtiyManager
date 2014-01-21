.class Lcom/tencent/open/TDialog$JsListener;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field final synthetic this$0:Lcom/tencent/open/TDialog;


# direct methods
.method private constructor <init>(Lcom/tencent/open/TDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 296
    iput-object p1, p0, Lcom/tencent/open/TDialog$JsListener;->this$0:Lcom/tencent/open/TDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/open/TDialog;Lcom/tencent/open/TDialog$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 296
    invoke-direct {p0, p1}, Lcom/tencent/open/TDialog$JsListener;-><init>(Lcom/tencent/open/TDialog;)V

    return-void
.end method


# virtual methods
.method public onAddShare(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 301
    invoke-virtual {p0, p1}, Lcom/tencent/open/TDialog$JsListener;->onComplete(Ljava/lang/String;)V

    .line 302
    return-void
.end method

.method public onCancel(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 335
    iget-object v0, p0, Lcom/tencent/open/TDialog$JsListener;->this$0:Lcom/tencent/open/TDialog;

    invoke-static {v0}, Lcom/tencent/open/TDialog;->a(Lcom/tencent/open/TDialog;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 336
    iget-object v0, p0, Lcom/tencent/open/TDialog$JsListener;->this$0:Lcom/tencent/open/TDialog;

    invoke-virtual {v0}, Lcom/tencent/open/TDialog;->dismiss()V

    .line 337
    return-void
.end method

.method public onCancelAddShare(I)V
    .locals 1
    .parameter

    .prologue
    .line 313
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/open/TDialog$JsListener;->onCancel(Ljava/lang/String;)V

    .line 314
    return-void
.end method

.method public onCancelInvite()V
    .locals 1

    .prologue
    .line 325
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/open/TDialog$JsListener;->onCancel(Ljava/lang/String;)V

    .line 326
    return-void
.end method

.method public onCancelLogin()V
    .locals 1

    .prologue
    .line 319
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/open/TDialog$JsListener;->onCancel(Ljava/lang/String;)V

    .line 320
    return-void
.end method

.method public onComplete(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 329
    iget-object v0, p0, Lcom/tencent/open/TDialog$JsListener;->this$0:Lcom/tencent/open/TDialog;

    invoke-static {v0}, Lcom/tencent/open/TDialog;->a(Lcom/tencent/open/TDialog;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 330
    const-string v0, "onComplete"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iget-object v0, p0, Lcom/tencent/open/TDialog$JsListener;->this$0:Lcom/tencent/open/TDialog;

    invoke-virtual {v0}, Lcom/tencent/open/TDialog;->dismiss()V

    .line 332
    return-void
.end method

.method public onInvite(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 307
    invoke-virtual {p0, p1}, Lcom/tencent/open/TDialog$JsListener;->onComplete(Ljava/lang/String;)V

    .line 308
    return-void
.end method

.method public onLoad(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 351
    iget-object v0, p0, Lcom/tencent/open/TDialog$JsListener;->this$0:Lcom/tencent/open/TDialog;

    invoke-static {v0}, Lcom/tencent/open/TDialog;->a(Lcom/tencent/open/TDialog;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 352
    return-void
.end method

.method public showMsg(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 341
    iget-object v0, p0, Lcom/tencent/open/TDialog$JsListener;->this$0:Lcom/tencent/open/TDialog;

    invoke-static {v0}, Lcom/tencent/open/TDialog;->a(Lcom/tencent/open/TDialog;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 342
    return-void
.end method
