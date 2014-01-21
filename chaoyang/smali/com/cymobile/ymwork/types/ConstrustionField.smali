.class public Lcom/cymobile/ymwork/types/ConstrustionField;
.super Lcom/cymobile/ymwork/types/DataItemBase;
.source "ConstrustionField.java"

# interfaces
.implements Lcom/cymobile/ymwork/types/BaseType;


# instance fields
.field private affactearea:Ljava/lang/String;

.field private bigCategory:Ljava/lang/String;

.field private buildingreplydatetime:J

.field private caseType:Ljava/lang/String;

.field private case_type_id:Ljava/lang/String;

.field private casedescription:Ljava/lang/String;

.field private casedetail:Ljava/lang/String;

.field private caseid:Ljava/lang/String;

.field private casestate:Ljava/lang/String;

.field private classids:I

.field private community:Ljava/lang/String;

.field private geox:Ljava/lang/String;

.field private geoy:Ljava/lang/String;

.field private grid:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private image:Ljava/lang/String;

.field img:Ljava/lang/String;

.field img1:Ljava/lang/String;

.field private iswangge:I

.field private lastReply:Lcom/cymobile/ymwork/types/Reply;

.field private leftdownx:Ljava/lang/String;

.field private leftdowny:Ljava/lang/String;

.field private location:Ljava/lang/String;

.field private object_id:Ljava/lang/String;

.field private object_name:Ljava/lang/String;

.field private reportmethod:Ljava/lang/String;

.field private reporttime:Ljava/lang/String;

.field private rightupx:Ljava/lang/String;

.field private rightupy:Ljava/lang/String;

.field private smallCategory:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/cymobile/ymwork/types/DataItemBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getAffactearea()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/cymobile/ymwork/types/ConstrustionField;->affactearea:Ljava/lang/String;

    return-object v0
.end method

.method public getBigCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/cymobile/ymwork/types/ConstrustionField;->bigCategory:Ljava/lang/String;

    return-object v0
.end method

.method public getBuildingreplydatetime()J
    .locals 2

    .prologue
    .line 164
    iget-wide v0, p0, Lcom/cymobile/ymwork/types/ConstrustionField;->buildingreplydatetime:J

    return-wide v0
.end method

.method public getCaseType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/cymobile/ymwork/types/ConstrustionField;->caseType:Ljava/lang/String;

    return-object v0
.end method

.method public getCase_type_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/cymobile/ymwork/types/ConstrustionField;->case_type_id:Ljava/lang/String;

    return-object v0
.end method

.method public getCasedescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/cymobile/ymwork/types/ConstrustionField;->casedescription:Ljava/lang/String;

    return-object v0
.end method

.method public getCasedetail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/cymobile/ymwork/types/ConstrustionField;->casedetail:Ljava/lang/String;

    return-object v0
.end method

.method public getCaseid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/cymobile/ymwork/types/ConstrustionField;->caseid:Ljava/lang/String;

    return-object v0
.end method

.method public getCasestate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/cymobile/ymwork/types/ConstrustionField;->casestate:Ljava/lang/String;

    return-object v0
.end method

.method public getClassids()I
    .locals 1

    .prologue
    .line 237
    iget v0, p0, Lcom/cymobile/ymwork/types/ConstrustionField;->classids:I

    return v0
.end method

.method public getCommunity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/cymobile/ymwork/types/ConstrustionField;->community:Ljava/lang/String;

    return-object v0
.end method

.method public getDistance()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    const-string v0, "12"

    return-object v0
.end method

.method public getGeox()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/cymobile/ymwork/types/ConstrustionField;->geox:Ljava/lang/String;

    return-object v0
.end method

.method public getGeoy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/cymobile/ymwork/types/ConstrustionField;->geoy:Ljava/lang/String;

    return-object v0
.end method

.method public getGrid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/cymobile/ymwork/types/ConstrustionField;->grid:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/cymobile/ymwork/types/ConstrustionField;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImgUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 257
    iget-object v2, p0, Lcom/cymobile/ymwork/types/ConstrustionField;->img:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/cymobile/ymwork/types/ConstrustionField;->img:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/cymobile/ymwork/types/ConstrustionField;->img:Ljava/lang/String;

    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 259
    :try_start_0
    const-string v1, ""

    .line 261
    .local v1, mApiBaseUrl:Ljava/lang/String;
    const-string v1, "http://203.86.54.62:8080"

    .line 266
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/workclass/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cymobile/ymwork/types/ConstrustionField;->img:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 272
    .end local v1           #mApiBaseUrl:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 267
    :catch_0
    move-exception v0

    .line 268
    .local v0, ee:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 269
    iget-object v2, p0, Lcom/cymobile/ymwork/types/ConstrustionField;->img:Ljava/lang/String;

    goto :goto_0

    .line 272
    .end local v0           #ee:Ljava/lang/Exception;
    :cond_0
    iget-object v2, p0, Lcom/cymobile/ymwork/types/ConstrustionField;->img:Ljava/lang/String;

    goto :goto_0
