.class public Loauth/signpost/exception/OAuthNotAuthorizedException;
.super Loauth/signpost/exception/OAuthException;
.source "OAuthNotAuthorizedException.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "Authorization failed (server replied with a 401). This can happen if the consumer key was not correct or the signatures did not match."

    invoke-direct {p0, v0}, Loauth/signpost/exception/OAuthException;-><init>(Ljava/lang/String;)V

    .line 24
    return-void
.end method
