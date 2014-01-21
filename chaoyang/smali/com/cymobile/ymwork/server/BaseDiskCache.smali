.class public Lcom/cymobile/ymwork/server/BaseDiskCache;
.super Ljava/lang/Object;
.source "BaseDiskCache.java"

# interfaces
.implements Lcom/cymobile/ymwork/server/DiskCache;


# static fields
.field private static final DEBUG:Z = true

.field private static final MIN_FILE_SIZE_IN_BYTES:I = 0x64

.field private static final NOMEDIA:Ljava/lang/String; = ".nomedia"

.field private static final TAG:Ljava/lang/String; = "BaseDiskCache"


# instance fields
.field private mStorageDirectory:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "dirPath"
    .parameter "name"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 27
    .local v0, baseDirectory:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 28
    .local v1, storageDirectory:Ljava/io/File;
    invoke-static {v1}, Lcom/cymobile/ymwork/server/BaseDiskCache;->createDirectory(Ljava/io/File;)V

    .line 29
    iput-object v1, p0, Lcom/cymobile/ymwork/server/BaseDiskCache;->mStorageDirectory:Ljava/io/File;

    .line 31
    invoke-virtual {p0}, Lcom/cymobile/ymwork/server/BaseDiskCache;->cleanupSimple()V

    .line 32
    return-void
.end method