.end method

.method public getImgUrl1()Ljava/lang/String;
    .locals 4

    .prologue
    .line 286
    iget-object v2, p0, Lcom/cymobile/ymwork/types/ConstrustionField;->img1:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 288
    :try_start_0
    const-string v1, ""

    .line 290
    .local v1, mApiBaseUrl:Ljava/lang/String;
    const-string v1, "http://203.86.54.62:8080"

    .line 295
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/workclass/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cymobile/ymwork/types/ConstrustionField;->img1:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 301
    .end local v1           #mApiBaseUrl:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 296
    :catch_0
    move-exception v0

    .line 297
    .local v0, ee:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 298
    iget-object v2, p0, Lcom/cymobile/ymwork/types/ConstrustionField;->img1:Ljava/lang/String;

    goto :goto_0

    .line 301
    .end local v0           #ee:Ljava/lang/Exception;
    :cond_0
    iget-object v2, p0, Lcom/cymobile/ymwork/types/ConstrustionField;->img1:Ljava/lang/String;

    goto :goto_0
.end method

.method public getIsWange()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 173
    iget v1, p0, Lcom/cymobile/ymwork/types/ConstrustionField;->iswangge:I

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
    .line 38
    iget-object v0, p0, Lcom/cymobile/ymwork/types/ConstrustionField;->lastReply:Lcom/cymobile/ymwork/types/Reply;

    return-object v0
.end method

.method public getLeftdownx()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/cymobile/ymwork/types/ConstrustionField;->leftdownx:Ljava/lang/String;

    return-object v0
.end method

.method public getLeftdowny()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/cymobile/ymwork/types/ConstrustionField;->leftdowny:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/cymobile/ymwork/types/ConstrustionField;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getObject_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/cymobile/ymwork/types/ConstrustionField;->object_id:Ljava/lang/String;

    return-object v0
.end method

.method public getObject_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/cymobile/ymwork/types/ConstrustionField;->object_name:Ljava/lang/String;

    return-object v0
.end method

.method public getReportmethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/cymobile/ymwork/types/ConstrustionField;->reportmethod:Ljava/lang/String;

    return-object v0
.end method

.method public getReporttime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/cymobile/ymwork/types/ConstrustionField;->reporttime:Ljava/lang/String;

    return-object v0
.end method

.method public getRightupx()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/cymobile/ymwork/types/ConstrustionField;->rightupx:Ljava/lang/String;

    return-object v0
.end method

.method public getRightupy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/cymobile/ymwork/types/ConstrustionField;->rightupy:Ljava/lang/String;

    return-object v0
.end method

.method public getSmallCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/cymobile/ymwork/types/ConstrustionField;->smallCategory:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/cymobile/ymwork/types/ConstrustionField;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setAffactearea(Ljava/lang/String;)V
    .locals 0
    .parameter "affactearea"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/cymobile/ymwork/types/ConstrustionField;->affactearea:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setBigCategory(Ljava/lang/String;)V
    .locals 0
    .parameter "bigCategory"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/cymobile/ymwork/types/ConstrustionField;->bigCategory:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setBuildingreplydatetime(J)V
    .locals 0
    .parameter "buildingreplydatetime"

    .prologue
    .line 168
    iput-wide p1, p0, Lcom/cymobile/ymwork/types/ConstrustionField;->buildingreplydatetime:J

    .line 169
    return-void
.end method

.method public setCaseType(Ljava/lang/String;)V
    .locals 0
    .parameter "caseType"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/cymobile/ymwork/types/ConstrustionField;->caseType:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setCase_type_id(Ljava/lang/String;)V
    .locals 0
    .parameter "case_type_id"

    .prologue
    .line 233
    iput-object p1, p0, Lcom/cymobile/ymwork/types/ConstrustionField;->case_type_id:Ljava/lang/String;

    .line 234
    return-void
.end method

.method public setCasedescription(Ljava/lang/String;)V
    .locals 0
    .parameter "casedescription"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/cymobile/ymwork/types/ConstrustionField;->casedescription:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setCasedetail(Ljava/lang/String;)V
    .locals 0
    .parameter "casedetail"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/cymobile/ymwork/types/ConstrustionField;->casedetail:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setCaseid(Ljava/lang/String;)V
    .locals 0
    .parameter "caseid"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/cymobile/ymwork/types/ConstrustionField;->caseid:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setCasestate(Ljava/lang/String;)V
    .locals 0
    .parameter "casestate"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/cymobile/ymwork/types/ConstrustionField;->casestate:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setClassids(I)V
    .locals 0
    .parameter "classids"

    .prologue
    .line 241
    iput p1, p0, Lcom/cymobile/ymwork/types/ConstrustionField;->classids:I

    .line 242
    return-void
