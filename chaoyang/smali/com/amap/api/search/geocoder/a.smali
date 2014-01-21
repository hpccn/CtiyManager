.class Lcom/amap/api/search/geocoder/a;
.super Lcom/amap/api/search/core/h;
.source "GeocodingHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/api/search/core/h",
        "<",
        "Lcom/amap/api/search/geocoder/b;",
        "Ljava/util/ArrayList",
        "<",
        "Landroid/location/Address;",
        ">;>;"
    }
.end annotation


# instance fields
.field public i:I


# direct methods
.method public constructor <init>(Lcom/amap/api/search/geocoder/b;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amap/api/search/core/h;-><init>(Ljava/lang/Object;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/search/geocoder/a;->i:I

    .line 32
    iget v0, p1, Lcom/amap/api/search/geocoder/b;->b:I

    iput v0, p0, Lcom/amap/api/search/geocoder/a;->i:I

    .line 33
    return-void
.end method


# virtual methods
.method protected a(Ljava/io/InputStream;)Ljava/util/ArrayList;
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/search/core/AMapException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 110
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 111
    const/4 v1, 0x0

    .line 113
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p1}, Lcom/amap/api/search/core/a;->a(Ljava/io/InputStream;)[B

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    invoke-static {v0}, Lcom/amap/api/search/core/d;->b(Ljava/lang/String;)V

    .line 119
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 120
    const-string v0, "count"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v2

    .line 181
    :goto_1
    return-object v0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    .line 123
    :cond_0
    :try_start_2
    const-string v0, "count"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 124
    if-lez v0, :cond_9

    .line 125
    const-string v0, "list"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 126
    :goto_2
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v3, v0, :cond_9

    .line 127
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 129
    invoke-static {}, Lcom/amap/api/search/core/d;->a()Landroid/location/Address;

    move-result-object v6

    .line 130
    const-string v0, "name"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 132
    invoke-virtual {v6, v0}, Landroid/location/Address;->setFeatureName(Ljava/lang/String;)V

    .line 134
    :cond_1
    const-string v0, "address"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 136
    const/4 v1, 0x2

    invoke-virtual {v6, v1, v0}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V

    .line 138
    :cond_2
    const-string v0, "province"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 139
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 140
    invoke-virtual {v6, v1}, Landroid/location/Address;->setAdminArea(Ljava/lang/String;)V

    .line 142
    :cond_3
    const-string v0, "city"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    move-object v0, v1

    .line 146
    :cond_4
    invoke-virtual {v6, v0}, Landroid/location/Address;->setLocality(Ljava/lang/String;)V

    .line 147
    const-string v7, "district"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 148
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v8

    if-nez v8, :cond_5

    .line 151
    :try_start_3
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v9, "setSubLocality"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 154
    if-eqz v8, :cond_5

    .line 155
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    invoke-virtual {v8, v6, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    .line 159
    :cond_5
    :goto_3
    const/4 v8, 0x0

    :try_start_4
    const-string v9, "\u4e2d\u56fd"

    invoke-virtual {v6, v8, v9}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V

    .line 160
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 161
    const/4 v8, 0x1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V

    .line 165
    :goto_4
    const-string v0, "x"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 166
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 167
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-virtual {v6, v0, v1}, Landroid/location/Address;->setLongitude(D)V

    .line 169
    :cond_6
    const-string v0, "y"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 170
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 171
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-virtual {v6, v0, v1}, Landroid/location/Address;->setLatitude(D)V

    .line 173
    :cond_7
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_2

    .line 163
    :cond_8
    const/4 v1, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v1, v0}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    .line 176
    :catch_1
    move-exception v0

    .line 177
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_9
    :goto_5
    move-object v0, v2

    .line 181
    goto/16 :goto_1

    .line 178
    :catch_2
    move-exception v0

    .line 179
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 156
    :catch_3
    move-exception v8

    goto :goto_3
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
    .line 24
    invoke-virtual {p0, p1}, Lcom/amap/api/search/geocoder/a;->a(Ljava/io/InputStream;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected d()[B
    .locals 4

    .prologue
    .line 192
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    const-string v0, "?sid=7000&resType=json&encode=utf-8&address="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    iget-object v0, p0, Lcom/amap/api/search/geocoder/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/search/geocoder/b;

    iget-object v0, v0, Lcom/amap/api/search/geocoder/b;->a:Ljava/lang/String;

    .line 196
    :try_start_0
    const-string v1, "utf-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 200
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    iget-object v0, p0, Lcom/amap/api/search/geocoder/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/search/geocoder/b;

    iget-object v0, v0, Lcom/amap/api/search/geocoder/b;->c:Ljava/lang/String;

    .line 202
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 204
    :try_start_1
    const-string v1, "utf-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 208
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&city="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    :cond_0
    const-string v0, "&count="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    iget-object v0, p0, Lcom/amap/api/search/geocoder/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/search/geocoder/b;

    iget v0, v0, Lcom/amap/api/search/geocoder/b;->b:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0

    .line 197
    :catch_0
    move-exception v1

    .line 198
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 205
    :catch_1
    move-exception v1

    .line 206
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1
.end method

.method protected e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/amap/api/search/core/g;->a()Lcom/amap/api/search/core/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/search/core/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/geocode/simple?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
