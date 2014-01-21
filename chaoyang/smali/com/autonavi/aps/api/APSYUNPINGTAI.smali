.class public Lcom/autonavi/aps/api/APSYUNPINGTAI;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/aps/api/IAPS;


# static fields
.field private static A:J

.field private static B:Z

.field private static C:Z

.field private static D:Z

.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Lcom/autonavi/aps/api/APSYUNPINGTAI;

.field private static f:Landroid/content/Context;

.field private static g:Lcom/autonavi/aps/api/TelephoneBean;

.field private static h:I

.field private static i:Landroid/net/ConnectivityManager;

.field private static j:Landroid/net/wifi/WifiManager;

.field private static k:Landroid/telephony/TelephonyManager;

.field private static l:Landroid/location/LocationManager;

.field private static m:Landroid/location/LocationListener;

.field private static n:Landroid/location/LocationListener;

.field private static o:Landroid/location/Location;

.field private static p:Landroid/location/Location;

.field private static q:Ljava/util/ArrayList;

.field private static r:Ljava/util/ArrayList;

.field private static s:Ljava/util/List;

.field private static t:Lcom/autonavi/aps/api/Des;

.field private static u:Landroid/telephony/PhoneStateListener;

.field private static v:I

.field private static w:Lcom/autonavi/aps/api/f;

.field private static x:Landroid/net/wifi/WifiInfo;

.field private static y:Ljava/lang/String;

.field private static z:Lcom/autonavi/aps/api/Location;


