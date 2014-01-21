.class public Lcom/cymobile/ymwork/types/BuildingReportItem;
.super Lcom/cymobile/ymwork/types/DataItemBase;
.source "BuildingReportItem.java"

# interfaces
.implements Lcom/cymobile/ymwork/types/BaseType;


# instance fields
.field private name:Ljava/lang/String;

.field private number:I

.field private unitname:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/cymobile/ymwork/types/DataItemBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/cymobile/ymwork/types/BuildingReportItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/cymobile/ymwork/types/BuildingReportItem;->number:I

    return v0
.end method

.method public getUnitname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/cymobile/ymwork/types/BuildingReportItem;->unitname:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/cymobile/ymwork/types/BuildingReportItem;->name:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setNumber(I)V
    .locals 0
    .parameter "number"

    .prologue
    .line 21
    iput p1, p0, Lcom/cymobile/ymwork/types/BuildingReportItem;->number:I

    .line 22
    return-void
.end method

.method public setUnitname(Ljava/lang/String;)V
    .locals 0
    .parameter "unitname"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/cymobile/ymwork/types/BuildingReportItem;->unitname:Ljava/lang/String;

    .line 38
    return-void
.end method
