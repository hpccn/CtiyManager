.class Lcom/tencent/open/TDialog$FbWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "ProGuard"


# instance fields
.field final synthetic this$0:Lcom/tencent/open/TDialog;


# direct methods
.method private constructor <init>(Lcom/tencent/open/TDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 355
    iput-object p1, p0, Lcom/tencent/open/TDialog$FbWebViewClient;->this$0:Lcom/tencent/open/TDialog;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/open/TDialog;Lcom/tencent/open/TDialog$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 355
    invoke-direct {p0, p1}, Lcom/tencent/open/TDialog$FbWebViewClient;-><init>(Lcom/tencent/open/TDialog;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 439
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 440
    invoke-static {}, Lcom/tencent/open/TDialog;->b()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/open/TDialog;->b()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 441
    invoke-static {}, Lcom/tencent/open/TDialog;->b()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/tencent/open/TDialog$FbWebViewClient;->this$0:Lcom/tencent/open/TDialog;

    invoke-static {v0}, Lcom/tencent/open/TDialog;->e(Lcom/tencent/open/TDialog;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 445
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 429
    const-string v0, "TDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Webview loading URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/open/Util;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 431
    invoke-static {}, Lcom/tencent/open/TDialog;->b()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/open/TDialog;->b()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 432
    invoke-static {}, Lcom/tencent/open/TDialog;->b()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 435
    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 414
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 415
    iget-object v0, p0, Lcom/tencent/open/TDialog$FbWebViewClient;->this$0:Lcom/tencent/open/TDialog;

    invoke-static {v0}, Lcom/tencent/open/TDialog;->f(Lcom/tencent/open/TDialog;)Lcom/tencent/open/TDialog$OnTimeListener;

    move-result-object v0

    new-instance v1, Lcom/tencent/tauth/UiError;

    invoke-direct {v1, p2, p3, p4}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/open/TDialog$OnTimeListener;->onError(Lcom/tencent/tauth/UiError;)V

    .line 420
    invoke-static {}, Lcom/tencent/open/TDialog;->a()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/open/TDialog;->a()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 421
    invoke-static {}, Lcom/tencent/open/TDialog;->a()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "\u7f51\u7edc\u8fde\u63a5\u5f02\u5e38\u6216\u7cfb\u7edf\u9519\u8bef"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/tencent/open/TDialog$FbWebViewClient;->this$0:Lcom/tencent/open/TDialog;

    invoke-virtual {v0}, Lcom/tencent/open/TDialog;->dismiss()V

    .line 425
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 453
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 454
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 359
    const-string v0, "TDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Redirect URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/open/Util;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const-string v0, "auth://browser"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 361
    invoke-static {p2}, Lcom/tencent/open/Util;->c(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 364
    iget-object v2, p0, Lcom/tencent/open/TDialog$FbWebViewClient;->this$0:Lcom/tencent/open/TDialog;

    iget-object v3, p0, Lcom/tencent/open/TDialog$FbWebViewClient;->this$0:Lcom/tencent/open/TDialog;

    invoke-static {v3}, Lcom/tencent/open/TDialog;->b(Lcom/tencent/open/TDialog;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/tencent/open/TDialog;->a(Lcom/tencent/open/TDialog;Z)Z

    .line 366
    iget-object v2, p0, Lcom/tencent/open/TDialog$FbWebViewClient;->this$0:Lcom/tencent/open/TDialog;

    invoke-static {v2}, Lcom/tencent/open/TDialog;->c(Lcom/tencent/open/TDialog;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    move v0, v1

    .line 408
    :goto_1
    return v0

    .line 368
    :cond_1
    const-string v2, "fail_cb"

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 370
    iget-object v2, p0, Lcom/tencent/open/TDialog$FbWebViewClient;->this$0:Lcom/tencent/open/TDialog;

    const-string v3, "fail_cb"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v2, v0, v3}, Lcom/tencent/open/TDialog;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 371
    :cond_2
    const-string v2, "fall_to_wv"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v1, :cond_4

    .line 373
    iget-object v2, p0, Lcom/tencent/open/TDialog$FbWebViewClient;->this$0:Lcom/tencent/open/TDialog;

    iget-object v0, p0, Lcom/tencent/open/TDialog$FbWebViewClient;->this$0:Lcom/tencent/open/TDialog;

    invoke-static {v0}, Lcom/tencent/open/TDialog;->d(Lcom/tencent/open/TDialog;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "?"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-le v0, v3, :cond_3

    const-string v0, "&"

    :goto_2
    invoke-static {v2, v0}, Lcom/tencent/open/TDialog;->a(Lcom/tencent/open/TDialog;Ljava/lang/Object;)Ljava/lang/String;

    .line 374
    iget-object v0, p0, Lcom/tencent/open/TDialog$FbWebViewClient;->this$0:Lcom/tencent/open/TDialog;

    const-string v2, "browser_error=1"

    invoke-static {v0, v2}, Lcom/tencent/open/TDialog;->a(Lcom/tencent/open/TDialog;Ljava/lang/Object;)Ljava/lang/String;

    .line 375
    iget-object v0, p0, Lcom/tencent/open/TDialog$FbWebViewClient;->this$0:Lcom/tencent/open/TDialog;

    invoke-static {v0}, Lcom/tencent/open/TDialog;->e(Lcom/tencent/open/TDialog;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/open/TDialog$FbWebViewClient;->this$0:Lcom/tencent/open/TDialog;

    invoke-static {v2}, Lcom/tencent/open/TDialog;->d(Lcom/tencent/open/TDialog;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 373
    :cond_3
    const-string v0, "?"

    goto :goto_2

    .line 379
    :cond_4
    const-string v2, "redir"

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 380
    if-eqz v0, :cond_0

    .line 381
    iget-object v2, p0, Lcom/tencent/open/TDialog$FbWebViewClient;->this$0:Lcom/tencent/open/TDialog;

    invoke-static {v2}, Lcom/tencent/open/TDialog;->e(Lcom/tencent/open/TDialog;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 386
    :cond_5
    invoke-static {}, Lcom/tencent/open/ServerSetting;->getInstance()Lcom/tencent/open/ServerSetting;

    move-result-object v2

    invoke-static {}, Lcom/tencent/open/TDialog;->a()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v2, v0, v1}, Lcom/tencent/open/ServerSetting;->getSettingUrl(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 388
    iget-object v0, p0, Lcom/tencent/open/TDialog$FbWebViewClient;->this$0:Lcom/tencent/open/TDialog;

    invoke-static {v0}, Lcom/tencent/open/TDialog;->f(Lcom/tencent/open/TDialog;)Lcom/tencent/open/TDialog$OnTimeListener;

    move-result-object v0

    invoke-static {p2}, Lcom/tencent/open/Util;->c(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/open/TDialog$OnTimeListener;->onComplete(Lorg/json/JSONObject;)V

    .line 389
    iget-object v0, p0, Lcom/tencent/open/TDialog$FbWebViewClient;->this$0:Lcom/tencent/open/TDialog;

    invoke-virtual {v0}, Lcom/tencent/open/TDialog;->dismiss()V

    move v0, v1

    .line 390
    goto/16 :goto_1

    .line 391
    :cond_6
    const-string v0, "auth://cancel"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 392
    iget-object v0, p0, Lcom/tencent/open/TDialog$FbWebViewClient;->this$0:Lcom/tencent/open/TDialog;

    invoke-static {v0}, Lcom/tencent/open/TDialog;->f(Lcom/tencent/open/TDialog;)Lcom/tencent/open/TDialog$OnTimeListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/open/TDialog$OnTimeListener;->onCancel()V

    .line 393
    iget-object v0, p0, Lcom/tencent/open/TDialog$FbWebViewClient;->this$0:Lcom/tencent/open/TDialog;

    invoke-virtual {v0}, Lcom/tencent/open/TDialog;->dismiss()V

    move v0, v1

    .line 394
    goto/16 :goto_1

    .line 395
    :cond_7
    const-string v0, "auth://close"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 397
    iget-object v0, p0, Lcom/tencent/open/TDialog$FbWebViewClient;->this$0:Lcom/tencent/open/TDialog;

    invoke-virtual {v0}, Lcom/tencent/open/TDialog;->dismiss()V

    move v0, v1

    .line 398
    goto/16 :goto_1

    .line 399
    :cond_8
    const-string v0, "download://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 401
    const-string v0, "download://"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 402
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 403
    invoke-static {}, Lcom/tencent/open/TDialog;->a()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/tencent/open/TDialog;->a()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 404
    invoke-static {}, Lcom/tencent/open/TDialog;->a()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_9
    move v0, v1

    .line 406
    goto/16 :goto_1

    .line 408
    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_1
.end method
