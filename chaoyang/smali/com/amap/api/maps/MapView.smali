.class public Lcom/amap/api/maps/MapView;
.super Landroid/widget/FrameLayout;
.source "MapView.java"


# instance fields
.field private a:Lcom/amap/api/a/p;

.field private b:Lcom/amap/api/maps/AMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-virtual {p0}, Lcom/amap/api/maps/MapView;->getMapFragmentDelegate()Lcom/amap/api/a/p;

    move-result-object v0

    check-cast p1, Landroid/app/Activity;

    invoke-interface {v0, p1}, Lcom/amap/api/a/p;->a(Landroid/app/Activity;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    invoke-virtual {p0}, Lcom/amap/api/maps/MapView;->getMapFragmentDelegate()Lcom/amap/api/a/p;

    move-result-object v0

    check-cast p1, Landroid/app/Activity;

    invoke-interface {v0, p1}, Lcom/amap/api/a/p;->a(Landroid/app/Activity;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    invoke-virtual {p0}, Lcom/amap/api/maps/MapView;->getMapFragmentDelegate()Lcom/amap/api/a/p;

    move-result-object v0

    check-cast p1, Landroid/app/Activity;

    invoke-interface {v0, p1}, Lcom/amap/api/a/p;->a(Landroid/app/Activity;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/maps/AMapOptions;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 79
    invoke-virtual {p0}, Lcom/amap/api/maps/MapView;->getMapFragmentDelegate()Lcom/amap/api/a/p;

    move-result-object v0

    check-cast p1, Landroid/app/Activity;

    invoke-interface {v0, p1}, Lcom/amap/api/a/p;->a(Landroid/app/Activity;)V

    .line 80
    invoke-virtual {p0}, Lcom/amap/api/maps/MapView;->getMapFragmentDelegate()Lcom/amap/api/a/p;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/amap/api/a/p;->a(Lcom/amap/api/maps/AMapOptions;)V

    .line 81
    return-void
.end method


# virtual methods
.method public getMap()Lcom/amap/api/maps/AMap;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 98
    invoke-virtual {p0}, Lcom/amap/api/maps/MapView;->getMapFragmentDelegate()Lcom/amap/api/a/p;

    move-result-object v1

    .line 99
    if-nez v1, :cond_1

    .line 116
    :cond_0
    :goto_0
    return-object v0

    .line 104
    :cond_1
    :try_start_0
    invoke-interface {v1}, Lcom/amap/api/a/p;->a()Lcom/amap/api/a/n;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 108
    if-eqz v1, :cond_0

    .line 111
    iget-object v0, p0, Lcom/amap/api/maps/MapView;->b:Lcom/amap/api/maps/AMap;

    if-nez v0, :cond_2

    .line 112
    new-instance v0, Lcom/amap/api/maps/AMap;

    invoke-direct {v0, v1}, Lcom/amap/api/maps/AMap;-><init>(Lcom/amap/api/a/n;)V

    iput-object v0, p0, Lcom/amap/api/maps/MapView;->b:Lcom/amap/api/maps/AMap;

    .line 116
    :cond_2
    iget-object v0, p0, Lcom/amap/api/maps/MapView;->b:Lcom/amap/api/maps/AMap;

    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method protected getMapFragmentDelegate()Lcom/amap/api/a/p;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/amap/api/maps/MapView;->a:Lcom/amap/api/a/p;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Lcom/amap/api/a/y;

    invoke-direct {v0}, Lcom/amap/api/a/y;-><init>()V

    iput-object v0, p0, Lcom/amap/api/maps/MapView;->a:Lcom/amap/api/a/p;

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/MapView;->a:Lcom/amap/api/a/p;

    return-object v0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 128
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps/MapView;->getMapFragmentDelegate()Lcom/amap/api/a/p;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p1}, Lcom/amap/api/a/p;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 130
    invoke-virtual {p0, v0}, Lcom/amap/api/maps/MapView;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :goto_0
    return-void

    .line 131
    :catch_0
    move-exception v0

    .line 133
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public final onDestroy()V
    .locals 1

    .prologue
    .line 178
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps/MapView;->getMapFragmentDelegate()Lcom/amap/api/a/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/a/p;->e()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :goto_0
    return-void

    .line 179
    :catch_0
    move-exception v0

    .line 181
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public final onLowMemory()V
    .locals 1

    .prologue
    .line 194
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps/MapView;->getMapFragmentDelegate()Lcom/amap/api/a/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/a/p;->f()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :goto_0
    return-void

    .line 195
    :catch_0
    move-exception v0

    .line 197
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public final onPause()V
    .locals 1

    .prologue
    .line 162
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps/MapView;->getMapFragmentDelegate()Lcom/amap/api/a/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/a/p;->c()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :goto_0
    return-void

    .line 163
    :catch_0
    move-exception v0

    .line 165
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public final onResume()V
    .locals 1

    .prologue
    .line 146
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps/MapView;->getMapFragmentDelegate()Lcom/amap/api/a/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/a/p;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :goto_0
    return-void

    .line 147
    :catch_0
    move-exception v0

    .line 149
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 210
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps/MapView;->getMapFragmentDelegate()Lcom/amap/api/a/p;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amap/api/a/p;->b(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :goto_0
    return-void

    .line 211
    :catch_0
    move-exception v0

    .line 213
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
