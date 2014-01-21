.class public Lcom/cymobile/ymwork/server/parsers/json/VisitorvolumeParser1;
.super Lcom/cymobile/ymwork/server/parsers/json/AbstractParser;
.source "VisitorvolumeParser1.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cymobile/ymwork/server/parsers/json/AbstractParser",
        "<",
        "Lcom/cymobile/ymwork/types/VisitorvolumeReports;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
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
    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/server/parsers/json/VisitorvolumeParser1;->parse(Lorg/json/JSONObject;)Lcom/cymobile/ymwork/types/VisitorvolumeReports;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lorg/json/JSONObject;)Lcom/cymobile/ymwork/types/VisitorvolumeReports;
    .locals 8
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 18
    const/4 v2, 0x0

    .line 19
    .local v2, field:Lcom/cymobile/ymwork/types/VisitorvolumeReports;
    if-eqz p1, :cond_3

    .line 20
    new-instance v2, Lcom/cymobile/ymwork/types/VisitorvolumeReports;

    .end local v2           #field:Lcom/cymobile/ymwork/types/VisitorvolumeReports;
    invoke-direct {v2}, Lcom/cymobile/ymwork/types/VisitorvolumeReports;-><init>()V

    .line 21
    .restart local v2       #field:Lcom/cymobile/ymwork/types/VisitorvolumeReports;
    const-string v6, "count"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 23
    :try_start_0
    const-string v6, "count"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 24
    .local v0, array:Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 25
    new-instance v3, Lcom/cymobile/ymwork/types/Group;

    invoke-direct {v3}, Lcom/cymobile/ymwork/types/Group;-><init>()V

    .line 26
    .local v3, group:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/VisitorvolumeReport;>;"
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lt v4, v6, :cond_4

    .line 30
    invoke-virtual {v2, v3}, Lcom/cymobile/ymwork/types/VisitorvolumeReports;->setItems(Lcom/cymobile/ymwork/types/Group;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .end local v0           #array:Lorg/json/JSONArray;
    .end local v3           #group:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/VisitorvolumeReport;>;"
    .end local v4           #i:I
    :cond_0
    :goto_1
    const-string v6, "regist"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 39
    :try_start_1
    const-string v6, "regist"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 40
    .restart local v0       #array:Lorg/json/JSONArray;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 41
    new-instance v3, Lcom/cymobile/ymwork/types/Group;

    invoke-direct {v3}, Lcom/cymobile/ymwork/types/Group;-><init>()V

    .line 42
    .restart local v3       #group:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/VisitorvolumeReport;>;"
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lt v4, v6, :cond_5

    .line 46
    invoke-virtual {v2, v3}, Lcom/cymobile/ymwork/types/VisitorvolumeReports;->setItems_regist(Lcom/cymobile/ymwork/types/Group;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 52
    .end local v0           #array:Lorg/json/JSONArray;
    .end local v3           #group:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/VisitorvolumeReport;>;"
    .end local v4           #i:I
    :cond_1
    :goto_3
    const-string v6, "maxnum1"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 53
    const-string v6, "maxnum1"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/cymobile/ymwork/types/VisitorvolumeReports;->setMaxnum1(I)V

    .line 55
    :cond_2
    const-string v6, "maxnum2"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 56
    const-string v6, "maxnum2"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/cymobile/ymwork/types/VisitorvolumeReports;->setMaxnum2(I)V

    .line 59
    :cond_3
    return-object v2

    .line 27
    .restart local v0       #array:Lorg/json/JSONArray;
    .restart local v3       #group:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/VisitorvolumeReport;>;"
    .restart local v4       #i:I
    :cond_4
    :try_start_2
    new-instance v6, Lcom/cymobile/ymwork/server/parsers/json/VisitorvolumeParser;

    invoke-direct {v6}, Lcom/cymobile/ymwork/server/parsers/json/VisitorvolumeParser;-><init>()V

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/cymobile/ymwork/server/parsers/json/VisitorvolumeParser;->parse(Lorg/json/JSONObject;)Lcom/cymobile/ymwork/types/VisitorvolumeReport;

    move-result-object v5

    .line 28
    .local v5, item:Lcom/cymobile/ymwork/types/VisitorvolumeReport;
    invoke-virtual {v3, v5}, Lcom/cymobile/ymwork/types/Group;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 26
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 32
    .end local v0           #array:Lorg/json/JSONArray;
    .end local v3           #group:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/VisitorvolumeReport;>;"
    .end local v4           #i:I
    .end local v5           #item:Lcom/cymobile/ymwork/types/VisitorvolumeReport;
    :catch_0
    move-exception v1

    .line 33
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 43
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #array:Lorg/json/JSONArray;
    .restart local v3       #group:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/VisitorvolumeReport;>;"
    .restart local v4       #i:I
    :cond_5
    :try_start_3
    new-instance v6, Lcom/cymobile/ymwork/server/parsers/json/VisitorvolumeParser;

    invoke-direct {v6}, Lcom/cymobile/ymwork/server/parsers/json/VisitorvolumeParser;-><init>()V

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/cymobile/ymwork/server/parsers/json/VisitorvolumeParser;->parse(Lorg/json/JSONObject;)Lcom/cymobile/ymwork/types/VisitorvolumeReport;

    move-result-object v5

    .line 44
    .restart local v5       #item:Lcom/cymobile/ymwork/types/VisitorvolumeReport;
    invoke-virtual {v3, v5}, Lcom/cymobile/ymwork/types/Group;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 42
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 48
    .end local v0           #array:Lorg/json/JSONArray;
    .end local v3           #group:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/VisitorvolumeReport;>;"
    .end local v4           #i:I
    .end local v5           #item:Lcom/cymobile/ymwork/types/VisitorvolumeReport;
    :catch_1
    move-exception v1

    .line 49
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method
