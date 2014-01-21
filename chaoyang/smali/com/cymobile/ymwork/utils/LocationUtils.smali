.class public Lcom/cymobile/ymwork/utils/LocationUtils;
.super Ljava/lang/Object;
.source "LocationUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final createShopLocation(Landroid/location/Location;)Lcom/cymobile/ymwork/server/Server$Location;
    .locals 12
    .parameter "location"

    .prologue
    const-wide/16 v10, 0x0

    const/4 v1, 0x0

    .line 7
    if-nez p0, :cond_0

    .line 8
    new-instance v0, Lcom/cymobile/ymwork/server/Server$Location;

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/cymobile/ymwork/server/Server$Location;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :goto_0
    return-object v0

    .line 10
    :cond_0
    const/4 v3, 0x0

    .line 11
    .local v3, geolat:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    cmpl-double v0, v8, v10

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    .line 15
    :cond_1
    const/4 v4, 0x0

    .line 16
    .local v4, geolong:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    cmpl-double v0, v8, v10

    if-eqz v0, :cond_2

    .line 17
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    .line 20
    :cond_2
    const/4 v5, 0x0

    .line 21
    .local v5, geohacc:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 22
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    .line 25
    :cond_3
    const/4 v7, 0x0

    .line 26
    .local v7, geoalt:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 27
    invoke-virtual {p0}, Landroid/location/Location;->hasAltitude()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    .line 30
    :cond_4
    new-instance v2, Lcom/cymobile/ymwork/server/Server$Location;

    move-object v6, v1

    invoke-direct/range {v2 .. v7}, Lcom/cymobile/ymwork/server/Server$Location;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_0
.end method
