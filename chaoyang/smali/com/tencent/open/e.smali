.class final Lcom/tencent/open/e;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 562
    const-string v0, ""

    invoke-static {v0, p2}, Lcom/tencent/open/Util;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 567
    const-string v0, ""

    invoke-static {v0, p2}, Lcom/tencent/open/Util;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 2

    .prologue
    .line 571
    const-string v0, ""

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/tencent/open/Util;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    const/4 v0, 0x0

    return-object v0
.end method
