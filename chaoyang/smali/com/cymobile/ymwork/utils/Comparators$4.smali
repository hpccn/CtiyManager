.class Lcom/cymobile/ymwork/utils/Comparators$4;
.super Ljava/lang/Object;
.source "Comparators.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/utils/Comparators;->getConstrustionFieldDistanceComparator()Ljava/util/Comparator;
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
        "Lcom/cymobile/ymwork/types/ConstrustionField;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public compare(Lcom/cymobile/ymwork/types/ConstrustionField;Lcom/cymobile/ymwork/types/ConstrustionField;)I
    .locals 5
    .parameter "object1"
    .parameter "object2"

    .prologue
    const/4 v3, 0x0

    .line 111
    :try_start_0
    invoke-virtual {p1}, Lcom/cymobile/ymwork/types/ConstrustionField;->getDistance()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 112
    .local v0, d1:I
    invoke-virtual {p2}, Lcom/cymobile/ymwork/types/ConstrustionField;->getDistance()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 113
    .local v1, d2:I
    if-le v0, v1, :cond_1

    .line 114
    const/4 v3, 0x1

    .line 121
    .end local v0           #d1:I
    .end local v1           #d2:I
    :cond_0
    :goto_0
    return v3

    .line 115
    .restart local v0       #d1:I
    .restart local v1       #d2:I
    :cond_1
    if-le v1, v0, :cond_0

    .line 116
    const/4 v3, -0x1

    goto :goto_0

    .line 120
    .end local v0           #d1:I
    .end local v1           #d2:I
    :catch_0
    move-exception v2

    .line 121
    .local v2, ex:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/cymobile/ymwork/types/ConstrustionField;

    check-cast p2, Lcom/cymobile/ymwork/types/ConstrustionField;

    invoke-virtual {p0, p1, p2}, Lcom/cymobile/ymwork/utils/Comparators$4;->compare(Lcom/cymobile/ymwork/types/ConstrustionField;Lcom/cymobile/ymwork/types/ConstrustionField;)I

    move-result v0

    return v0
.end method
