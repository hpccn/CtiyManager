.class public Loauth/signpost/signature/SignatureBaseString;
.super Ljava/lang/Object;
.source "SignatureBaseString.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Loauth/signpost/signature/SignatureBaseString$ComparableParameter;
    }
.end annotation


# instance fields
.field private oauthParams:Ljava/util/Map;
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

.field private request:Loauth/signpost/http/HttpRequest;


# direct methods
.method public constructor <init>(Loauth/signpost/http/HttpRequest;Ljava/util/Map;)V
    .locals 0
    .parameter "request"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Loauth/signpost/http/HttpRequest;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p2, oauthParams:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Loauth/signpost/signature/SignatureBaseString;->request:Loauth/signpost/http/HttpRequest;

    .line 69
    iput-object p2, p0, Loauth/signpost/signature/SignatureBaseString;->oauthParams:Ljava/util/Map;

    .line 70
    return-void
.end method

.method private collectBodyParameters(Ljava/util/Collection;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Loauth/signpost/Parameter;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    .local p1, parameters:Ljava/util/Collection;,"Ljava/util/Collection<Loauth/signpost/Parameter;>;"
    iget-object v2, p0, Loauth/signpost/signature/SignatureBaseString;->request:Loauth/signpost/http/HttpRequest;

    invoke-interface {v2}, Loauth/signpost/http/HttpRequest;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, contentType:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 148
    iget-object v2, p0, Loauth/signpost/signature/SignatureBaseString;->request:Loauth/signpost/http/HttpRequest;

    invoke-interface {v2}, Loauth/signpost/http/HttpRequest;->getMessagePayload()Ljava/io/InputStream;

    move-result-object v1

    .line 149
    .local v1, payload:Ljava/io/InputStream;
    invoke-static {v1}, Loauth/signpost/OAuth;->decodeForm(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 151
    .end local v1           #payload:Ljava/io/InputStream;
    :cond_0
    return-void
.end method

.method private collectHeaderParameters(Ljava/util/Collection;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Loauth/signpost/Parameter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 133
    .local p1, parameters:Ljava/util/Collection;,"Ljava/util/Collection<Loauth/signpost/Parameter;>;"
    iget-object v2, p0, Loauth/signpost/signature/SignatureBaseString;->oauthParams:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 134
    .local v1, key:Ljava/lang/String;
    new-instance v3, Loauth/signpost/Parameter;

    iget-object v2, p0, Loauth/signpost/signature/SignatureBaseString;->oauthParams:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v3, v1, v2}, Loauth/signpost/Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 136
    .end local v1           #key:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private collectQueryParameters(Ljava/util/Collection;)Ljava/lang/String;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Loauth/signpost/Parameter;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 163
    .local p1, parameters:Ljava/util/Collection;,"Ljava/util/Collection<Loauth/signpost/Parameter;>;"
    iget-object v2, p0, Loauth/signpost/signature/SignatureBaseString;->request:Loauth/signpost/http/HttpRequest;

    invoke-interface {v2}, Loauth/signpost/http/HttpRequest;->getRequestUrl()Ljava/lang/String;

    move-result-object v1

    .line 164
    .local v1, url:Ljava/lang/String;
    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 165
    .local v0, q:I
    if-ltz v0, :cond_0

    .line 167
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Loauth/signpost/OAuth;->decodeForm(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 168
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 171
    :cond_0
    return-object v1
.end method

.method private getParameters(Ljava/util/Collection;)Ljava/util/List;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Loauth/signpost/signature/SignatureBaseString$ComparableParameter;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Loauth/signpost/Parameter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    .local p1, parameters:Ljava/util/Collection;,"Ljava/util/Collection<Loauth/signpost/signature/SignatureBaseString$ComparableParameter;>;"
    if-nez p1, :cond_1

    .line 178
    const/4 v1, 0x0

    .line 184
    :cond_0
    return-object v1

    .line 180
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 181
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Loauth/signpost/Parameter;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Loauth/signpost/signature/SignatureBaseString$ComparableParameter;

    .line 182
    .local v2, parameter:Loauth/signpost/signature/SignatureBaseString$ComparableParameter;
    iget-object v3, v2, Loauth/signpost/signature/SignatureBaseString$ComparableParameter;->value:Loauth/signpost/Parameter;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public compute()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Loauth/signpost/exception/OAuthMessageSignerException;
        }
    .end annotation

    .prologue
    .line 75
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v1, params:Ljava/util/List;,"Ljava/util/List<Loauth/signpost/Parameter;>;"
    invoke-direct {p0, v1}, Loauth/signpost/signature/SignatureBaseString;->collectHeaderParameters(Ljava/util/Collection;)V

    .line 77
    invoke-direct {p0, v1}, Loauth/signpost/signature/SignatureBaseString;->collectBodyParameters(Ljava/util/Collection;)V

    .line 78
    invoke-direct {p0, v1}, Loauth/signpost/signature/SignatureBaseString;->collectQueryParameters(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, requestUrl:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Loauth/signpost/signature/SignatureBaseString;->request:Loauth/signpost/http/HttpRequest;

    invoke-interface {v4}, Loauth/signpost/http/HttpRequest;->getMethod()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x26

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v2}, Loauth/signpost/signature/SignatureBaseString;->normalizeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Loauth/signpost/OAuth;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x26

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v1}, Loauth/signpost/signature/SignatureBaseString;->normalizeParameters(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Loauth/signpost/OAuth;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 83
    .end local v1           #params:Ljava/util/List;,"Ljava/util/List<Loauth/signpost/Parameter;>;"
    .end local v2           #requestUrl:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 84
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Loauth/signpost/exception/OAuthMessageSignerException;

    invoke-direct {v3, v0}, Loauth/signpost/exception/OAuthMessageSignerException;-><init>(Ljava/lang/Exception;)V

    throw v3
.end method

.method public normalizeParameters(Ljava/util/Collection;)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Loauth/signpost/Parameter;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    .local p1, parameters:Ljava/util/Collection;,"Ljava/util/Collection<Loauth/signpost/Parameter;>;"
    if-nez p1, :cond_0

    .line 112
    const-string v3, ""

    .line 122
    :goto_0
    return-object v3

    .line 114
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 116
    .local v1, p:Ljava/util/List;,"Ljava/util/List<Loauth/signpost/signature/SignatureBaseString$ComparableParameter;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Loauth/signpost/Parameter;

    .line 117
    .local v2, parameter:Loauth/signpost/Parameter;
    const-string v3, "oauth_signature"

    invoke-virtual {v2}, Loauth/signpost/Parameter;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 118
    new-instance v3, Loauth/signpost/signature/SignatureBaseString$ComparableParameter;

    invoke-direct {v3, v2}, Loauth/signpost/signature/SignatureBaseString$ComparableParameter;-><init>(Loauth/signpost/Parameter;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 121
    .end local v2           #parameter:Loauth/signpost/Parameter;
    :cond_2
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 122
    invoke-direct {p0, v1}, Loauth/signpost/signature/SignatureBaseString;->getParameters(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Loauth/signpost/OAuth;->formEncode(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public normalizeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 89
    new-instance v5, Ljava/net/URI;

    invoke-direct {v5, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 90
    .local v5, uri:Ljava/net/URI;
    invoke-virtual {v5}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 91
    .local v4, scheme:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, authority:Ljava/lang/String;
    const-string v7, "http"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v5}, Ljava/net/URI;->getPort()I

    move-result v7

    const/16 v8, 0x50

    if-eq v7, v8, :cond_1

    :cond_0
    const-string v7, "https"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v5}, Ljava/net/URI;->getPort()I

    move-result v7

    const/16 v8, 0x1bb

    if-ne v7, v8, :cond_5

    :cond_1
    const/4 v1, 0x1

    .line 94
    .local v1, dropPort:Z
    :goto_0
    if-eqz v1, :cond_2

    .line 96
    const-string v7, ":"

    invoke-virtual {v0, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 97
    .local v2, index:I
    if-ltz v2, :cond_2

    .line 98
    invoke-virtual {v0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 101
    .end local v2           #index:I
    :cond_2
    invoke-virtual {v5}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v3

    .line 102
    .local v3, path:Ljava/lang/String;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_4

    .line 103
    :cond_3
    const-string v3, "/"

    .line 106
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .end local v1           #dropPort:Z
    .end local v3           #path:Ljava/lang/String;
    :cond_5
    move v1, v6

    .line 92
    goto :goto_0
.end method
