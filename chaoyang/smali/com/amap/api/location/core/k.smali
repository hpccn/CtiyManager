.class public abstract Lcom/amap/api/location/core/k;
.super Ljava/lang/Object;
.source "ProtocalHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected a:Ljava/net/Proxy;

.field protected b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected c:I

.field protected d:I

.field protected e:I

.field protected f:I

.field protected g:Ljava/lang/String;

.field protected h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/net/Proxy;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    iput v2, p0, Lcom/amap/api/location/core/k;->c:I

    .line 332
    const/16 v0, 0x14

    iput v0, p0, Lcom/amap/api/location/core/k;->d:I

    .line 333
    iput v1, p0, Lcom/amap/api/location/core/k;->e:I

    .line 334
    iput v1, p0, Lcom/amap/api/location/core/k;->f:I

    .line 345
    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/location/core/k;->h:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/amap/api/location/core/k;->a:Ljava/net/Proxy;

    .line 30
    iput-object p1, p0, Lcom/amap/api/location/core/k;->b:Ljava/lang/Object;

    .line 31
    iput v2, p0, Lcom/amap/api/location/core/k;->c:I

    .line 32
    const/4 v0, 0x5

    iput v0, p0, Lcom/amap/api/location/core/k;->d:I

    .line 33
    const/4 v0, 0x2

    iput v0, p0, Lcom/amap/api/location/core/k;->e:I

    .line 34
    iput-object p4, p0, Lcom/amap/api/location/core/k;->g:Ljava/lang/String;

    .line 36
    return-void
.end method
