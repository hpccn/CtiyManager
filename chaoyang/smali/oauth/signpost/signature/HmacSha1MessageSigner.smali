.class public Loauth/signpost/signature/HmacSha1MessageSigner;
.super Loauth/signpost/signature/OAuthMessageSigner;
.source "HmacSha1MessageSigner.java"


# static fields
.field private static final MAC_NAME:Ljava/lang/String; = "HmacSHA1"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Loauth/signpost/signature/OAuthMessageSigner;-><init>()V

    return-void
.end method


# virtual methods
.method public sign(Loauth/signpost/http/HttpRequest;Ljava/util/Map;)Ljava/lang/String;
    .locals 9
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
    .line 38
    .local p2, oauthParameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Loauth/signpost/signature/HmacSha1MessageSigner;->getConsumerSecret()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Loauth/signpost/OAuth;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x26

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Loauth/signpost/signature/HmacSha1MessageSigner;->getTokenSecret()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Loauth/signpost/OAuth;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 40
    .local v3, keyString:Ljava/lang/String;
    const-string v7, "UTF-8"

    invoke-virtual {v3, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 42
    .local v2, keyBytes:[B
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v7, "HmacSHA1"

    invoke-direct {v1, v2, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 43
    .local v1, key:Ljavax/crypto/SecretKey;
    const-string v7, "HmacSHA1"

    invoke-static {v7}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v4

    .line 44
    .local v4, mac:Ljavax/crypto/Mac;
    invoke-virtual {v4, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 46
    invoke-virtual {p0, p1, p2}, Loauth/signpost/signature/HmacSha1MessageSigner;->computeSignatureBaseString(Loauth/signpost/http/HttpRequest;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    .line 47
    .local v5, sbs:Ljava/lang/String;
    const-string v7, "UTF-8"

    invoke-virtual {v5, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 49
    .local v6, text:[B
    invoke-virtual {v4, v6}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v7

    invoke-virtual {p0, v7}, Loauth/signpost/signature/HmacSha1MessageSigner;->base64Encode([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    return-object v7

    .line 50
    .end local v1           #key:Ljavax/crypto/SecretKey;
    .end local v2           #keyBytes:[B
    .end local v3           #keyString:Ljava/lang/String;
    .end local v4           #mac:Ljavax/crypto/Mac;
    .end local v5           #sbs:Ljava/lang/String;
    .end local v6           #text:[B
    :catch_0
    move-exception v0

    .line 51
    .local v0, e:Ljava/security/GeneralSecurityException;
    new-instance v7, Loauth/signpost/exception/OAuthMessageSignerException;

    invoke-direct {v7, v0}, Loauth/signpost/exception/OAuthMessageSignerException;-><init>(Ljava/lang/Exception;)V

    throw v7

    .line 52
    .end local v0           #e:Ljava/security/GeneralSecurityException;
    :catch_1
    move-exception v0

    .line 53
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v7, Loauth/signpost/exception/OAuthMessageSignerException;

    invoke-direct {v7, v0}, Loauth/signpost/exception/OAuthMessageSignerException;-><init>(Ljava/lang/Exception;)V

    throw v7
.end method
