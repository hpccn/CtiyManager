.class public Lcom/autonavi/aps/api/APSFactory;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/autonavi/aps/api/IAPS;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/autonavi/aps/api/APSFactory;->a:Lcom/autonavi/aps/api/IAPS;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/autonavi/aps/api/IAPS;
    .locals 1

    invoke-static {p0}, Lcom/autonavi/aps/api/APSYUNPINGTAI;->getInstance(Landroid/content/Context;)Lcom/autonavi/aps/api/APSYUNPINGTAI;

    move-result-object v0

    sput-object v0, Lcom/autonavi/aps/api/APSFactory;->a:Lcom/autonavi/aps/api/IAPS;

    return-object v0
.end method
