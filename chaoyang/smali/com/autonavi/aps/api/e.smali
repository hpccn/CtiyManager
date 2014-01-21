.class final Lcom/autonavi/aps/api/e;
.super Landroid/telephony/PhoneStateListener;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 1

    if-nez p1, :cond_2

    const-string v0, "cell location changed, is null"

    invoke-static {v0}, Lcom/autonavi/aps/api/Utils;->writeLogCat(Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lcom/autonavi/aps/api/APSYUNPINGTAI;->c()Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/autonavi/aps/api/APSYUNPINGTAI;->c()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/autonavi/aps/api/APSYUNPINGTAI;->a(Landroid/telephony/CellLocation;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    if-eqz p1, :cond_1

    :try_start_1
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onCellLocationChanged(Landroid/telephony/CellLocation;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_2
    return-void

    :cond_2
    const-string v0, "cell location changed, not null"

    invoke-static {v0}, Lcom/autonavi/aps/api/Utils;->writeLogCat(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/autonavi/aps/api/Utils;->printException(Ljava/lang/Exception;)V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/autonavi/aps/api/Utils;->printException(Ljava/lang/Exception;)V

    goto :goto_2
.end method

.method public final onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method public final onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "cell signal strength change"

    invoke-static {v0}, Lcom/autonavi/aps/api/Utils;->writeLogCat(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x71

    invoke-static {v0}, Lcom/autonavi/aps/api/APSYUNPINGTAI;->a(I)V

    invoke-static {}, Lcom/autonavi/aps/api/APSYUNPINGTAI;->d()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/autonavi/aps/api/APSYUNPINGTAI;->e()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lcom/autonavi/aps/api/APSYUNPINGTAI;->e()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/aps/api/GsmCellBean;

    invoke-static {}, Lcom/autonavi/aps/api/APSYUNPINGTAI;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/api/GsmCellBean;->setSignal(I)V

    :goto_0
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/autonavi/aps/api/APSYUNPINGTAI;->d()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/autonavi/aps/api/APSYUNPINGTAI;->g()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-static {}, Lcom/autonavi/aps/api/APSYUNPINGTAI;->g()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/aps/api/CdmaCellBean;

    invoke-static {}, Lcom/autonavi/aps/api/APSYUNPINGTAI;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/api/CdmaCellBean;->setSignal(I)V

    goto :goto_0

    :cond_1
    const-string v0, "unknown phone type"

    invoke-static {v0}, Lcom/autonavi/aps/api/Utils;->writeLogCat(Ljava/lang/String;)V

    goto :goto_0
.end method
