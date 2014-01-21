.class public interface abstract Lcom/cymobile/ymwork/server/http/HttpApi;
.super Ljava/lang/Object;
.source "HttpApi.java"


# virtual methods
.method public varargs abstract createHttpGet(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Lorg/apache/http/client/methods/HttpGet;
.end method

.method public varargs abstract createHttpPost(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Lorg/apache/http/client/methods/HttpPost;
.end method

.method public abstract createHttpURLConnectionPost(Ljava/net/URL;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public varargs abstract doHttpPost(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cymobile/ymwork/server/error/ServerCredentialsException;,
            Lcom/cymobile/ymwork/server/error/ServerParseException;,
            Lcom/cymobile/ymwork/server/error/ServerException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract doHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/cymobile/ymwork/server/parsers/json/Parser;)Lcom/cymobile/ymwork/types/BaseType;
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
.end method
