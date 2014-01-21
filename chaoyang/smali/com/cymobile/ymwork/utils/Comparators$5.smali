.class Lcom/cymobile/ymwork/utils/Comparators$5;
.super Ljava/lang/Object;
.source "Comparators.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/utils/Comparators;->getShopAreaComparator()Ljava/util/Comparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/cymobile/ymwork/types/Building;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public compare(Lcom/cymobile/ymwork/types/Building;Lcom/cymobile/ymwork/types/Building;)I
    .locals 3
    .parameter "object1"
    .parameter "object2"

    .prologue
    .line 138
    :try_start_0
    invoke-virtual {p2}, Lcom/cymobile/ymwork/types/Building;->getAffectArea()Ljava/lang/String;

    move-result-object v1

    .line 139
    invoke-virtual {p1}, Lcom/cymobile/ymwork/types/Building;->getAffectArea()Ljava/lang/String;

    move-result-object v2

    .line 138
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 141
    :goto_0
    return v1

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/cymobile/ymwork/types/Building;

    check-cast p2, Lcom/cymobile/ymwork/types/Building;

    invoke-virtual {p0, p1, p2}, Lcom/cymobile/ymwork/utils/Comparators$5;->compare(Lcom/cymobile/ymwork/types/Building;Lcom/cymobile/ymwork/types/Building;)I

    move-result v0

    return v0
.end method
