.class public Lcom/cymobile/ymwork/types/Building;
.super Lcom/cymobile/ymwork/types/DataItemBase;
.source "Building.java"

# interfaces
.implements Lcom/cymobile/ymwork/types/BaseType;


# instance fields
.field private affectArea:Ljava/lang/String;

.field private affixNum:Ljava/lang/String;

.field private bigCategory:Ljava/lang/String;

.field private caseDescription:Ljava/lang/String;

.field private caseDetail:Ljava/lang/String;

.field private caseId:Ljava/lang/String;

.field private caseState:Ljava/lang/String;

.field private caseType:Ljava/lang/String;

.field private classid:I

.field private community:Ljava/lang/String;

.field private geox:Ljava/lang/String;

.field private geoy:Ljava/lang/String;

.field private grid:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field img:Ljava/lang/String;

.field img1:Ljava/lang/String;

.field private isWange:I

.field private lastReply:Lcom/cymobile/ymwork/types/Reply;

.field private location:Ljava/lang/String;

.field private region:Ljava/lang/String;

.field private reportMethod:Ljava/lang/String;

.field private reportTime:J

.field private reporterNumber:Ljava/lang/String;

.field private smallCategory:Ljava/lang/String;

.field private street:Ljava/lang/String;

.field private system:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/cymobile/ymwork/types/DataItemBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getAffectArea()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/cymobile/ymwork/types/Building;->affectArea:Ljava/lang/String;

    return-object v0
.end method

.method public getAffixNum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/cymobile/ymwork/types/Building;->affixNum:Ljava/lang/String;

    return-object v0
.end method

.method public getBigCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/cymobile/ymwork/types/Building;->bigCategory:Ljava/lang/String;

    return-object v0
.end method

.method public getCaseDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/cymobile/ymwork/types/Building;->caseDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getCaseDetail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/cymobile/ymwork/types/Building;->caseDetail:Ljava/lang/String;

    return-object v0
.end method

.method public getCaseId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/cymobile/ymwork/types/Building;->caseId:Ljava/lang/String;

    return-object v0
.end method

.method public getCaseState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/cymobile/ymwork/types/Building;->caseState:Ljava/lang/String;

    return-object v0
.end method

.method public getCaseType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/cymobile/ymwork/types/Building;->caseType:Ljava/lang/String;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    const-string v0, ""

    return-object v0
.end method

.method public getCommunity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/cymobile/ymwork/types/Building;->community:Ljava/lang/String;

    return-object v0
.end method

.method public getDistance()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    const-string v0, "12"

    return-object v0
.end method

.method public getGeoX()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/cymobile/ymwork/types/Building;->geox:Ljava/lang/String;

    return-object v0
.end method

.method public getGeoY()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/cymobile/ymwork/types/Building;->geoy:Ljava/lang/String;

    return-object v0
.end method

.method public getGrid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/cymobile/ymwork/types/Building;->grid:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/cymobile/ymwork/types/Building;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImgUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 185
    iget-object v2, p0, Lcom/cymobile/ymwork/types/Building;->img:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/cymobile/ymwork/types/Building;->img:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/cymobile/ymwork/types/Building;->img:Ljava/lang/String;

    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 187
    :try_start_0
    const-string v1, ""

    .line 189
    .local v1, mApiBaseUrl:Ljava/lang/String;
    const-string v1, "http://203.86.54.62:8080"

    .line 193
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/workimage/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cymobile/ymwork/types/Building;->img:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 199
    .end local v1           #mApiBaseUrl:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, ee:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 196
    iget-object v2, p0, Lcom/cymobile/ymwork/types/Building;->img:Ljava/lang/String;

    goto :goto_0

    .line 199
    .end local v0           #ee:Ljava/lang/Exception;
    :cond_0
    iget-object v2, p0, Lcom/cymobile/ymwork/types/Building;->img:Ljava/lang/String;

    goto :goto_0
.end method

.method public getImgUrl1()Ljava/lang/String;
    .locals 4

    .prologue
    .line 208
    iget-object v2, p0, Lcom/cymobile/ymwork/types/Building;->img1:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 210
    :try_start_0
    const-string v1, ""

    .line 212
    .local v1, mApiBaseUrl:Ljava/lang/String;
    const-string v1, "http://203.86.54.62:8080"

    .line 216
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/workimage/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cymobile/ymwork/types/Building;->img1:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 222
    .end local v1           #mApiBaseUrl:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, ee:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 219
    iget-object v2, p0, Lcom/cymobile/ymwork/types/Building;->img1:Ljava/lang/String;

    goto :goto_0

    .line 222
    .end local v0           #ee:Ljava/lang/Exception;
    :cond_0
    iget-object v2, p0, Lcom/cymobile/ymwork/types/Building;->img1:Ljava/lang/String;

    goto :goto_0
.end method

.method public getIsWange()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 49
    iget v1, p0, Lcom/cymobile/ymwork/types/Building;->isWange:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLastReply()Lcom/cymobile/ymwork/types/Reply;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/cymobile/ymwork/types/Building;->lastReply:Lcom/cymobile/ymwork/types/Reply;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/cymobile/ymwork/types/Building;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/cymobile/ymwork/types/Building;->region:Ljava/lang/String;

    return-object v0
.end method

