.class public Lcom/amap/api/a/y;
.super Ljava/lang/Object;
.source "MapFragmentDelegateImp.java"

# interfaces
.implements Lcom/amap/api/a/p;


# static fields
.field public static a:Landroid/content/Context;


# instance fields
.field private b:Lcom/amap/api/a/n;

.field private c:Lcom/amap/api/maps/AMapOptions;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/amap/api/a/y;->b:Lcom/amap/api/a/n;

    if-nez v0, :cond_2

    .line 62
    sget-object v0, Lcom/amap/api/a/y;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 63
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    sput-object v0, Lcom/amap/api/a/y;->a:Landroid/content/Context;

    .line 65
    :cond_0
    sget-object v0, Lcom/amap/api/a/y;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 66
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Context \u4e3a null \u8bf7\u5728\u5730\u56fe\u8c03\u7528\u4e4b\u524d \u4f7f\u7528 MapsInitializer.initialize(Context paramContext) \u6765\u8bbe\u7f6eContext"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_1
    sget-object v0, Lcom/amap/api/a/y;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 69
    const/16 v1, 0x78

    if-gt v0, v1, :cond_4

    .line 71
    const/high16 v0, 0x3f00

    sput v0, Lcom/amap/api/a/k;->a:F

    .line 89
    :goto_0
    new-instance v0, Lcom/amap/api/a/b;

    sget-object v1, Lcom/amap/api/a/y;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amap/api/a/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/a/y;->b:Lcom/amap/api/a/n;

    .line 93
    :cond_2
    iget-object v0, p0, Lcom/amap/api/a/y;->c:Lcom/amap/api/maps/AMapOptions;

    if-nez v0, :cond_3

    if-eqz p3, :cond_3

    .line 94
    const-string v0, "MapOptions"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/AMapOptions;

    iput-object v0, p0, Lcom/amap/api/a/y;->c:Lcom/amap/api/maps/AMapOptions;

    .line 98
    :cond_3
    iget-object v0, p0, Lcom/amap/api/a/y;->c:Lcom/amap/api/maps/AMapOptions;

    invoke-virtual {p0, v0}, Lcom/amap/api/a/y;->b(Lcom/amap/api/maps/AMapOptions;)V

    .line 100
    iget-object v0, p0, Lcom/amap/api/a/y;->b:Lcom/amap/api/a/n;

    invoke-interface {v0}, Lcom/amap/api/a/n;->v()Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 72
    :cond_4
    const/16 v1, 0xa0

    if-gt v0, v1, :cond_5

    .line 74
    const v0, 0x3f4ccccd

    sput v0, Lcom/amap/api/a/k;->a:F

    goto :goto_0

    .line 75
    :cond_5
    const/16 v1, 0xf0

    if-gt v0, v1, :cond_6

    .line 77
    const v0, 0x3f5eb852

    sput v0, Lcom/amap/api/a/k;->a:F

    goto :goto_0

    .line 78
    :cond_6
    const/16 v1, 0x140

    if-gt v0, v1, :cond_7

    .line 80
    const/high16 v0, 0x3f80

    sput v0, Lcom/amap/api/a/k;->a:F

    goto :goto_0

    .line 81
    :cond_7
    const/16 v1, 0x1e0

    if-gt v0, v1, :cond_8

    .line 83
    const/high16 v0, 0x3fc0

    sput v0, Lcom/amap/api/a/k;->a:F

    goto :goto_0

    .line 86
    :cond_8
    const v0, 0x3f666666

    sput v0, Lcom/amap/api/a/k;->a:F

    goto :goto_0
.end method

.method public a()Lcom/amap/api/a/n;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/amap/api/a/y;->b:Lcom/amap/api/a/n;

    return-object v0
.end method

