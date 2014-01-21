.class public Lcom/cymobile/ymwork/server/parsers/json/BuildingParserReport;
.super Lcom/cymobile/ymwork/server/parsers/json/AbstractParser;
.source "BuildingParserReport.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cymobile/ymwork/server/parsers/json/AbstractParser",
        "<",
        "Lcom/cymobile/ymwork/types/BuildingReport;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
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
    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/server/parsers/json/BuildingParserReport;->parse(Lorg/json/JSONObject;)Lcom/cymobile/ymwork/types/BuildingReport;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lorg/json/JSONObject;)Lcom/cymobile/ymwork/types/BuildingReport;
    .locals 9
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 19
    const/4 v1, 0x0

    .line 20
    .local v1, buildingReport:Lcom/cymobile/ymwork/types/BuildingReport;
    if-eqz p1, :cond_5

    .line 21
    new-instance v1, Lcom/cymobile/ymwork/types/BuildingReport;

    .end local v1           #buildingReport:Lcom/cymobile/ymwork/types/BuildingReport;
    invoke-direct {v1}, Lcom/cymobile/ymwork/types/BuildingReport;-><init>()V

    .line 22
    .restart local v1       #buildingReport:Lcom/cymobile/ymwork/types/BuildingReport;
    const-string v7, "number_all"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 23
    const-string v7, "number_all"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/cymobile/ymwork/types/BuildingReport;->setNumber_all(I)V

    .line 25
    :cond_0
    const-string v7, "area_all"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 26
    const-string v7, "area_all"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/cymobile/ymwork/types/BuildingReport;->setArea_all(I)V

    .line 28
    :cond_1
    const-string v7, "maxnum"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 29
    const-string v7, "maxnum"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/cymobile/ymwork/types/BuildingReport;->setMaxnum(I)V

    .line 31
    :cond_2
    const-string v7, "numberarea_all"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 33
    :try_start_0
    const-string v7, "numberarea_all"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 34
    .local v0, array:Lorg/json/JSONArray;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 35
    new-instance v3, Lcom/cymobile/ymwork/types/Group;

    invoke-direct {v3}, Lcom/cymobile/ymwork/types/Group;-><init>()V

    .line 36
    .local v3, group:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/BuildingReportItem;>;"
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lt v5, v7, :cond_6

    .line 40
    invoke-virtual {v1, v3}, Lcom/cymobile/ymwork/types/BuildingReport;->setItems(Lcom/cymobile/ymwork/types/Group;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .end local v0           #array:Lorg/json/JSONArray;
    .end local v3           #group:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/BuildingReportItem;>;"
    .end local v5           #i:I
    :cond_3
    :goto_1
    const-string v7, "avgsum"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 47
    const-string v7, "avgsum"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/cymobile/ymwork/types/BuildingReport;->setAvgsum(Ljava/lang/String;)V

    .line 49
    :cond_4
    const-string v7, "avgjson"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 51
    :try_start_1
    const-string v7, "avgjson"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 52
    .restart local v0       #array:Lorg/json/JSONArray;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lez v7, :cond_5

    .line 53
    new-instance v4, Lcom/cymobile/ymwork/types/Group;

    invoke-direct {v4}, Lcom/cymobile/ymwork/types/Group;-><init>()V

    .line 54
    .local v4, group:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/ConstrustionFieldAvgItem;>;"
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lt v5, v7, :cond_7

    .line 58
    invoke-virtual {v1, v4}, Lcom/cymobile/ymwork/types/BuildingReport;->setAvgs(Lcom/cymobile/ymwork/types/Group;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 65
    .end local v0           #array:Lorg/json/JSONArray;
    .end local v4           #group:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/ConstrustionFieldAvgItem;>;"
    .end local v5           #i:I
    :cond_5
    :goto_3
    return-object v1

    .line 37
    .restart local v0       #array:Lorg/json/JSONArray;
    .restart local v3       #group:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/BuildingReportItem;>;"
    .restart local v5       #i:I
    :cond_6
    :try_start_2
    new-instance v7, Lcom/cymobile/ymwork/server/parsers/json/BuildingReportItmeParser;

    invoke-direct {v7}, Lcom/cymobile/ymwork/server/parsers/json/BuildingReportItmeParser;-><init>()V

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/cymobile/ymwork/server/parsers/json/BuildingReportItmeParser;->parse(Lorg/json/JSONObject;)Lcom/cymobile/ymwork/types/BuildingReportItem;

    move-result-object v6

    .line 38
    .local v6, item:Lcom/cymobile/ymwork/types/BuildingReportItem;
    invoke-virtual {v3, v6}, Lcom/cymobile/ymwork/types/Group;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 36
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 42
    .end local v0           #array:Lorg/json/JSONArray;
    .end local v3           #group:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/BuildingReportItem;>;"
    .end local v5           #i:I
    .end local v6           #item:Lcom/cymobile/ymwork/types/BuildingReportItem;
    :catch_0
    move-exception v2

    .line 43
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 55
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #array:Lorg/json/JSONArray;
    .restart local v4       #group:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/ConstrustionFieldAvgItem;>;"
    .restart local v5       #i:I
    :cond_7
    :try_start_3
    new-instance v7, Lcom/cymobile/ymwork/server/parsers/json/ConstrustionFieldAvgItmeParser;

    invoke-direct {v7}, Lcom/cymobile/ymwork/server/parsers/json/ConstrustionFieldAvgItmeParser;-><init>()V

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/cymobile/ymwork/server/parsers/json/ConstrustionFieldAvgItmeParser;->parse(Lorg/json/JSONObject;)Lcom/cymobile/ymwork/types/ConstrustionFieldAvgItem;

    move-result-object v6

    .line 56
    .local v6, item:Lcom/cymobile/ymwork/types/ConstrustionFieldAvgItem;
    invoke-virtual {v4, v6}, Lcom/cymobile/ymwork/types/Group;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 54
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 60
    .end local v0           #array:Lorg/json/JSONArray;
    .end local v4           #group:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/ConstrustionFieldAvgItem;>;"
    .end local v5           #i:I
    .end local v6           #item:Lcom/cymobile/ymwork/types/ConstrustionFieldAvgItem;
    :catch_1
    move-exception v2

    .line 61
    .restart local v2       #e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method
