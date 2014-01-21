.class public abstract Lcom/cymobile/ymwork/server/http/AbstractHttpApi;
.super Ljava/lang/Object;
.source "AbstractHttpApi.java"

# interfaces
.implements Lcom/cymobile/ymwork/server/http/HttpApi;


# static fields
.field private static final CLIENT_VERSION_HEADER:Ljava/lang/String; = "User-Agent"

.field protected static final DEBUG:Z = true

.field private static final DEFAULT_CLIENT_VERSION:Ljava/lang/String; = "com.angeline.mob"

.field protected static final LOG:Ljava/util/logging/Logger; = null

.field private static final TIMEOUT:I = 0x3c


# instance fields
.field private final mClientVersion:Ljava/lang/String;

.field private final mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/cymobile/ymwork/server/http/AbstractHttpApi;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/cymobile/ymwork/server/http/AbstractHttpApi;->LOG:Ljava/util/logging/Logger;

    .line 49
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/impl/client/DefaultHttpClient;Ljava/lang/String;)V
    .locals 1
    .parameter "httpClient"
    .parameter "clientVersion"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/cymobile/ymwork/server/http/AbstractHttpApi;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 62
    if-eqz p2, :cond_0

    .line 63
    iput-object p2, p0, Lcom/cymobile/ymwork/server/http/AbstractHttpApi;->mClientVersion:Ljava/lang/String;

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_0
    const-string v0, "com.angeline.mob"

    iput-object v0, p0, Lcom/cymobile/ymwork/server/http/AbstractHttpApi;->mClientVersion:Ljava/lang/String;

    goto :goto_0
.end method

.method public static final createHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 8

    .prologue
    .line 284
    new-instance v3, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 288
    .local v3, supportedSchemes:Lorg/apache/http/conn/scheme/SchemeRegistry;
    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v2

    .line 289
    .local v2, sf:Lorg/apache/http/conn/scheme/SocketFactory;
    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    const-string v5, "http"

    const/16 v6, 0x50

    invoke-direct {v4, v5, v2, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 290
    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    const-string v5, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v6

    const/16 v7, 0x1bb

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 293
    invoke-static {}, Lcom/cymobile/ymwork/server/http/AbstractHttpApi;->createHttpParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    .line 294
    .local v1, httpParams:Lorg/apache/http/params/HttpParams;
    const/4 v4, 0x0

    invoke-static {v1, v4}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 296
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v1, v3}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 298
    .local v0, ccm:Lorg/apache/http/conn/ClientConnectionManager;
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4, v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    return-object v4
.end method

.method private static final createHttpParams()Lorg/apache/http/params/HttpParams;
    .locals 3

    .prologue
    const v2, 0xea60

    .line 305
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 309
    .local v0, params:Lorg/apache/http/params/HttpParams;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    .line 311
    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 312
    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 313
    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 315
    return-object v0
.end method

