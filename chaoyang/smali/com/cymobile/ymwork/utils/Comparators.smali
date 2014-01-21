.class public Lcom/cymobile/ymwork/utils/Comparators;
.super Ljava/lang/Object;
.source "Comparators.java"


# static fields
.field private static sConstrustionFieldComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/cymobile/ymwork/types/ConstrustionField;",
            ">;"
        }
    .end annotation
.end field

.field private static sConstrustionFieldDistanceComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/cymobile/ymwork/types/ConstrustionField;",
            ">;"
        }
    .end annotation
.end field

.field private static sResortAreaComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/cymobile/ymwork/types/Building;",
            ">;"
        }
    .end annotation
.end field

.field private static sResortDistanceComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/cymobile/ymwork/types/Building;",
            ">;"
        }
    .end annotation
.end field

.field private static sResortRecencyComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/cymobile/ymwork/types/Building;",
            ">;"
        }
    .end annotation
.end field

.field private static sUserRecencyComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/cymobile/ymwork/types/User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 12
    sput-object v0, Lcom/cymobile/ymwork/utils/Comparators;->sUserRecencyComparator:Ljava/util/Comparator;

    .line 13
    sput-object v0, Lcom/cymobile/ymwork/utils/Comparators;->sResortRecencyComparator:Ljava/util/Comparator;

    .line 14
    sput-object v0, Lcom/cymobile/ymwork/utils/Comparators;->sResortDistanceComparator:Ljava/util/Comparator;

    .line 15
    sput-object v0, Lcom/cymobile/ymwork/utils/Comparators;->sConstrustionFieldComparator:Ljava/util/Comparator;

    .line 16
    sput-object v0, Lcom/cymobile/ymwork/utils/Comparators;->sConstrustionFieldDistanceComparator:Ljava/util/Comparator;

    .line 17
    sput-object v0, Lcom/cymobile/ymwork/utils/Comparators;->sResortAreaComparator:Ljava/util/Comparator;

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConstrustionFieldComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Lcom/cymobile/ymwork/types/ConstrustionField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    sget-object v0, Lcom/cymobile/ymwork/utils/Comparators;->sConstrustionFieldComparator:Ljava/util/Comparator;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/cymobile/ymwork/utils/Comparators$2;

    invoke-direct {v0}, Lcom/cymobile/ymwork/utils/Comparators$2;-><init>()V

    sput-object v0, Lcom/cymobile/ymwork/utils/Comparators;->sConstrustionFieldComparator:Ljava/util/Comparator;

    .line 72
    :cond_0
    sget-object v0, Lcom/cymobile/ymwork/utils/Comparators;->sConstrustionFieldComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public static getConstrustionFieldDistanceComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Lcom/cymobile/ymwork/types/ConstrustionField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    sget-object v0, Lcom/cymobile/ymwork/utils/Comparators;->sConstrustionFieldComparator:Ljava/util/Comparator;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Lcom/cymobile/ymwork/utils/Comparators$4;

    invoke-direct {v0}, Lcom/cymobile/ymwork/utils/Comparators$4;-><init>()V

    sput-object v0, Lcom/cymobile/ymwork/utils/Comparators;->sConstrustionFieldComparator:Ljava/util/Comparator;

    .line 126
    :cond_0
    sget-object v0, Lcom/cymobile/ymwork/utils/Comparators;->sConstrustionFieldComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public static getRecentDistanceComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Lcom/cymobile/ymwork/types/Building;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    sget-object v0, Lcom/cymobile/ymwork/utils/Comparators;->sResortDistanceComparator:Ljava/util/Comparator;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/cymobile/ymwork/utils/Comparators$3;

    invoke-direct {v0}, Lcom/cymobile/ymwork/utils/Comparators$3;-><init>()V

    sput-object v0, Lcom/cymobile/ymwork/utils/Comparators;->sResortDistanceComparator:Ljava/util/Comparator;

    .line 99
    :cond_0
    sget-object v0, Lcom/cymobile/ymwork/utils/Comparators;->sResortDistanceComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public static getShopAreaComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Lcom/cymobile/ymwork/types/Building;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    sget-object v0, Lcom/cymobile/ymwork/utils/Comparators;->sResortRecencyComparator:Ljava/util/Comparator;

    if-nez v0, :cond_0

    .line 131
    new-instance v0, Lcom/cymobile/ymwork/utils/Comparators$5;

    invoke-direct {v0}, Lcom/cymobile/ymwork/utils/Comparators$5;-><init>()V

    sput-object v0, Lcom/cymobile/ymwork/utils/Comparators;->sResortRecencyComparator:Ljava/util/Comparator;

    .line 146
    :cond_0
    sget-object v0, Lcom/cymobile/ymwork/utils/Comparators;->sResortRecencyComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public static getShopRecencyComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Lcom/cymobile/ymwork/types/Building;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    sget-object v0, Lcom/cymobile/ymwork/utils/Comparators;->sResortRecencyComparator:Ljava/util/Comparator;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/cymobile/ymwork/utils/Comparators$1;

    invoke-direct {v0}, Lcom/cymobile/ymwork/utils/Comparators$1;-><init>()V

    sput-object v0, Lcom/cymobile/ymwork/utils/Comparators;->sResortRecencyComparator:Ljava/util/Comparator;

    .line 45
    :cond_0
    sget-object v0, Lcom/cymobile/ymwork/utils/Comparators;->sResortRecencyComparator:Ljava/util/Comparator;

    return-object v0
.end method
