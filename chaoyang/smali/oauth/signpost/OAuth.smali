.class public Loauth/signpost/OAuth;
.super Ljava/lang/Object;
.source "OAuth.java"


# static fields
.field public static final ENCODING:Ljava/lang/String; = "UTF-8"

.field public static final FORM_ENCODED:Ljava/lang/String; = "application/x-www-form-urlencoded"

.field public static final HTTP_AUTHORIZATION_HEADER:Ljava/lang/String; = "Authorization"

.field public static final OAUTH_CALLBACK:Ljava/lang/String; = "oauth_callback"

.field public static final OAUTH_CALLBACK_CONFIRMED:Ljava/lang/String; = "oauth_callback_confirmed"

.field public static final OAUTH_CONSUMER_KEY:Ljava/lang/String; = "oauth_consumer_key"

.field public static final OAUTH_NONCE:Ljava/lang/String; = "oauth_nonce"

.field public static final OAUTH_SIGNATURE:Ljava/lang/String; = "oauth_signature"

.field public static final OAUTH_SIGNATURE_METHOD:Ljava/lang/String; = "oauth_signature_method"

.field public static final OAUTH_TIMESTAMP:Ljava/lang/String; = "oauth_timestamp"

.field public static final OAUTH_TOKEN:Ljava/lang/String; = "oauth_token"

.field public static final OAUTH_TOKEN_SECRET:Ljava/lang/String; = "oauth_token_secret"

.field public static final OAUTH_VERIFIER:Ljava/lang/String; = "oauth_verifier"

.field public static final OAUTH_VERSION:Ljava/lang/String; = "oauth_version"

.field public static final OUT_OF_BAND:Ljava/lang/String; = "oob"

.field public static final VERSION_1_0:Ljava/lang/String; = "1.0"

