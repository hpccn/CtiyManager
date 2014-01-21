.class public abstract Lcom/autonavi/amap/mapcore/BaseMapCallImplement;
.super Ljava/lang/Object;
.source "BaseMapCallImplement.java"

# interfaces
.implements Lcom/autonavi/amap/mapcore/IBaseMapCallback;
.implements Lcom/autonavi/amap/mapcore/IMapCallback;


# instance fields
.field private baseMapGrids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/amap/mapcore/MapSourceGridData;",
            ">;"
        }
    .end annotation
.end field

.field private bldMapGrids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/amap/mapcore/MapSourceGridData;",
            ">;"
        }
    .end annotation
.end field

.field private bmpbmMapGirds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/amap/mapcore/MapSourceGridData;",
            ">;"
        }
    .end annotation
.end field

.field private connectionManager:Lcom/autonavi/amap/mapcore/ConnectionManager;

.field private mapModels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/amap/mapcore/MapSourceGridData;",
            ">;"
        }
    .end annotation
.end field

.field private screenGirds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/amap/mapcore/MapSourceGridData;",
            ">;"
        }
    .end annotation
.end field

.field private stiMapGirds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/amap/mapcore/MapSourceGridData;",
            ">;"
        }
    .end annotation
.end field

.field tileProcessCtrl:Lcom/autonavi/amap/mapcore/d;

.field private vectmcMapGirds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/amap/mapcore/MapSourceGridData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->baseMapGrids:Ljava/util/ArrayList;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->bldMapGrids:Ljava/util/ArrayList;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->bmpbmMapGirds:Ljava/util/ArrayList;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->vectmcMapGirds:Ljava/util/ArrayList;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->stiMapGirds:Ljava/util/ArrayList;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->mapModels:Ljava/util/ArrayList;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->screenGirds:Ljava/util/ArrayList;

    .line 21
    iput-object v1, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->connectionManager:Lcom/autonavi/amap/mapcore/ConnectionManager;

    .line 22
    iput-object v1, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->tileProcessCtrl:Lcom/autonavi/amap/mapcore/d;

    return-void
.end method

.method private destory()V
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->baseMapGrids:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 26
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->bldMapGrids:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 27
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->bmpbmMapGirds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 28
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->vectmcMapGirds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 29
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->stiMapGirds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 30
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->mapModels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 31
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->screenGirds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 32
    return-void
.end method

.method private proccessRequiredData(Lcom/autonavi/amap/mapcore/MapCore;Ljava/util/ArrayList;I)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/autonavi/amap/mapcore/MapCore;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/amap/mapcore/MapSourceGridData;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 136
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 137
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 138
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/MapSourceGridData;

    .line 139
    iget-object v3, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->tileProcessCtrl:Lcom/autonavi/amap/mapcore/d;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapSourceGridData;->getKeyGridName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/autonavi/amap/mapcore/d;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 137
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 142
    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 146
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 147
    invoke-direct {p0, p1, v2, p3}, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->sendMapDataRequest(Lcom/autonavi/amap/mapcore/MapCore;Ljava/util/ArrayList;I)V

    .line 149
    :cond_2
    return-void
.end method

.method private sendMapDataRequest(Lcom/autonavi/amap/mapcore/MapCore;Ljava/util/ArrayList;I)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 152
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 165
    :goto_0
    return-void

    .line 155
    :cond_0
    const-string v0, ""

    .line 156
    new-instance v2, Lcom/autonavi/amap/mapcore/MapLoader;

    invoke-direct {v2, p0, p1, p3}, Lcom/autonavi/amap/mapcore/MapLoader;-><init>(Lcom/autonavi/amap/mapcore/BaseMapCallImplement;Lcom/autonavi/amap/mapcore/MapCore;I)V

    .line 157
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 158
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/MapSourceGridData;

    .line 159
    iget-object v3, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->tileProcessCtrl:Lcom/autonavi/amap/mapcore/d;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapSourceGridData;->getKeyGridName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/autonavi/amap/mapcore/d;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 157
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 160
    :cond_1
    iget-object v3, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->tileProcessCtrl:Lcom/autonavi/amap/mapcore/d;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapSourceGridData;->getKeyGridName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/autonavi/amap/mapcore/d;->c(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v2, v0}, Lcom/autonavi/amap/mapcore/MapLoader;->addReuqestTiles(Lcom/autonavi/amap/mapcore/MapSourceGridData;)V

    goto :goto_2

    .line 163
    :cond_2
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->connectionManager:Lcom/autonavi/amap/mapcore/ConnectionManager;

    invoke-virtual {v0, v2}, Lcom/autonavi/amap/mapcore/ConnectionManager;->insertConntionTask(Lcom/autonavi/amap/mapcore/MapLoader;)V

    goto :goto_0
