.class public Lcom/cymobile/ymwork/types/VisitorvolumeReports;
.super Lcom/cymobile/ymwork/types/DataItemBase;
.source "VisitorvolumeReports.java"

# interfaces
.implements Lcom/cymobile/ymwork/types/BaseType;


# instance fields
.field private count:Lcom/cymobile/ymwork/types/Group;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cymobile/ymwork/types/Group",
            "<",
            "Lcom/cymobile/ymwork/types/VisitorvolumeReport;",
            ">;"
        }
    .end annotation
.end field

.field private maxnum1:I

.field private maxnum2:I

.field private regist:Lcom/cymobile/ymwork/types/Group;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cymobile/ymwork/types/Group",
            "<",
            "Lcom/cymobile/ymwork/types/VisitorvolumeReport;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Lcom/cymobile/ymwork/types/DataItemBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getItems()Lcom/cymobile/ymwork/types/Group;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cymobile/ymwork/types/Group",
            "<",
            "Lcom/cymobile/ymwork/types/VisitorvolumeReport;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lcom/cymobile/ymwork/types/VisitorvolumeReports;->count:Lcom/cymobile/ymwork/types/Group;

    return-object v0
.end method

.method public getItems_regist()Lcom/cymobile/ymwork/types/Group;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cymobile/ymwork/types/Group",
            "<",
            "Lcom/cymobile/ymwork/types/VisitorvolumeReport;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lcom/cymobile/ymwork/types/VisitorvolumeReports;->regist:Lcom/cymobile/ymwork/types/Group;

    return-object v0
.end method

.method public getMaxnum1()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/cymobile/ymwork/types/VisitorvolumeReports;->maxnum1:I

    return v0
.end method

.method public getMaxnum2()I
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lcom/cymobile/ymwork/types/VisitorvolumeReports;->maxnum2:I

    return v0
.end method

.method public setItems(Lcom/cymobile/ymwork/types/Group;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cymobile/ymwork/types/Group",
            "<",
            "Lcom/cymobile/ymwork/types/VisitorvolumeReport;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, count:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/VisitorvolumeReport;>;"
    iput-object p1, p0, Lcom/cymobile/ymwork/types/VisitorvolumeReports;->count:Lcom/cymobile/ymwork/types/Group;

    .line 30
    return-void
.end method

.method public setItems_regist(Lcom/cymobile/ymwork/types/Group;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cymobile/ymwork/types/Group",
            "<",
            "Lcom/cymobile/ymwork/types/VisitorvolumeReport;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, regist:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/VisitorvolumeReport;>;"
    iput-object p1, p0, Lcom/cymobile/ymwork/types/VisitorvolumeReports;->regist:Lcom/cymobile/ymwork/types/Group;

    .line 36
    return-void
.end method

.method public setMaxnum1(I)V
    .locals 0
    .parameter "maxnum1"

    .prologue
    .line 23
    iput p1, p0, Lcom/cymobile/ymwork/types/VisitorvolumeReports;->maxnum1:I

    .line 24
    return-void
.end method

.method public setMaxnum2(I)V
    .locals 0
    .parameter "maxnum2"

    .prologue
    .line 17
    iput p1, p0, Lcom/cymobile/ymwork/types/VisitorvolumeReports;->maxnum2:I

    .line 18
    return-void
.end method
