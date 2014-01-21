.class public Lcom/cymobile/ymwork/server/parsers/json/BuildingParser;
.super Lcom/cymobile/ymwork/server/parsers/json/AbstractParser;
.source "BuildingParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cymobile/ymwork/server/parsers/json/AbstractParser",
        "<",
        "Lcom/cymobile/ymwork/types/Building;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/cymobile/ymwork/server/parsers/json/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic parse(Lorg/json/JSONObject;)Lcom/cymobile/ymwork/types/BaseType;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/server/parsers/json/BuildingParser;->parse(Lorg/json/JSONObject;)Lcom/cymobile/ymwork/types/Building;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lorg/json/JSONObject;)Lcom/cymobile/ymwork/types/Building;
    .locals 7
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const-wide/32 v5, 0x1b77400

    .line 13
    const/4 v0, 0x0

    .line 14
    .local v0, building:Lcom/cymobile/ymwork/types/Building;
    if-eqz p1, :cond_1e

    .line 15
    new-instance v0, Lcom/cymobile/ymwork/types/Building;

    .end local v0           #building:Lcom/cymobile/ymwork/types/Building;
    invoke-direct {v0}, Lcom/cymobile/ymwork/types/Building;-><init>()V

    .line 16
    .restart local v0       #building:Lcom/cymobile/ymwork/types/Building;
    const-string v3, "id"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 17
    const-string v3, "id"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cymobile/ymwork/types/Building;->setId(Ljava/lang/String;)V

    .line 19
    :cond_0
    const-string v3, "system"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 20
    const-string v3, "system"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cymobile/ymwork/types/Building;->setSystem(Ljava/lang/String;)V

    .line 22
    :cond_1
    const-string v3, "caseid"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 23
    const-string v3, "caseid"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cymobile/ymwork/types/Building;->setCaseId(Ljava/lang/String;)V

    .line 25
    :cond_2
    const-string v3, "casetype"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 26
    const-string v3, "casetype"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cymobile/ymwork/types/Building;->setCaseType(Ljava/lang/String;)V

    .line 28
    :cond_3
    const-string v3, "bigcategory"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 29
    const-string v3, "bigcategory"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cymobile/ymwork/types/Building;->setBigCategory(Ljava/lang/String;)V

    .line 31
    :cond_4
    const-string v3, "smallcategory"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 32
    const-string v3, "smallcategory"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cymobile/ymwork/types/Building;->setSmallCategory(Ljava/lang/String;)V

    .line 34
    :cond_5
    const-string v3, "casedetail"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 35
    const-string v3, "casedetail"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cymobile/ymwork/types/Building;->setCaseDetail(Ljava/lang/String;)V

    .line 37
    :cond_6
    const-string v3, "reportmethod"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 38
    const-string v3, "reportmethod"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cymobile/ymwork/types/Building;->setReportMethod(Ljava/lang/String;)V

    .line 40
    :cond_7
    const-string v3, "buildingreplydatetime"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 41
    const-string v3, "buildingreplydatetime"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    sub-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Lcom/cymobile/ymwork/types/Building;->setReportTime(J)V

    .line 44
    :cond_8
    :try_start_0
    const-string v3, "reportdatetime"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 45
    const-string v3, "reportdatetime"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    sub-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Lcom/cymobile/ymwork/types/Building;->setReportTime(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :cond_9
    :goto_0
    const-string v3, "affixnum"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 51
    const-string v3, "affixnum"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cymobile/ymwork/types/Building;->setAffixNum(Ljava/lang/String;)V

    .line 53
    :cond_a
    const-string v3, "casestate"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 54
    const-string v3, "casestate"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cymobile/ymwork/types/Building;->setCaseState(Ljava/lang/String;)V

    .line 56
    :cond_b
    const-string v3, "region"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 57
    const-string v3, "region"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cymobile/ymwork/types/Building;->setRegion(Ljava/lang/String;)V

    .line 59
    :cond_c
    const-string v3, "street"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 60
    const-string v3, "street"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cymobile/ymwork/types/Building;->setStreet(Ljava/lang/String;)V

    .line 62
    :cond_d
    const-string v3, "community"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 63
    const-string v3, "community"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cymobile/ymwork/types/Building;->setCommunity(Ljava/lang/String;)V

    .line 65
    :cond_e
    const-string v3, "grid"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 66
    const-string v3, "grid"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cymobile/ymwork/types/Building;->setGrid(Ljava/lang/String;)V

    .line 68
    :cond_f
    const-string v3, "casedescription"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 69
    const-string v3, "casedescription"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cymobile/ymwork/types/Building;->setCaseDescription(Ljava/lang/String;)V

    .line 71
    :cond_10
    const-string v3, "location"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 72
    const-string v3, "location"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cymobile/ymwork/types/Building;->setLocation(Ljava/lang/String;)V

    .line 74
    :cond_11
    const-string v3, "affactearea"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 75
    const-string v3, "affactearea"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "null"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 76
    const-string v3, "affactearea"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cymobile/ymwork/types/Building;->setAffectArea(Ljava/lang/String;)V

    .line 79
    :cond_12
    const-string v3, "geox"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 80
    const-string v3, "geox"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cymobile/ymwork/types/Building;->setGeoX(Ljava/lang/String;)V

    .line 82
    :cond_13
    const-string v3, "geoy"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 83
    const-string v3, "geoy"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cymobile/ymwork/types/Building;->setGeoY(Ljava/lang/String;)V

    .line 85
    :cond_14
    const-string v3, "image"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 86
    const-string v3, "image"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cymobile/ymwork/types/Building;->setImgUrl(Ljava/lang/String;)V

    .line 88
    :cond_15
    const-string v3, "imagething"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 89
    const-string v3, "imagething"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cymobile/ymwork/types/Building;->setImgUrl1(Ljava/lang/String;)V

    .line 91
    :cond_16
    const-string v3, "iswangge"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 92
    const-string v3, "iswangge"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/cymobile/ymwork/types/Building;->setIsWange(I)V

    .line 94
    :cond_17
    const-string v3, "classids"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 95
    const-string v3, "classids"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/cymobile/ymwork/types/Building;->setclassid(I)V

    .line 97
    :cond_18
    const-string v3, "replyid"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    const-string v3, "replyid"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "null"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    const-string v3, "replyid"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 99
    :try_start_1
    new-instance v2, Lcom/cymobile/ymwork/types/Reply;

    invoke-direct {v2}, Lcom/cymobile/ymwork/types/Reply;-><init>()V

    .line 100
    .local v2, shopreply:Lcom/cymobile/ymwork/types/Reply;
    const-string v3, "replyid"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    const-string v3, "replyid"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "null"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    .line 101
    const-string v3, "replyid"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cymobile/ymwork/types/Reply;->setReplyId(Ljava/lang/String;)V

    .line 103
    :cond_19
    const-string v3, "replyresult"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 104
    const-string v3, "replyresult"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cymobile/ymwork/types/Reply;->setQulingdaopishi(Ljava/lang/String;)V

    .line 106
    :cond_1a
    const-string v3, "replydetail"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 107
    const-string v3, "replydetail"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cymobile/ymwork/types/Reply;->setQulingdaodetail(Ljava/lang/String;)V

    .line 109
    :cond_1b
    const-string v3, "replydesc"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 110
    const-string v3, "replydesc"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cymobile/ymwork/types/Reply;->setQulingdaodesc(Ljava/lang/String;)V

    .line 112
    :cond_1c
    const-string v3, "replydate_long"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 113
    const-string v3, "replydate_long"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/cymobile/ymwork/types/Reply;->setReplyTime(J)V

    .line 115
    :cond_1d
    invoke-virtual {v0, v2}, Lcom/cymobile/ymwork/types/Building;->setLastReply(Lcom/cymobile/ymwork/types/Reply;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 121
    .end local v2           #shopreply:Lcom/cymobile/ymwork/types/Reply;
    :cond_1e
    :goto_1
    return-object v0

    .line 47
    :catch_0
    move-exception v1

    .line 48
    .local v1, ee:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 116
    .end local v1           #ee:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 117
    .restart local v1       #ee:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
