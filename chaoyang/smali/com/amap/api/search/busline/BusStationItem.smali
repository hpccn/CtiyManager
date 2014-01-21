.class public Lcom/amap/api/search/busline/BusStationItem;
.super Ljava/lang/Object;
.source "BusStationItem.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/amap/api/search/core/LatLonPoint;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getmCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/amap/api/search/busline/BusStationItem;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getmCoord()Lcom/amap/api/search/core/LatLonPoint;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/amap/api/search/busline/BusStationItem;->b:Lcom/amap/api/search/core/LatLonPoint;

    return-object v0
.end method

.method public getmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/amap/api/search/busline/BusStationItem;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getmSpell()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/amap/api/search/busline/BusStationItem;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getmStationNum()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/amap/api/search/busline/BusStationItem;->e:I

    return v0
.end method

.method public setmCode(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/amap/api/search/busline/BusStationItem;->d:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setmCoord(Lcom/amap/api/search/core/LatLonPoint;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Lcom/amap/api/search/busline/BusStationItem;->b:Lcom/amap/api/search/core/LatLonPoint;

    .line 23
    return-void
.end method

.method public setmName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 16
    iput-object p1, p0, Lcom/amap/api/search/busline/BusStationItem;->a:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public setmSpell(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/amap/api/search/busline/BusStationItem;->c:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setmStationNum(I)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput p1, p0, Lcom/amap/api/search/busline/BusStationItem;->e:I

    .line 41
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/search/busline/BusStationItem;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Coord: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/search/busline/BusStationItem;->b:Lcom/amap/api/search/core/LatLonPoint;

    invoke-virtual {v1}, Lcom/amap/api/search/core/LatLonPoint;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Spell: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/search/busline/BusStationItem;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/search/busline/BusStationItem;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " StationNum: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/amap/api/search/busline/BusStationItem;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
