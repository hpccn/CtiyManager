.class public Loauth/signpost/basic/DefaultOAuthProvider;
.super Ljava/lang/Object;
.source "DefaultOAuthProvider.java"

# interfaces
.implements Loauth/signpost/OAuthProvider;


# instance fields
.field private accessTokenEndpointUrl:Ljava/lang/String;

.field private authorizationWebsiteUrl:Ljava/lang/String;

.field private transient connection:Ljava/net/HttpURLConnection;

.field private consumer:Loauth/signpost/OAuthConsumer;

.field private isOAuth10a:Z

.field private requestTokenEndpointUrl:Ljava/lang/String;

.field private responseParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Loauth/signpost/OAuthConsumer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "consumer"
    .parameter "requestTokenEndpointUrl"
    .parameter "accessTokenEndpointUrl"
    .parameter "authorizationWebsiteUrl"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Loauth/signpost/basic/DefaultOAuthProvider;->consumer:Loauth/signpost/OAuthConsumer;

    .line 54
    iput-object p2, p0, Loauth/signpost/basic/DefaultOAuthProvider;->requestTokenEndpointUrl:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Loauth/signpost/basic/DefaultOAuthProvider;->accessTokenEndpointUrl:Ljava/lang/String;

    .line 56
    iput-object p4, p0, Loauth/signpost/basic/DefaultOAuthProvider;->authorizationWebsiteUrl:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Loauth/signpost/basic/DefaultOAuthProvider;->responseParameters:Ljava/util/Map;

    .line 58
    return-void
.end method

