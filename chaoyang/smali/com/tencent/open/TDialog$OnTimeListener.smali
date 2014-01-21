.class Lcom/tencent/open/TDialog$OnTimeListener;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/tauth/IUiListener;


# instance fields
.field private mWeakL:Lcom/tencent/tauth/IUiListener;


# direct methods
.method public constructor <init>(Lcom/tencent/tauth/IUiListener;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-object p1, p0, Lcom/tencent/open/TDialog$OnTimeListener;->mWeakL:Lcom/tencent/tauth/IUiListener;

    .line 142
    return-void
.end method

.method static synthetic access$000(Lcom/tencent/open/TDialog$OnTimeListener;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/tencent/open/TDialog$OnTimeListener;->onComplete(Ljava/lang/String;)V

    return-void
.end method

.method private onComplete(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 146
    :try_start_0
    invoke-static {p1}, Lcom/tencent/open/Util;->d(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 147
    invoke-virtual {p0, v0}, Lcom/tencent/open/TDialog$OnTimeListener;->onComplete(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :goto_0
    return-void

    .line 148
    :catch_0
    move-exception v0

    .line 149
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 150
    new-instance v0, Lcom/tencent/tauth/UiError;

    const/4 v1, -0x4

    const-string v2, "\u670d\u52a1\u5668\u8fd4\u56de\u6570\u636e\u683c\u5f0f\u6709\u8bef!"

    invoke-direct {v0, v1, v2, p1}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/tencent/open/TDialog$OnTimeListener;->onError(Lcom/tencent/tauth/UiError;)V

    goto :goto_0
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/tencent/open/TDialog$OnTimeListener;->mWeakL:Lcom/tencent/tauth/IUiListener;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/tencent/open/TDialog$OnTimeListener;->mWeakL:Lcom/tencent/tauth/IUiListener;

    invoke-interface {v0}, Lcom/tencent/tauth/IUiListener;->onCancel()V

    .line 175
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/open/TDialog$OnTimeListener;->mWeakL:Lcom/tencent/tauth/IUiListener;

    .line 177
    :cond_0
    return-void
.end method

.method public onComplete(Lorg/json/JSONObject;)V
    .locals 1
    .parameter

    .prologue
    .line 157
    iget-object v0, p0, Lcom/tencent/open/TDialog$OnTimeListener;->mWeakL:Lcom/tencent/tauth/IUiListener;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/tencent/open/TDialog$OnTimeListener;->mWeakL:Lcom/tencent/tauth/IUiListener;

    invoke-interface {v0, p1}, Lcom/tencent/tauth/IUiListener;->onComplete(Lorg/json/JSONObject;)V

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/open/TDialog$OnTimeListener;->mWeakL:Lcom/tencent/tauth/IUiListener;

    .line 161
    :cond_0
    return-void
.end method

.method public onError(Lcom/tencent/tauth/UiError;)V
    .locals 1
    .parameter

    .prologue
    .line 165
    iget-object v0, p0, Lcom/tencent/open/TDialog$OnTimeListener;->mWeakL:Lcom/tencent/tauth/IUiListener;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/tencent/open/TDialog$OnTimeListener;->mWeakL:Lcom/tencent/tauth/IUiListener;

    invoke-interface {v0, p1}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/open/TDialog$OnTimeListener;->mWeakL:Lcom/tencent/tauth/IUiListener;

    .line 169
    :cond_0
    return-void
.end method
