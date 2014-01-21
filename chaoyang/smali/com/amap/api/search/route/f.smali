.class Lcom/amap/api/search/route/f;
.super Lcom/amap/api/search/route/c;
.source "WalkHandler.java"


# instance fields
.field public i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/search/core/LatLonPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amap/api/search/route/e;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amap/api/search/route/c;-><init>(Lcom/amap/api/search/route/e;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    return-void
.end method


# virtual methods
.method protected a(Ljava/io/InputStream;)Ljava/util/ArrayList;
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/search/route/Route;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/search/core/AMapException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const-wide v12, 0x408f400000000000L

    const/4 v3, 0x0

    .line 81
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 84
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p1}, Lcom/amap/api/search/core/a;->a(Ljava/io/InputStream;)[B

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    invoke-static {v0}, Lcom/amap/api/search/core/d;->b(Ljava/lang/String;)V

    .line 90
    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 91
    const-string v0, "count"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 92
    if-lez v0, :cond_4

    .line 93
    const-string v0, "list"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 94
    new-instance v5, Lcom/amap/api/search/route/Route;

    iget-object v0, p0, Lcom/amap/api/search/route/f;->b:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/search/route/e;

    iget v0, v0, Lcom/amap/api/search/route/e;->b:I

    invoke-direct {v5, v0}, Lcom/amap/api/search/route/Route;-><init>(I)V

    .line 95
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 96
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v3, v0, :cond_5

    .line 97
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 99
    new-instance v8, Lcom/amap/api/search/route/WalkSegment;

    invoke-direct {v8}, Lcom/amap/api/search/route/WalkSegment;-><init>()V

    .line 100
    const-string v0, "roadLength"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    const-string v9, "\u5343\u7c73"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 103
    const/4 v9, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x2

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 104
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    mul-double/2addr v10, v12

    double-to-int v0, v10

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, ""

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    :cond_0
    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/amap/api/search/route/WalkSegment;->setLength(I)V

    .line 113
    const-string v0, "roadName"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/amap/api/search/route/WalkSegment;->setRoadName(Ljava/lang/String;)V

    .line 114
    const-string v0, "action"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/amap/api/search/route/WalkSegment;->setActionDescription(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 116
    :try_start_2
    const-string v0, "coor"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v9, ",|;"

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/search/route/f;->a([Ljava/lang/String;)[Lcom/amap/api/search/core/LatLonPoint;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/amap/api/search/route/WalkSegment;->setShapes([Lcom/amap/api/search/core/LatLonPoint;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 121
    :goto_3
    :try_start_3
    const-string v0, "driveTime"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/amap/api/search/route/WalkSegment;->setConsumeTime(Ljava/lang/String;)V

    .line 122
    const-string v0, "accessorialInfo"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/amap/api/search/route/WalkSegment;->setAccessorialInfo(Ljava/lang/String;)V

    .line 123
    const-string v0, "direction"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/amap/api/search/route/WalkSegment;->setDirection(Ljava/lang/String;)V

    .line 124
    const-string v0, "textInfo"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/amap/api/search/route/WalkSegment;->setTextInfo(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v8}, Lcom/amap/api/search/route/WalkSegment;->getShapes()[Lcom/amap/api/search/core/LatLonPoint;

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_1

    .line 126
    invoke-virtual {v6, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    .line 96
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_1

    .line 85
    :catch_0
    move-exception v0

    .line 86
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto/16 :goto_0

    .line 105
    :cond_2
    :try_start_4
    const-string v9, "\u7c73"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 106
    const/4 v9, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 107
    :cond_3
    const-string v9, "\u516c\u91cc"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 108
    const/4 v9, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x2

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 109
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    mul-double/2addr v10, v12

    double-to-int v0, v10

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, ""

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 118
    :catch_1
    move-exception v0

    .line 119
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 145
    :catch_2
    move-exception v0

    .line 146
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 148
    :cond_4
    :goto_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 149
    new-instance v0, Lcom/amap/api/search/core/AMapException;

    const-string v1, "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

    invoke-direct {v0, v1}, Lcom/amap/api/search/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_5
    :try_start_5
    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_6

    .line 159
    :goto_5
    return-object v1

    .line 133
    :cond_6
    invoke-virtual {v5, v6}, Lcom/amap/api/search/route/Route;->a(Ljava/util/List;)V

    .line 134
    invoke-virtual {p0, v5}, Lcom/amap/api/search/route/f;->a(Lcom/amap/api/search/route/Route;)V

    .line 136
    invoke-virtual {v5}, Lcom/amap/api/search/route/Route;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/search/route/Segment;

    .line 137
    invoke-virtual {v0, v5}, Lcom/amap/api/search/route/Segment;->setRoute(Lcom/amap/api/search/route/Route;)V

    goto :goto_6

    .line 139
    :cond_7
    if-eqz v5, :cond_8

    .line 140
    iget-object v0, p0, Lcom/amap/api/search/route/f;->j:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/amap/api/search/route/Route;->setStartPlace(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/amap/api/search/route/f;->k:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/amap/api/search/route/Route;->setTargetPlace(Ljava/lang/String;)V

    .line 143
    :cond_8
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    .line 151
    :cond_9
    if-eqz p1, :cond_a

    .line 153
    :try_start_6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_a
    move-object v1, v2

    .line 159
    goto :goto_5

    .line 155
    :catch_3
    move-exception v0

    .line 156
    new-instance v0, Lcom/amap/api/search/core/AMapException;

    const-string v1, "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

    invoke-direct {v0, v1}, Lcom/amap/api/search/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected a(Lcom/amap/api/search/route/Route;)V
    .locals 4
    .parameter

    .prologue
    .line 164
    invoke-virtual {p1}, Lcom/amap/api/search/route/Route;->getStepCount()I

    move-result v0

    .line 165
    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-lez v2, :cond_0

    .line 166
    invoke-virtual {p1, v2}, Lcom/amap/api/search/route/Route;->getStep(I)Lcom/amap/api/search/route/Segment;

    move-result-object v0

    check-cast v0, Lcom/amap/api/search/route/WalkSegment;

    .line 167
    add-int/lit8 v1, v2, -0x1

    invoke-virtual {p1, v1}, Lcom/amap/api/search/route/Route;->getStep(I)Lcom/amap/api/search/route/Segment;

    move-result-object v1

    check-cast v1, Lcom/amap/api/search/route/WalkSegment;

    .line 170
    invoke-virtual {v1}, Lcom/amap/api/search/route/WalkSegment;->getActionCode()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/amap/api/search/route/WalkSegment;->setActionCode(I)V

    .line 171
    invoke-virtual {v1}, Lcom/amap/api/search/route/WalkSegment;->getActionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/search/route/WalkSegment;->setActionDescription(Ljava/lang/String;)V

    .line 165
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    .line 174
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/amap/api/search/route/Route;->getStep(I)Lcom/amap/api/search/route/Segment;

    move-result-object v0

    check-cast v0, Lcom/amap/api/search/route/WalkSegment;

    .line 175
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/search/route/WalkSegment;->setActionCode(I)V

    .line 176
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/amap/api/search/route/WalkSegment;->setActionDescription(Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/search/core/LatLonPoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 182
    iput-object p1, p0, Lcom/amap/api/search/route/f;->i:Ljava/util/List;

    .line 183
    return-void
.end method

.method protected synthetic b(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/search/core/AMapException;
        }
    .end annotation

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/amap/api/search/route/f;->a(Ljava/io/InputStream;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected d()[B
    .locals 5

    .prologue
    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    const-string v0, "sid=8003"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    const-string v0, "&encode=utf-8"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    const-string v0, "&ia=1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&xys="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/amap/api/search/route/f;->b:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/search/route/e;

    invoke-virtual {v0}, Lcom/amap/api/search/route/e;->a()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/amap/api/search/route/f;->b:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/search/route/e;

    invoke-virtual {v0}, Lcom/amap/api/search/route/e;->c()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/amap/api/search/route/f;->b:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/search/route/e;

    invoke-virtual {v0}, Lcom/amap/api/search/route/e;->b()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/amap/api/search/route/f;->b:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/search/route/e;

    invoke-virtual {v0}, Lcom/amap/api/search/route/e;->d()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    const-string v0, "&resType=json"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&RouteType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/amap/api/search/route/f;->b:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/search/route/e;

    iget v0, v0, Lcom/amap/api/search/route/e;->b:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string v0, "&per="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const/16 v0, 0x32

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    const-string v0, "&key="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    sget-object v0, Lcom/amap/api/search/core/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method
