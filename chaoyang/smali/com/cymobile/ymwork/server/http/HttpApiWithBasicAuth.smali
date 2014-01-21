.class public Lcom/cymobile/ymwork/server/http/HttpApiWithBasicAuth;
.super Lcom/cymobile/ymwork/server/http/AbstractHttpApi;
.source "HttpApiWithBasicAuth.java"


# instance fields
.field private preemptiveAuth:Lorg/apache/http/HttpRequestInterceptor;


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/client/DefaultHttpClient;Ljava/lang/String;)V
    .locals 2
    .parameter "httpClient"
    .parameter "clientVersion"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/cymobile/ymwork/server/http/AbstractHttpApi;-><init>(Lorg/apache/http/impl/client/DefaultHttpClient;Ljava/lang/String;)V

    .line 28
    new-instance v0, Lcom/cymobile/ymwork/server/http/HttpApiWithBasicAuth$1;

    invoke-direct {v0, p0}, Lcom/cymobile/ymwork/server/http/HttpApiWithBasicAuth$1;-><init>(Lcom/cymobile/ymwork/server/http/HttpApiWithBasicAuth;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/server/http/HttpApiWithBasicAuth;->preemptiveAuth:Lorg/apache/http/HttpRequestInterceptor;

    .line 54
    iget-object v0, p0, Lcom/cymobile/ymwork/server/http/HttpApiWithBasicAuth;->preemptiveAuth:Lorg/apache/http/HttpRequestInterceptor;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;I)V

    .line 55
    return-void
.end method


# virtual methods
.method public doHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/cymobile/ymwork/server/parsers/json/Parser;)Lcom/cymobile/ymwork/types/BaseType;
    .locals 1
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
    .line 60
    .local p2, parser:Lcom/cymobile/ymwork/server/parsers/json/Parser;,"Lcom/cymobile/ymwork/server/parsers/json/Parser<+Lcom/cymobile/ymwork/types/BaseType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/cymobile/ymwork/server/http/HttpApiWithBasicAuth;->executeHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/cymobile/ymwork/server/parsers/json/Parser;)Lcom/cymobile/ymwork/types/BaseType;

    move-result-object v0

    return-object v0
.end method
