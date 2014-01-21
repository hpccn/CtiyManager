.class final Lcom/autonavi/aps/api/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/LocationListener;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    const-string v1, "network"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "receive system network provider location"

    invoke-static {v0}, Lcom/autonavi/aps/api/Utils;->writeLogCat(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/autonavi/aps/api/APSYUNPINGTAI;->b(Landroid/location/Location;)V

    :cond_0
    return-void
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 1

    const-string v0, "network"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "system network provider disabled"

    invoke-static {v0}, Lcom/autonavi/aps/api/Utils;->writeLogCat(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/autonavi/aps/api/APSYUNPINGTAI;->b(Landroid/location/Location;)V

    :cond_0
    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 1

    const-string v0, "network"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "system network provider is enabled"

    invoke-static {v0}, Lcom/autonavi/aps/api/Utils;->writeLogCat(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 2

    const-string v0, "network"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "system network provider status changed to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/aps/api/Utils;->writeLogCat(Ljava/lang/String;)V

    if-nez p2, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/autonavi/aps/api/APSYUNPINGTAI;->b(Landroid/location/Location;)V

    :cond_0
    return-void
.end method
