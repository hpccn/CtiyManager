.class Lcom/amap/api/search/route/b;
.super Lcom/amap/api/search/route/c;
.source "DriveHandler.java"


# instance fields
.field i:Ljava/util/List;
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
    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amap/api/search/route/c;-><init>(Lcom/amap/api/search/route/e;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
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

    .line 60
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 63
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p1}, Lcom/amap/api/search/core/a;->a(Ljava/io/InputStream;)[B

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    invoke-static {v0}, Lcom/amap/api/search/core/d;->b(Ljava/lang/String;)V

    .line 69
    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 70
    const-string v0, "count"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 71
    if-lez v0, :cond_4

    .line 72
    const-string v0, "list"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 73
    new-instance v5, Lcom/amap/api/search/route/Route;

    iget-object v0, p0, Lcom/amap/api/search/route/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/search/route/e;

    iget v0, v0, Lcom/amap/api/search/route/e;->b:I

    invoke-direct {v5, v0}, Lcom/amap/api/search/route/Route;-><init>(I)V

    .line 74
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 75
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v3, v0, :cond_5

    .line 76
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 78
    new-instance v8, Lcom/amap/api/search/route/DriveSegment;

    invoke-direct {v8}, Lcom/amap/api/search/route/DriveSegment;-><init>()V

    .line 79
    const-string v0, "roadLength"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    const-string v9, "\u5343\u7c73"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 82
    const/4 v9, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x2

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 83
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

    .line 91
    :cond_0
    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/amap/api/search/route/DriveSegment;->setLength(I)V

    .line 92
    const-string v0, "roadName"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/amap/api/search/route/DriveSegment;->setRoadName(Ljava/lang/String;)V

    .line 93
    const-string v0, "action"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/amap/api/search/route/DriveSegment;->setActionDescription(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 95
    :try_start_2
    const-string v0, "coor"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v9, ",|;"

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/search/route/b;->a([Ljava/lang/String;)[Lcom/amap/api/search/core/LatLonPoint;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/amap/api/search/route/DriveSegment;->setShapes([Lcom/amap/api/search/core/LatLonPoint;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 99
    :goto_3
    :try_start_3
    const-string v0, "driveTime"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/amap/api/search/route/DriveSegment;->setConsumeTime(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v8}, Lcom/amap/api/search/route/DriveSegment;->getShapes()[Lcom/amap/api/search/core/LatLonPoint;

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_1

    .line 101
    invoke-virtual {v6, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    .line 75
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_1

    .line 64
    :catch_0
    move-exception v0

    .line 65
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto/16 :goto_0

    .line 84
    :cond_2
    :try_start_4
    const-string v9, "\u7c73"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 85
    const/4 v9, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 86
    :cond_3
    const-string v9, "\u516c\u91cc"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 87
    const/4 v9, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x2

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 88
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

    .line 96
    :catch_1
    move-exception v0

    .line 97
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 119
    :catch_2
    move-exception v0

    .line 120
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 122
    :cond_4
    :goto_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 123
    new-instance v0, Lcom/amap/api/search/core/AMapException;

    const-string v1, "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

    invoke-direct {v0, v1}, Lcom/amap/api/search/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_5
    :try_start_5
    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_6

    .line 133
    :goto_5
    return-object v1

    .line 107
    :cond_6
    invoke-virtual {v5, v6}, Lcom/amap/api/search/route/Route;->a(Ljava/util/List;)V

    .line 108
    invoke-virtual {p0, v5}, Lcom/amap/api/search/route/b;->a(Lcom/amap/api/search/route/Route;)V

    .line 110
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

    .line 111
    invoke-virtual {v0, v5}, Lcom/amap/api/search/route/Segment;->setRoute(Lcom/amap/api/search/route/Route;)V

    goto :goto_6

    .line 113
    :cond_7
    if-eqz v5, :cond_8

    .line 114
    iget-object v0, p0, Lcom/amap/api/search/route/b;->j:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/amap/api/search/route/Route;->setStartPlace(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/amap/api/search/route/b;->k:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/amap/api/search/route/Route;->setTargetPlace(Ljava/lang/String;)V

    .line 117
    :cond_8
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    .line 125
    :cond_9
    if-eqz p1, :cond_a

    .line 127
    :try_start_6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_a
    move-object v1, v2

    .line 133
    goto :goto_5

    .line 129
    :catch_3
    move-exception v0

    .line 130
    new-instance v0, Lcom/amap/api/search/core/AMapException;

    const-string v1, "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

    invoke-direct {v0, v1}, Lcom/amap/api/search/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected a(Lcom/amap/api/search/route/Route;)V
    .locals 4
    .parameter

    .prologue
    .line 138
    invoke-virtual {p1}, Lcom/amap/api/search/route/Route;->getStepCount()I

    move-result v0

    .line 139
    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-lez v2, :cond_0

    .line 140
    invoke-virtual {p1, v2}, Lcom/amap/api/search/route/Route;->getStep(I)Lcom/amap/api/search/route/Segment;

    move-result-object v0

    check-cast v0, Lcom/amap/api/search/route/DriveSegment;

    .line 141
    add-int/lit8 v1, v2, -0x1

    invoke-virtual {p1, v1}, Lcom/amap/api/search/route/Route;->getStep(I)Lcom/amap/api/search/route/Segment;

    move-result-object v1

    check-cast v1, Lcom/amap/api/search/route/DriveSegment;

    .line 144
    invoke-virtual {v1}, Lcom/amap/api/search/route/DriveSegment;->getActionCode()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/amap/api/search/route/DriveSegment;->setActionCode(I)V

    .line 145
    invoke-virtual {v1}, Lcom/amap/api/search/route/DriveSegment;->getActionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/search/route/DriveSegment;->setActionDescription(Ljava/lang/String;)V

    .line 139
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    .line 148
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/amap/api/search/route/Route;->getStep(I)Lcom/amap/api/search/route/Segment;

    move-result-object v0

    check-cast v0, Lcom/amap/api/search/route/DriveSegment;

    .line 149
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/search/route/DriveSegment;->setActionCode(I)V

    .line 150
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/amap/api/search/route/DriveSegment;->setActionDescription(Ljava/lang/String;)V

    .line 151
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
    .line 156
    iput-object p1, p0, Lcom/amap/api/search/route/b;->i:Ljava/util/List;

    .line 157
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
    .line 18
    invoke-virtual {p0, p1}, Lcom/amap/api/search/route/b;->a(Ljava/io/InputStream;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected d()[B
    .locals 7

    .prologue
    .line 33
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    const-string v0, "sid=8000"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    const-string v0, "&encode=utf-8"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "&xys="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/amap/api/search/route/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/search/route/e;

    invoke-virtual {v0}, Lcom/amap/api/search/route/e;->a()D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/amap/api/search/route/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/search/route/e;

    invoke-virtual {v0}, Lcom/amap/api/search/route/e;->c()D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget-object v0, p0, Lcom/amap/api/search/route/b;->i:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/search/route/b;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 41
    iget-object v0, p0, Lcom/amap/api/search/route/b;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 42
    const-string v1, ""

    .line 43
    const/4 v0, 0x0

    move-object v2, v1

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    .line 45
    iget-object v0, p0, Lcom/amap/api/search/route/b;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/search/core/LatLonPoint;

    .line 46
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amap/api/search/core/LatLonPoint;->getLongitude()D

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amap/api/search/core/LatLonPoint;->getLatitude()D

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 43
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/amap/api/search/route/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/search/route/e;

    invoke-virtual {v0}, Lcom/amap/api/search/route/e;->b()D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/amap/api/search/route/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/search/route/e;

    invoke-virtual {v0}, Lcom/amap/api/search/route/e;->d()D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    const-string v0, "&resType=json"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "&RouteType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/amap/api/search/route/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/search/route/e;

    iget v0, v0, Lcom/amap/api/search/route/e;->b:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    const-string v0, "&per="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    const/16 v0, 0x32

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method
