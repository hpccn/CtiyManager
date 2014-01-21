.class public abstract Loauth/signpost/signature/OAuthMessageSigner;
.super Ljava/lang/Object;
.source "OAuthMessageSigner.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Loauth/signpost/signature/OAuthMessageSigner$1;
    }
.end annotation


# instance fields
.field private transient base64:Lorg/apache/commons/codec/binary/Base64;

.field private consumerSecret:Ljava/lang/String;

.field private tokenSecret:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lorg/apache/commons/codec/binary/Base64;

    invoke-direct {v0}, Lorg/apache/commons/codec/binary/Base64;-><init>()V

    iput-object v0, p0, Loauth/signpost/signature/OAuthMessageSigner;->base64:Lorg/apache/commons/codec/binary/Base64;

    .line 50
    return-void
.end method

.method public static create(Loauth/signpost/signature/SignatureMethod;)Loauth/signpost/signature/OAuthMessageSigner;
    .locals 2
    .parameter "signatureMethod"

    .prologue
    .line 36
    sget-object v0, Loauth/signpost/signature/OAuthMessageSigner$1;->$SwitchMap$oauth$signpost$signature$SignatureMethod:[I

    invoke-virtual {p0}, Loauth/signpost/signature/SignatureMethod;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 45
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 39
    :pswitch_0
    new-instance v0, Loauth/signpost/signature/PlainTextMessageSigner;

    invoke-direct {v0}, Loauth/signpost/signature/PlainTextMessageSigner;-><init>()V

    goto :goto_0

    .line 42
    :pswitch_1
    new-instance v0, Loauth/signpost/signature/HmacSha1MessageSigner;

    invoke-direct {v0}, Loauth/signpost/signature/HmacSha1MessageSigner;-><init>()V

    goto :goto_0

    .line 36
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 91
    new-instance v0, Lorg/apache/commons/codec/binary/Base64;

    invoke-direct {v0}, Lorg/apache/commons/codec/binary/Base64;-><init>()V

    iput-object v0, p0, Loauth/signpost/signature/OAuthMessageSigner;->base64:Lorg/apache/commons/codec/binary/Base64;

    .line 92
    return-void
.end method


# virtual methods
.method protected base64Encode([B)Ljava/lang/String;
    .locals 2
    .parameter "b"

    .prologue
    .line 77
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Loauth/signpost/signature/OAuthMessageSigner;->base64:Lorg/apache/commons/codec/binary/Base64;

    invoke-virtual {v1, p1}, Lorg/apache/commons/codec/binary/Base64;->encode([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method protected computeSignatureBaseString(Loauth/signpost/http/HttpRequest;Ljava/util/Map;)Ljava/lang/String;
    .locals 2
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
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Loauth/signpost/exception/OAuthMessageSignerException;
        }
    .end annotation

    .prologue
    .line 83
    .local p2, oauthParameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Loauth/signpost/signature/SignatureBaseString;

    invoke-direct {v0, p1, p2}, Loauth/signpost/signature/SignatureBaseString;-><init>(Loauth/signpost/http/HttpRequest;Ljava/util/Map;)V

    .line 85
    .local v0, sbs:Loauth/signpost/signature/SignatureBaseString;
    invoke-virtual {v0}, Loauth/signpost/signature/SignatureBaseString;->compute()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected decodeBase64(Ljava/lang/String;)[B
    .locals 2
    .parameter "s"

    .prologue
    .line 73
    iget-object v0, p0, Loauth/signpost/signature/OAuthMessageSigner;->base64:Lorg/apache/commons/codec/binary/Base64;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/codec/binary/Base64;->decode([B)[B

    move-result-object v0

    return-object v0
.end method

.method protected getConsumerSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Loauth/signpost/signature/OAuthMessageSigner;->consumerSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Loauth/signpost/signature/OAuthMessageSigner;->tokenSecret:Ljava/lang/String;

    return-object v0
.end method

.method public setConsumerSecret(Ljava/lang/String;)V
    .locals 0
    .parameter "consumerSecret"

    .prologue
    .line 65
    iput-object p1, p0, Loauth/signpost/signature/OAuthMessageSigner;->consumerSecret:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setTokenSecret(Ljava/lang/String;)V
    .locals 0
    .parameter "tokenSecret"

    .prologue
    .line 69
    iput-object p1, p0, Loauth/signpost/signature/OAuthMessageSigner;->tokenSecret:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public abstract sign(Loauth/signpost/http/HttpRequest;Ljava/util/Map;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Loauth/signpost/http/HttpRequest;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Loauth/signpost/exception/OAuthMessageSignerException;
        }
    .end annotation
.end method
