.class public Lcom/cymobile/ymwork/server/http/HttpApiWithOAuth;
.super Lcom/cymobile/ymwork/server/http/AbstractHttpApi;
.source "HttpApiWithOAuth.java"


# static fields
.field protected static final DEBUG:Z = true

.field protected static final LOG:Ljava/util/logging/Logger;


# instance fields
.field private mConsumer:Loauth/signpost/OAuthConsumer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/cymobile/ymwork/server/http/HttpApiWithOAuth;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/cymobile/ymwork/server/http/HttpApiWithOAuth;->LOG:Ljava/util/logging/Logger;

    .line 25
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/impl/client/DefaultHttpClient;Ljava/lang/String;)V
    .locals 0
    .parameter "httpClient"
    .parameter "clientVersion"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/cymobile/ymwork/server/http/AbstractHttpApi;-><init>(Lorg/apache/http/impl/client/DefaultHttpClient;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method private verifyConsumer()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/cymobile/ymwork/server/http/HttpApiWithOAuth;->mConsumer:Loauth/signpost/OAuthConsumer;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 86
    const-string v1, "Cannot call method without setting consumer credentials."

    .line 85
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    return-void
.end method


# virtual methods
.method public varargs doHttpPost(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Ljava/lang/String;
    .locals 2
    .parameter "url"
    .parameter "nameValuePairs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cymobile/ymwork/server/error/ServerParseException;,
            Ljava/io/IOException;,
            Lcom/cymobile/ymwork/server/error/ServerCredentialsException;
        }
    .end annotation

    .prologue
    .line 58
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Haven\'t written this method yet."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public doHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/cymobile/ymwork/server/parsers/json/Parser;)Lcom/cymobile/ymwork/types/BaseType;
    .locals 5
    .parameter "httpRequest"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/methods/HttpRequestBase;",
            "Lcom/cymobile/ymwork/server/parsers/json/Parser",
            "<+",
            "Lcom/cymobile/ymwork/types/BaseType;",
            ">;)",
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
    .line 38
    .local p2, parser:Lcom/cymobile/ymwork/server/parsers/json/Parser;,"Lcom/cymobile/ymwork/server/parsers/json/Parser<+Lcom/cymobile/ymwork/types/BaseType;>;"
    sget-object v1, Lcom/cymobile/ymwork/server/http/HttpApiWithOAuth;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "doHttpRequest: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 40
    :try_start_0
    sget-object v1, Lcom/cymobile/ymwork/server/http/HttpApiWithOAuth;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Signing request: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 41
    sget-object v1, Lcom/cymobile/ymwork/server/http/HttpApiWithOAuth;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Consumer: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/cymobile/ymwork/server/http/HttpApiWithOAuth;->mConsumer:Loauth/signpost/OAuthConsumer;

    invoke-interface {v4}, Loauth/signpost/OAuthConsumer;->getConsumerKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 42
    iget-object v4, p0, Lcom/cymobile/ymwork/server/http/HttpApiWithOAuth;->mConsumer:Loauth/signpost/OAuthConsumer;

    invoke-interface {v4}, Loauth/signpost/OAuthConsumer;->getConsumerSecret()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 41
    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 43
    sget-object v1, Lcom/cymobile/ymwork/server/http/HttpApiWithOAuth;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Token: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/cymobile/ymwork/server/http/HttpApiWithOAuth;->mConsumer:Loauth/signpost/OAuthConsumer;

    invoke-interface {v4}, Loauth/signpost/OAuthConsumer;->getToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 44
    iget-object v4, p0, Lcom/cymobile/ymwork/server/http/HttpApiWithOAuth;->mConsumer:Loauth/signpost/OAuthConsumer;

    invoke-interface {v4}, Loauth/signpost/OAuthConsumer;->getTokenSecret()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 43
    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 45
    iget-object v1, p0, Lcom/cymobile/ymwork/server/http/HttpApiWithOAuth;->mConsumer:Loauth/signpost/OAuthConsumer;

    invoke-interface {v1, p1}, Loauth/signpost/OAuthConsumer;->sign(Ljava/lang/Object;)Loauth/signpost/http/HttpRequest;
    :try_end_0
    .catch Loauth/signpost/exception/OAuthMessageSignerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Loauth/signpost/exception/OAuthExpectationFailedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/cymobile/ymwork/server/http/HttpApiWithOAuth;->executeHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/cymobile/ymwork/server/parsers/json/Parser;)Lcom/cymobile/ymwork/types/BaseType;

    move-result-object v1

    return-object v1

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, e:Loauth/signpost/exception/OAuthMessageSignerException;
    sget-object v1, Lcom/cymobile/ymwork/server/http/HttpApiWithOAuth;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "OAuthMessageSignerException"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 49
    .end local v0           #e:Loauth/signpost/exception/OAuthMessageSignerException;
    :catch_1
    move-exception v0

    .line 50
    .local v0, e:Loauth/signpost/exception/OAuthExpectationFailedException;
    sget-object v1, Lcom/cymobile/ymwork/server/http/HttpApiWithOAuth;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "OAuthExpectationFailedException"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public hasOAuthTokenWithSecret()Z
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/cymobile/ymwork/server/http/HttpApiWithOAuth;->verifyConsumer()V

    .line 80
    iget-object v0, p0, Lcom/cymobile/ymwork/server/http/HttpApiWithOAuth;->mConsumer:Loauth/signpost/OAuthConsumer;

    invoke-interface {v0}, Loauth/signpost/OAuthConsumer;->getToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cymobile/ymwork/server/http/HttpApiWithOAuth;->mConsumer:Loauth/signpost/OAuthConsumer;

    invoke-interface {v0}, Loauth/signpost/OAuthConsumer;->getTokenSecret()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOAuthConsumerCredentials(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "key"
    .parameter "secret"

    .prologue
    .line 62
    new-instance v0, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    sget-object v1, Loauth/signpost/signature/SignatureMethod;->HMAC_SHA1:Loauth/signpost/signature/SignatureMethod;

    invoke-direct {v0, p1, p2, v1}, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;-><init>(Ljava/lang/String;Ljava/lang/String;Loauth/signpost/signature/SignatureMethod;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/server/http/HttpApiWithOAuth;->mConsumer:Loauth/signpost/OAuthConsumer;

    .line 63
    return-void
.end method

.method public setOAuthTokenWithSecret(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "token"
    .parameter "tokenSecret"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/cymobile/ymwork/server/http/HttpApiWithOAuth;->verifyConsumer()V

    .line 67
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 68
    sget-object v2, Lcom/cymobile/ymwork/server/http/HttpApiWithOAuth;->LOG:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "Resetting consumer due to null token/secret."

    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 69
    iget-object v2, p0, Lcom/cymobile/ymwork/server/http/HttpApiWithOAuth;->mConsumer:Loauth/signpost/OAuthConsumer;

    invoke-interface {v2}, Loauth/signpost/OAuthConsumer;->getConsumerKey()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, consumerKey:Ljava/lang/String;
    iget-object v2, p0, Lcom/cymobile/ymwork/server/http/HttpApiWithOAuth;->mConsumer:Loauth/signpost/OAuthConsumer;

    invoke-interface {v2}, Loauth/signpost/OAuthConsumer;->getConsumerSecret()Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, consumerSecret:Ljava/lang/String;
    new-instance v2, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    .line 72
    sget-object v3, Loauth/signpost/signature/SignatureMethod;->HMAC_SHA1:Loauth/signpost/signature/SignatureMethod;

    invoke-direct {v2, v0, v1, v3}, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;-><init>(Ljava/lang/String;Ljava/lang/String;Loauth/signpost/signature/SignatureMethod;)V

    .line 71
    iput-object v2, p0, Lcom/cymobile/ymwork/server/http/HttpApiWithOAuth;->mConsumer:Loauth/signpost/OAuthConsumer;

    .line 76
    .end local v0           #consumerKey:Ljava/lang/String;
    .end local v1           #consumerSecret:Ljava/lang/String;
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v2, p0, Lcom/cymobile/ymwork/server/http/HttpApiWithOAuth;->mConsumer:Loauth/signpost/OAuthConsumer;

    invoke-interface {v2, p1, p2}, Loauth/signpost/OAuthConsumer;->setTokenWithSecret(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
