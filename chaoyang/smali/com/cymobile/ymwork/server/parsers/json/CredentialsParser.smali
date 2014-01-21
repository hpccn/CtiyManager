.class public Lcom/cymobile/ymwork/server/parsers/json/CredentialsParser;
.super Lcom/cymobile/ymwork/server/parsers/json/AbstractParser;
.source "CredentialsParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cymobile/ymwork/server/parsers/json/AbstractParser",
        "<",
        "Lcom/cymobile/ymwork/types/Credentials;",
        ">;"
    }
.end annotation


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
    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/server/parsers/json/CredentialsParser;->parse(Lorg/json/JSONObject;)Lcom/cymobile/ymwork/types/Credentials;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lorg/json/JSONObject;)Lcom/cymobile/ymwork/types/Credentials;
    .locals 2
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 14
    new-instance v0, Lcom/cymobile/ymwork/types/Credentials;

    invoke-direct {v0}, Lcom/cymobile/ymwork/types/Credentials;-><init>()V

    .line 15
    .local v0, obj:Lcom/cymobile/ymwork/types/Credentials;
    const-string v1, "oauth_token"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 16
    const-string v1, "oauth_token"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/types/Credentials;->setOauthToken(Ljava/lang/String;)V

    .line 18
    :cond_0
    const-string v1, "oauth_token_secret"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 19
    const-string v1, "oauth_token_secret"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/types/Credentials;->setOauthTokenSecret(Ljava/lang/String;)V

    .line 22
    :cond_1
    return-object v0
.end method
