.class public Lcom/amap/api/search/core/c;
.super Ljava/lang/Object;
.source "ConfigableConst.java"


# static fields
.field public static a:I

.field public static b:I

.field public static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    sput v0, Lcom/amap/api/search/core/c;->a:I

    .line 23
    sput v0, Lcom/amap/api/search/core/c;->b:I

    .line 41
    const-string v0, "V1.0.0"

    sput-object v0, Lcom/amap/api/search/core/c;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