.method private retrieveToken(Ljava/lang/String;)V
    .locals 9
    .parameter "endpointUrl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Loauth/signpost/exception/OAuthMessageSignerException;,
            Loauth/signpost/exception/OAuthCommunicationException;,
            Loauth/signpost/exception/OAuthNotAuthorizedException;,
            Loauth/signpost/exception/OAuthExpectationFailedException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 108
    iget-object v6, p0, Loauth/signpost/basic/DefaultOAuthProvider;->consumer:Loauth/signpost/OAuthConsumer;

    invoke-interface {v6}, Loauth/signpost/OAuthConsumer;->getConsumerKey()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Loauth/signpost/basic/DefaultOAuthProvider;->consumer:Loauth/signpost/OAuthConsumer;

    invoke-interface {v6}, Loauth/signpost/OAuthConsumer;->getConsumerSecret()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    .line 110
    :cond_0
    new-instance v6, Loauth/signpost/exception/OAuthExpectationFailedException;

    const-string v7, "Consumer key or secret not set"

    invoke-direct {v6, v7}, Loauth/signpost/exception/OAuthExpectationFailedException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 115
    :cond_1
    :try_start_0
    iget-object v6, p0, Loauth/signpost/basic/DefaultOAuthProvider;->connection:Ljava/net/HttpURLConnection;

    if-nez v6, :cond_2

    .line 116
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljava/net/HttpURLConnection;

    iput-object v6, p0, Loauth/signpost/basic/DefaultOAuthProvider;->connection:Ljava/net/HttpURLConnection;

    .line 117
    iget-object v6, p0, Loauth/signpost/basic/DefaultOAuthProvider;->connection:Ljava/net/HttpURLConnection;

    const-string v7, "GET"

    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 119
    :cond_2
    new-instance v2, Loauth/signpost/basic/HttpRequestAdapter;

    iget-object v6, p0, Loauth/signpost/basic/DefaultOAuthProvider;->connection:Ljava/net/HttpURLConnection;

    invoke-direct {v2, v6}, Loauth/signpost/basic/HttpRequestAdapter;-><init>(Ljava/net/HttpURLConnection;)V

    .line 121
    .local v2, request:Loauth/signpost/http/HttpRequest;
    iget-object v6, p0, Loauth/signpost/basic/DefaultOAuthProvider;->consumer:Loauth/signpost/OAuthConsumer;

    invoke-interface {v6, v2}, Loauth/signpost/OAuthConsumer;->sign(Loauth/signpost/http/HttpRequest;)Loauth/signpost/http/HttpRequest;

    .line 123
    iget-object v6, p0, Loauth/signpost/basic/DefaultOAuthProvider;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->connect()V

    .line 125
    iget-object v6, p0, Loauth/signpost/basic/DefaultOAuthProvider;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 127
    .local v4, statusCode:I
    const/16 v6, 0x191

    if-ne v4, v6, :cond_4

    .line 128
    new-instance v6, Loauth/signpost/exception/OAuthNotAuthorizedException;

    invoke-direct {v6}, Loauth/signpost/exception/OAuthNotAuthorizedException;-><init>()V

    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Loauth/signpost/exception/OAuthNotAuthorizedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Loauth/signpost/exception/OAuthExpectationFailedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 147
    .end local v2           #request:Loauth/signpost/http/HttpRequest;
    .end local v4           #statusCode:I
    :catch_0
    move-exception v0

    .line 148
    .local v0, e:Loauth/signpost/exception/OAuthNotAuthorizedException;
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    .end local v0           #e:Loauth/signpost/exception/OAuthNotAuthorizedException;
    :catchall_0
    move-exception v6

    iget-object v7, p0, Loauth/signpost/basic/DefaultOAuthProvider;->connection:Ljava/net/HttpURLConnection;

    if-eqz v7, :cond_3

    .line 155
    iget-object v7, p0, Loauth/signpost/basic/DefaultOAuthProvider;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 156
    iput-object v8, p0, Loauth/signpost/basic/DefaultOAuthProvider;->connection:Ljava/net/HttpURLConnection;

    :cond_3
    throw v6

    .line 131
    .restart local v2       #request:Loauth/signpost/http/HttpRequest;
    .restart local v4       #statusCode:I
    :cond_4
    :try_start_2
    iget-object v6, p0, Loauth/signpost/basic/DefaultOAuthProvider;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-static {v6}, Loauth/signpost/OAuth;->decodeForm(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v1

    .line 132
    .local v1, params:Ljava/util/List;,"Ljava/util/List<Loauth/signpost/Parameter;>;"
    invoke-static {v1}, Loauth/signpost/OAuth;->toMap(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v6

    iput-object v6, p0, Loauth/signpost/basic/DefaultOAuthProvider;->responseParameters:Ljava/util/Map;

    .line 134
    iget-object v6, p0, Loauth/signpost/basic/DefaultOAuthProvider;->responseParameters:Ljava/util/Map;

    const-string v7, "oauth_token"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 135
    .local v5, token:Ljava/lang/String;
    iget-object v6, p0, Loauth/signpost/basic/DefaultOAuthProvider;->responseParameters:Ljava/util/Map;

    const-string v7, "oauth_token"

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v6, p0, Loauth/signpost/basic/DefaultOAuthProvider;->responseParameters:Ljava/util/Map;

    const-string v7, "oauth_token_secret"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 137
    .local v3, secret:Ljava/lang/String;
    iget-object v6, p0, Loauth/signpost/basic/DefaultOAuthProvider;->responseParameters:Ljava/util/Map;

    const-string v7, "oauth_token_secret"

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    if-eqz v5, :cond_5

    if-nez v3, :cond_6

    .line 140
    :cond_5
    new-instance v6, Loauth/signpost/exception/OAuthExpectationFailedException;

    const-string v7, "Request token or token secret not set in server reply. The service provider you use is probably buggy."

    invoke-direct {v6, v7}, Loauth/signpost/exception/OAuthExpectationFailedException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Loauth/signpost/exception/OAuthNotAuthorizedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Loauth/signpost/exception/OAuthExpectationFailedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 149
    .end local v1           #params:Ljava/util/List;,"Ljava/util/List<Loauth/signpost/Parameter;>;"
    .end local v2           #request:Loauth/signpost/http/HttpRequest;
    .end local v3           #secret:Ljava/lang/String;
    .end local v4           #statusCode:I
    .end local v5           #token:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 150
    .local v0, e:Loauth/signpost/exception/OAuthExpectationFailedException;
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 145
    .end local v0           #e:Loauth/signpost/exception/OAuthExpectationFailedException;
    .restart local v1       #params:Ljava/util/List;,"Ljava/util/List<Loauth/signpost/Parameter;>;"
    .restart local v2       #request:Loauth/signpost/http/HttpRequest;
    .restart local v3       #secret:Ljava/lang/String;
    .restart local v4       #statusCode:I
    .restart local v5       #token:Ljava/lang/String;
    :cond_6
    :try_start_4
    iget-object v6, p0, Loauth/signpost/basic/DefaultOAuthProvider;->consumer:Loauth/signpost/OAuthConsumer;

    invoke-interface {v6, v5, v3}, Loauth/signpost/OAuthConsumer;->setTokenWithSecret(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Loauth/signpost/exception/OAuthNotAuthorizedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Loauth/signpost/exception/OAuthExpectationFailedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 154
    iget-object v6, p0, Loauth/signpost/basic/DefaultOAuthProvider;->connection:Ljava/net/HttpURLConnection;

    if-eqz v6, :cond_7

    .line 155
    iget-object v6, p0, Loauth/signpost/basic/DefaultOAuthProvider;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 156
    iput-object v8, p0, Loauth/signpost/basic/DefaultOAuthProvider;->connection:Ljava/net/HttpURLConnection;

    .line 159
    :cond_7
    return-void

    .line 151
    .end local v1           #params:Ljava/util/List;,"Ljava/util/List<Loauth/signpost/Parameter;>;"
    .end local v2           #request:Loauth/signpost/http/HttpRequest;
    .end local v3           #secret:Ljava/lang/String;
    .end local v4           #statusCode:I
    .end local v5           #token:Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 152
    .local v0, e:Ljava/lang/Exception;
    :try_start_5
    new-instance v6, Loauth/signpost/exception/OAuthCommunicationException;

    invoke-direct {v6, v0}, Loauth/signpost/exception/OAuthCommunicationException;-><init>(Ljava/lang/Exception;)V

    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method


# virtual methods
.method public getAccessTokenEndpointUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Loauth/signpost/basic/DefaultOAuthProvider;->accessTokenEndpointUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthorizationWebsiteUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Loauth/signpost/basic/DefaultOAuthProvider;->authorizationWebsiteUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getConsumer()Loauth/signpost/OAuthConsumer;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Loauth/signpost/basic/DefaultOAuthProvider;->consumer:Loauth/signpost/OAuthConsumer;

    return-object v0
.end method

.method public getRequestTokenEndpointUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Loauth/signpost/basic/DefaultOAuthProvider;->requestTokenEndpointUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseParameters()Ljava/util/Map;
    .locals 1
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
    .line 162
    iget-object v0, p0, Loauth/signpost/basic/DefaultOAuthProvider;->responseParameters:Ljava/util/Map;

    return-object v0
.end method

.method public isOAuth10a()Z
    .locals 1

    .prologue
    .line 174
    iget-boolean v0, p0, Loauth/signpost/basic/DefaultOAuthProvider;->isOAuth10a:Z

    return v0
.end method

.method public retrieveAccessToken(Ljava/lang/String;)V
    .locals 4
    .parameter "oauthVerifier"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Loauth/signpost/exception/OAuthMessageSignerException;,
            Loauth/signpost/exception/OAuthNotAuthorizedException;,
            Loauth/signpost/exception/OAuthExpectationFailedException;,
            Loauth/signpost/exception/OAuthCommunicationException;
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Loauth/signpost/basic/DefaultOAuthProvider;->consumer:Loauth/signpost/OAuthConsumer;

    invoke-interface {v0}, Loauth/signpost/OAuthConsumer;->getToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Loauth/signpost/basic/DefaultOAuthProvider;->consumer:Loauth/signpost/OAuthConsumer;

    invoke-interface {v0}, Loauth/signpost/OAuthConsumer;->getTokenSecret()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 93
    :cond_0
    new-instance v0, Loauth/signpost/exception/OAuthExpectationFailedException;

    const-string v1, "Authorized request token or token secret not set. Did you retrieve an authorized request token before?"

    invoke-direct {v0, v1}, Loauth/signpost/exception/OAuthExpectationFailedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_1
    iget-boolean v0, p0, Loauth/signpost/basic/DefaultOAuthProvider;->isOAuth10a:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    iget-object v0, p0, Loauth/signpost/basic/DefaultOAuthProvider;->accessTokenEndpointUrl:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "oauth_verifier"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Loauth/signpost/OAuth;->addQueryParameters(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Loauth/signpost/basic/DefaultOAuthProvider;->retrieveToken(Ljava/lang/String;)V

    .line 102
    return-void

    .line 98
    :cond_2
    iget-object v0, p0, Loauth/signpost/basic/DefaultOAuthProvider;->accessTokenEndpointUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public retrieveRequestToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "callbackUrl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Loauth/signpost/exception/OAuthMessageSignerException;,
            Loauth/signpost/exception/OAuthNotAuthorizedException;,
            Loauth/signpost/exception/OAuthExpectationFailedException;,
            Loauth/signpost/exception/OAuthCommunicationException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 65
    iget-object v1, p0, Loauth/signpost/basic/DefaultOAuthProvider;->consumer:Loauth/signpost/OAuthConsumer;

    invoke-interface {v1, v2, v2}, Loauth/signpost/OAuthConsumer;->setTokenWithSecret(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v1, p0, Loauth/signpost/basic/DefaultOAuthProvider;->requestTokenEndpointUrl:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "oauth_callback"

    aput-object v3, v2, v4

    aput-object p1, v2, v5

    invoke-static {v1, v2}, Loauth/signpost/OAuth;->addQueryParameters(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Loauth/signpost/basic/DefaultOAuthProvider;->retrieveToken(Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Loauth/signpost/basic/DefaultOAuthProvider;->responseParameters:Ljava/util/Map;

    const-string v2, "oauth_callback_confirmed"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 73
    .local v0, callbackConfirmed:Ljava/lang/String;
    iget-object v1, p0, Loauth/signpost/basic/DefaultOAuthProvider;->responseParameters:Ljava/util/Map;

    const-string v2, "oauth_callback_confirmed"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Loauth/signpost/basic/DefaultOAuthProvider;->isOAuth10a:Z

    .line 78
    iget-boolean v1, p0, Loauth/signpost/basic/DefaultOAuthProvider;->isOAuth10a:Z

    if-eqz v1, :cond_0

    .line 79
    iget-object v1, p0, Loauth/signpost/basic/DefaultOAuthProvider;->authorizationWebsiteUrl:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "oauth_token"

    aput-object v3, v2, v4

    iget-object v3, p0, Loauth/signpost/basic/DefaultOAuthProvider;->consumer:Loauth/signpost/OAuthConsumer;

    invoke-interface {v3}, Loauth/signpost/OAuthConsumer;->getToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Loauth/signpost/OAuth;->addQueryParameters(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 82
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Loauth/signpost/basic/DefaultOAuthProvider;->authorizationWebsiteUrl:Ljava/lang/String;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "oauth_token"

    aput-object v3, v2, v4

    iget-object v3, p0, Loauth/signpost/basic/DefaultOAuthProvider;->consumer:Loauth/signpost/OAuthConsumer;

    invoke-interface {v3}, Loauth/signpost/OAuthConsumer;->getToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, "oauth_callback"

    aput-object v3, v2, v6

    const/4 v3, 0x3

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Loauth/signpost/OAuth;->addQueryParameters(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public setConsumer(Loauth/signpost/OAuthConsumer;)V
    .locals 0
    .parameter "consumer"

    .prologue
    .line 194
    iput-object p1, p0, Loauth/signpost/basic/DefaultOAuthProvider;->consumer:Loauth/signpost/OAuthConsumer;

    .line 195
    return-void
.end method

.method setHttpUrlConnection(Ljava/net/HttpURLConnection;)V
    .locals 0
    .parameter "connection"

    .prologue
    .line 166
    iput-object p1, p0, Loauth/signpost/basic/DefaultOAuthProvider;->connection:Ljava/net/HttpURLConnection;

    .line 167
    return-void
.end method

.method public setOAuth10a(Z)V
    .locals 0
    .parameter "isOAuth10aProvider"

    .prologue
    .line 170
    iput-boolean p1, p0, Loauth/signpost/basic/DefaultOAuthProvider;->isOAuth10a:Z

    .line 171
    return-void
.end method
