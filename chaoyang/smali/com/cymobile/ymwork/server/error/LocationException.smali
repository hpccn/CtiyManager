.class public Lcom/cymobile/ymwork/server/error/LocationException;
.super Lcom/cymobile/ymwork/server/error/ServerException;
.source "LocationException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    const-string v0, "Unable to determine your location."

    invoke-direct {p0, v0}, Lcom/cymobile/ymwork/server/error/ServerException;-><init>(Ljava/lang/String;)V

    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/cymobile/ymwork/server/error/ServerException;-><init>(Ljava/lang/String;)V

    .line 12
    return-void
.end method