# instance fields
.field private E:[I

.field private F:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    sput-object v2, Lcom/autonavi/aps/api/APSYUNPINGTAI;->a:Ljava/lang/String;

    sput-object v2, Lcom/autonavi/aps/api/APSYUNPINGTAI;->b:Ljava/lang/String;

    sput-object v2, Lcom/autonavi/aps/api/APSYUNPINGTAI;->c:Ljava/lang/String;

    sput-object v2, Lcom/autonavi/aps/api/APSYUNPINGTAI;->d:Ljava/lang/String;

    sput-object v2, Lcom/autonavi/aps/api/APSYUNPINGTAI;->e:Lcom/autonavi/aps/api/APSYUNPINGTAI;

    sput-object v2, Lcom/autonavi/aps/api/APSYUNPINGTAI;->f:Landroid/content/Context;

    sput-object v2, Lcom/autonavi/aps/api/APSYUNPINGTAI;->g:Lcom/autonavi/aps/api/TelephoneBean;

    sput v3, Lcom/autonavi/aps/api/APSYUNPINGTAI;->h:I

    sput-object v2, Lcom/autonavi/aps/api/APSYUNPINGTAI;->i:Landroid/net/ConnectivityManager;

    sput-object v2, Lcom/autonavi/aps/api/APSYUNPINGTAI;->j:Landroid/net/wifi/WifiManager;

    sput-object v2, Lcom/autonavi/aps/api/APSYUNPINGTAI;->k:Landroid/telephony/TelephonyManager;

    sput-object v2, Lcom/autonavi/aps/api/APSYUNPINGTAI;->l:Landroid/location/LocationManager;

    sput-object v2, Lcom/autonavi/aps/api/APSYUNPINGTAI;->m:Landroid/location/LocationListener;

    sput-object v2, Lcom/autonavi/aps/api/APSYUNPINGTAI;->n:Landroid/location/LocationListener;

    sput-object v2, Lcom/autonavi/aps/api/APSYUNPINGTAI;->o:Landroid/location/Location;

    sput-object v2, Lcom/autonavi/aps/api/APSYUNPINGTAI;->p:Landroid/location/Location;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->q:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->r:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->s:Ljava/util/List;

    new-instance v0, Lcom/autonavi/aps/api/Des;

    const-string v1, "autonavi00spas$#@!666666"

    invoke-direct {v0, v1}, Lcom/autonavi/aps/api/Des;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->t:Lcom/autonavi/aps/api/Des;

    sput-object v2, Lcom/autonavi/aps/api/APSYUNPINGTAI;->u:Landroid/telephony/PhoneStateListener;

    const/16 v0, 0xa

    sput v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->v:I

    sput-object v2, Lcom/autonavi/aps/api/APSYUNPINGTAI;->w:Lcom/autonavi/aps/api/f;

    sput-object v2, Lcom/autonavi/aps/api/APSYUNPINGTAI;->x:Landroid/net/wifi/WifiInfo;

    sput-object v2, Lcom/autonavi/aps/api/APSYUNPINGTAI;->y:Ljava/lang/String;

    sput-object v2, Lcom/autonavi/aps/api/APSYUNPINGTAI;->z:Lcom/autonavi/aps/api/Location;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->A:J

    sput-boolean v3, Lcom/autonavi/aps/api/APSYUNPINGTAI;->B:Z

    sput-boolean v3, Lcom/autonavi/aps/api/APSYUNPINGTAI;->C:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->D:Z

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Landroid/net/wifi/WifiManager;
    .locals 1

    sget-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->j:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method private declared-synchronized a(Ljava/lang/String;)Lcom/autonavi/aps/api/Location;
    .locals 5

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/autonavi/aps/api/NetManagerApache;->getInstance(Landroid/content/Context;)Lcom/autonavi/aps/api/NetManagerApache;

    move-result-object v0

    const-string v1, "http://aps.amap.com/APS/r"

    invoke-virtual {v0, v1, p1}, Lcom/autonavi/aps/api/NetManagerApache;->doPostXmlAsString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    sget-object v1, Lcom/autonavi/aps/api/APSYUNPINGTAI;->t:Lcom/autonavi/aps/api/Des;

    new-instance v2, Lcom/autonavi/aps/api/ParserResponse;

    invoke-direct {v2}, Lcom/autonavi/aps/api/ParserResponse;-><init>()V

    invoke-virtual {v2, v0}, Lcom/autonavi/aps/api/ParserResponse;->ParserSapsXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "GBK"

    invoke-virtual {v1, v0, v2}, Lcom/autonavi/aps/api/Des;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "response:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/autonavi/aps/api/Utils;->writeLogCat(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Lcom/autonavi/aps/api/ParserResponse;

    invoke-direct {v1}, Lcom/autonavi/aps/api/ParserResponse;-><init>()V

    invoke-virtual {v1, v0}, Lcom/autonavi/aps/api/ParserResponse;->ParserApsXml(Ljava/lang/String;)Lcom/autonavi/aps/api/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/autonavi/aps/api/Location;->getCenx()D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(I)V
    .locals 0

    sput p0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->v:I

    return-void
.end method

.method static synthetic a(J)V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->A:J

    return-void
.end method

.method static synthetic a(Landroid/location/Location;)V
    .locals 0

    sput-object p0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->o:Landroid/location/Location;

    return-void
.end method

.method static synthetic a(Landroid/net/wifi/WifiInfo;)V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->x:Landroid/net/wifi/WifiInfo;

    return-void
.end method

.method static synthetic a(Landroid/telephony/CellLocation;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/autonavi/aps/api/APSYUNPINGTAI;->b(Landroid/telephony/CellLocation;Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Ljava/util/List;)V
    .locals 0

    sput-object p0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->s:Ljava/util/List;

    return-void
.end method

.method private b(Ljava/util/List;)Ljava/lang/String;
    .locals 10

    const/16 v9, 0xa

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->E:[I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->F:[Ljava/lang/String;

    move v1, v2

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    iget-object v3, p0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->E:[I

    iget-object v4, p0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->F:[Ljava/lang/String;

    new-array v5, v9, [I

    new-array v6, v9, [Ljava/lang/String;

    move v0, v2

    :goto_2
    array-length v1, v3

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->E:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->E:[I

    array-length v0, v0

    if-le v0, v9, :cond_1

    move v0, v2

    :goto_3
    if-lt v0, v9, :cond_6

    iput-object v5, p0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->E:[I

    iput-object v6, p0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->F:[Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->E:[I

    iget-object v1, p0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->F:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    :goto_4
    array-length v4, v0

    if-lt v2, v4, :cond_7

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->E:[I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    aput v0, v3, v1

    iget-object v3, p0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->F:[Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    aput-object v0, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_5
    array-length v7, v3

    sub-int/2addr v7, v0

    add-int/lit8 v7, v7, -0x1

    if-lt v1, v7, :cond_4

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    aget v7, v3, v1

    add-int/lit8 v8, v1, 0x1

    aget v8, v3, v8

    if-ge v7, v8, :cond_5

    aget v7, v3, v1

    add-int/lit8 v8, v1, 0x1

    aget v8, v3, v8

    aput v8, v3, v1

    add-int/lit8 v8, v1, 0x1

    aput v7, v3, v8

    aget-object v7, v4, v1

    add-int/lit8 v8, v1, 0x1

    aget-object v8, v4, v8

    aput-object v8, v4, v1

    add-int/lit8 v8, v1, 0x1

    aput-object v7, v4, v8

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_6
    aget v1, v3, v0

    aput v1, v5, v0

    aget-object v1, v4, v0

    aput-object v1, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    if-lez v2, :cond_8

    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_8
    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    aget v5, v0, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method

.method static synthetic b()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->s:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Landroid/location/Location;)V
    .locals 0

    sput-object p0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->p:Landroid/location/Location;

    return-void
.end method

.method private static declared-synchronized b(Landroid/telephony/CellLocation;Ljava/util/List;)V
    .locals 7

    const/4 v6, 0x4

    const/4 v2, 0x0

    const-class v3, Lcom/autonavi/aps/api/APSYUNPINGTAI;

    monitor-enter v3

    if-eqz p0, :cond_0

    :try_start_0
    sget-object v1, Lcom/autonavi/aps/api/APSYUNPINGTAI;->k:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "network operator is "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/autonavi/aps/api/Utils;->writeLogCat(Ljava/lang/String;)V

    instance-of v1, p0, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v1, :cond_3

    const-string v1, "celllocation is gsmcelllocation"

    invoke-static {v1}, Lcom/autonavi/aps/api/Utils;->writeLogCat(Ljava/lang/String;)V

    const/4 v1, 0x1

    sput v1, Lcom/autonavi/aps/api/APSYUNPINGTAI;->h:I

    sget-object v1, Lcom/autonavi/aps/api/APSYUNPINGTAI;->q:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v6, :cond_2

    new-instance v5, Lcom/autonavi/aps/api/GsmCellBean;

    invoke-direct {v5}, Lcom/autonavi/aps/api/GsmCellBean;-><init>()V

    move-object v0, p0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    invoke-virtual {v5, v1}, Lcom/autonavi/aps/api/GsmCellBean;->setLac(I)V

    check-cast p0, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {p0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    invoke-virtual {v5, v1}, Lcom/autonavi/aps/api/GsmCellBean;->setCellid(I)V

    sget v1, Lcom/autonavi/aps/api/APSYUNPINGTAI;->v:I

    invoke-virtual {v5, v1}, Lcom/autonavi/aps/api/GsmCellBean;->setSignal(I)V

    const/4 v1, 0x0

    const/4 v6, 0x3

    invoke-virtual {v4, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/autonavi/aps/api/GsmCellBean;->setMcc(Ljava/lang/String;)V

    const/4 v1, 0x3

    const/4 v6, 0x5

    invoke-virtual {v4, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/autonavi/aps/api/GsmCellBean;->setMnc(Ljava/lang/String;)V

    sget-object v1, Lcom/autonavi/aps/api/APSYUNPINGTAI;->q:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-lt v2, v1, :cond_1

    :cond_0
    :goto_1
    monitor-exit v3

    return-void

    :cond_1
    :try_start_1
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/NeighboringCellInfo;

    new-instance v5, Lcom/autonavi/aps/api/GsmCellBean;

    invoke-direct {v5}, Lcom/autonavi/aps/api/GsmCellBean;-><init>()V

    invoke-virtual {v1}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/lit16 v6, v6, -0x85

    invoke-virtual {v5, v6}, Lcom/autonavi/aps/api/GsmCellBean;->setSignal(I)V

    invoke-virtual {v1}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/autonavi/aps/api/GsmCellBean;->setLac(I)V

    invoke-virtual {v1}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v1

    invoke-virtual {v5, v1}, Lcom/autonavi/aps/api/GsmCellBean;->setCellid(I)V

    const/4 v1, 0x0

    const/4 v6, 0x3

    invoke-virtual {v4, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/autonavi/aps/api/GsmCellBean;->setMcc(Ljava/lang/String;)V

    const/4 v1, 0x3

    const/4 v6, 0x5

    invoke-virtual {v4, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/autonavi/aps/api/GsmCellBean;->setMnc(Ljava/lang/String;)V

    sget-object v1, Lcom/autonavi/aps/api/APSYUNPINGTAI;->q:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "network operator: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/autonavi/aps/api/Utils;->writeLogCat(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v3

    throw v1

    :cond_3
    :try_start_2
    const-string v1, "android.telephony.cdma.CdmaCellLocation"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string v1, "celllocation is cdmacelllocation"

    invoke-static {v1}, Lcom/autonavi/aps/api/Utils;->writeLogCat(Ljava/lang/String;)V

    const/4 v1, 0x2

    sput v1, Lcom/autonavi/aps/api/APSYUNPINGTAI;->h:I

    sget-object v1, Lcom/autonavi/aps/api/APSYUNPINGTAI;->r:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v6, :cond_4

    new-instance v1, Lcom/autonavi/aps/api/CdmaCellBean;

    invoke-direct {v1}, Lcom/autonavi/aps/api/CdmaCellBean;-><init>()V

    check-cast p0, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {p0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLatitude()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/autonavi/aps/api/CdmaCellBean;->setLat(I)V

    invoke-virtual {p0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLongitude()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/autonavi/aps/api/CdmaCellBean;->setLon(I)V

    invoke-virtual {p0}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/autonavi/aps/api/CdmaCellBean;->setSid(I)V

    invoke-virtual {p0}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/autonavi/aps/api/CdmaCellBean;->setNid(I)V

    invoke-virtual {p0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/autonavi/aps/api/CdmaCellBean;->setBid(I)V

    sget v2, Lcom/autonavi/aps/api/APSYUNPINGTAI;->v:I

    invoke-virtual {v1, v2}, Lcom/autonavi/aps/api/CdmaCellBean;->setSignal(I)V

    const/4 v2, 0x0

    const/4 v5, 0x3

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/autonavi/aps/api/CdmaCellBean;->setMcc(Ljava/lang/String;)V

    const/4 v2, 0x3

    const/4 v5, 0x5

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/autonavi/aps/api/CdmaCellBean;->setMnc(Ljava/lang/String;)V

    sget-object v2, Lcom/autonavi/aps/api/APSYUNPINGTAI;->r:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v1

    :try_start_3
    invoke-static {v1}, Lcom/autonavi/aps/api/Utils;->printException(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    :cond_4
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "network operator: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/autonavi/aps/api/Utils;->writeLogCat(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1
.end method

.method static synthetic c()Landroid/telephony/TelephonyManager;
    .locals 1

    sget-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->k:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic d()I
    .locals 1

    sget v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->h:I

    return v0
.end method

.method static synthetic e()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->q:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic f()I
    .locals 1

    sget v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->v:I

    return v0
.end method

.method static synthetic g()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->r:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getCurrenttime()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd-HH-mm-ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/autonavi/aps/api/APSYUNPINGTAI;
    .locals 4

    sget-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->e:Lcom/autonavi/aps/api/APSYUNPINGTAI;

    if-nez v0, :cond_1

    new-instance v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;

    invoke-direct {v0}, Lcom/autonavi/aps/api/APSYUNPINGTAI;-><init>()V

    sput-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->e:Lcom/autonavi/aps/api/APSYUNPINGTAI;

    sput-object p0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->f:Landroid/content/Context;

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    sput-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->j:Landroid/net/wifi/WifiManager;

    new-instance v0, Lcom/autonavi/aps/api/f;

    sget-object v1, Lcom/autonavi/aps/api/APSYUNPINGTAI;->e:Lcom/autonavi/aps/api/APSYUNPINGTAI;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/autonavi/aps/api/f;-><init>(Lcom/autonavi/aps/api/APSYUNPINGTAI;)V

    sput-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->w:Lcom/autonavi/aps/api/f;

    sget-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->j:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->j:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    sput-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->x:Landroid/net/wifi/WifiInfo;

    new-instance v0, Lcom/autonavi/aps/api/d;

    invoke-direct {v0}, Lcom/autonavi/aps/api/d;-><init>()V

    invoke-virtual {v0}, Lcom/autonavi/aps/api/d;->start()V

    :cond_0
    sget-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->f:Landroid/content/Context;

    sget-object v1, Lcom/autonavi/aps/api/APSYUNPINGTAI;->w:Lcom/autonavi/aps/api/f;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->f:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    sput-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->i:Landroid/net/ConnectivityManager;

    sget-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->f:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->k:Landroid/telephony/TelephonyManager;

    invoke-static {}, Landroid/telephony/CellLocation;->requestLocationUpdate()V

    sget-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->k:Landroid/telephony/TelephonyManager;

    sget-object v1, Lcom/autonavi/aps/api/APSYUNPINGTAI;->f:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/autonavi/aps/api/TelephoneBean;->getInstance(Landroid/telephony/TelephonyManager;Landroid/content/Context;Ljava/lang/String;)Lcom/autonavi/aps/api/TelephoneBean;

    move-result-object v0

    sput-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->g:Lcom/autonavi/aps/api/TelephoneBean;

    new-instance v0, Lcom/autonavi/aps/api/e;

    invoke-direct {v0}, Lcom/autonavi/aps/api/e;-><init>()V

    sput-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->u:Landroid/telephony/PhoneStateListener;

    sget-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->k:Landroid/telephony/TelephonyManager;

    sget-object v1, Lcom/autonavi/aps/api/APSYUNPINGTAI;->u:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x110

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    invoke-static {}, Lcom/autonavi/aps/api/APSYUNPINGTAI;->i()V

    :cond_1
    const-string v0, "public in debug, only for test use"

    invoke-static {v0}, Lcom/autonavi/aps/api/Utils;->writeLogCat(Ljava/lang/String;)V

    sget-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->f:Landroid/content/Context;

    const-string v1, "public in debug, only for test use"

    invoke-static {v0, v1}, Lcom/autonavi/aps/api/Utils;->doToast(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->e:Lcom/autonavi/aps/api/APSYUNPINGTAI;

    return-object v0
.end method

.method private static declared-synchronized h()V
    .locals 8

    const-class v7, Lcom/autonavi/aps/api/APSYUNPINGTAI;

    monitor-enter v7

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "set "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->B:Z

    if-nez v0, :cond_0

    const-string v0, "open"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " gps listener"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/aps/api/Utils;->writeLogCat(Ljava/lang/String;)V

    sget-boolean v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->B:Z

    if-nez v0, :cond_1

    new-instance v0, Lcom/autonavi/aps/api/a;

    invoke-direct {v0}, Lcom/autonavi/aps/api/a;-><init>()V

    sput-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->n:Landroid/location/LocationListener;

    sget-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->l:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x1388

    const/4 v4, 0x0

    sget-object v5, Lcom/autonavi/aps/api/APSYUNPINGTAI;->n:Landroid/location/LocationListener;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->C:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->B:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit v7

    return-void

    :cond_0
    :try_start_1
    const-string v0, "close"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    :try_start_2
    sget-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->n:Landroid/location/LocationListener;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->l:Landroid/location/LocationManager;

    sget-object v1, Lcom/autonavi/aps/api/APSYUNPINGTAI;->n:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_2
    const/4 v0, 0x0

    :try_start_3
    sput-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->n:Landroid/location/LocationListener;

    const/4 v0, 0x0

    sput-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->o:Landroid/location/Location;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->C:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->B:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0

    :catch_0
    move-exception v0

    :try_start_4
    invoke-static {v0}, Lcom/autonavi/aps/api/Utils;->printException(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method private static i()V
    .locals 2

    sget-boolean v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->D:Z

    if-eqz v0, :cond_0

    const-string v0, "start system network listener"

    invoke-static {v0}, Lcom/autonavi/aps/api/Utils;->writeLogCat(Ljava/lang/String;)V

    sget-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->f:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    sput-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->l:Landroid/location/LocationManager;

    new-instance v0, Lcom/autonavi/aps/api/b;

    invoke-direct {v0}, Lcom/autonavi/aps/api/b;-><init>()V

    sput-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->m:Landroid/location/LocationListener;

    :cond_0
    return-void
.end method

.method private declared-synchronized j()Ljava/lang/String;
    .locals 11

    const-wide/high16 v9, 0x4008

    const/4 v8, 0x3

    const/4 v0, 0x0

    const/4 v2, 0x1

    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/autonavi/aps/api/APSYUNPINGTAI;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/aps/api/APSYUNPINGTAI;->getProductName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "licence or productname is null"

    invoke-static {v1}, Lcom/autonavi/aps/api/Utils;->writeLogCat(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/autonavi/aps/api/APSYUNPINGTAI;->getKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/autonavi/aps/api/APSYUNPINGTAI;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    :cond_2
    const-string v1, "key or packagename is null"

    invoke-static {v1}, Lcom/autonavi/aps/api/Utils;->writeLogCat(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_3
    :try_start_1
    sget-object v1, Lcom/autonavi/aps/api/APSYUNPINGTAI;->j:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    if-ne v1, v8, :cond_4

    new-instance v1, Lcom/autonavi/aps/api/c;

    invoke-direct {v1, p0}, Lcom/autonavi/aps/api/c;-><init>(Lcom/autonavi/aps/api/APSYUNPINGTAI;)V

    invoke-virtual {v1}, Lcom/autonavi/aps/api/c;->start()V

    :cond_4
    sget-object v1, Lcom/autonavi/aps/api/APSYUNPINGTAI;->k:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_5

    sget-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->k:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    :cond_5
    sget-object v1, Lcom/autonavi/aps/api/APSYUNPINGTAI;->u:Landroid/telephony/PhoneStateListener;

    if-eqz v1, :cond_6

    sget-object v1, Lcom/autonavi/aps/api/APSYUNPINGTAI;->u:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v1, v0}, Landroid/telephony/PhoneStateListener;->onCellLocationChanged(Landroid/telephony/CellLocation;)V

    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "<?xml version=\"1.0\" encoding=\"GBK\" ?>"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<location>"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<license>"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/autonavi/aps/api/APSYUNPINGTAI;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</license>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<src>"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/autonavi/aps/api/APSYUNPINGTAI;->getProductName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</src>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<key>"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/autonavi/aps/api/APSYUNPINGTAI;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</key>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<packagename>"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/autonavi/aps/api/APSYUNPINGTAI;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</packagename>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<imei>"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/autonavi/aps/api/APSYUNPINGTAI;->g:Lcom/autonavi/aps/api/TelephoneBean;

    invoke-virtual {v1}, Lcom/autonavi/aps/api/TelephoneBean;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</imei>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->i:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    const-string v1, "<network>"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->k:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_7

    const-string v0, ", countryiso: "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/autonavi/aps/api/APSYUNPINGTAI;->k:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", operatorname: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/autonavi/aps/api/APSYUNPINGTAI;->k:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", line1number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/autonavi/aps/api/APSYUNPINGTAI;->k:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    sget-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->j:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    if-ne v0, v8, :cond_8

    sget-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->j:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, ", wifidns1: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Landroid/net/DhcpInfo;->dns1:I

    invoke-static {v3}, Lcom/autonavi/aps/api/NetManagerApache;->intToIpAddr(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ", wifidns2: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Landroid/net/DhcpInfo;->dns2:I

    invoke-static {v4}, Lcom/autonavi/aps/api/NetManagerApache;->intToIpAddr(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ", wifigateway: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Landroid/net/DhcpInfo;->gateway:I

    invoke-static {v4}, Lcom/autonavi/aps/api/NetManagerApache;->intToIpAddr(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ", wifiipaddr: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Landroid/net/DhcpInfo;->ipAddress:I

    invoke-static {v0}, Lcom/autonavi/aps/api/NetManagerApache;->intToIpAddr(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    const-string v0, "</network>"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->h:I

    if-ne v0, v2, :cond_11

    const-string v0, "<cdma>0</cdma>"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9

    sget-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->q:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/aps/api/GsmCellBean;

    const-string v1, "<mcc>"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/autonavi/aps/api/GsmCellBean;->getMcc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "</mcc>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<mnc>"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/autonavi/aps/api/GsmCellBean;->getMnc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "</mnc>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<lac>"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/autonavi/aps/api/GsmCellBean;->getLac()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "</lac>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<cellid>"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/autonavi/aps/api/GsmCellBean;->getCellid()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "</cellid>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<signal>"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/autonavi/aps/api/GsmCellBean;->getSignal()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</signal>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v2, :cond_9

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    move v1, v2

    :goto_1
    sget-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_f

    const-string v0, "<nb>"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</nb>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    :goto_2
    sget-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->l:Landroid/location/LocationManager;

    if-eqz v0, :cond_14

    sget-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->l:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->o:Landroid/location/Location;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->o:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    sget-object v2, Lcom/autonavi/aps/api/APSYUNPINGTAI;->o:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    cmpl-double v4, v0, v9

    if-lez v4, :cond_a

    const-wide v4, 0x4052400000000000L

    cmpl-double v4, v2, v4

    if-lez v4, :cond_a

    const-string v4, "<gps>1</gps>"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "<glong>"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</glong>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<glat>"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</glat>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<gaccuracy>"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/autonavi/aps/api/APSYUNPINGTAI;->o:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</gaccuracy>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    const/4 v0, 0x0

    sput-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->o:Landroid/location/Location;

    :cond_b
    :goto_3
    sget-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->j:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    if-ne v0, v8, :cond_e

    sget-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_c

    sget-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->s:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/autonavi/aps/api/APSYUNPINGTAI;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_c

    const-string v1, "<macs>"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</macs>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    sget-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->j:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    sput-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->x:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_16

    sget-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->x:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    sget-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_d

    const-string v0, "<macs>"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/autonavi/aps/api/APSYUNPINGTAI;->x:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/autonavi/aps/api/APSYUNPINGTAI;->x:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</macs>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    const-string v0, "<mainmac>"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/autonavi/aps/api/APSYUNPINGTAI;->x:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/autonavi/aps/api/APSYUNPINGTAI;->x:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</mainmac>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    :goto_4
    const-string v0, "<clienttime>"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/autonavi/aps/api/APSYUNPINGTAI;->getCurrenttime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</clienttime>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</location>"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/autonavi/aps/api/ApsRequest;

    invoke-direct {v0}, Lcom/autonavi/aps/api/ApsRequest;-><init>()V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/api/ApsRequest;->convertApsRequestXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "request:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/aps/api/Utils;->writeLogCat(Ljava/lang/String;)V

    const-string v0, "enable write log in sdcard"

    invoke-static {v0}, Lcom/autonavi/aps/api/Utils;->writeLogCat(Ljava/lang/String;)V

    invoke-static {}, Lcom/autonavi/aps/api/Storage;->getInstance()Lcom/autonavi/aps/api/Storage;

    move-result-object v0

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/api/Storage;->writeLog(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "<?xml version=\"1.0\" encoding=\"GBK\" ?>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<saps>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<src>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/autonavi/aps/api/APSYUNPINGTAI;->getProductName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</src>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v0, "<sreq>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/autonavi/aps/api/APSYUNPINGTAI;->t:Lcom/autonavi/aps/api/Des;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/autonavi/aps/api/Des;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</sreq>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_5
    :try_start_3
    const-string v0, "</saps>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v7, v0, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "encrypted request:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/aps/api/Utils;->writeLogCat(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_f
    if-le v1, v2, :cond_10

    const-string v0, "*"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_10
    sget-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/aps/api/GsmCellBean;

    invoke-virtual {v0}, Lcom/autonavi/aps/api/GsmCellBean;->getMnc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v0}, Lcom/autonavi/aps/api/GsmCellBean;->getLac()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v0}, Lcom/autonavi/aps/api/GsmCellBean;->getCellid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v0}, Lcom/autonavi/aps/api/GsmCellBean;->getSignal()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    :cond_11
    sget v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->h:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const-string v0, "<cdma>1</cdma>"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9

    sget-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->r:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/aps/api/CdmaCellBean;

    const-string v1, "<mcc>"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/autonavi/aps/api/CdmaCellBean;->getMcc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "</mcc>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<sid>"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/autonavi/aps/api/CdmaCellBean;->getSid()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "</sid>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<nid>"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/autonavi/aps/api/CdmaCellBean;->getNid()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "</nid>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<bid>"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/autonavi/aps/api/CdmaCellBean;->getBid()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "</bid>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<lon>"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/autonavi/aps/api/CdmaCellBean;->getLon()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "</lon>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<lat>"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/autonavi/aps/api/CdmaCellBean;->getLat()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "</lat>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<signal>"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/autonavi/aps/api/CdmaCellBean;->getSignal()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</signal>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v2, :cond_9

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    move v1, v2

    :goto_6
    sget-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_12

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<nb>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</nb>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_12
    if-le v1, v2, :cond_13

    :try_start_4
    const-string v0, "*"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_13
    sget-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/aps/api/CdmaCellBean;

    invoke-virtual {v0}, Lcom/autonavi/aps/api/CdmaCellBean;->getSid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v0}, Lcom/autonavi/aps/api/CdmaCellBean;->getNid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v0}, Lcom/autonavi/aps/api/CdmaCellBean;->getBid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v0}, Lcom/autonavi/aps/api/CdmaCellBean;->getSignal()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :cond_14
    sget-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->l:Landroid/location/LocationManager;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->l:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->m:Landroid/location/LocationListener;

    if-eqz v0, :cond_b

    const-string v0, "system network provider is enabled"

    invoke-static {v0}, Lcom/autonavi/aps/api/Utils;->writeLogCat(Ljava/lang/String;)V

    sget-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->l:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0x4e20

    const/4 v4, 0x0

    sget-object v5, Lcom/autonavi/aps/api/APSYUNPINGTAI;->m:Landroid/location/LocationListener;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    const-string v0, "waiting system network provider for 3s"

    invoke-static {v0}, Lcom/autonavi/aps/api/Utils;->writeLogCat(Ljava/lang/String;)V

    const-wide/16 v0, 0xbb8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    :goto_7
    :try_start_6
    sget-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->p:Landroid/location/Location;

    if-eqz v0, :cond_15

    sget-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->p:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    sget-object v2, Lcom/autonavi/aps/api/APSYUNPINGTAI;->p:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    cmpl-double v4, v0, v9

    if-lez v4, :cond_15

    const-wide v4, 0x4052400000000000L

    cmpl-double v4, v2, v4

    if-lez v4, :cond_15

    const-string v4, "<gps>2</gps>"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "<glong>"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</glong>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<glat>"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</glat>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    const-string v0, "remove system network provider listener"

    invoke-static {v0}, Lcom/autonavi/aps/api/Utils;->writeLogCat(Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->p:Landroid/location/Location;

    sget-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->l:Landroid/location/LocationManager;

    sget-object v1, Lcom/autonavi/aps/api/APSYUNPINGTAI;->m:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    goto/16 :goto_3

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/autonavi/aps/api/Utils;->printException(Ljava/lang/Exception;)V

    goto :goto_7

    :cond_16
    sget-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->x:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->x:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    const-string v0, "wifi fake connection, ignore"

    invoke-static {v0}, Lcom/autonavi/aps/api/Utils;->writeLogCat(Ljava/lang/String;)V

    goto/16 :goto_4

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/autonavi/aps/api/Utils;->printException(Ljava/lang/Exception;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_5
.end method


# virtual methods
.method protected finalize()V
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/autonavi/aps/api/Utils;->printException(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/autonavi/aps/api/Utils;->printThrowable(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getCurrentLocation(Landroid/location/Location;)Lcom/autonavi/aps/api/Location;
    .locals 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/autonavi/aps/api/APSYUNPINGTAI;->A:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "block frequent request, return last location, duration is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " milliseconds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/aps/api/Utils;->writeLogCat(Ljava/lang/String;)V

    sget-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->z:Lcom/autonavi/aps/api/Location;

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "start new request, duration is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v3, Lcom/autonavi/aps/api/APSYUNPINGTAI;->A:J

    long-to-double v3, v3

    const-string v5, "1.0"

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    cmpg-double v3, v3, v5

    if-gez v3, :cond_2

    const-string v0, "0 (the very first request)"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " milliseconds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/aps/api/Utils;->writeLogCat(Ljava/lang/String;)V

    sget-boolean v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->B:Z

    if-nez v0, :cond_1

    sput-object p1, Lcom/autonavi/aps/api/APSYUNPINGTAI;->o:Landroid/location/Location;

    :cond_1
    invoke-direct {p0}, Lcom/autonavi/aps/api/APSYUNPINGTAI;->j()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/autonavi/aps/api/APSYUNPINGTAI;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/autonavi/aps/api/APSYUNPINGTAI;->z:Lcom/autonavi/aps/api/Location;

    if-eqz v1, :cond_3

    const-string v0, "same request, direct return"

    invoke-static {v0}, Lcom/autonavi/aps/api/Utils;->writeLogCat(Ljava/lang/String;)V

    sget-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->z:Lcom/autonavi/aps/api/Location;

    goto :goto_0

    :cond_2
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    sput-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->y:Ljava/lang/String;

    sget-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->y:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/autonavi/aps/api/APSYUNPINGTAI;->a(Ljava/lang/String;)Lcom/autonavi/aps/api/Location;

    move-result-object v0

    sput-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->z:Lcom/autonavi/aps/api/Location;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->o:Landroid/location/Location;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->o:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    sget-object v2, Lcom/autonavi/aps/api/APSYUNPINGTAI;->o:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    sget-object v4, Lcom/autonavi/aps/api/APSYUNPINGTAI;->z:Lcom/autonavi/aps/api/Location;

    invoke-virtual {v4, v2, v3}, Lcom/autonavi/aps/api/Location;->setRawx(D)V

    sget-object v4, Lcom/autonavi/aps/api/APSYUNPINGTAI;->z:Lcom/autonavi/aps/api/Location;

    invoke-virtual {v4, v0, v1}, Lcom/autonavi/aps/api/Location;->setRawy(D)V

    const/4 v4, 0x1

    :try_start_0
    new-array v8, v4, [F

    sget-object v4, Lcom/autonavi/aps/api/APSYUNPINGTAI;->z:Lcom/autonavi/aps/api/Location;

    invoke-virtual {v4}, Lcom/autonavi/aps/api/Location;->getCeny()D

    move-result-wide v4

    sget-object v6, Lcom/autonavi/aps/api/APSYUNPINGTAI;->z:Lcom/autonavi/aps/api/Location;

    invoke-virtual {v6}, Lcom/autonavi/aps/api/Location;->getCenx()D

    move-result-wide v6

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    sget-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->z:Lcom/autonavi/aps/api/Location;

    const/4 v1, 0x0

    aget v1, v8, v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/aps/api/Location;->setRawd(D)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->A:J

    sget-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->z:Lcom/autonavi/aps/api/Location;

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/autonavi/aps/api/Storage;->getInstance()Lcom/autonavi/aps/api/Storage;

    move-result-object v0

    sget-object v1, Lcom/autonavi/aps/api/APSYUNPINGTAI;->z:Lcom/autonavi/aps/api/Location;

    invoke-virtual {v1}, Lcom/autonavi/aps/api/Location;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    const-string v3, "#"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/api/Storage;->writeLog(Ljava/lang/String;)V

    :cond_5
    sget-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->z:Lcom/autonavi/aps/api/Location;

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/autonavi/aps/api/Utils;->printException(Ljava/lang/Exception;)V

    goto :goto_2
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1.0.201301061713"

    return-object v0
.end method

.method public onDestroy()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string v0, "ondestroy"

    invoke-static {v0}, Lcom/autonavi/aps/api/Utils;->writeLogCat(Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->f:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->w:Lcom/autonavi/aps/api/f;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->f:Landroid/content/Context;

    sget-object v1, Lcom/autonavi/aps/api/APSYUNPINGTAI;->w:Lcom/autonavi/aps/api/f;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    :try_start_1
    sget-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->m:Landroid/location/LocationListener;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->l:Landroid/location/LocationManager;

    sget-object v1, Lcom/autonavi/aps/api/APSYUNPINGTAI;->m:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    sput-object v3, Lcom/autonavi/aps/api/APSYUNPINGTAI;->m:Landroid/location/LocationListener;

    :try_start_2
    sget-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->n:Landroid/location/LocationListener;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->l:Landroid/location/LocationManager;

    sget-object v1, Lcom/autonavi/aps/api/APSYUNPINGTAI;->n:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    :goto_2
    sput-object v3, Lcom/autonavi/aps/api/APSYUNPINGTAI;->n:Landroid/location/LocationListener;

    :try_start_3
    sget-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->k:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->k:Landroid/telephony/TelephonyManager;

    sget-object v1, Lcom/autonavi/aps/api/APSYUNPINGTAI;->u:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_3
    :goto_3
    sput-object v3, Lcom/autonavi/aps/api/APSYUNPINGTAI;->u:Landroid/telephony/PhoneStateListener;

    sget-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sput-object v3, Lcom/autonavi/aps/api/APSYUNPINGTAI;->x:Landroid/net/wifi/WifiInfo;

    sput-object v3, Lcom/autonavi/aps/api/APSYUNPINGTAI;->k:Landroid/telephony/TelephonyManager;

    sget-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->e:Lcom/autonavi/aps/api/APSYUNPINGTAI;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->e:Lcom/autonavi/aps/api/APSYUNPINGTAI;

    invoke-virtual {v0}, Lcom/autonavi/aps/api/APSYUNPINGTAI;->finalize()V

    :cond_4
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->A:J

    sput-object v3, Lcom/autonavi/aps/api/APSYUNPINGTAI;->y:Ljava/lang/String;

    sput-object v3, Lcom/autonavi/aps/api/APSYUNPINGTAI;->z:Lcom/autonavi/aps/api/Location;

    sput-boolean v4, Lcom/autonavi/aps/api/APSYUNPINGTAI;->C:Z

    sput-object v3, Lcom/autonavi/aps/api/APSYUNPINGTAI;->o:Landroid/location/Location;

    sput-object v3, Lcom/autonavi/aps/api/APSYUNPINGTAI;->p:Landroid/location/Location;

    sput-object v3, Lcom/autonavi/aps/api/APSYUNPINGTAI;->e:Lcom/autonavi/aps/api/APSYUNPINGTAI;

    invoke-static {}, Ljava/lang/System;->gc()V

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/autonavi/aps/api/Utils;->printException(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/autonavi/aps/api/Utils;->printException(Ljava/lang/Exception;)V

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/autonavi/aps/api/Utils;->printException(Ljava/lang/Exception;)V

    goto :goto_2

    :catch_3
    move-exception v0

    invoke-static {v0}, Lcom/autonavi/aps/api/Utils;->printException(Ljava/lang/Exception;)V

    goto :goto_3
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/autonavi/aps/api/APSYUNPINGTAI;->c:Ljava/lang/String;

    return-void
.end method

.method public setLicence(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/autonavi/aps/api/APSYUNPINGTAI;->a:Ljava/lang/String;

    return-void
.end method

.method public setOpenGps(Z)V
    .locals 1

    sget-boolean v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->B:Z

    if-eq p1, v0, :cond_1

    sget-boolean v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->C:Z

    if-eqz v0, :cond_0

    const-string v0, "gps status change command is pending"

    invoke-static {v0}, Lcom/autonavi/aps/api/Utils;->writeLogCat(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->C:Z

    invoke-static {}, Lcom/autonavi/aps/api/APSYUNPINGTAI;->h()V

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->C:Z

    if-eqz v0, :cond_2

    const-string v0, "gps status change command is pending"

    invoke-static {v0}, Lcom/autonavi/aps/api/Utils;->writeLogCat(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "block same gps status change command"

    invoke-static {v0}, Lcom/autonavi/aps/api/Utils;->writeLogCat(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setOpenSystemNetworkLocation(Z)V
    .locals 2

    sget-boolean v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->D:Z

    if-eq v0, p1, :cond_0

    sput-boolean p1, Lcom/autonavi/aps/api/APSYUNPINGTAI;->D:Z

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/autonavi/aps/api/APSYUNPINGTAI;->i()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "close system network listener"

    invoke-static {v0}, Lcom/autonavi/aps/api/Utils;->writeLogCat(Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->m:Landroid/location/LocationListener;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->l:Landroid/location/LocationManager;

    sget-object v1, Lcom/autonavi/aps/api/APSYUNPINGTAI;->m:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    const-string v0, "start system network listener"

    invoke-static {v0}, Lcom/autonavi/aps/api/Utils;->writeLogCat(Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/autonavi/aps/api/APSYUNPINGTAI;->m:Landroid/location/LocationListener;

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/autonavi/aps/api/Utils;->printException(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/autonavi/aps/api/APSYUNPINGTAI;->d:Ljava/lang/String;

    return-void
.end method

.method public setProductName(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/autonavi/aps/api/APSYUNPINGTAI;->b:Ljava/lang/String;

    return-void
.end method
