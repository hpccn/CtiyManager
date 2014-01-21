.class public Lcom/amap/api/offlinemap/c;
.super Ljava/lang/Object;
.source "MapDownloadManager.java"


# static fields
.field private static g:Ljava/lang/String;

.field private static h:Landroid/content/Context;


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/offlinemap/g;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/offlinemap/g;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/offlinemap/DownCity;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/offlinemap/DownCity;",
            ">;"
        }
    .end annotation
.end field

.field e:Landroid/os/Handler;

.field f:Lcom/amap/api/offlinemap/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    sput-object v0, Lcom/amap/api/offlinemap/c;->g:Ljava/lang/String;

    .line 32
    sput-object v0, Lcom/amap/api/offlinemap/c;->h:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/offlinemap/c;->a:Ljava/util/ArrayList;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/offlinemap/c;->b:Ljava/util/ArrayList;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/offlinemap/c;->c:Ljava/util/ArrayList;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/offlinemap/c;->d:Ljava/util/ArrayList;

    .line 36
    sput-object p1, Lcom/amap/api/offlinemap/c;->h:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/amap/api/offlinemap/c;->e:Landroid/os/Handler;

    .line 38
    invoke-static {p1}, Lcom/amap/api/a/b/g;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/api/offlinemap/c;->g:Ljava/lang/String;

    .line 39
    sget-object v0, Lcom/amap/api/offlinemap/c;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/a/b/c;->b(Landroid/content/Context;)Ljava/lang/String;

    .line 40
    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/amap/api/offlinemap/c;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/a/b/g;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 6
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/amap/api/offlinemap/c;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/offlinemap/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/amap/api/offlinemap/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/offlinemap/g;

    .line 48
    invoke-virtual {v0}, Lcom/amap/api/offlinemap/g;->b()Ljava/lang/String;

    move-result-object v1

    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".zip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 55
    :try_start_0
    new-instance v2, Lcom/amap/api/offlinemap/f;

    invoke-virtual {v0}, Lcom/amap/api/offlinemap/g;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/amap/api/offlinemap/c;->a()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    invoke-direct {v2, v3, v4, v1, v5}, Lcom/amap/api/offlinemap/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 57
    new-instance v1, Lcom/amap/api/offlinemap/e;

    sget-object v3, Lcom/amap/api/offlinemap/c;->h:Landroid/content/Context;

    invoke-direct {v1, v2, p0, v0, v3}, Lcom/amap/api/offlinemap/e;-><init>(Lcom/amap/api/offlinemap/f;Lcom/amap/api/offlinemap/c;Lcom/amap/api/offlinemap/g;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/amap/api/offlinemap/c;->f:Lcom/amap/api/offlinemap/e;

    .line 58
    iget-object v0, p0, Lcom/amap/api/offlinemap/c;->f:Lcom/amap/api/offlinemap/e;

    invoke-virtual {v0}, Lcom/amap/api/offlinemap/e;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Lcom/amap/api/offlinemap/g;)V
    .locals 3
    .parameter

    .prologue
    .line 85
    const/4 v0, 0x3

    iput v0, p1, Lcom/amap/api/offlinemap/g;->a:I

    .line 87
    iget-object v1, p0, Lcom/amap/api/offlinemap/c;->b:Ljava/util/ArrayList;

    monitor-enter v1

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/offlinemap/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 89
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    iget-object v1, p0, Lcom/amap/api/offlinemap/c;->a:Ljava/util/ArrayList;

    monitor-enter v1

    .line 91
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/offlinemap/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 92
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 94
    invoke-virtual {p1}, Lcom/amap/api/offlinemap/g;->d()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/offlinemap/c;->b(I)V

    .line 96
    invoke-virtual {p1}, Lcom/amap/api/offlinemap/g;->a()Ljava/lang/String;

    move-result-object v1

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".dt"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 98
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 100
    :try_start_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 106
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 108
    :try_start_3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 114
    :cond_1
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".info"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 115
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 117
    :try_start_4
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 124
    :cond_2
    :goto_2
    return-void

    .line 89
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    .line 92
    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 110
    :catch_1
    move-exception v0

    .line 111
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 119
    :catch_2
    move-exception v0

    .line 120
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public a(Lcom/amap/api/offlinemap/g;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 229
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 230
    const-string v1, "status"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 231
    const-string v1, "completepercent"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 232
    iget-object v1, p0, Lcom/amap/api/offlinemap/c;->e:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 233
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 234
    iget-object v0, p0, Lcom/amap/api/offlinemap/c;->e:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 235
    iput p2, p1, Lcom/amap/api/offlinemap/g;->a:I

    .line 236
    invoke-virtual {p1}, Lcom/amap/api/offlinemap/g;->e()V

    .line 237
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 127
    iget-object v0, p0, Lcom/amap/api/offlinemap/c;->f:Lcom/amap/api/offlinemap/e;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/amap/api/offlinemap/c;->f:Lcom/amap/api/offlinemap/e;

    invoke-virtual {v0}, Lcom/amap/api/offlinemap/e;->b()V

    .line 129
    iget-object v0, p0, Lcom/amap/api/offlinemap/c;->f:Lcom/amap/api/offlinemap/e;

    invoke-virtual {v0}, Lcom/amap/api/offlinemap/e;->interrupt()V

    .line 133
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 134
    const-string v1, "status"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 135
    const-string v1, "completepercent"

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 136
    iget-object v1, p0, Lcom/amap/api/offlinemap/c;->e:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 137
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 138
    iget-object v0, p0, Lcom/amap/api/offlinemap/c;->e:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 139
    iget-object v0, p0, Lcom/amap/api/offlinemap/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 140
    iget-object v0, p0, Lcom/amap/api/offlinemap/c;->f:Lcom/amap/api/offlinemap/e;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/amap/api/offlinemap/c;->f:Lcom/amap/api/offlinemap/e;

    invoke-virtual {v0}, Lcom/amap/api/offlinemap/e;->b()V

    .line 142
    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 3
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/amap/api/offlinemap/c;->f:Lcom/amap/api/offlinemap/e;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/amap/api/offlinemap/c;->f:Lcom/amap/api/offlinemap/e;

    invoke-virtual {v0}, Lcom/amap/api/offlinemap/e;->b()V

    .line 67
    iget-object v0, p0, Lcom/amap/api/offlinemap/c;->f:Lcom/amap/api/offlinemap/e;

    invoke-virtual {v0}, Lcom/amap/api/offlinemap/e;->interrupt()V

    .line 72
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 73
    const-string v1, "status"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 74
    const-string v1, "completepercent"

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 75
    iget-object v1, p0, Lcom/amap/api/offlinemap/c;->e:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 76
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 77
    iget-object v0, p0, Lcom/amap/api/offlinemap/c;->e:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 82
    :cond_0
    return-void
.end method

.method public b(Lcom/amap/api/offlinemap/g;)V
    .locals 7
    .parameter

    .prologue
    const/16 v6, 0x64

    const/4 v5, 0x4

    const/4 v4, 0x1

    .line 241
    invoke-virtual {p1}, Lcom/amap/api/offlinemap/g;->b()Ljava/lang/String;

    move-result-object v0

    .line 243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/amap/api/offlinemap/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 248
    invoke-virtual {p1}, Lcom/amap/api/offlinemap/g;->e()V

    .line 251
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 252
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 254
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 255
    const-string v3, "status"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 256
    const-string v3, "completepercent"

    invoke-virtual {v1, v3, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 257
    iget-object v3, p0, Lcom/amap/api/offlinemap/c;->e:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    .line 258
    invoke-virtual {v3, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 259
    iget-object v1, p0, Lcom/amap/api/offlinemap/c;->e:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 260
    iput v4, p1, Lcom/amap/api/offlinemap/g;->a:I

    .line 261
    invoke-virtual {p1}, Lcom/amap/api/offlinemap/g;->e()V

    .line 262
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/amap/api/offlinemap/c;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "vmap/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/amap/api/offlinemap/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 266
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 267
    const-string v1, "status"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 268
    const-string v1, "completepercent"

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 269
    iget-object v1, p0, Lcom/amap/api/offlinemap/c;->e:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 270
    invoke-virtual {v3, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 271
    iget-object v0, p0, Lcom/amap/api/offlinemap/c;->e:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 273
    :cond_0
    iput v5, p1, Lcom/amap/api/offlinemap/g;->a:I

    .line 274
    iget-object v1, p0, Lcom/amap/api/offlinemap/c;->b:Ljava/util/ArrayList;

    monitor-enter v1

    .line 275
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/offlinemap/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 276
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    invoke-virtual {p1}, Lcom/amap/api/offlinemap/g;->e()V

    .line 279
    return-void

    .line 276
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public c()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 163
    iget-object v0, p0, Lcom/amap/api/offlinemap/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 166
    :try_start_0
    sget-object v0, Lcom/amap/api/offlinemap/c;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "1010.png"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 167
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 168
    const-string v1, "utf-8"

    invoke-interface {v3, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 169
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    move-object v1, v2

    .line 170
    :goto_0
    if-eq v0, v6, :cond_9

    .line 171
    packed-switch v0, :pswitch_data_0

    .line 216
    :cond_0
    :goto_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 173
    :pswitch_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 174
    const-string v4, "province"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 175
    const/4 v4, 0x0

    const-string v5, "code"

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 176
    if-eqz v4, :cond_1

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 177
    :cond_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 180
    :cond_2
    new-instance v1, Lcom/amap/api/offlinemap/DownCity;

    invoke-direct {v1}, Lcom/amap/api/offlinemap/DownCity;-><init>()V

    .line 181
    invoke-virtual {v1, v4}, Lcom/amap/api/offlinemap/DownCity;->setCode(Ljava/lang/String;)V

    .line 184
    :cond_3
    const-string v4, "city"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 185
    new-instance v1, Lcom/amap/api/offlinemap/DownCity;

    invoke-direct {v1}, Lcom/amap/api/offlinemap/DownCity;-><init>()V

    .line 186
    const-string v4, "20130225"

    invoke-virtual {v1, v4}, Lcom/amap/api/offlinemap/DownCity;->setVersion(Ljava/lang/String;)V

    .line 187
    const/4 v4, 0x0

    const-string v5, "code"

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amap/api/offlinemap/DownCity;->setCode(Ljava/lang/String;)V

    .line 190
    :cond_4
    if-eqz v1, :cond_5

    .line 191
    const-string v4, "name"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 192
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/offlinemap/DownCity;->setCity(Ljava/lang/String;)V

    .line 206
    :cond_5
    :goto_2
    :pswitch_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "size"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 209
    iget-object v0, p0, Lcom/amap/api/offlinemap/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    iget-object v0, p0, Lcom/amap/api/offlinemap/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v2

    .line 211
    goto :goto_1

    .line 193
    :cond_6
    const-string v4, "pinyin"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 194
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 195
    invoke-virtual {v1, v0}, Lcom/amap/api/offlinemap/DownCity;->setPinyin(Ljava/lang/String;)V

    .line 196
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/offlinemap/DownCity;->setInitial(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 221
    :catch_0
    move-exception v0

    .line 222
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 226
    :goto_3
    return-void

    .line 197
    :cond_7
    :try_start_1
    const-string v4, "durl"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 198
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/offlinemap/DownCity;->setDurl(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 223
    :catch_1
    move-exception v0

    .line 224
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_3

    .line 199
    :cond_8
    :try_start_2
    const-string v4, "size"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 200
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/amap/api/offlinemap/DownCity;->setSize(J)V

    goto :goto_2

    .line 218
    :cond_9
    iget-object v0, p0, Lcom/amap/api/offlinemap/c;->c:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 219
    iget-object v0, p0, Lcom/amap/api/offlinemap/c;->d:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 171
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
