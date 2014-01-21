.class public Lcom/cymobile/ymwork/types/VisitorvolumeReport;
.super Lcom/cymobile/ymwork/types/DataItemBase;
.source "VisitorvolumeReport.java"

# interfaces
.implements Lcom/cymobile/ymwork/types/BaseType;


# instance fields
.field private registTime:Ljava/lang/String;

.field private registTimes:Ljava/lang/String;

.field private time:Ljava/lang/String;

.field private times:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Lcom/cymobile/ymwork/types/DataItemBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getRegistTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/cymobile/ymwork/types/VisitorvolumeReport;->registTime:Ljava/lang/String;

    return-object v0
.end method

.method public getRegistTimes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/cymobile/ymwork/types/VisitorvolumeReport;->registTimes:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/cymobile/ymwork/types/VisitorvolumeReport;->time:Ljava/lang/String;

    return-object v0
.end method

.method public getTimes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/cymobile/ymwork/types/VisitorvolumeReport;->times:Ljava/lang/String;

    return-object v0
.end method

.method public setRegistTime(Ljava/lang/String;)V
    .locals 0
    .parameter "registTime"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/cymobile/ymwork/types/VisitorvolumeReport;->registTime:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setRegistTimes(Ljava/lang/String;)V
    .locals 0
    .parameter "registTimes"

    .prologue
    .line 16
    iput-object p1, p0, Lcom/cymobile/ymwork/types/VisitorvolumeReport;->registTimes:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0
    .parameter "time"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/cymobile/ymwork/types/VisitorvolumeReport;->time:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setTimes(Ljava/lang/String;)V
    .locals 0
    .parameter "times"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/cymobile/ymwork/types/VisitorvolumeReport;->times:Ljava/lang/String;

    .line 35
    return-void
.end method
