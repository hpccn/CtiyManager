.class public Lcom/amap/api/location/a$b;
.super Ljava/lang/Object;
.source "IAPSManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/location/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:J

.field public b:F

.field public c:Lcom/amap/api/location/AMapLocationListener;

.field public d:J

.field public e:Z

.field public f:Lcom/amap/api/location/AMapLocation;


# direct methods
.method public constructor <init>(JFLcom/amap/api/location/AMapLocationListener;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 371
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/location/a$b;->e:Z

    .line 372
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/location/a$b;->f:Lcom/amap/api/location/AMapLocation;

    .line 376
    iput-wide p1, p0, Lcom/amap/api/location/a$b;->a:J

    .line 377
    iput p3, p0, Lcom/amap/api/location/a$b;->b:F

    .line 378
    iput-object p4, p0, Lcom/amap/api/location/a$b;->c:Lcom/amap/api/location/AMapLocationListener;

    .line 379
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 392
    if-ne p0, p1, :cond_1

    .line 404
    :cond_0
    :goto_0
    return v0

    .line 394
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 395
    goto :goto_0

    .line 396
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 397
    goto :goto_0

    .line 398
    :cond_3
    check-cast p1, Lcom/amap/api/location/a$b;

    .line 399
    iget-object v2, p0, Lcom/amap/api/location/a$b;->c:Lcom/amap/api/location/AMapLocationListener;

    if-nez v2, :cond_4

    .line 400
    iget-object v2, p1, Lcom/amap/api/location/a$b;->c:Lcom/amap/api/location/AMapLocationListener;

    if-eqz v2, :cond_0

    move v0, v1

    .line 401
    goto :goto_0

    .line 402
    :cond_4
    iget-object v2, p0, Lcom/amap/api/location/a$b;->c:Lcom/amap/api/location/AMapLocationListener;

    iget-object v3, p1, Lcom/amap/api/location/a$b;->c:Lcom/amap/api/location/AMapLocationListener;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 403
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 383
    .line 385
    iget-object v0, p0, Lcom/amap/api/location/a$b;->c:Lcom/amap/api/location/AMapLocationListener;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 387
    return v0

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/amap/api/location/a$b;->c:Lcom/amap/api/location/AMapLocationListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method
