.class public Lcom/cymobile/ymwork/utils/json/ShopItemJson;
.super Ljava/lang/Object;
.source "ShopItemJson.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNewsList(Ljava/io/InputStream;)Ljava/util/List;
    .locals 1
    .parameter "is"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/cymobile/ymwork/types/Building;",
            ">;"
        }
    .end annotation

    .prologue
    .line 10
    const/4 v0, 0x0

    return-object v0
.end method
