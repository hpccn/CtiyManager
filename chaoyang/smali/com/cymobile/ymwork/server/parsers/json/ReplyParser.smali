.class public Lcom/cymobile/ymwork/server/parsers/json/ReplyParser;
.super Lcom/cymobile/ymwork/server/parsers/json/AbstractParser;
.source "ReplyParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cymobile/ymwork/server/parsers/json/AbstractParser",
        "<",
        "Lcom/cymobile/ymwork/types/Reply;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
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
    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/server/parsers/json/ReplyParser;->parse(Lorg/json/JSONObject;)Lcom/cymobile/ymwork/types/Reply;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lorg/json/JSONObject;)Lcom/cymobile/ymwork/types/Reply;
    .locals 3
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 14
    new-instance v0, Lcom/cymobile/ymwork/types/Reply;

    invoke-direct {v0}, Lcom/cymobile/ymwork/types/Reply;-><init>()V

    .line 16
    .local v0, reply:Lcom/cymobile/ymwork/types/Reply;
    const-string v1, "replyid"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "replyid"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 17
    const-string v1, "replyid"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/types/Reply;->setReplyId(Ljava/lang/String;)V

    .line 19
    :cond_0
    const-string v1, "replyresult"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 20
    const-string v1, "replyresult"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/types/Reply;->setQulingdaopishi(Ljava/lang/String;)V

    .line 22
    :cond_1
    const-string v1, "replydetail"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 23
    const-string v1, "replydetail"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/types/Reply;->setQulingdaodetail(Ljava/lang/String;)V

    .line 25
    :cond_2
    const-string v1, "replydesc"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 26
    const-string v1, "replydesc"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/types/Reply;->setQulingdaodesc(Ljava/lang/String;)V

    .line 28
    :cond_3
    const-string v1, "replydate_long"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 29
    const-string v1, "replydate_long"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/cymobile/ymwork/types/Reply;->setReplyTime(J)V

    .line 31
    :cond_4
    return-object v0
.end method