.end method


# virtual methods
.method public OnMapDataRequired(Lcom/autonavi/amap/mapcore/MapCore;I[Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    const/4 v0, 0x0

    .line 37
    packed-switch p2, :pswitch_data_0

    move-object v1, v0

    .line 61
    :goto_0
    if-eqz v1, :cond_1

    .line 63
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 64
    const/4 v0, 0x0

    :goto_1
    array-length v2, p3

    if-ge v0, v2, :cond_0

    .line 65
    new-instance v2, Lcom/autonavi/amap/mapcore/MapSourceGridData;

    aget-object v3, p3, v0

    invoke-direct {v2, v3, p2}, Lcom/autonavi/amap/mapcore/MapSourceGridData;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 40
    :pswitch_0
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->baseMapGrids:Ljava/util/ArrayList;

    move-object v1, v0

    .line 41
    goto :goto_0

    .line 43
    :pswitch_1
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->bldMapGrids:Ljava/util/ArrayList;

    move-object v1, v0

    .line 44
    goto :goto_0

    .line 46
    :pswitch_2
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->bmpbmMapGirds:Ljava/util/ArrayList;

    move-object v1, v0

    .line 47
    goto :goto_0

    .line 49
    :pswitch_3
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->vectmcMapGirds:Ljava/util/ArrayList;

    move-object v1, v0

    .line 50
    goto :goto_0

    .line 52
    :pswitch_4
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->screenGirds:Ljava/util/ArrayList;

    move-object v1, v0

    .line 53
    goto :goto_0

    .line 55
    :pswitch_5
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->stiMapGirds:Ljava/util/ArrayList;

    move-object v1, v0

    .line 56
    goto :goto_0

    .line 58
    :pswitch_6
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->mapModels:Ljava/util/ArrayList;

    move-object v1, v0

    goto :goto_0

    .line 67
    :cond_0
    const/4 v0, 0x5

    if-eq v0, p2, :cond_1

    invoke-direct {p0, p1, v1, p2}, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->proccessRequiredData(Lcom/autonavi/amap/mapcore/MapCore;Ljava/util/ArrayList;I)V

    .line 72
    :cond_1
    return-void

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method public OnMapDestory(Lcom/autonavi/amap/mapcore/MapCore;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 179
    invoke-direct {p0}, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->destory()V

    .line 180
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->tileProcessCtrl:Lcom/autonavi/amap/mapcore/d;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->tileProcessCtrl:Lcom/autonavi/amap/mapcore/d;

    iput-boolean v1, v0, Lcom/autonavi/amap/mapcore/d;->c:Z

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->tileProcessCtrl:Lcom/autonavi/amap/mapcore/d;

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->connectionManager:Lcom/autonavi/amap/mapcore/ConnectionManager;

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->connectionManager:Lcom/autonavi/amap/mapcore/ConnectionManager;

    iput-boolean v1, v0, Lcom/autonavi/amap/mapcore/ConnectionManager;->threadFlag:Z

    .line 191
    :try_start_0
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->connectionManager:Lcom/autonavi/amap/mapcore/ConnectionManager;

    iget-object v0, v0, Lcom/autonavi/amap/mapcore/ConnectionManager;->connectionPool:Lcom/autonavi/amap/mapcore/c;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/c;->clear()V

    .line 192
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->connectionManager:Lcom/autonavi/amap/mapcore/ConnectionManager;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/ConnectionManager;->interrupt()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :cond_1
    :goto_0
    return-void

    .line 200
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public OnMapLabelsRequired(Lcom/autonavi/amap/mapcore/MapCore;[II)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 209
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    .line 211
    aget v1, p2, v0

    .line 212
    new-instance v2, Lcom/autonavi/amap/mapcore/TextTextureGenerator;

    invoke-direct {v2}, Lcom/autonavi/amap/mapcore/TextTextureGenerator;-><init>()V

    .line 213
    invoke-virtual {v2, v1}, Lcom/autonavi/amap/mapcore/TextTextureGenerator;->getTextPixelBuffer(I)[B

    move-result-object v2

    .line 214
    if-eqz v2, :cond_0

    .line 215
    invoke-virtual {p1, v1, v2}, Lcom/autonavi/amap/mapcore/MapCore;->putCharbitmap(I[B)V

    .line 209
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 217
    :cond_1
    return-void
.end method

.method public OnMapSurfaceCreate(Lcom/autonavi/amap/mapcore/MapCore;)V
    .locals 1
    .parameter

    .prologue
    .line 167
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->connectionManager:Lcom/autonavi/amap/mapcore/ConnectionManager;

    if-nez v0, :cond_0

    .line 168
    new-instance v0, Lcom/autonavi/amap/mapcore/ConnectionManager;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/ConnectionManager;-><init>()V

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->connectionManager:Lcom/autonavi/amap/mapcore/ConnectionManager;

    .line 169
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->connectionManager:Lcom/autonavi/amap/mapcore/ConnectionManager;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/ConnectionManager;->start()V

    .line 172
    :cond_0
    new-instance v0, Lcom/autonavi/amap/mapcore/d;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/d;-><init>()V

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->tileProcessCtrl:Lcom/autonavi/amap/mapcore/d;

    .line 175
    return-void
.end method

.method public getScreenGridList(I)Ljava/util/ArrayList;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/amap/mapcore/MapSourceGridData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    const/4 v0, 0x0

    .line 77
    packed-switch p1, :pswitch_data_0

    .line 101
    :goto_0
    return-object v0

    .line 80
    :pswitch_0
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->baseMapGrids:Ljava/util/ArrayList;

    goto :goto_0

    .line 83
    :pswitch_1
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->bldMapGrids:Ljava/util/ArrayList;

    goto :goto_0

    .line 86
    :pswitch_2
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->bmpbmMapGirds:Ljava/util/ArrayList;

    goto :goto_0

    .line 89
    :pswitch_3
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->vectmcMapGirds:Ljava/util/ArrayList;

    goto :goto_0

    .line 92
    :pswitch_4
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->screenGirds:Ljava/util/ArrayList;

    goto :goto_0

    .line 95
    :pswitch_5
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->stiMapGirds:Ljava/util/ArrayList;

    goto :goto_0

    .line 98
    :pswitch_6
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->mapModels:Ljava/util/ArrayList;

    goto :goto_0

    .line 77
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method public isGridInList(Lcom/autonavi/amap/mapcore/MapSourceGridData;Ljava/util/ArrayList;)Z
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/autonavi/amap/mapcore/MapSourceGridData;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/amap/mapcore/MapSourceGridData;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 129
    move v1, v2

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 130
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/MapSourceGridData;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapSourceGridData;->getGridName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/MapSourceGridData;->getGridName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    const/4 v2, 0x1

    .line 133
    :cond_0
    return v2

    .line 129
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public isGridsInScreen(Ljava/util/ArrayList;I)Z
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/amap/mapcore/MapSourceGridData;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 108
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 123
    :goto_0
    return v0

    .line 110
    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->isMapEngineValid()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    .line 111
    :cond_1
    invoke-virtual {p0, p2}, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->getScreenGridList(I)Ljava/util/ArrayList;

    move-result-object v4

    move v3, v1

    .line 113
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_3

    .line 115
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/MapSourceGridData;

    invoke-virtual {p0, v0, v4}, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->isGridInList(Lcom/autonavi/amap/mapcore/MapSourceGridData;Ljava/util/ArrayList;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    .line 116
    goto :goto_0

    .line 113
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_3
    move v0, v1

    .line 120
    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    move v0, v2

    .line 123
    goto :goto_0
.end method
