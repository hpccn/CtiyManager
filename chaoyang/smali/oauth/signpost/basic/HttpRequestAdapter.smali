.class public Loauth/signpost/basic/HttpRequestAdapter;
.super Ljava/lang/Object;
.source "HttpRequestAdapter.java"

# interfaces
.implements Loauth/signpost/http/HttpRequest;


# instance fields
.field protected connection:Ljava/net/HttpURLConnection;


# direct methods
.method public constructor <init>(Ljava/net/HttpURLConnection;)V
    .locals 0
    .parameter "connection"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Loauth/signpost/basic/HttpRequestAdapter;->connection:Ljava/net/HttpURLConnection;

    .line 15
    return-void
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Loauth/signpost/basic/HttpRequestAdapter;->connection:Ljava/net/HttpURLConnection;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"

    .prologue
    .line 30
    iget-object v0, p0, Loauth/signpost/basic/HttpRequestAdapter;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessagePayload()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Loauth/signpost/basic/HttpRequestAdapter;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Loauth/signpost/basic/HttpRequestAdapter;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 26
    iget-object v0, p0, Loauth/signpost/basic/HttpRequestAdapter;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    return-void
.end method
