.class public Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;
.super Loauth/signpost/AbstractOAuthConsumer;
.source "CommonsHttpOAuthConsumer.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Loauth/signpost/signature/SignatureMethod;)V
    .locals 0
    .parameter "consumerKey"
    .parameter "consumerSecret"
    .parameter "signatureMethod"

    .prologue
    .line 12
    invoke-direct {p0, p1, p2, p3}, Loauth/signpost/AbstractOAuthConsumer;-><init>(Ljava/lang/String;Ljava/lang/String;Loauth/signpost/signature/SignatureMethod;)V

    .line 13
    return-void
.end method


# virtual methods
.method protected wrap(Ljava/lang/Object;)Loauth/signpost/http/HttpRequest;
    .locals 3
    .parameter "request"

    .prologue
    .line 17
    instance-of v0, p1, Lorg/apache/http/HttpRequest;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This consumer expects requests of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lorg/apache/http/HttpRequest;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_0
    new-instance v0, Loauth/signpost/commonshttp/HttpRequestAdapter;

    check-cast p1, Lorg/apache/http/HttpRequest;

    .end local p1
    invoke-direct {v0, p1}, Loauth/signpost/commonshttp/HttpRequestAdapter;-><init>(Lorg/apache/http/HttpRequest;)V

    return-object v0
.end method
