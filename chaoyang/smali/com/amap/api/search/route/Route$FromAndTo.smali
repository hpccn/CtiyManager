.class public Lcom/amap/api/search/route/Route$FromAndTo;
.super Ljava/lang/Object;
.source "Route.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/search/route/Route;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FromAndTo"
.end annotation


# instance fields
.field public mFrom:Lcom/amap/api/search/core/LatLonPoint;

.field public mTo:Lcom/amap/api/search/core/LatLonPoint;


# direct methods
.method public constructor <init>(Lcom/amap/api/search/core/LatLonPoint;Lcom/amap/api/search/core/LatLonPoint;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput-object p1, p0, Lcom/amap/api/search/route/Route$FromAndTo;->mFrom:Lcom/amap/api/search/core/LatLonPoint;

    .line 191
    iput-object p2, p0, Lcom/amap/api/search/route/Route$FromAndTo;->mTo:Lcom/amap/api/search/core/LatLonPoint;

    .line 192
    return-void
.end method
