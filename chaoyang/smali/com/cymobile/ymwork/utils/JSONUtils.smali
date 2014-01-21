.class public Lcom/cymobile/ymwork/utils/JSONUtils;
.super Ljava/lang/Object;
.source "JSONUtils.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "JSONUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static consume(Lcom/cymobile/ymwork/server/parsers/json/Parser;Ljava/lang/String;)Lcom/cymobile/ymwork/types/BaseType;
    .locals 10
    .parameter
    .parameter "content"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cymobile/ymwork/server/parsers/json/Parser",
            "<+",
            "Lcom/cymobile/ymwork/types/BaseType;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cymobile/ymwork/types/BaseType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cymobile/ymwork/server/error/ServerCredentialsException;,
            Lcom/cymobile/ymwork/server/error/ServerParseException;,
            Lcom/cymobile/ymwork/server/error/ServerException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    .local p0, parser:Lcom/cymobile/ymwork/server/parsers/json/Parser;,"Lcom/cymobile/ymwork/server/parsers/json/Parser<+Lcom/cymobile/ymwork/types/BaseType;>;"
    const-string v6, "JSONUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "http response: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 38
    .local v2, json:Lorg/json/JSONObject;
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 39
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 40
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 41
    .local v3, key:Ljava/lang/String;
    const-string v6, "result"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "result"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "error"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 42
    new-instance v6, Lcom/cymobile/ymwork/server/error/ServerException;

    const-string v7, "Error"

    const-string v8, ""

    const-string v9, "errorcode"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-direct {v6, v7, v8, v9}, Lcom/cymobile/ymwork/server/error/ServerException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v6
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2           #json:Lorg/json/JSONObject;
    .end local v3           #key:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 60
    .local v0, ex:Lorg/json/JSONException;
    new-instance v6, Lcom/cymobile/ymwork/server/error/ServerException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Error parsing JSON response: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    const/16 v9, 0x19

    invoke-direct {v6, v7, v8, v9}, Lcom/cymobile/ymwork/server/error/ServerException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v6

    .line 43
    .end local v0           #ex:Lorg/json/JSONException;
    .restart local v1       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v2       #json:Lorg/json/JSONObject;
    .restart local v3       #key:Ljava/lang/String;
    :cond_0
    :try_start_1
    const-string v6, "result"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "result"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "success"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 44
    new-instance v5, Lcom/cymobile/ymwork/types/CommonResult;

    invoke-direct {v5}, Lcom/cymobile/ymwork/types/CommonResult;-><init>()V

    .line 45
    .local v5, ret:Lcom/cymobile/ymwork/types/CommonResult;
    const-string v6, "success"

    invoke-virtual {v5, v6}, Lcom/cymobile/ymwork/types/CommonResult;->setResult(Ljava/lang/String;)V

    .line 52
    .end local v5           #ret:Lcom/cymobile/ymwork/types/CommonResult;
    :goto_0
    return-object v5

    .line 48
    :cond_1
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 49
    .local v4, obj:Ljava/lang/Object;
    instance-of v6, v4, Lorg/json/JSONArray;

    if-eqz v6, :cond_2

    .line 50
    check-cast v4, Lorg/json/JSONArray;

    .end local v4           #obj:Ljava/lang/Object;
    invoke-interface {p0, v4}, Lcom/cymobile/ymwork/server/parsers/json/Parser;->parse(Lorg/json/JSONArray;)Lcom/cymobile/ymwork/types/Group;

    move-result-object v5

    goto :goto_0

    .line 52
    .restart local v4       #obj:Ljava/lang/Object;
    :cond_2
    check-cast v4, Lorg/json/JSONObject;

    .end local v4           #obj:Ljava/lang/Object;
    invoke-interface {p0, v4}, Lcom/cymobile/ymwork/server/parsers/json/Parser;->parse(Lorg/json/JSONObject;)Lcom/cymobile/ymwork/types/BaseType;

    move-result-object v5

    goto :goto_0

    .line 56
    .end local v3           #key:Ljava/lang/String;
    :cond_3
    new-instance v6, Lcom/cymobile/ymwork/server/error/ServerException;

    const-string v7, "Error parsing JSON response, object had no single child key."

    invoke-direct {v6, v7}, Lcom/cymobile/ymwork/server/error/ServerException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
.end method
