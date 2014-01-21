.class public Lcom/amap/api/search/poisearch/b;
.super Lcom/amap/api/search/core/h;
.source "PoiSearchServerHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/api/search/core/h",
        "<",
        "Lcom/amap/api/search/poisearch/c;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/amap/api/search/poisearch/PoiItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field private i:I

.field private j:I

.field private k:I

.field private l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amap/api/search/poisearch/c;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amap/api/search/core/h;-><init>(Ljava/lang/Object;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    const/4 v0, 0x1

    iput v0, p0, Lcom/amap/api/search/poisearch/b;->i:I

    .line 26
    const/16 v0, 0x14

    iput v0, p0, Lcom/amap/api/search/poisearch/b;->j:I

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/search/poisearch/b;->k:I

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/search/poisearch/b;->l:Ljava/util/ArrayList;

    .line 33
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 85
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    :cond_0
    const/4 v0, 0x1

    .line 88
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/amap/api/search/poisearch/b;->j:I

    return v0
.end method

.method public a(Ljava/io/InputStream;)Ljava/util/ArrayList;
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/search/poisearch/PoiItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/search/core/AMapException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x4

    const/4 v3, 0x0

    .line 132
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 133
    const/4 v1, 0x0

    .line 135
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p1}, Lcom/amap/api/search/core/a;->a(Ljava/io/InputStream;)[B

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_0
    invoke-static {v0}, Lcom/amap/api/search/core/d;->b(Ljava/lang/String;)V

    .line 141
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 143
    const-string v0, "list"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 144
    const-string v0, "list"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 148
    const-string v0, "count"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/amap/api/search/poisearch/b;->k:I

    .line 149
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v3, v0, :cond_5

    .line 150
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 152
    const-string v0, "pguid"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    const-string v1, "x"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 154
    const-string v1, "y"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    .line 155
    const-string v1, "name"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 156
    const-string v10, "address"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 157
    new-instance v11, Lcom/amap/api/search/poisearch/PoiItem;

    new-instance v12, Lcom/amap/api/search/core/LatLonPoint;

    invoke-direct {v12, v8, v9, v6, v7}, Lcom/amap/api/search/core/LatLonPoint;-><init>(DD)V

    invoke-direct {v11, v0, v12, v1, v10}, Lcom/amap/api/search/poisearch/PoiItem;-><init>(Ljava/lang/String;Lcom/amap/api/search/core/LatLonPoint;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v0, "adcode"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    const-string v0, "adcode"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/amap/api/search/poisearch/PoiItem;->setAdCode(Ljava/lang/String;)V

    .line 163
    :cond_0
    const-string v0, "distance"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    const-string v0, "distance"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v11, v0}, Lcom/amap/api/search/poisearch/PoiItem;->setDistance(I)V

    .line 165
    invoke-virtual {v11}, Lcom/amap/api/search/poisearch/PoiItem;->getDistance()I

    move-result v0

    if-nez v0, :cond_1

    .line 166
    const/4 v0, -0x1

    invoke-virtual {v11, v0}, Lcom/amap/api/search/poisearch/PoiItem;->setDistance(I)V

    .line 169
    :cond_1
    const-string v0, "tel"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/amap/api/search/poisearch/PoiItem;->setTel(Ljava/lang/String;)V

    .line 170
    const-string v0, ""

    .line 171
    const-string v1, "typecode"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 172
    const-string v0, "typecode"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v13, :cond_4

    .line 175
    const/4 v1, 0x0

    const/4 v6, 0x4

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/amap/api/search/poisearch/PoiItem;->setTypeCode(Ljava/lang/String;)V

    .line 179
    :goto_2
    const-string v0, "type"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 181
    const/4 v0, 0x0

    aget-object v1, v6, v0

    .line 182
    const/4 v0, 0x1

    :goto_3
    array-length v7, v6

    if-ge v0, v7, :cond_6

    .line 183
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " - "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v7, v6, v0

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v1

    .line 182
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 136
    :catch_0
    move-exception v0

    .line 137
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto/16 :goto_0

    :cond_3
    move-object v0, v2

    .line 195
    :goto_4
    return-object v0

    .line 177
    :cond_4
    :try_start_2
    const-string v0, ""

    invoke-virtual {v11, v0}, Lcom/amap/api/search/poisearch/PoiItem;->setTypeCode(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 190
    :catch_1
    move-exception v0

    .line 191
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_5
    :goto_5
    move-object v0, v2

    .line 195
    goto :goto_4

    .line 185
    :cond_6
    :try_start_3
    invoke-virtual {v11, v1}, Lcom/amap/api/search/poisearch/PoiItem;->setTypeDes(Ljava/lang/String;)V

    .line 186
    const-string v0, "xml"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/amap/api/search/poisearch/PoiItem;->setXmlNode(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 149
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_1

    .line 192
    :catch_2
    move-exception v0

    .line 193
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5
.end method

.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput p1, p0, Lcom/amap/api/search/poisearch/b;->i:I

    .line 37
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/amap/api/search/poisearch/b;->k:I

    return v0
.end method

.method public synthetic b(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/search/core/AMapException;
        }
    .end annotation

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/amap/api/search/poisearch/b;->a(Ljava/io/InputStream;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public b(I)V
    .locals 2
    .parameter

    .prologue
    const/16 v0, 0x14

    .line 40
    if-le p1, v0, :cond_1

    move v1, v0

    .line 43
    :goto_0
    if-gtz v1, :cond_0

    .line 46
    :goto_1
    iput v0, p0, Lcom/amap/api/search/poisearch/b;->j:I

    .line 47
    return-void

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    move v1, p1

    goto :goto_0
.end method

.method public c()Lcom/amap/api/search/poisearch/PoiSearch$Query;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/amap/api/search/poisearch/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/search/poisearch/c;

    iget-object v0, v0, Lcom/amap/api/search/poisearch/c;->a:Lcom/amap/api/search/poisearch/PoiSearch$Query;

    return-object v0
.end method

.method protected d()[B
    .locals 11

    .prologue
    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    iget-object v0, p0, Lcom/amap/api/search/poisearch/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/search/poisearch/c;

    iget-object v0, v0, Lcom/amap/api/search/poisearch/c;->b:Lcom/amap/api/search/poisearch/PoiSearch$SearchBound;

    if-nez v0, :cond_2

    .line 202
    const-string v0, "sid=1000&city="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    iget-object v0, p0, Lcom/amap/api/search/poisearch/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/search/poisearch/c;

    iget-object v0, v0, Lcom/amap/api/search/poisearch/c;->a:Lcom/amap/api/search/poisearch/PoiSearch$Query;

    invoke-virtual {v0}, Lcom/amap/api/search/poisearch/PoiSearch$Query;->getCity()Ljava/lang/String;

    move-result-object v0

    .line 204
    invoke-direct {p0, v0}, Lcom/amap/api/search/poisearch/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 205
    const-string v0, "total"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amap/api/search/poisearch/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/search/poisearch/c;

    iget-object v0, v0, Lcom/amap/api/search/poisearch/c;->a:Lcom/amap/api/search/poisearch/PoiSearch$Query;

    invoke-virtual {v0}, Lcom/amap/api/search/poisearch/PoiSearch$Query;->getQueryString()Ljava/lang/String;

    move-result-object v0

    .line 240
    :try_start_0
    const-string v1, "utf-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 244
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&keyword="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "&number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/amap/api/search/poisearch/b;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "&batch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/amap/api/search/poisearch/b;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    iget-object v0, p0, Lcom/amap/api/search/poisearch/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/search/poisearch/c;

    iget-object v0, v0, Lcom/amap/api/search/poisearch/c;->a:Lcom/amap/api/search/poisearch/PoiSearch$Query;

    invoke-virtual {v0}, Lcom/amap/api/search/poisearch/PoiSearch$Query;->getCategory()Ljava/lang/String;

    move-result-object v0

    .line 249
    :try_start_1
    const-string v1, "utf-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    .line 253
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&type="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    const-string v0, "&resType=json&encode=utf-8"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0

    .line 208
    :cond_1
    :try_start_2
    const-string v1, "utf-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    .line 212
    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 209
    :catch_0
    move-exception v1

    .line 210
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_3

    .line 216
    :cond_2
    iget-object v0, p0, Lcom/amap/api/search/poisearch/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/search/poisearch/c;

    iget-object v0, v0, Lcom/amap/api/search/poisearch/c;->b:Lcom/amap/api/search/poisearch/PoiSearch$SearchBound;

    invoke-virtual {v0}, Lcom/amap/api/search/poisearch/PoiSearch$SearchBound;->getShape()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bound"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 217
    const-string v0, "sid=1002&city=total"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    const-string v0, "&cenX="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    iget-object v0, p0, Lcom/amap/api/search/poisearch/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/search/poisearch/c;

    iget-object v0, v0, Lcom/amap/api/search/poisearch/c;->b:Lcom/amap/api/search/poisearch/PoiSearch$SearchBound;

    invoke-virtual {v0}, Lcom/amap/api/search/poisearch/PoiSearch$SearchBound;->getCenter()Lcom/amap/api/search/core/LatLonPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/search/core/LatLonPoint;->getLongitude()D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 220
    const-string v0, "&cenY="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    iget-object v0, p0, Lcom/amap/api/search/poisearch/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/search/poisearch/c;

    iget-object v0, v0, Lcom/amap/api/search/poisearch/c;->b:Lcom/amap/api/search/poisearch/PoiSearch$SearchBound;

    invoke-virtual {v0}, Lcom/amap/api/search/poisearch/PoiSearch$SearchBound;->getCenter()Lcom/amap/api/search/core/LatLonPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/search/core/LatLonPoint;->getLatitude()D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 222
    const-string v0, "&range="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    iget-object v0, p0, Lcom/amap/api/search/poisearch/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/search/poisearch/c;

    iget-object v0, v0, Lcom/amap/api/search/poisearch/c;->b:Lcom/amap/api/search/poisearch/PoiSearch$SearchBound;

    invoke-virtual {v0}, Lcom/amap/api/search/poisearch/PoiSearch$SearchBound;->getRange()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 224
    :cond_3
    iget-object v0, p0, Lcom/amap/api/search/poisearch/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/search/poisearch/c;

    iget-object v0, v0, Lcom/amap/api/search/poisearch/c;->b:Lcom/amap/api/search/poisearch/PoiSearch$SearchBound;

    invoke-virtual {v0}, Lcom/amap/api/search/poisearch/PoiSearch$SearchBound;->getShape()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Rectangle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    const-string v0, "sid=1005"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    iget-object v0, p0, Lcom/amap/api/search/poisearch/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/search/poisearch/c;

    iget-object v0, v0, Lcom/amap/api/search/poisearch/c;->b:Lcom/amap/api/search/poisearch/PoiSearch$SearchBound;

    invoke-virtual {v0}, Lcom/amap/api/search/poisearch/PoiSearch$SearchBound;->getLowerLeft()Lcom/amap/api/search/core/LatLonPoint;

    move-result-object v1

    .line 228
    iget-object v0, p0, Lcom/amap/api/search/poisearch/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/search/poisearch/c;

    iget-object v0, v0, Lcom/amap/api/search/poisearch/c;->b:Lcom/amap/api/search/poisearch/PoiSearch$SearchBound;

    invoke-virtual {v0}, Lcom/amap/api/search/poisearch/PoiSearch$SearchBound;->getUpperRight()Lcom/amap/api/search/core/LatLonPoint;

    move-result-object v0

    .line 229
    invoke-virtual {v1}, Lcom/amap/api/search/core/LatLonPoint;->getLatitude()D

    move-result-wide v3

    .line 230
    invoke-virtual {v1}, Lcom/amap/api/search/core/LatLonPoint;->getLongitude()D

    move-result-wide v5

    .line 231
    invoke-virtual {v0}, Lcom/amap/api/search/core/LatLonPoint;->getLatitude()D

    move-result-wide v7

    .line 232
    invoke-virtual {v0}, Lcom/amap/api/search/core/LatLonPoint;->getLongitude()D

    move-result-wide v0

    .line 233
    const-string v9, "&regionType=rectangle"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "&region="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 241
    :catch_1
    move-exception v1

    .line 242
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_1

    .line 250
    :catch_2
    move-exception v1

    .line 251
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_2
.end method

.method protected e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/amap/api/search/core/g;->a()Lcom/amap/api/search/core/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/search/core/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/gss/simple?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Lcom/amap/api/search/poisearch/PoiSearch$SearchBound;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/amap/api/search/poisearch/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/search/poisearch/c;

    iget-object v0, v0, Lcom/amap/api/search/poisearch/c;->b:Lcom/amap/api/search/poisearch/PoiSearch$SearchBound;

    return-object v0
.end method

.method public j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/amap/api/search/poisearch/b;->l:Ljava/util/ArrayList;

    return-object v0
.end method
