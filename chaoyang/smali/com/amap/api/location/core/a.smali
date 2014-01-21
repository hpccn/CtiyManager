.class public Lcom/amap/api/location/core/a;
.super Ljava/lang/Exception;
.source "AMapException.java"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 18
    const-string v0, "\u672a\u77e5\u7684\u9519\u8bef"

    iput-object v0, p0, Lcom/amap/api/location/core/a;->a:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 18
    const-string v0, "\u672a\u77e5\u7684\u9519\u8bef"

    iput-object v0, p0, Lcom/amap/api/location/core/a;->a:Ljava/lang/String;

    .line 21
    iput-object p1, p0, Lcom/amap/api/location/core/a;->a:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/amap/api/location/core/a;->a:Ljava/lang/String;

    return-object v0
.end method