.field private static final percentEncoder:Lcom/google/gdata/util/common/base/PercentEscaper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 66
    new-instance v0, Lcom/google/gdata/util/common/base/PercentEscaper;

    const-string v1, "-._~"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/base/PercentEscaper;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Loauth/signpost/OAuth;->percentEncoder:Lcom/google/gdata/util/common/base/PercentEscaper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs addQueryParameters(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "url"
    .parameter "kvPairs"

    .prologue
    .line 185
    const-string v3, "?"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v1, "&"

    .line 186
    .local v1, queryDelim:Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 187
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_2

    .line 188
    if-lez v0, :cond_0

    .line 189
    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, p1, v0

    invoke-static {v4}, Loauth/signpost/OAuth;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    aget-object v4, p1, v4

    invoke-static {v4}, Loauth/signpost/OAuth;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 185
    .end local v0           #i:I
    .end local v1           #queryDelim:Ljava/lang/String;
    .end local v2           #sb:Ljava/lang/StringBuilder;
    :cond_1
    const-string v1, "?"

    goto :goto_0

    .line 194
    .restart local v0       #i:I
    .restart local v1       #queryDelim:Ljava/lang/String;
    .restart local v2       #sb:Ljava/lang/StringBuilder;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static decodeForm(Ljava/io/InputStream;)Ljava/util/List;
    .locals 4
    .parameter "content"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List",
            "<",
            "Loauth/signpost/Parameter;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 148
    .local v1, reader:Ljava/io/BufferedReader;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .local v2, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, line:Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 155
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Loauth/signpost/OAuth;->decodeForm(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method public static decodeForm(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .parameter "form"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Loauth/signpost/Parameter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v6, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Loauth/signpost/Parameter;>;"
    invoke-static {p0}, Loauth/signpost/OAuth;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 126
    const-string v8, "\\&"

    invoke-virtual {p0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v5, v0, v2

    .line 127
    .local v5, nvp:Ljava/lang/String;
    const/16 v8, 0x3d

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 130
    .local v1, equals:I
    if-gez v1, :cond_0

    .line 131
    invoke-static {v5}, Loauth/signpost/OAuth;->percentDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 132
    .local v4, name:Ljava/lang/String;
    const/4 v7, 0x0

    .line 138
    .local v7, value:Ljava/lang/String;
    :goto_1
    new-instance v8, Loauth/signpost/Parameter;

    invoke-direct {v8, v4, v7}, Loauth/signpost/Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 134
    .end local v4           #name:Ljava/lang/String;
    .end local v7           #value:Ljava/lang/String;
    :cond_0
    const/4 v8, 0x0

    invoke-virtual {v5, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Loauth/signpost/OAuth;->percentDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 135
    .restart local v4       #name:Ljava/lang/String;
    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Loauth/signpost/OAuth;->percentDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .restart local v7       #value:Ljava/lang/String;
    goto :goto_1

    .line 141
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #equals:I
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #nvp:Ljava/lang/String;
    .end local v7           #value:Ljava/lang/String;
    :cond_1
    return-object v6
.end method

.method public static formEncode(Ljava/util/Collection;)Ljava/lang/String;
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    .local p0, parameters:Ljava/util/Collection;,"Ljava/util/Collection<Loauth/signpost/Parameter;>;"
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 118
    .local v0, b:Ljava/io/ByteArrayOutputStream;
    invoke-static {p0, v0}, Loauth/signpost/OAuth;->formEncode(Ljava/util/Collection;Ljava/io/OutputStream;)V

    .line 119
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method

.method public static formEncode(Ljava/util/Collection;Ljava/io/OutputStream;)V
    .locals 4
    .parameter
    .parameter "into"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Loauth/signpost/Parameter;",
            ">;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    .local p0, parameters:Ljava/util/Collection;,"Ljava/util/Collection<Loauth/signpost/Parameter;>;"
    if-eqz p0, :cond_1

    .line 96
    const/4 v0, 0x1

    .line 97
    .local v0, first:Z
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Loauth/signpost/Parameter;

    .line 98
    .local v2, parameter:Loauth/signpost/Parameter;
    if-eqz v0, :cond_0

    .line 99
    const/4 v0, 0x0

    .line 103
    :goto_1
    invoke-virtual {v2}, Loauth/signpost/Parameter;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Loauth/signpost/OAuth;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Loauth/signpost/OAuth;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 104
    const/16 v3, 0x3d

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    .line 105
    invoke-virtual {v2}, Loauth/signpost/Parameter;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Loauth/signpost/OAuth;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Loauth/signpost/OAuth;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 101
    :cond_0
    const/16 v3, 0x26

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1

    .line 108
    .end local v0           #first:Z
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #parameter:Loauth/signpost/Parameter;
    :cond_1
    return-void
.end method

.method private static isEmpty(Ljava/lang/String;)Z
    .locals 1
    .parameter "str"

    .prologue
    .line 181
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static percentDecode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "s"

    .prologue
    .line 78
    if-nez p0, :cond_0

    .line 79
    :try_start_0
    const-string v1, ""

    .line 81
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "UTF-8"

    invoke-static {p0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, wow:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static percentEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "s"

    .prologue
    .line 70
    if-nez p0, :cond_0

    .line 71
    const-string v0, ""

    .line 73
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Loauth/signpost/OAuth;->percentEncoder:Lcom/google/gdata/util/common/base/PercentEscaper;

    invoke-virtual {v0, p0}, Lcom/google/gdata/util/common/base/PercentEscaper;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static toMap(Ljava/util/Collection;)Ljava/util/Map;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Loauth/signpost/Parameter;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    .local p0, from:Ljava/util/Collection;,"Ljava/util/Collection<Loauth/signpost/Parameter;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 165
    .local v2, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_1

    .line 166
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Loauth/signpost/Parameter;

    .line 167
    .local v3, param:Loauth/signpost/Parameter;
    invoke-virtual {v3}, Loauth/signpost/Parameter;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Loauth/signpost/OAuth;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, key:Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 169
    invoke-virtual {v3}, Loauth/signpost/Parameter;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Loauth/signpost/OAuth;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 173
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #key:Ljava/lang/String;
    .end local v3           #param:Loauth/signpost/Parameter;
    :cond_1
    return-object v2
.end method

.method private static final toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "from"

    .prologue
    .line 177
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
