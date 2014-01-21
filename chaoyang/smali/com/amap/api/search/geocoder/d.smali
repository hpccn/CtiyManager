.class public Lcom/amap/api/search/geocoder/d;
.super Ljava/lang/Object;
.source "ReverseGeocodingParam.java"


# instance fields
.field public a:D

.field public b:D

.field public c:I

.field public d:Z


# direct methods
.method public constructor <init>(DDIZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-wide p1, p0, Lcom/amap/api/search/geocoder/d;->a:D

    .line 12
    iput-wide p3, p0, Lcom/amap/api/search/geocoder/d;->b:D

    .line 13
    iput p5, p0, Lcom/amap/api/search/geocoder/d;->c:I

    .line 14
    iput-boolean p6, p0, Lcom/amap/api/search/geocoder/d;->d:Z

    .line 15
    return-void
.end method
