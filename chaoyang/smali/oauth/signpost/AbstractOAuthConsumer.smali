.class public abstract Loauth/signpost/AbstractOAuthConsumer;
.super Ljava/lang/Object;
.source "AbstractOAuthConsumer.java"

# interfaces
.implements Loauth/signpost/OAuthConsumer;


# instance fields
.field private consumerKey:Ljava/lang/String;

.field private consumerSecret:Ljava/lang/String;

.field private messageSigner:Loauth/signpost/signature/OAuthMessageSigner;

.field private signatureMethod:Loauth/signpost/signature/SignatureMethod;

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Loauth/signpost/signature/SignatureMethod;)V
    .locals 1
    .parameter "consumerKey"
    .parameter "consumerSecret"
    .parameter "signatureMethod"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Loauth/signpost/AbstractOAuthConsumer;->consumerKey:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Loauth/signpost/AbstractOAuthConsumer;->consumerSecret:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Loauth/signpost/AbstractOAuthConsumer;->signatureMethod:Loauth/signpost/signature/SignatureMethod;

    .line 42
    invoke-static {p3}, Loauth/signpost/signature/OAuthMessageSigner;->create(Loauth/signpost/signature/SignatureMethod;)Loauth/signpost/signature/OAuthMessageSigner;

    move-result-object v0

    iput-object v0, p0, Loauth/signpost/AbstractOAuthConsumer;->messageSigner:Loauth/signpost/signature/OAuthMessageSigner;

    .line 43
    iget-object v0, p0, Loauth/signpost/AbstractOAuthConsumer;->messageSigner:Loauth/signpost/signature/OAuthMessageSigner;

    invoke-virtual {v0, p2}, Loauth/signpost/signature/OAuthMessageSigner;->setConsumerSecret(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method private buildOAuthHeader(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter "signature"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 114
    .local p1, oauthParams:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .local v2, sb:Ljava/lang/StringBuilder;
    const-string v4, "OAuth "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 119
    .local v1, key:Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 120
    .local v3, value:Ljava/lang/String;
    invoke-direct {p0, v1, v3}, Loauth/signpost/AbstractOAuthConsumer;->oauthHeaderElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 124
    .end local v1           #key:Ljava/lang/String;
    .end local v3           #value:Ljava/lang/String;
    :cond_0
    const-string v4, "oauth_signature"

    invoke-direct {p0, v4, p2}, Loauth/signpost/AbstractOAuthConsumer;->oauthHeaderElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private buildOAuthParameterMap()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 101
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "oauth_consumer_key"

    iget-object v2, p0, Loauth/signpost/AbstractOAuthConsumer;->consumerKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v1, "oauth_signature_method"

    iget-object v2, p0, Loauth/signpost/AbstractOAuthConsumer;->signatureMethod:Loauth/signpost/signature/SignatureMethod;

    invoke-virtual {v2}, Loauth/signpost/signature/SignatureMethod;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string v1, "oauth_timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v1, "oauth_nonce"

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v1, "oauth_version"

    const-string v2, "1.0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v1, "oauth_token"

    iget-object v2, p0, Loauth/signpost/AbstractOAuthConsumer;->token:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    return-object v0
.end method

.method private oauthHeaderElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "name"
    .parameter "value"

    .prologue
    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Loauth/signpost/OAuth;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Loauth/signpost/OAuth;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getConsumerKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Loauth/signpost/AbstractOAuthConsumer;->consumerKey:Ljava/lang/String;

    return-object v0
.end method

.method public getConsumerSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Loauth/signpost/AbstractOAuthConsumer;->consumerSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Loauth/signpost/AbstractOAuthConsumer;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Loauth/signpost/AbstractOAuthConsumer;->messageSigner:Loauth/signpost/signature/OAuthMessageSigner;

    invoke-virtual {v0}, Loauth/signpost/signature/OAuthMessageSigner;->getTokenSecret()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setTokenWithSecret(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "token"
    .parameter "tokenSecret"

    .prologue
    .line 78
    iput-object p1, p0, Loauth/signpost/AbstractOAuthConsumer;->token:Ljava/lang/String;

    .line 79
    iget-object v0, p0, Loauth/signpost/AbstractOAuthConsumer;->messageSigner:Loauth/signpost/signature/OAuthMessageSigner;

    invoke-virtual {v0, p2}, Loauth/signpost/signature/OAuthMessageSigner;->setTokenSecret(Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public sign(Ljava/lang/Object;)Loauth/signpost/http/HttpRequest;
    .locals 1
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Loauth/signpost/exception/OAuthMessageSignerException;,
            Loauth/signpost/exception/OAuthExpectationFailedException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Loauth/signpost/AbstractOAuthConsumer;->wrap(Ljava/lang/Object;)Loauth/signpost/http/HttpRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Loauth/signpost/AbstractOAuthConsumer;->sign(Loauth/signpost/http/HttpRequest;)Loauth/signpost/http/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public sign(Loauth/signpost/http/HttpRequest;)Loauth/signpost/http/HttpRequest;
    .locals 4
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Loauth/signpost/exception/OAuthMessageSignerException;,
            Loauth/signpost/exception/OAuthExpectationFailedException;
        }
    .end annotation

    .prologue
    .line 48
    iget-object v2, p0, Loauth/signpost/AbstractOAuthConsumer;->consumerKey:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 49
    new-instance v2, Loauth/signpost/exception/OAuthExpectationFailedException;

    const-string v3, "consumer key not set"

    invoke-direct {v2, v3}, Loauth/signpost/exception/OAuthExpectationFailedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 51
    :cond_0
    iget-object v2, p0, Loauth/signpost/AbstractOAuthConsumer;->consumerSecret:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 52
    new-instance v2, Loauth/signpost/exception/OAuthExpectationFailedException;

    const-string v3, "consumer secret not set"

    invoke-direct {v2, v3}, Loauth/signpost/exception/OAuthExpectationFailedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 60
    :cond_1
    invoke-direct {p0}, Loauth/signpost/AbstractOAuthConsumer;->buildOAuthParameterMap()Ljava/util/Map;

    move-result-object v0

    .line 62
    .local v0, oauthParams:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Loauth/signpost/AbstractOAuthConsumer;->messageSigner:Loauth/signpost/signature/OAuthMessageSigner;

    invoke-virtual {v2, p1, v0}, Loauth/signpost/signature/OAuthMessageSigner;->sign(Loauth/signpost/http/HttpRequest;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, signature:Ljava/lang/String;
    const-string v2, "Authorization"

    invoke-direct {p0, v0, v1}, Loauth/signpost/AbstractOAuthConsumer;->buildOAuthHeader(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Loauth/signpost/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-object p1
.end method

.method protected abstract wrap(Ljava/lang/Object;)Loauth/signpost/http/HttpRequest;
.end method
