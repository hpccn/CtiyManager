.class public Lcom/cymobile/ymwork/server/parsers/json/BuildingReportItmeParser;
.super Lcom/cymobile/ymwork/server/parsers/json/AbstractParser;
.source "BuildingReportItmeParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cymobile/ymwork/server/parsers/json/AbstractParser",
        "<",
        "Lcom/cymobile/ymwork/types/BuildingReportItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
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
    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/server/parsers/json/BuildingReportItmeParser;->parse(Lorg/json/JSONObject;)Lcom/cymobile/ymwork/types/BuildingReportItem;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lorg/json/JSONObject;)Lcom/cymobile/ymwork/types/BuildingReportItem;
    .locals 2
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 16
    const/4 v0, 0x0

    .line 17
    .local v0, buildingReport:Lcom/cymobile/ymwork/types/BuildingReportItem;
    if-eqz p1, :cond_2

    .line 18
    new-instance v0, Lcom/cymobile/ymwork/types/BuildingReportItem;

    .end local v0           #buildingReport:Lcom/cymobile/ymwork/types/BuildingReportItem;
    invoke-direct {v0}, Lcom/cymobile/ymwork/types/BuildingReportItem;-><init>()V

    .line 19
    .restart local v0       #buildingReport:Lcom/cymobile/ymwork/types/BuildingReportItem;
    const-string v1, "name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 20
    const-string v1, "name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/types/BuildingReportItem;->setName(Ljava/lang/String;)V

    .line 22
    :cond_0
    const-string v1, "number"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 23
    const-string v1, "number"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/types/BuildingReportItem;->setNumber(I)V

    .line 25
    :cond_1
    const-string v1, "unitname"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 26
    const-string v1, "unitname"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/types/BuildingReportItem;->setUnitname(Ljava/lang/String;)V

    .line 30
    :cond_2
    return-object v0
.end method
