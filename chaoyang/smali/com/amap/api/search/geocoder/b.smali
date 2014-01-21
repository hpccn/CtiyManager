.class Lcom/amap/api/search/geocoder/b;
.super Ljava/lang/Object;
.source "GeocodingParam.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/amap/api/search/geocoder/b;->a:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/amap/api/search/geocoder/b;->c:Ljava/lang/String;

    .line 11
    iput p3, p0, Lcom/amap/api/search/geocoder/b;->b:I

    .line 12
    return-void
.end method
