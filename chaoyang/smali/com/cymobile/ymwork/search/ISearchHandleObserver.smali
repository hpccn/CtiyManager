.class public interface abstract Lcom/cymobile/ymwork/search/ISearchHandleObserver;
.super Ljava/lang/Object;
.source "ISearchHandleObserver.java"


# virtual methods
.method public abstract searchError()V
.end method

.method public abstract searchNetworkError()V
.end method

.method public abstract searchResultNothing()V
.end method

.method public abstract searchResultRefresh(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cymobile/ymwork/types/Building;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract searchResultShow(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cymobile/ymwork/types/Building;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract searchStart()V
.end method
