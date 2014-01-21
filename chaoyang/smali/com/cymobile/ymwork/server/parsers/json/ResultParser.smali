.class public Lcom/cymobile/ymwork/server/parsers/json/ResultParser;
.super Lcom/cymobile/ymwork/server/parsers/json/AbstractParser;
.source "ResultParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cymobile/ymwork/server/parsers/json/AbstractParser",
        "<",
        "Lcom/cymobile/ymwork/types/CommonResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ResultParser"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/cymobile/ymwork/server/parsers/json/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic parse(Lorg/json/JSONObject;)Lcom/cymobile/ymwork/types/BaseType;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/server/parsers/json/ResultParser;->parse(Lorg/json/JSONObject;)Lcom/cymobile/ymwork/types/CommonResult;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lorg/json/JSONObject;)Lcom/cymobile/ymwork/types/CommonResult;
    .locals 3
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 17
    const-string v1, "ResultParser"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    const/4 v0, 0x0

    .line 19
    .local v0, result:Lcom/cymobile/ymwork/types/CommonResult;
    if-eqz p1, :cond_1

    .line 20
    new-instance v0, Lcom/cymobile/ymwork/types/CommonResult;

    .end local v0           #result:Lcom/cymobile/ymwork/types/CommonResult;
    invoke-direct {v0}, Lcom/cymobile/ymwork/types/CommonResult;-><init>()V

    .line 21
    .restart local v0       #result:Lcom/cymobile/ymwork/types/CommonResult;
    const-string v1, "result"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 22
    const-string v1, "result"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/types/CommonResult;->setResult(Ljava/lang/String;)V

    .line 24
    :cond_0
    const-string v1, "userid"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 25
    const-string v1, "userid"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/types/CommonResult;->setUserId(Ljava/lang/String;)V

    .line 28
    :cond_1
    return-object v0
.end method
