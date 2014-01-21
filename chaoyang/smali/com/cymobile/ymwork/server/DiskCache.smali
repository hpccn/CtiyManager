.class public interface abstract Lcom/cymobile/ymwork/server/DiskCache;
.super Ljava/lang/Object;
.source "DiskCache.java"


# virtual methods
.method public abstract cleanup()V
.end method

.method public abstract clear()V
.end method

.method public abstract exists(Ljava/lang/String;)Z
.end method

.method public abstract getFile(Ljava/lang/String;)Ljava/io/File;
.end method

.method public abstract getInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract invalidate(Ljava/lang/String;)V
.end method

.method public abstract store(Ljava/lang/String;Ljava/io/InputStream;)V
.end method
