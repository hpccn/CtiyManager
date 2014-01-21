.class public Lcom/amap/api/search/route/DriveWalkSegment;
.super Lcom/amap/api/search/route/Segment;
.source "DriveWalkSegment.java"


# static fields
.field public static final NoAction:I = -0x1


# instance fields
.field protected mActionCode:I

.field protected mActionDes:Ljava/lang/String;

.field protected mDirection:Ljava/lang/String;

.field protected mRoadName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/amap/api/search/route/Segment;-><init>()V

    .line 21
    return-void
.end method


# virtual methods
.method public getActionCode()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/amap/api/search/route/DriveWalkSegment;->mActionCode:I

    return v0
.end method

.method public getActionDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/amap/api/search/route/DriveWalkSegment;->mActionDes:Ljava/lang/String;

    return-object v0
.end method

.method public getDirection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/amap/api/search/route/DriveWalkSegment;->mDirection:Ljava/lang/String;

    return-object v0
.end method

.method public getRoadName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/amap/api/search/route/DriveWalkSegment;->mRoadName:Ljava/lang/String;

    return-object v0
.end method

.method public setActionCode(I)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput p1, p0, Lcom/amap/api/search/route/DriveWalkSegment;->mActionCode:I

    .line 37
    return-void
.end method

.method public setActionDescription(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/amap/api/search/route/DriveWalkSegment;->mActionDes:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setDirection(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 16
    iput-object p1, p0, Lcom/amap/api/search/route/DriveWalkSegment;->mDirection:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public setRoadName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/amap/api/search/route/DriveWalkSegment;->mRoadName:Ljava/lang/String;

    .line 45
    return-void
.end method
