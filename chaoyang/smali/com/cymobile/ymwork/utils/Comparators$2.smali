.class Lcom/cymobile/ymwork/utils/Comparators$2;
.super Ljava/lang/Object;
.source "Comparators.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/utils/Comparators;->getConstrustionFieldComparator()Ljava/util/Comparator;
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
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public compare(Lcom/cymobile/ymwork/types/ConstrustionField;Lcom/cymobile/ymwork/types/ConstrustionField;)I
    .locals 7
    .parameter "object1"
    .parameter "object2"

    .prologue
    const/4 v5, 0x0

    .line 57
    :try_start_0
    invoke-virtual {p1}, Lcom/cymobile/ymwork/types/ConstrustionField;->getBuildingreplydatetime()J

    move-result-wide v0

    .line 58
    .local v0, d1:J
    invoke-virtual {p2}, Lcom/cymobile/ymwork/types/ConstrustionField;->getBuildingreplydatetime()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 59
    .local v2, d2:J
    cmp-long v6, v0, v2

    if-lez v6, :cond_1

    .line 60
    const/4 v5, 0x1

    .line 67
    .end local v0           #d1:J
    .end local v2           #d2:J
    :cond_0
    :goto_0
    return v5

    .line 61
    .restart local v0       #d1:J
    .restart local v2       #d2:J
    :cond_1
    cmp-long v6, v2, v0

    if-lez v6, :cond_0

    .line 62
    const/4 v5, -0x1

    goto :goto_0

    .line 66
    .end local v0           #d1:J
    .end local v2           #d2:J
    :catch_0
    move-exception v4

    .line 67
    .local v4, e:Ljava/lang/Exception;
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

    invoke-virtual {p0, p1, p2}, Lcom/cymobile/ymwork/utils/Comparators$2;->compare(Lcom/cymobile/ymwork/types/ConstrustionField;Lcom/cymobile/ymwork/types/ConstrustionField;)I

    move-result v0

    return v0
.end method
