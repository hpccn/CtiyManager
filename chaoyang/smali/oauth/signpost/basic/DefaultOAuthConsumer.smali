.class public Loauth/signpost/basic/DefaultOAuthConsumer;
.super Loauth/signpost/AbstractOAuthConsumer;
.source "DefaultOAuthConsumer.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Loauth/signpost/signature/SignatureMethod;)V
    .locals 0
    .parameter "consumerKey"
    .parameter "consumerSecret"
    .parameter "signatureMethod"

    .prologue
    .line 14
    invoke-direct {p0, p1, p2, p3}, Loauth/signpost/AbstractOAuthConsumer;-><init>(Ljava/lang/String;Ljava/lang/String;Loauth/signpost/signature/SignatureMethod;)V

    .line 15
    return-void
.end method


# virtual methods
.method protected wrap(Ljava/lang/Object;)Loauth/signpost/http/HttpRequest;
    .locals 2
    .parameter "request"

    .prologue
    .line 19
    instance-of v0, p1, Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The default consumer expects requests of type java.net.HttpURLConnection"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_0
    new-instance v0, Loauth/signpost/basic/HttpRequestAdapter;

    check-cast p1, Ljava/net/HttpURLConnection;

    .end local p1
    invoke-direct {v0, p1}, Loauth/signpost/basic/HttpRequestAdapter;-><init>(Ljava/net/HttpURLConnection;)V

    return-object v0
.end method
