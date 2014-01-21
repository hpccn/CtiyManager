.class public Lcom/cymobile/ymwork/server/NullDiskCache;
.super Ljava/lang/Object;
.source "NullDiskCache.java"

# interfaces
.implements Lcom/cymobile/ymwork/server/DiskCache;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 0

    .prologue
    .line 46
    return-void
.end method

.method public clear()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public exists(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 15
    const/4 v0, 0x0

    return v0
.end method

.method public getFile(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .parameter "key"

    .prologue
    .line 23
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    throw v0
.end method

.method public invalidate(Ljava/lang/String;)V
    .locals 0
    .parameter "key"

    .prologue
    .line 53
    return-void
.end method

.method public store(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 0
    .parameter "key"
    .parameter "is"

    .prologue
    .line 39
    return-void
.end method
