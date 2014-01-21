.class Lcom/tencent/open/n;
.super Landroid/webkit/WebChromeClient;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/tencent/open/OpenUi;

.field private b:Lcom/tencent/tauth/IUiListener;


# direct methods
.method public constructor <init>(Lcom/tencent/open/OpenUi;Lcom/tencent/tauth/IUiListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 952
    iput-object p1, p0, Lcom/tencent/open/n;->a:Lcom/tencent/open/OpenUi;

    .line 953
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 954
    iput-object p2, p0, Lcom/tencent/open/n;->b:Lcom/tencent/tauth/IUiListener;

    .line 955
    return-void
.end method


# virtual methods
.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 960
    const-string v0, "toddtest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "That\'s my local storage value ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 963
    :try_start_0
    const-string v0, "encry_token"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 967
    :goto_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->destroy()V

    .line 968
    iget-object v0, p0, Lcom/tencent/open/n;->b:Lcom/tencent/tauth/IUiListener;

    invoke-interface {v0, v1}, Lcom/tencent/tauth/IUiListener;->onComplete(Lorg/json/JSONObject;)V

    .line 970
    const/4 v0, 0x1

    return v0

    .line 964
    :catch_0
    move-exception v0

    .line 965
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
