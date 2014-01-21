.class public final Lcom/amap/api/offlinemap/OfflineMapManager;
.super Ljava/lang/Object;
.source "OfflineMapManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/offlinemap/OfflineMapManager$OfflineMapDownloadListener;
    }
.end annotation


# instance fields
.field a:Landroid/os/Handler;

.field private b:Lcom/amap/api/offlinemap/c;

.field private c:Lcom/amap/api/offlinemap/OfflineMapManager$OfflineMapDownloadListener;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/offlinemap/City;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/offlinemap/OfflineMapManager$OfflineMapDownloadListener;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/offlinemap/OfflineMapManager;->d:Ljava/util/ArrayList;

    .line 15
    new-instance v0, Lcom/amap/api/offlinemap/d;

    invoke-direct {v0, p0}, Lcom/amap/api/offlinemap/d;-><init>(Lcom/amap/api/offlinemap/OfflineMapManager;)V

    iput-object v0, p0, Lcom/amap/api/offlinemap/OfflineMapManager;->a:Landroid/os/Handler;

    .line 24
    iput-object p1, p0, Lcom/amap/api/offlinemap/OfflineMapManager;->e:Landroid/content/Context;

    .line 25
    new-instance v0, Lcom/amap/api/offlinemap/c;

    iget-object v1, p0, Lcom/amap/api/offlinemap/OfflineMapManager;->a:Landroid/os/Handler;

    invoke-direct {v0, p1, v1}, Lcom/amap/api/offlinemap/c;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/amap/api/offlinemap/OfflineMapManager;->b:Lcom/amap/api/offlinemap/c;

    .line 26
    invoke-static {p1}, Lcom/amap/api/a/b/c;->a(Landroid/content/Context;)Lcom/amap/api/a/b/c;

    .line 27
    iput-object p2, p0, Lcom/amap/api/offlinemap/OfflineMapManager;->c:Lcom/amap/api/offlinemap/OfflineMapManager$OfflineMapDownloadListener;

    .line 28
    iget-object v0, p0, Lcom/amap/api/offlinemap/OfflineMapManager;->b:Lcom/amap/api/offlinemap/c;

    invoke-virtual {v0}, Lcom/amap/api/offlinemap/c;->c()V

    .line 30
    return-void
.end method

.method static synthetic a(Lcom/amap/api/offlinemap/OfflineMapManager;)Lcom/amap/api/offlinemap/OfflineMapManager$OfflineMapDownloadListener;
    .locals 1
    .parameter

    .prologue
    .line 10
    iget-object v0, p0, Lcom/amap/api/offlinemap/OfflineMapManager;->c:Lcom/amap/api/offlinemap/OfflineMapManager$OfflineMapDownloadListener;

    return-object v0
.end method

.method private a(Lcom/amap/api/offlinemap/DownCity;)V
    .locals 2
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lcom/amap/api/offlinemap/OfflineMapManager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    new-instance v0, Lcom/amap/api/offlinemap/g;

    invoke-direct {v0, p1}, Lcom/amap/api/offlinemap/g;-><init>(Lcom/amap/api/offlinemap/DownCity;)V

    .line 108
    iget-object v1, p0, Lcom/amap/api/offlinemap/OfflineMapManager;->b:Lcom/amap/api/offlinemap/c;

    iget-object v1, v1, Lcom/amap/api/offlinemap/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/offlinemap/g;->a(I)V

    .line 109
    const/4 v1, 0x2

    iput v1, v0, Lcom/amap/api/offlinemap/g;->a:I

    .line 110
    iget-object v1, p0, Lcom/amap/api/offlinemap/OfflineMapManager;->b:Lcom/amap/api/offlinemap/c;

    iget-object v1, v1, Lcom/amap/api/offlinemap/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v0, p0, Lcom/amap/api/offlinemap/OfflineMapManager;->b:Lcom/amap/api/offlinemap/c;

    iget-object v1, p0, Lcom/amap/api/offlinemap/OfflineMapManager;->b:Lcom/amap/api/offlinemap/c;

    iget-object v1, v1, Lcom/amap/api/offlinemap/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/offlinemap/c;->a(I)V

    .line 112
    return-void
.end method


