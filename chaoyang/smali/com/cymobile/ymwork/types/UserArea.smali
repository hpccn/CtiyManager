.class public Lcom/cymobile/ymwork/types/UserArea;
.super Lcom/cymobile/ymwork/types/DataItemBase;
.source "UserArea.java"

# interfaces
.implements Lcom/cymobile/ymwork/types/BaseType;


# instance fields
.field private AreaName:Ljava/lang/String;

.field private BIANJIE:Ljava/lang/String;

.field private GEOX:D

.field private GEOY:D

.field private LEFTDOWNX:D

.field private LEFTDOWNY:D

.field private RIGHTUPX:D

.field private RIGHTUPY:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/cymobile/ymwork/types/DataItemBase;-><init>()V

    return-void
.end method


# virtual methods
.method public geRIGHTUPX()D
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/cymobile/ymwork/types/UserArea;->RIGHTUPX:D

    return-wide v0
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/cymobile/ymwork/types/UserArea;->AreaName:Ljava/lang/String;

    return-object v0
.end method

.method public getBIANJIE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/cymobile/ymwork/types/UserArea;->BIANJIE:Ljava/lang/String;

    return-object v0
.end method

.method public getGEOX()D
    .locals 2

    .prologue
    .line 24
    iget-wide v0, p0, Lcom/cymobile/ymwork/types/UserArea;->GEOX:D

    return-wide v0
.end method

.method public getGEOY()D
    .locals 2

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/cymobile/ymwork/types/UserArea;->GEOY:D

    return-wide v0
.end method

.method public getLEFTDOWNX()D
    .locals 2

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/cymobile/ymwork/types/UserArea;->LEFTDOWNX:D

    return-wide v0
.end method

.method public getLEFTDOWNY()D
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/cymobile/ymwork/types/UserArea;->LEFTDOWNY:D

    return-wide v0
.end method

.method public getRIGHTUPY()D
    .locals 2

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/cymobile/ymwork/types/UserArea;->RIGHTUPY:D

    return-wide v0
.end method

.method public setAreaName(Ljava/lang/String;)V
    .locals 0
    .parameter "vAreaName"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/cymobile/ymwork/types/UserArea;->AreaName:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setBIANJIE(Ljava/lang/String;)V
    .locals 0
    .parameter "vBIANJIE"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/cymobile/ymwork/types/UserArea;->BIANJIE:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setGEOX(D)V
    .locals 0
    .parameter "vGEOX"

    .prologue
    .line 28
    iput-wide p1, p0, Lcom/cymobile/ymwork/types/UserArea;->GEOX:D

    .line 29
    return-void
.end method

.method public setGEOY(D)V
    .locals 0
    .parameter "vGEOY"

    .prologue
    .line 36
    iput-wide p1, p0, Lcom/cymobile/ymwork/types/UserArea;->GEOY:D

    .line 37
    return-void
.end method

.method public setLEFTDOWNX(D)V
    .locals 0
    .parameter "vLEFTDOWNX"

    .prologue
    .line 44
    iput-wide p1, p0, Lcom/cymobile/ymwork/types/UserArea;->LEFTDOWNX:D

    .line 45
    return-void
.end method

.method public setLEFTDOWNY(D)V
    .locals 0
    .parameter "vLEFTDOWNY"

    .prologue
    .line 52
    iput-wide p1, p0, Lcom/cymobile/ymwork/types/UserArea;->LEFTDOWNY:D

    .line 53
    return-void
.end method

.method public setRIGHTUPX(D)V
    .locals 0
    .parameter "vRIGHTUPX"

    .prologue
    .line 60
    iput-wide p1, p0, Lcom/cymobile/ymwork/types/UserArea;->RIGHTUPX:D

    .line 61
    return-void
.end method

.method public setRIGHTUPY(D)V
    .locals 0
    .parameter "vRIGHTUPY"

    .prologue
    .line 68
    iput-wide p1, p0, Lcom/cymobile/ymwork/types/UserArea;->RIGHTUPY:D

    .line 69
    return-void
.end method