.end method

.method public setCommunity(Ljava/lang/String;)V
    .locals 0
    .parameter "community"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/cymobile/ymwork/types/ConstrustionField;->community:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setGeox(Ljava/lang/String;)V
    .locals 0
    .parameter "geox"

    .prologue
    .line 160
    iput-object p1, p0, Lcom/cymobile/ymwork/types/ConstrustionField;->geox:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public setGeoy(Ljava/lang/String;)V
    .locals 0
    .parameter "geoy"

    .prologue
    .line 249
    iput-object p1, p0, Lcom/cymobile/ymwork/types/ConstrustionField;->geoy:Ljava/lang/String;

    .line 250
    return-void
.end method

.method public setGrid(Ljava/lang/String;)V
    .locals 0
    .parameter "grid"

    .prologue
    .line 136
    iput-object p1, p0, Lcom/cymobile/ymwork/types/ConstrustionField;->grid:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/cymobile/ymwork/types/ConstrustionField;->id:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setImgUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "i"

    .prologue
    .line 278
    iput-object p1, p0, Lcom/cymobile/ymwork/types/ConstrustionField;->img:Ljava/lang/String;

    .line 279
    return-void
.end method

.method public setImgUrl1(Ljava/lang/String;)V
    .locals 0
    .parameter "i"

    .prologue
    .line 305
    iput-object p1, p0, Lcom/cymobile/ymwork/types/ConstrustionField;->img1:Ljava/lang/String;

    .line 306
    return-void
.end method

.method public setIswangge(I)V
    .locals 0
    .parameter "iswangge"

    .prologue
    .line 177
    iput p1, p0, Lcom/cymobile/ymwork/types/ConstrustionField;->iswangge:I

    .line 178
    return-void
.end method

.method public setLastReply(Lcom/cymobile/ymwork/types/Reply;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/cymobile/ymwork/types/ConstrustionField;->lastReply:Lcom/cymobile/ymwork/types/Reply;

    .line 42
    return-void
.end method

.method public setLeftdownx(Ljava/lang/String;)V
    .locals 0
    .parameter "leftdownx"

    .prologue
    .line 185
    iput-object p1, p0, Lcom/cymobile/ymwork/types/ConstrustionField;->leftdownx:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public setLeftdowny(Ljava/lang/String;)V
    .locals 0
    .parameter "leftdowny"

    .prologue
    .line 193
    iput-object p1, p0, Lcom/cymobile/ymwork/types/ConstrustionField;->leftdowny:Ljava/lang/String;

    .line 194
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0
    .parameter "location"

    .prologue
    .line 152
    iput-object p1, p0, Lcom/cymobile/ymwork/types/ConstrustionField;->location:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setObject_id(Ljava/lang/String;)V
    .locals 0
    .parameter "object_id"

    .prologue
    .line 217
    iput-object p1, p0, Lcom/cymobile/ymwork/types/ConstrustionField;->object_id:Ljava/lang/String;

    .line 218
    return-void
.end method

.method public setObject_name(Ljava/lang/String;)V
    .locals 0
    .parameter "object_name"

    .prologue
    .line 225
    iput-object p1, p0, Lcom/cymobile/ymwork/types/ConstrustionField;->object_name:Ljava/lang/String;

    .line 226
    return-void
.end method

.method public setReportmethod(Ljava/lang/String;)V
    .locals 0
    .parameter "reportmethod"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/cymobile/ymwork/types/ConstrustionField;->reportmethod:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setReporttime(Ljava/lang/String;)V
    .locals 0
    .parameter "reporttime"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/cymobile/ymwork/types/ConstrustionField;->reporttime:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setRightupx(Ljava/lang/String;)V
    .locals 0
    .parameter "rightupx"

    .prologue
    .line 201
    iput-object p1, p0, Lcom/cymobile/ymwork/types/ConstrustionField;->rightupx:Ljava/lang/String;

    .line 202
    return-void
.end method

.method public setRightupy(Ljava/lang/String;)V
    .locals 0
    .parameter "rightupy"

    .prologue
    .line 209
    iput-object p1, p0, Lcom/cymobile/ymwork/types/ConstrustionField;->rightupy:Ljava/lang/String;

    .line 210
    return-void
.end method

.method public setSmallCategory(Ljava/lang/String;)V
    .locals 0
    .parameter "smallCategory"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/cymobile/ymwork/types/ConstrustionField;->smallCategory:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/cymobile/ymwork/types/ConstrustionField;->type:Ljava/lang/String;

    .line 82
    return-void
.end method