.method private varargs stripNulls([Lorg/apache/http/NameValuePair;)Ljava/util/List;
    .locals 7
    .parameter "nameValuePairs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/http/NameValuePair;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 265
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 266
    .local v2, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, p1

    if-lt v0, v3, :cond_0

    .line 273
    return-object v2

    .line 267
    :cond_0
    aget-object v1, p1, v0

    .line 268
    .local v1, param:Lorg/apache/http/NameValuePair;
    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 269
    sget-object v3, Lcom/cymobile/ymwork/server/http/AbstractHttpApi;->LOG:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Param: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 270
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public varargs createHttpGet(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Lorg/apache/http/client/methods/HttpGet;
    .locals 6
    .parameter "url"
    .parameter "nameValuePairs"

    .prologue
    .line 227
    sget-object v2, Lcom/cymobile/ymwork/server/http/AbstractHttpApi;->LOG:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "creating HttpGet for: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 228
    invoke-direct {p0, p2}, Lcom/cymobile/ymwork/server/http/AbstractHttpApi;->stripNulls([Lorg/apache/http/NameValuePair;)Ljava/util/List;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 229
    .local v1, query:Ljava/lang/String;
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 230
    .local v0, httpGet:Lorg/apache/http/client/methods/HttpGet;
    const-string v2, "User-Agent"

    iget-object v3, p0, Lcom/cymobile/ymwork/server/http/AbstractHttpApi;->mClientVersion:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    sget-object v2, Lcom/cymobile/ymwork/server/http/AbstractHttpApi;->LOG:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Created: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpGet;->getURI()Ljava/net/URI;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 232
    return-object v0
.end method

.method public varargs createHttpPost(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Lorg/apache/http/client/methods/HttpPost;
    .locals 6
    .parameter "url"
    .parameter "nameValuePairs"

    .prologue
    .line 236
    sget-object v2, Lcom/cymobile/ymwork/server/http/AbstractHttpApi;->LOG:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "creating HttpPost for: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 237
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 238
    .local v1, httpPost:Lorg/apache/http/client/methods/HttpPost;
    const-string v2, "User-Agent"

    iget-object v3, p0, Lcom/cymobile/ymwork/server/http/AbstractHttpApi;->mClientVersion:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    :try_start_0
    new-instance v2, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {p0, p2}, Lcom/cymobile/ymwork/server/http/AbstractHttpApi;->stripNulls([Lorg/apache/http/NameValuePair;)Ljava/util/List;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    sget-object v2, Lcom/cymobile/ymwork/server/http/AbstractHttpApi;->LOG:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Created: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 245
    return-object v1

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, e1:Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unable to encode http parameters."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public createHttpURLConnectionPost(Ljava/net/URL;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 4
    .parameter "url"
    .parameter "boundary"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 250
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 251
    .local v0, conn:Ljava/net/HttpURLConnection;
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 252
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 253
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 254
    const v1, 0xea60

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 255
    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 257
    const-string v1, "User-Agent"

    iget-object v2, p0, Lcom/cymobile/ymwork/server/http/AbstractHttpApi;->mClientVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const-string v1, "Connection"

    const-string v2, "Keep-Alive"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const-string v1, "Content-Type"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "multipart/form-data;boundary="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    return-object v0
.end method

.method public varargs doHttpPost(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Ljava/lang/String;
    .locals 7
    .parameter "url"
    .parameter "nameValuePairs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cymobile/ymwork/server/error/ServerCredentialsException;,
            Lcom/cymobile/ymwork/server/error/ServerParseException;,
            Lcom/cymobile/ymwork/server/error/ServerException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 179
    sget-object v3, Lcom/cymobile/ymwork/server/http/AbstractHttpApi;->LOG:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "doHttpPost: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0, p1, p2}, Lcom/cymobile/ymwork/server/http/AbstractHttpApi;->createHttpPost(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v1

    .line 182
    .local v1, httpPost:Lorg/apache/http/client/methods/HttpPost;
    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/server/http/AbstractHttpApi;->executeHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 183
    .local v2, response:Lorg/apache/http/HttpResponse;
    sget-object v3, Lcom/cymobile/ymwork/server/http/AbstractHttpApi;->LOG:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "executed HttpRequest for: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpPost;->getURI()Ljava/net/URI;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 185
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 202
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 203
    new-instance v3, Lcom/cymobile/ymwork/server/error/ServerException;

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/cymobile/ymwork/server/error/ServerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 188
    :sswitch_0
    :try_start_0
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, e:Lorg/apache/http/ParseException;
    new-instance v3, Lcom/cymobile/ymwork/server/error/ServerParseException;

    invoke-virtual {v0}, Lorg/apache/http/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/cymobile/ymwork/server/error/ServerParseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 194
    .end local v0           #e:Lorg/apache/http/ParseException;
    :sswitch_1
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 195
    new-instance v3, Lcom/cymobile/ymwork/server/error/ServerCredentialsException;

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/cymobile/ymwork/server/error/ServerCredentialsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 198
    :sswitch_2
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 199
    new-instance v3, Lcom/cymobile/ymwork/server/error/ServerException;

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/cymobile/ymwork/server/error/ServerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 185
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x191 -> :sswitch_1
        0x194 -> :sswitch_2
    .end sparse-switch
.end method

.method public executeHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/cymobile/ymwork/server/parsers/json/Parser;)Lcom/cymobile/ymwork/types/BaseType;
    .locals 7
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
    .line 72
    .local p2, parser:Lcom/cymobile/ymwork/server/parsers/json/Parser;,"Lcom/cymobile/ymwork/server/parsers/json/Parser<+Lcom/cymobile/ymwork/types/BaseType;>;"
    sget-object v3, Lcom/cymobile/ymwork/server/http/AbstractHttpApi;->LOG:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "doHttpRequest: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 74
    const-string v3, "HttpApi"

    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/server/http/AbstractHttpApi;->executeHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 76
    .local v1, response:Lorg/apache/http/HttpResponse;
    sget-object v3, Lcom/cymobile/ymwork/server/http/AbstractHttpApi;->LOG:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "executed HttpRequest for: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 76
    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 79
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 80
    .local v2, statusCode:I
    sparse-switch v2, :sswitch_data_0

    .line 171
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 172
    new-instance v3, Lcom/cymobile/ymwork/server/error/ServerException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error connecting to Server: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Try again later."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/cymobile/ymwork/server/error/ServerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 82
    :sswitch_0
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, content:Ljava/lang/String;
    invoke-static {p2, v0}, Lcom/cymobile/ymwork/utils/JSONUtils;->consume(Lcom/cymobile/ymwork/server/parsers/json/Parser;Ljava/lang/String;)Lcom/cymobile/ymwork/types/BaseType;

    move-result-object v3

    return-object v3

    .line 148
    .end local v0           #content:Ljava/lang/String;
    :sswitch_1
    sget-object v3, Lcom/cymobile/ymwork/server/http/AbstractHttpApi;->LOG:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v5, "HTTP Code: 400"

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 149
    new-instance v3, Lcom/cymobile/ymwork/server/error/ServerException;

    .line 150
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 151
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x190

    .line 149
    invoke-direct {v3, v4, v5, v6}, Lcom/cymobile/ymwork/server/error/ServerException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v3

    .line 154
    :sswitch_2
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 156
    new-instance v3, Lcom/cymobile/ymwork/server/error/ServerCredentialsException;

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/cymobile/ymwork/server/error/ServerCredentialsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 159
    :sswitch_3
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 161
    new-instance v3, Lcom/cymobile/ymwork/server/error/ServerException;

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    const/16 v6, 0x194

    invoke-direct {v3, v4, v5, v6}, Lcom/cymobile/ymwork/server/error/ServerException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v3

    .line 164
    :sswitch_4
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 166
    new-instance v3, Lcom/cymobile/ymwork/server/error/ServerException;

    const-string v4, "Server is down. Try again later."

    const-string v5, ""

    const/16 v6, 0x1f4

    invoke-direct {v3, v4, v5, v6}, Lcom/cymobile/ymwork/server/error/ServerException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v3

    .line 80
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x190 -> :sswitch_1
        0x191 -> :sswitch_2
        0x194 -> :sswitch_3
        0x1f4 -> :sswitch_4
    .end sparse-switch
.end method

.method public executeHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;)Lorg/apache/http/HttpResponse;
    .locals 5
    .parameter "httpRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 215
    sget-object v1, Lcom/cymobile/ymwork/server/http/AbstractHttpApi;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "executing HttpRequest for: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 215
    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 218
    :try_start_0
    iget-object v1, p0, Lcom/cymobile/ymwork/server/http/AbstractHttpApi;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->closeExpiredConnections()V

    .line 219
    iget-object v1, p0, Lcom/cymobile/ymwork/server/http/AbstractHttpApi;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1, p1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 222
    throw v0
.end method
