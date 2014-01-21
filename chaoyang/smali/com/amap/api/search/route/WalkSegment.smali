.class public Lcom/amap/api/search/route/WalkSegment;
.super Lcom/amap/api/search/route/DriveWalkSegment;
.source "WalkSegment.java"


# instance fields
.field protected mAccessorialInfo:Ljava/lang/String;

.field protected mTextInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/amap/api/search/route/DriveWalkSegment;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessorialInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/amap/api/search/route/WalkSegment;->mAccessorialInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getTextInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8
    iget-object v0, p0, Lcom/amap/api/search/route/WalkSegment;->mTextInfo:Ljava/lang/String;

    return-object v0
.end method

.method public setAccessorialInfo(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    iput-object p1, p0, Lcom/amap/api/search/route/WalkSegment;->mAccessorialInfo:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setTextInfo(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 12
    iput-object p1, p0, Lcom/amap/api/search/route/WalkSegment;->mTextInfo:Ljava/lang/String;

    .line 13
    return-void
.end method
