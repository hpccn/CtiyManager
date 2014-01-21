.class public Lcom/amap/api/offlinemap/City;
.super Ljava/lang/Object;
.source "City.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 50
    check-cast p1, Lcom/amap/api/offlinemap/City;

    iget-object v1, p1, Lcom/amap/api/offlinemap/City;->d:Ljava/lang/String;

    .line 51
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iget-object v3, p0, Lcom/amap/api/offlinemap/City;->d:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-le v2, v3, :cond_1

    .line 52
    const/4 v0, -0x1

    .line 56
    :cond_0
    :goto_0
    return v0

    .line 53
    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iget-object v2, p0, Lcom/amap/api/offlinemap/City;->d:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ge v1, v2, :cond_0

    .line 54
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/amap/api/offlinemap/City;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/amap/api/offlinemap/City;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getInitial()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/amap/api/offlinemap/City;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getPinyin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/amap/api/offlinemap/City;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getProvince()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/amap/api/offlinemap/City;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/amap/api/offlinemap/City;->b:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/amap/api/offlinemap/City;->c:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setInitial(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/amap/api/offlinemap/City;->d:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setPinyin(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/amap/api/offlinemap/City;->e:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setProvince(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 16
    iput-object p1, p0, Lcom/amap/api/offlinemap/City;->a:Ljava/lang/String;

    .line 17
    return-void
.end method
