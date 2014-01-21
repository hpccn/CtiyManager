.class public Lcom/amap/api/maps/MapFragment;
.super Landroid/app/Fragment;
.source "MapFragment.java"


# instance fields
.field private a:Lcom/amap/api/maps/AMap;

.field private b:Lcom/amap/api/a/p;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/amap/api/maps/MapFragment;
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/amap/api/maps/AMapOptions;

    invoke-direct {v0}, Lcom/amap/api/maps/AMapOptions;-><init>()V

    invoke-static {v0}, Lcom/amap/api/maps/MapFragment;->newInstance(Lcom/amap/api/maps/AMapOptions;)Lcom/amap/api/maps/MapFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Lcom/amap/api/maps/AMapOptions;)Lcom/amap/api/maps/MapFragment;
    .locals 3
    .parameter

    .prologue
    .line 43
    new-instance v0, Lcom/amap/api/maps/MapFragment;

    invoke-direct {v0}, Lcom/amap/api/maps/MapFragment;-><init>()V

    .line 44
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 45
    const-string v2, "MapOptions"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 46
    invoke-virtual {v0, v1}, Lcom/amap/api/maps/MapFragment;->setArguments(Landroid/os/Bundle;)V

    .line 47
    return-object v0
.end method


# virtual methods
.method public getMap()Lcom/amap/api/maps/AMap;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-virtual {p0}, Lcom/amap/api/maps/MapFragment;->getMapFragmentDelegate()Lcom/amap/api/a/p;

    move-result-object v1

    .line 66
    if-nez v1, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-object v0

    .line 71
    :cond_1
    :try_start_0
    invoke-interface {v1}, Lcom/amap/api/a/p;->a()Lcom/amap/api/a/n;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 75
    if-eqz v1, :cond_0

    .line 78
    iget-object v0, p0, Lcom/amap/api/maps/MapFragment;->a:Lcom/amap/api/maps/AMap;

    if-nez v0, :cond_2

    .line 79
    new-instance v0, Lcom/amap/api/maps/AMap;

    invoke-direct {v0, v1}, Lcom/amap/api/maps/AMap;-><init>(Lcom/amap/api/a/n;)V

    iput-object v0, p0, Lcom/amap/api/maps/MapFragment;->a:Lcom/amap/api/maps/AMap;

    .line 83
    :cond_2
    iget-object v0, p0, Lcom/amap/api/maps/MapFragment;->a:Lcom/amap/api/maps/AMap;

    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method protected getMapFragmentDelegate()Lcom/amap/api/a/p;
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/amap/api/maps/MapFragment;->b:Lcom/amap/api/a/p;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/amap/api/a/y;

    invoke-direct {v0}, Lcom/amap/api/a/y;-><init>()V

    iput-object v0, p0, Lcom/amap/api/maps/MapFragment;->b:Lcom/amap/api/a/p;

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/MapFragment;->b:Lcom/amap/api/a/p;

    invoke-virtual {p0}, Lcom/amap/api/maps/MapFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amap/api/a/p;->a(Landroid/app/Activity;)V

    .line 55
    iget-object v0, p0, Lcom/amap/api/maps/MapFragment;->b:Lcom/amap/api/a/p;

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 89
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 107
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 109
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps/MapFragment;->getMapFragmentDelegate()Lcom/amap/api/a/p;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amap/api/a/p;->a(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 111
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 119
    if-nez p3, :cond_0

    .line 120
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps/MapFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    .line 122
    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/maps/MapFragment;->getMapFragmentDelegate()Lcom/amap/api/a/p;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/amap/api/a/p;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 127
    :goto_0
    return-object v0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 127
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 165
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps/MapFragment;->getMapFragmentDelegate()Lcom/amap/api/a/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/a/p;->e()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :goto_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 170
    return-void

    .line 166
    :catch_0
    move-exception v0

    .line 167
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 154
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps/MapFragment;->getMapFragmentDelegate()Lcom/amap/api/a/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/a/p;->d()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :goto_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 159
    return-void

    .line 155
    :catch_0
    move-exception v0

    .line 156
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 94
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 98
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps/MapFragment;->getMapFragmentDelegate()Lcom/amap/api/a/p;

    move-result-object v0

    new-instance v1, Lcom/amap/api/maps/AMapOptions;

    invoke-direct {v1}, Lcom/amap/api/maps/AMapOptions;-><init>()V

    invoke-interface {v0, p1, v1, p3}, Lcom/amap/api/a/p;->a(Landroid/app/Activity;Lcom/amap/api/maps/AMapOptions;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 101
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 174
    invoke-super {p0}, Landroid/app/Fragment;->onLowMemory()V

    .line 176
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps/MapFragment;->getMapFragmentDelegate()Lcom/amap/api/a/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/a/p;->f()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :goto_0
    return-void

    .line 177
    :catch_0
    move-exception v0

    .line 178
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 142
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 144
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps/MapFragment;->getMapFragmentDelegate()Lcom/amap/api/a/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/a/p;->c()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v0

    .line 146
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 132
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 134
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps/MapFragment;->getMapFragmentDelegate()Lcom/amap/api/a/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/a/p;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v0

    .line 136
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 185
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps/MapFragment;->getMapFragmentDelegate()Lcom/amap/api/a/p;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amap/api/a/p;->b(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 190
    return-void

    .line 186
    :catch_0
    move-exception v0

    .line 187
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setArguments(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 194
    invoke-super {p0, p1}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 195
    return-void
.end method