.method private static final createDirectory(Ljava/io/File;)V
    .locals 6
    .parameter "storageDirectory"

    .prologue
    .line 144
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 145
    const-string v3, "BaseDiskCache"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Trying to create storageDirectory: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 145
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const-string v3, "BaseDiskCache"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exists: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 149
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 148
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const-string v3, "BaseDiskCache"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "State: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const-string v3, "BaseDiskCache"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Isdir: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 152
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 151
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const-string v3, "BaseDiskCache"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Readable: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 154
    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 153
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const-string v3, "BaseDiskCache"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Writable: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 156
    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 155
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 158
    .local v2, tmp:Ljava/io/File;
    const-string v3, "BaseDiskCache"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exists: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const-string v3, "BaseDiskCache"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Isdir: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const-string v3, "BaseDiskCache"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Readable: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const-string v3, "BaseDiskCache"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Writable: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 163
    const-string v3, "BaseDiskCache"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exists: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const-string v3, "BaseDiskCache"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Isdir: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const-string v3, "BaseDiskCache"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Readable: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const-string v3, "BaseDiskCache"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Writable: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    .end local v2           #tmp:Ljava/io/File;
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v3, ".nomedia"

    invoke-direct {v1, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 170
    .local v1, nomediaFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 172
    :try_start_0
    const-string v3, "BaseDiskCache"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Created file: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 173
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 172
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    .line 183
    :cond_2
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Unable to create storage directory and nomedia file."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, e:Ljava/io/IOException;
    const-string v3, "BaseDiskCache"

    const-string v4, "Unable to create .nomedia file for some reason."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Unable to create nomedia file."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 185
    .end local v0           #e:Ljava/io/IOException;
    :cond_3
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 7

    .prologue
    .line 93
    iget-object v3, p0, Lcom/cymobile/ymwork/server/BaseDiskCache;->mStorageDirectory:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, children:[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 95
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, v1

    if-lt v2, v3, :cond_1

    .line 104
    .end local v2           #i:I
    :cond_0
    return-void

    .line 96
    .restart local v2       #i:I
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/cymobile/ymwork/server/BaseDiskCache;->mStorageDirectory:Ljava/io/File;

    aget-object v4, v1, v2

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 97
    .local v0, child:Ljava/io/File;
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/cymobile/ymwork/server/BaseDiskCache;->mStorageDirectory:Ljava/io/File;

    const-string v5, ".nomedia"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 98
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x64

    cmp-long v3, v3, v5

    if-gtz v3, :cond_2

    .line 99
    const-string v3, "BaseDiskCache"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Deleting: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 95
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public cleanupSimple()V
    .locals 9

    .prologue
    .line 111
    const/16 v4, 0x3e8

    .line 112
    .local v4, maxNumFiles:I
    const/16 v5, 0x32

    .line 114
    .local v5, numFilesToDelete:I
    iget-object v6, p0, Lcom/cymobile/ymwork/server/BaseDiskCache;->mStorageDirectory:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, children:[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 116
    const-string v6, "BaseDiskCache"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Found disk cache length to be: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    array-length v6, v1

    const/16 v7, 0x3e8

    if-le v6, v7, :cond_0

    .line 118
    const-string v6, "BaseDiskCache"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Disk cache found to : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    array-length v6, v1

    add-int/lit8 v2, v6, -0x1

    .local v2, i:I
    add-int/lit8 v3, v2, -0x32

    .local v3, m:I
    :goto_0
    if-gt v2, v3, :cond_1

    .line 126
    .end local v2           #i:I
    .end local v3           #m:I
    :cond_0
    return-void

    .line 120
    .restart local v2       #i:I
    .restart local v3       #m:I
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v6, p0, Lcom/cymobile/ymwork/server/BaseDiskCache;->mStorageDirectory:Ljava/io/File;

    aget-object v7, v1, v2

    invoke-direct {v0, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 121
    .local v0, child:Ljava/io/File;
    const-string v6, "BaseDiskCache"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "  deleting: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 119
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method public clear()V
    .locals 6

    .prologue
    .line 130
    iget-object v3, p0, Lcom/cymobile/ymwork/server/BaseDiskCache;->mStorageDirectory:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, children:[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 132
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, v1

    if-lt v2, v3, :cond_1

    .line 140
    .end local v2           #i:I
    :cond_0
    iget-object v3, p0, Lcom/cymobile/ymwork/server/BaseDiskCache;->mStorageDirectory:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 141
    return-void

    .line 133
    .restart local v2       #i:I
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/cymobile/ymwork/server/BaseDiskCache;->mStorageDirectory:Ljava/io/File;

    aget-object v4, v1, v2

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 134
    .local v0, child:Ljava/io/File;
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/cymobile/ymwork/server/BaseDiskCache;->mStorageDirectory:Ljava/io/File;

    const-string v5, ".nomedia"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 135
    const-string v3, "BaseDiskCache"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Deleting: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 132
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public exists(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/server/BaseDiskCache;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public getFile(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .parameter "hash"

    .prologue
    .line 52
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cymobile/ymwork/server/BaseDiskCache;->mStorageDirectory:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .parameter "hash"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/server/BaseDiskCache;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public invalidate(Ljava/lang/String;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/server/BaseDiskCache;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 88
    return-void
.end method

.method public store(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 9
    .parameter "key"
    .parameter "is"

    .prologue
    .line 65
    const-string v6, "BaseDiskCache"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "store: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 68
    .end local p2
    .local v3, is:Ljava/io/InputStream;
    :try_start_0
    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/server/BaseDiskCache;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 70
    .local v4, os:Ljava/io/OutputStream;
    const/16 v6, 0x800

    new-array v0, v6, [B

    .line 72
    .local v0, b:[B
    const/4 v5, 0x0

    .line 74
    .local v5, total:I
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, count:I
    if-gtz v1, :cond_0

    .line 78
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 79
    const-string v6, "BaseDiskCache"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "store complete: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .end local v0           #b:[B
    .end local v1           #count:I
    .end local v4           #os:Ljava/io/OutputStream;
    .end local v5           #total:I
    :goto_1
    return-void

    .line 75
    .restart local v0       #b:[B
    .restart local v1       #count:I
    .restart local v4       #os:Ljava/io/OutputStream;
    .restart local v5       #total:I
    :cond_0
    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    add-int/2addr v5, v1

    goto :goto_0

    .line 80
    .end local v0           #b:[B
    .end local v1           #count:I
    .end local v4           #os:Ljava/io/OutputStream;
    .end local v5           #total:I
    :catch_0
    move-exception v2

    .line 81
    .local v2, e:Ljava/io/IOException;
    const-string v6, "BaseDiskCache"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "store failed to store: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
