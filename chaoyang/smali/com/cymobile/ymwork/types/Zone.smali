.class public Lcom/cymobile/ymwork/types/Zone;
.super Lcom/cymobile/ymwork/types/DataItemBase;
.source "Zone.java"

# interfaces
.implements Lcom/cymobile/ymwork/types/BaseType;


# instance fields
.field public cityOrSuburb:I

.field public pid:Ljava/lang/String;

.field private zoneName:Ljava/lang/String;

.field private zoneid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/cymobile/ymwork/types/DataItemBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getCityOrSuburb()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/cymobile/ymwork/types/Zone;->cityOrSuburb:I

    return v0
.end method

.method public getPid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/cymobile/ymwork/types/Zone;->pid:Ljava/lang/String;

    return-object v0
.end method

.method public getZoneName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/cymobile/ymwork/types/Zone;->zoneName:Ljava/lang/String;

    return-object v0
.end method

.method public getZoneid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7
    iget-object v0, p0, Lcom/cymobile/ymwork/types/Zone;->zoneid:Ljava/lang/String;

    return-object v0
.end method

.method public setCityOrSuburb(I)V
    .locals 0
    .parameter "cityOrSuburb"

    .prologue
    .line 32
    iput p1, p0, Lcom/cymobile/ymwork/types/Zone;->cityOrSuburb:I

    .line 33
    return-void
.end method

.method public setPid(Ljava/lang/String;)V
    .locals 0
    .parameter "pid"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/cymobile/ymwork/types/Zone;->pid:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setZoneName(Ljava/lang/String;)V
    .locals 0
    .parameter "zn"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/cymobile/ymwork/types/Zone;->zoneName:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public setZoneid(Ljava/lang/String;)V
    .locals 0
    .parameter "zoneid"

    .prologue
    .line 10
    iput-object p1, p0, Lcom/cymobile/ymwork/types/Zone;->zoneid:Ljava/lang/String;

    .line 11
    return-void
.end method