.method public getReportMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/cymobile/ymwork/types/Building;->reportMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getReportTime()J
    .locals 2

    .prologue
    .line 109
    iget-wide v0, p0, Lcom/cymobile/ymwork/types/Building;->reportTime:J

    return-wide v0
.end method

.method public getReporterNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/cymobile/ymwork/types/Building;->reporterNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getShortaddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    const-string v0, ""

    return-object v0
.end method

.method public getSmallCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/cymobile/ymwork/types/Building;->smallCategory:Ljava/lang/String;

    return-object v0
.end method

.method public getStreet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/cymobile/ymwork/types/Building;->street:Ljava/lang/String;

    return-object v0
.end method

.method public getSystem()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/cymobile/ymwork/types/Building;->system:Ljava/lang/String;

    return-object v0
.end method

.method public getclassid()I
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Lcom/cymobile/ymwork/types/Building;->classid:I

    return v0
.end method

.method public setAffectArea(Ljava/lang/String;)V
    .locals 0
    .parameter "affectArea"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/cymobile/ymwork/types/Building;->affectArea:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public setAffixNum(Ljava/lang/String;)V
    .locals 0
    .parameter "affixNum"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/cymobile/ymwork/types/Building;->affixNum:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setBigCategory(Ljava/lang/String;)V
    .locals 0
    .parameter "bigCategory"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/cymobile/ymwork/types/Building;->bigCategory:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setCaseDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "caseDescription"

    .prologue
    .line 154
    iput-object p1, p0, Lcom/cymobile/ymwork/types/Building;->caseDescription:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public setCaseDetail(Ljava/lang/String;)V
    .locals 0
    .parameter "caseDetail"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/cymobile/ymwork/types/Building;->caseDetail:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setCaseId(Ljava/lang/String;)V
    .locals 0
    .parameter "caseId"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/cymobile/ymwork/types/Building;->caseId:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setCaseState(Ljava/lang/String;)V
    .locals 0
    .parameter "caseState"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/cymobile/ymwork/types/Building;->caseState:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setCaseType(Ljava/lang/String;)V
    .locals 0
    .parameter "caseType"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/cymobile/ymwork/types/Building;->caseType:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setCommunity(Ljava/lang/String;)V
    .locals 0
    .parameter "community"

    .prologue
    .line 142
    iput-object p1, p0, Lcom/cymobile/ymwork/types/Building;->community:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public setGeoX(Ljava/lang/String;)V
    .locals 0
    .parameter "geox"

    .prologue
    .line 172
    iput-object p1, p0, Lcom/cymobile/ymwork/types/Building;->geox:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public setGeoY(Ljava/lang/String;)V
    .locals 0
    .parameter "geoy"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/cymobile/ymwork/types/Building;->geoy:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public setGrid(Ljava/lang/String;)V
    .locals 0
    .parameter "grid"

    .prologue
    .line 148
    iput-object p1, p0, Lcom/cymobile/ymwork/types/Building;->grid:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/cymobile/ymwork/types/Building;->id:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setImgUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "i"

    .prologue
    .line 203
    iput-object p1, p0, Lcom/cymobile/ymwork/types/Building;->img:Ljava/lang/String;

    .line 204
    return-void
.end method

.method public setImgUrl1(Ljava/lang/String;)V
    .locals 0
    .parameter "i"

    .prologue
    .line 225
    iput-object p1, p0, Lcom/cymobile/ymwork/types/Building;->img1:Ljava/lang/String;

    .line 226
    return-void
.end method

.method public setIsWange(I)V
    .locals 0
    .parameter "isWange"

    .prologue
    .line 52
    iput p1, p0, Lcom/cymobile/ymwork/types/Building;->isWange:I

    .line 53
    return-void
.end method

.method public setLastReply(Lcom/cymobile/ymwork/types/Reply;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/cymobile/ymwork/types/Building;->lastReply:Lcom/cymobile/ymwork/types/Reply;

    .line 47
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0
    .parameter "location"

    .prologue
    .line 160
    iput-object p1, p0, Lcom/cymobile/ymwork/types/Building;->location:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public setRegion(Ljava/lang/String;)V
    .locals 0
    .parameter "region"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/cymobile/ymwork/types/Building;->region:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setReportMethod(Ljava/lang/String;)V
    .locals 0
    .parameter "reportMethod"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/cymobile/ymwork/types/Building;->reportMethod:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setReportTime(J)V
    .locals 0
    .parameter "reportTime"

    .prologue
    .line 112
    iput-wide p1, p0, Lcom/cymobile/ymwork/types/Building;->reportTime:J

    .line 113
    return-void
.end method

.method public setReporterNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "reporterNumber"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/cymobile/ymwork/types/Building;->reporterNumber:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setSmallCategory(Ljava/lang/String;)V
    .locals 0
    .parameter "smallCategory"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/cymobile/ymwork/types/Building;->smallCategory:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setStreet(Ljava/lang/String;)V
    .locals 0
    .parameter "street"

    .prologue
    .line 136
    iput-object p1, p0, Lcom/cymobile/ymwork/types/Building;->street:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setSystem(Ljava/lang/String;)V
    .locals 0
    .parameter "system"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/cymobile/ymwork/types/Building;->system:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setclassid(I)V
    .locals 0
    .parameter "i"

    .prologue
    .line 235
    iput p1, p0, Lcom/cymobile/ymwork/types/Building;->classid:I

    .line 236
    return-void
.end method
