.class public final Lcom/amap/api/maps/MapsInitializer;
.super Ljava/lang/Object;
.source "MapsInitializer.java"


# static fields
.field public static sdcardDir:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string v0, ""

    sput-object v0, Lcom/amap/api/maps/MapsInitializer;->sdcardDir:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 10
    sput-object p0, Lcom/amap/api/a/y;->a:Landroid/content/Context;

    .line 11
    return-void
.end method
