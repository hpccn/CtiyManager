.class public Lcom/cymobile/ymwork/types/BuildingReport;
.super Lcom/cymobile/ymwork/types/DataItemBase;
.source "BuildingReport.java"

# interfaces
.implements Lcom/cymobile/ymwork/types/BaseType;


# instance fields
.field private area_all:I

.field private avgs:Lcom/cymobile/ymwork/types/Group;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cymobile/ymwork/types/Group",
            "<",
            "Lcom/cymobile/ymwork/types/ConstrustionFieldAvgItem;",
            ">;"
        }
    .end annotation
.end field

.field private avgsum:Ljava/lang/String;

.field private items:Lcom/cymobile/ymwork/types/Group;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cymobile/ymwork/types/Group",
            "<",
            "Lcom/cymobile/ymwork/types/BuildingReportItem;",
            ">;"
        }
    .end annotation
.end field

.field private maxnum:I

.field private number_all:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/cymobile/ymwork/types/DataItemBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getArea_all()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/cymobile/ymwork/types/BuildingReport;->area_all:I

    return v0
.end method

.method public getAvgs()Lcom/cymobile/ymwork/types/Group;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cymobile/ymwork/types/Group",
            "<",
            "Lcom/cymobile/ymwork/types/ConstrustionFieldAvgItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/cymobile/ymwork/types/BuildingReport;->avgs:Lcom/cymobile/ymwork/types/Group;

    return-object v0
.end method

.method public getAvgsum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/cymobile/ymwork/types/BuildingReport;->avgsum:Ljava/lang/String;

    return-object v0
.end method

.method public getItems()Lcom/cymobile/ymwork/types/Group;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cymobile/ymwork/types/Group",
            "<",
            "Lcom/cymobile/ymwork/types/BuildingReportItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/cymobile/ymwork/types/BuildingReport;->items:Lcom/cymobile/ymwork/types/Group;

    return-object v0
.end method

.method public getMaxnum()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/cymobile/ymwork/types/BuildingReport;->maxnum:I

    return v0
.end method

.method public getNumber_all()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/cymobile/ymwork/types/BuildingReport;->number_all:I

    return v0
.end method

.method public setArea_all(I)V
    .locals 0
    .parameter "area_all"

    .prologue
    .line 31
    iput p1, p0, Lcom/cymobile/ymwork/types/BuildingReport;->area_all:I

    .line 32
    return-void
.end method

.method public setAvgs(Lcom/cymobile/ymwork/types/Group;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cymobile/ymwork/types/Group",
            "<",
            "Lcom/cymobile/ymwork/types/ConstrustionFieldAvgItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, avgs:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/ConstrustionFieldAvgItem;>;"
    iput-object p1, p0, Lcom/cymobile/ymwork/types/BuildingReport;->avgs:Lcom/cymobile/ymwork/types/Group;

    .line 56
    return-void
.end method

.method public setAvgsum(Ljava/lang/String;)V
    .locals 0
    .parameter "avgsum"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/cymobile/ymwork/types/BuildingReport;->avgsum:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setItems(Lcom/cymobile/ymwork/types/Group;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cymobile/ymwork/types/Group",
            "<",
            "Lcom/cymobile/ymwork/types/BuildingReportItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, items:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/BuildingReportItem;>;"
    iput-object p1, p0, Lcom/cymobile/ymwork/types/BuildingReport;->items:Lcom/cymobile/ymwork/types/Group;

    .line 40
    return-void
.end method

.method public setMaxnum(I)V
    .locals 0
    .parameter "maxnum"

    .prologue
    .line 47
    iput p1, p0, Lcom/cymobile/ymwork/types/BuildingReport;->maxnum:I

    .line 48
    return-void
.end method

.method public setNumber_all(I)V
    .locals 0
    .parameter "number_all"

    .prologue
    .line 23
    iput p1, p0, Lcom/cymobile/ymwork/types/BuildingReport;->number_all:I

    .line 24
    return-void
.end method
