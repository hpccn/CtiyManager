.class public Lcom/amap/api/offlinemap/DownCity;
.super Lcom/amap/api/offlinemap/City;
.source "DownCity.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/amap/api/offlinemap/City;-><init>()V

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/offlinemap/DownCity;->a:Ljava/lang/String;

    .line 5
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/offlinemap/DownCity;->b:J

    .line 6
    const/4 v0, -0x1

    iput v0, p0, Lcom/amap/api/offlinemap/DownCity;->c:I

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/offlinemap/DownCity;->d:Ljava/lang/String;

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/offlinemap/DownCity;->e:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public getDurl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/amap/api/offlinemap/DownCity;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getJianpin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/amap/api/offlinemap/DownCity;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 23
    iget-wide v0, p0, Lcom/amap/api/offlinemap/DownCity;->b:J

    return-wide v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/amap/api/offlinemap/DownCity;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getmState()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/amap/api/offlinemap/DownCity;->c:I

    return v0
.end method

.method public setDurl(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    iput-object p1, p0, Lcom/amap/api/offlinemap/DownCity;->a:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setJianpin(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/amap/api/offlinemap/DownCity;->e:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setSize(J)V
    .locals 0
    .parameter

    .prologue
    .line 27
    iput-wide p1, p0, Lcom/amap/api/offlinemap/DownCity;->b:J

    .line 28
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/amap/api/offlinemap/DownCity;->d:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setmState(I)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput p1, p0, Lcom/amap/api/offlinemap/DownCity;->c:I

    .line 36
    return-void
.end method