.method public a(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    sput-object p1, Lcom/amap/api/a/y;->a:Landroid/content/Context;

    .line 22
    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/amap/api/maps/AMapOptions;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 41
    sput-object p1, Lcom/amap/api/a/y;->a:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/amap/api/a/y;->c:Lcom/amap/api/maps/AMapOptions;

    .line 44
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-virtual {p0, v0, v0, p1}, Lcom/amap/api/a/y;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 55
    return-void
.end method

.method public a(Lcom/amap/api/maps/AMapOptions;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/amap/api/a/y;->c:Lcom/amap/api/maps/AMapOptions;

    .line 26
    return-void
.end method

.method public b()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 128
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Lcom/amap/api/a/y;->b:Lcom/amap/api/a/n;

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/amap/api/a/y;->c:Lcom/amap/api/maps/AMapOptions;

    if-nez v0, :cond_0

    .line 188
    new-instance v0, Lcom/amap/api/maps/AMapOptions;

    invoke-direct {v0}, Lcom/amap/api/maps/AMapOptions;-><init>()V

    iput-object v0, p0, Lcom/amap/api/a/y;->c:Lcom/amap/api/maps/AMapOptions;

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/amap/api/a/y;->c:Lcom/amap/api/maps/AMapOptions;

    invoke-virtual {p0}, Lcom/amap/api/a/y;->a()Lcom/amap/api/a/n;

    move-result-object v1

    invoke-interface {v1}, Lcom/amap/api/a/n;->j()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMapOptions;->camera(Lcom/amap/api/maps/model/CameraPosition;)Lcom/amap/api/maps/AMapOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/a/y;->c:Lcom/amap/api/maps/AMapOptions;

    .line 191
    const-string v0, "MapOptions"

    iget-object v1, p0, Lcom/amap/api/a/y;->c:Lcom/amap/api/maps/AMapOptions;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 195
    :cond_1
    return-void
.end method

.method b(Lcom/amap/api/maps/AMapOptions;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 104
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/amap/api/a/y;->b:Lcom/amap/api/a/n;

    if-eqz v0, :cond_1

    .line 106
    invoke-virtual {p1}, Lcom/amap/api/maps/AMapOptions;->getCamera()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v0

    .line 107
    if-eqz v0, :cond_0

    .line 108
    iget-object v1, p0, Lcom/amap/api/a/y;->b:Lcom/amap/api/a/n;

    iget-object v2, v0, Lcom/amap/api/maps/model/CameraPosition;->target:Lcom/amap/api/maps/model/LatLng;

    iget v3, v0, Lcom/amap/api/maps/model/CameraPosition;->zoom:F

    iget v4, v0, Lcom/amap/api/maps/model/CameraPosition;->bearing:F

    iget v0, v0, Lcom/amap/api/maps/model/CameraPosition;->tilt:F

    invoke-static {v2, v3, v4, v0}, Lcom/amap/api/a/h;->a(Lcom/amap/api/maps/model/LatLng;FFF)Lcom/amap/api/a/h;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/amap/api/a/n;->a(Lcom/amap/api/a/h;)V

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/amap/api/a/y;->b:Lcom/amap/api/a/n;

    invoke-interface {v0}, Lcom/amap/api/a/n;->s()Lcom/amap/api/a/w;

    move-result-object v0

    .line 112
    invoke-virtual {p1}, Lcom/amap/api/maps/AMapOptions;->getRotateGesturesEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/amap/api/a/w;->h(Z)V

    .line 114
    invoke-virtual {p1}, Lcom/amap/api/maps/AMapOptions;->getScrollGesturesEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/amap/api/a/w;->e(Z)V

    .line 116
    invoke-virtual {p1}, Lcom/amap/api/maps/AMapOptions;->getTiltGesturesEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/amap/api/a/w;->g(Z)V

    .line 117
    invoke-virtual {p1}, Lcom/amap/api/maps/AMapOptions;->getZoomControlsEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/amap/api/a/w;->b(Z)V

    .line 118
    invoke-virtual {p1}, Lcom/amap/api/maps/AMapOptions;->getZoomGesturesEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/amap/api/a/w;->f(Z)V

    .line 119
    invoke-virtual {p1}, Lcom/amap/api/maps/AMapOptions;->getCompassEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/amap/api/a/w;->c(Z)V

    .line 120
    invoke-virtual {p1}, Lcom/amap/api/maps/AMapOptions;->getScaleControlsEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/amap/api/a/w;->a(Z)V

    .line 121
    iget-object v0, p0, Lcom/amap/api/a/y;->b:Lcom/amap/api/a/n;

    invoke-virtual {p1}, Lcom/amap/api/maps/AMapOptions;->getZOrderOnTop()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/amap/api/a/n;->setZOrderOnTop(Z)V

    .line 123
    :cond_1
    return-void
.end method

.method public c()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 149
    return-void
.end method

.method public d()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 164
    return-void
.end method

.method public e()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 168
    invoke-virtual {p0}, Lcom/amap/api/a/y;->a()Lcom/amap/api/a/n;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/a/n;->c()V

    .line 169
    sput-object v1, Lcom/amap/api/a/y;->a:Landroid/content/Context;

    .line 170
    iput-object v1, p0, Lcom/amap/api/a/y;->b:Lcom/amap/api/a/n;

    .line 171
    iput-object v1, p0, Lcom/amap/api/a/y;->c:Lcom/amap/api/maps/AMapOptions;

    .line 173
    :try_start_0
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :goto_0
    return-void

    .line 174
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public f()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 181
    return-void
.end method