# virtual methods
.method public downloadByCityCode(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 33
    iget-object v1, p0, Lcom/amap/api/offlinemap/OfflineMapManager;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/amap/api/a/b/g;->c(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 41
    :cond_0
    :goto_0
    return v0

    .line 36
    :cond_1
    invoke-virtual {p0, p1}, Lcom/amap/api/offlinemap/OfflineMapManager;->getItemByCityCode(Ljava/lang/String;)Lcom/amap/api/offlinemap/DownCity;

    move-result-object v1

    .line 37
    if-eqz v1, :cond_0

    .line 38
    invoke-direct {p0, v1}, Lcom/amap/api/offlinemap/OfflineMapManager;->a(Lcom/amap/api/offlinemap/DownCity;)V

    .line 41
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public downloadByCityName(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 45
    iget-object v1, p0, Lcom/amap/api/offlinemap/OfflineMapManager;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/amap/api/a/b/g;->c(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 53
    :cond_0
    :goto_0
    return v0

    .line 48
    :cond_1
    invoke-virtual {p0, p1}, Lcom/amap/api/offlinemap/OfflineMapManager;->getItemByCityName(Ljava/lang/String;)Lcom/amap/api/offlinemap/DownCity;

    move-result-object v1

    .line 49
    if-eqz v1, :cond_0

    .line 50
    invoke-direct {p0, v1}, Lcom/amap/api/offlinemap/OfflineMapManager;->a(Lcom/amap/api/offlinemap/DownCity;)V

    .line 53
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getDownloadingCityList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/offlinemap/City;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/amap/api/offlinemap/OfflineMapManager;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getItemByCityCode(Ljava/lang/String;)Lcom/amap/api/offlinemap/DownCity;
    .locals 3
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/amap/api/offlinemap/OfflineMapManager;->b:Lcom/amap/api/offlinemap/c;

    iget-object v0, v0, Lcom/amap/api/offlinemap/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/offlinemap/DownCity;

    .line 79
    invoke-virtual {v0}, Lcom/amap/api/offlinemap/DownCity;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 83
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemByCityName(Ljava/lang/String;)Lcom/amap/api/offlinemap/DownCity;
    .locals 4
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/amap/api/offlinemap/OfflineMapManager;->b:Lcom/amap/api/offlinemap/c;

    iget-object v0, v0, Lcom/amap/api/offlinemap/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/offlinemap/DownCity;

    .line 88
    invoke-virtual {v0}, Lcom/amap/api/offlinemap/DownCity;->getCity()Ljava/lang/String;

    move-result-object v2

    .line 89
    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOfflineCityList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/offlinemap/DownCity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/amap/api/offlinemap/OfflineMapManager;->b:Lcom/amap/api/offlinemap/c;

    iget-object v0, v0, Lcom/amap/api/offlinemap/c;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/amap/api/offlinemap/OfflineMapManager;->b:Lcom/amap/api/offlinemap/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/offlinemap/c;->b(I)V

    .line 66
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/amap/api/offlinemap/OfflineMapManager;->getItemByCityName(Ljava/lang/String;)Lcom/amap/api/offlinemap/DownCity;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_0

    .line 71
    new-instance v1, Lcom/amap/api/offlinemap/g;

    invoke-direct {v1, v0}, Lcom/amap/api/offlinemap/g;-><init>(Lcom/amap/api/offlinemap/DownCity;)V

    .line 72
    iget-object v0, p0, Lcom/amap/api/offlinemap/OfflineMapManager;->b:Lcom/amap/api/offlinemap/c;

    invoke-virtual {v0, v1}, Lcom/amap/api/offlinemap/c;->a(Lcom/amap/api/offlinemap/g;)V

    .line 75
    :cond_0
    return-void
.end method

.method public restart()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/amap/api/offlinemap/OfflineMapManager;->b:Lcom/amap/api/offlinemap/c;

    iget-object v1, p0, Lcom/amap/api/offlinemap/OfflineMapManager;->b:Lcom/amap/api/offlinemap/c;

    iget-object v1, v1, Lcom/amap/api/offlinemap/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/offlinemap/c;->a(I)V

    .line 58
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/amap/api/offlinemap/OfflineMapManager;->b:Lcom/amap/api/offlinemap/c;

    invoke-virtual {v0}, Lcom/amap/api/offlinemap/c;->b()V

    .line 62
    return-void
.end method
