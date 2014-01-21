.class public Loauth/signpost/commonshttp/HttpRequestAdapter;
.super Ljava/lang/Object;
.source "HttpRequestAdapter.java"

# interfaces
.implements Loauth/signpost/http/HttpRequest;


# instance fields
.field private entity:Lorg/apache/http/HttpEntity;

.field private request:Lorg/apache/http/HttpRequest;


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpRequest;)V
    .locals 1
    .parameter "request"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Loauth/signpost/commonshttp/HttpRequestAdapter;->request:Lorg/apache/http/HttpRequest;

    .line 19
    instance-of v0, p1, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v0, :cond_0

    .line 20
    check-cast p1, Lorg/apache/http/HttpEntityEnclosingRequest;

    .end local p1
    invoke-interface {p1}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    iput-object v0, p0, Loauth/signpost/commonshttp/HttpRequestAdapter;->entity:Lorg/apache/http/HttpEntity;

    .line 22
    :cond_0
    return-void
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 45
    iget-object v2, p0, Loauth/signpost/commonshttp/HttpRequestAdapter;->entity:Lorg/apache/http/HttpEntity;

    if-nez v2, :cond_1

    .line 52
    :cond_0
    :goto_0
    return-object v1

    .line 48
    :cond_1
    iget-object v2, p0, Loauth/signpost/commonshttp/HttpRequestAdapter;->entity:Lorg/apache/http/HttpEntity;

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v0

    .line 49
    .local v0, header:Lorg/apache/http/Header;
    if-eqz v0, :cond_0

    .line 52
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "name"

    .prologue
    .line 25
    iget-object v1, p0, Loauth/signpost/commonshttp/HttpRequestAdapter;->request:Lorg/apache/http/HttpRequest;

    invoke-interface {v1, p1}, Lorg/apache/http/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 26
    .local v0, header:Lorg/apache/http/Header;
    if-nez v0, :cond_0

    .line 27
    const/4 v1, 0x0

    .line 29
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getMessagePayload()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Loauth/signpost/commonshttp/HttpRequestAdapter;->entity:Lorg/apache/http/HttpEntity;

    if-nez v0, :cond_0

    .line 57
    const/4 v0, 0x0

    .line 59
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Loauth/signpost/commonshttp/HttpRequestAdapter;->entity:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Loauth/signpost/commonshttp/HttpRequestAdapter;->request:Lorg/apache/http/HttpRequest;

    invoke-interface {v0}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Loauth/signpost/commonshttp/HttpRequestAdapter;->request:Lorg/apache/http/HttpRequest;

    invoke-interface {v0}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 41
    iget-object v0, p0, Loauth/signpost/commonshttp/HttpRequestAdapter;->request:Lorg/apache/http/HttpRequest;

    invoke-interface {v0, p1, p2}, Lorg/apache/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void
.end method
