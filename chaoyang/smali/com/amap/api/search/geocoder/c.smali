.class public Lcom/amap/api/search/geocoder/c;
.super Lcom/amap/api/search/core/h;
.source "ReverseGeocodingHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/api/search/core/h",
        "<",
        "Lcom/amap/api/search/geocoder/d;",
        "Ljava/util/ArrayList",
        "<",
        "Landroid/location/Address;",
        ">;>;"
    }
.end annotation


# instance fields
.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:I

.field private m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation
.end field

.field private p:Z

.field private q:Z

.field private r:Z


# direct methods
.method public constructor <init>(Lcom/amap/api/search/geocoder/d;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amap/api/search/core/h;-><init>(Ljava/lang/Object;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iput-object v0, p0, Lcom/amap/api/search/geocoder/c;->i:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/amap/api/search/geocoder/c;->j:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/amap/api/search/geocoder/c;->k:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/search/geocoder/c;->l:I

    .line 39
    iget v0, p1, Lcom/amap/api/search/geocoder/d;->c:I

    iput v0, p0, Lcom/amap/api/search/geocoder/c;->l:I

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/search/geocoder/c;->m:Ljava/util/ArrayList;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/search/geocoder/c;->n:Ljava/util/ArrayList;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/search/geocoder/c;->o:Ljava/util/ArrayList;

    .line 43
    return-void
.end method

.method private a(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 117
    const-string v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/location/Address;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/location/Address;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 76
    iget v0, p0, Lcom/amap/api/search/geocoder/c;->l:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int v2, v0, v2

    .line 77
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    .line 78
    if-le v1, v0, :cond_0

    .line 79
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :cond_1
    return-void
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 13
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v12, 0x2

    const/4 v11, -0x1

    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 121
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    :cond_0
    return-void

    .line 124
    :cond_1
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 125
    const-string v0, "poilist"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    .line 126
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 127
    invoke-static {}, Lcom/amap/api/search/core/d;->a()Landroid/location/Address;

    move-result-object v6

    .line 128
    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 129
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/location/Address;->setFeatureName(Ljava/lang/String;)V

    .line 130
    const-string v3, "y"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-virtual {v6, v3, v4}, Landroid/location/Address;->setLatitude(D)V

    .line 131
    const-string v3, "x"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-virtual {v6, v3, v4}, Landroid/location/Address;->setLongitude(D)V

    .line 132
    const-string v3, "tel"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 133
    if-eqz v3, :cond_2

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 134
    invoke-virtual {v6, v3}, Landroid/location/Address;->setPhone(Ljava/lang/String;)V

    .line 136
    :cond_2
    const-string v3, "address"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 137
    if-eqz v2, :cond_4

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 138
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 139
    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 140
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u53f7"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 142
    :cond_3
    invoke-virtual {v6, v12, v2}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V

    .line 147
    const v3, 0x8def

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-eq v4, v11, :cond_7

    .line 148
    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 149
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 165
    :goto_1
    invoke-virtual {v6, v3}, Landroid/location/Address;->setThoroughfare(Ljava/lang/String;)V

    .line 167
    :try_start_0
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "setSubThoroughfare"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v3, v4, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 170
    if-eqz v3, :cond_4

    if-eqz v2, :cond_4

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 173
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v4, v7

    invoke-virtual {v3, v6, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :cond_4
    :goto_2
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setPremises"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v4, v7

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 181
    if-eqz v2, :cond_5

    .line 182
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v7, "POI"

    aput-object v7, v3, v4

    invoke-virtual {v2, v6, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 185
    :cond_5
    :goto_3
    if-eqz v6, :cond_6

    .line 186
    iget-object v2, p0, Lcom/amap/api/search/geocoder/c;->n:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    iput-boolean v10, p0, Lcom/amap/api/search/geocoder/c;->q:Z

    .line 126
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 150
    :cond_7
    const v3, 0x8857

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-eq v4, v11, :cond_8

    .line 151
    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 152
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 154
    :cond_8
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    move v3, v1

    .line 155
    :goto_4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v3, v7, :cond_10

    .line 156
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 157
    invoke-static {v7}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 162
    :goto_5
    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 163
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object v3, v4

    goto/16 :goto_1

    .line 155
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 174
    :catch_0
    move-exception v2

    .line 175
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 190
    :cond_a
    const-string v0, "crosslist"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 191
    :goto_6
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 192
    invoke-static {}, Lcom/amap/api/search/core/d;->a()Landroid/location/Address;

    move-result-object v0

    .line 193
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 194
    const-string v3, "road1"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 195
    const-string v4, "road2"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 196
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "name"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "-"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "name"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/location/Address;->setFeatureName(Ljava/lang/String;)V

    .line 198
    const-string v3, "y"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroid/location/Address;->setLatitude(D)V

    .line 199
    const-string v3, "x"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/location/Address;->setLongitude(D)V

    .line 201
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setPremises"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 203
    if-eqz v2, :cond_b

    .line 204
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v6, "Cross"

    aput-object v6, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 207
    :cond_b
    :goto_7
    if-eqz v0, :cond_c

    .line 208
    iget-object v2, p0, Lcom/amap/api/search/geocoder/c;->o:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    iput-boolean v10, p0, Lcom/amap/api/search/geocoder/c;->r:Z

    .line 191
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 212
    :cond_d
    const-string v0, "roadlist"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    :goto_8
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 214
    invoke-static {}, Lcom/amap/api/search/core/d;->a()Landroid/location/Address;

    move-result-object v0

    .line 215
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 216
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 217
    invoke-virtual {v0, v3}, Landroid/location/Address;->setFeatureName(Ljava/lang/String;)V

    .line 218
    const-string v4, "y"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Landroid/location/Address;->setLatitude(D)V

    .line 219
    const-string v4, "x"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Landroid/location/Address;->setLongitude(D)V

    .line 220
    invoke-virtual {v0, v12, v3}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V

    .line 221
    invoke-virtual {v0, v3}, Landroid/location/Address;->setThoroughfare(Ljava/lang/String;)V

    .line 223
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setPremises"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 225
    if-eqz v2, :cond_e

    .line 226
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v6, "StreetAndRoad"

    aput-object v6, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 230
    :cond_e
    :goto_9
    if-eqz v0, :cond_f

    .line 231
    iget-object v2, p0, Lcom/amap/api/search/geocoder/c;->m:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    iput-boolean v10, p0, Lcom/amap/api/search/geocoder/c;->p:Z

    .line 213
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 228
    :catch_1
    move-exception v2

    goto :goto_9

    .line 205
    :catch_2
    move-exception v2

    goto :goto_7

    .line 183
    :catch_3
    move-exception v2

    goto/16 :goto_3

    :cond_10
    move v3, v4

    goto/16 :goto_5
.end method

.method private b(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/location/Address;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 51
    iget v0, p0, Lcom/amap/api/search/geocoder/c;->l:I

    if-gtz v0, :cond_0

    .line 70
    :goto_0
    return-object p1

    .line 55
    :cond_0
    iget-boolean v0, p0, Lcom/amap/api/search/geocoder/c;->p:Z

    if-eqz v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/amap/api/search/geocoder/c;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v0, p0, Lcom/amap/api/search/geocoder/c;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/amap/api/search/geocoder/c;->n:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0}, Lcom/amap/api/search/geocoder/c;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 63
    iget v0, p0, Lcom/amap/api/search/geocoder/c;->l:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v0, v1

    if-lez v0, :cond_2

    .line 64
    iget-boolean v0, p0, Lcom/amap/api/search/geocoder/c;->r:Z

    if-eqz v0, :cond_2

    .line 65
    iget-object v0, p0, Lcom/amap/api/search/geocoder/c;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_2
    iget-object v0, p0, Lcom/amap/api/search/geocoder/c;->m:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0}, Lcom/amap/api/search/geocoder/c;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0
.end method


# virtual methods
.method protected a(Ljava/io/InputStream;)Ljava/util/ArrayList;
    .locals 9
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
    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 241
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 242
    const/4 v1, 0x0

    .line 244
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p1}, Lcom/amap/api/search/core/a;->a(Ljava/io/InputStream;)[B

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :goto_0
    invoke-static {v0}, Lcom/amap/api/search/core/d;->b(Ljava/lang/String;)V

    .line 250
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 251
    const-string v0, "list"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 252
    const-string v0, "list"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    move v0, v3

    .line 253
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_7

    .line 254
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 255
    const-string v5, "province"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 256
    const-string v5, "province"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/amap/api/search/geocoder/c;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/amap/api/search/geocoder/c;->j:Ljava/lang/String;

    .line 259
    :cond_0
    const-string v5, "district"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 260
    const-string v5, "district"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/amap/api/search/geocoder/c;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/amap/api/search/geocoder/c;->k:Ljava/lang/String;

    .line 263
    :cond_1
    const-string v5, "city"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 264
    const-string v5, "city"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/amap/api/search/geocoder/c;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/amap/api/search/geocoder/c;->i:Ljava/lang/String;

    .line 265
    iget-object v5, p0, Lcom/amap/api/search/geocoder/c;->i:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/amap/api/search/geocoder/c;->i:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 266
    :cond_2
    iget-object v5, p0, Lcom/amap/api/search/geocoder/c;->j:Ljava/lang/String;

    iput-object v5, p0, Lcom/amap/api/search/geocoder/c;->i:Ljava/lang/String;

    .line 269
    :cond_3
    const-string v5, "roadlist"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 270
    const-string v5, "roadlist"

    invoke-direct {p0, v4, v5}, Lcom/amap/api/search/geocoder/c;->a(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 271
    iget-object v5, p0, Lcom/amap/api/search/geocoder/c;->m:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 272
    iget-object v5, p0, Lcom/amap/api/search/geocoder/c;->m:Ljava/util/ArrayList;

    invoke-virtual {p0, v5}, Lcom/amap/api/search/geocoder/c;->a(Ljava/util/ArrayList;)V

    .line 275
    :cond_4
    const-string v5, "crosslist"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 276
    const-string v5, "crosslist"

    invoke-direct {p0, v4, v5}, Lcom/amap/api/search/geocoder/c;->a(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 277
    iget-object v5, p0, Lcom/amap/api/search/geocoder/c;->o:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 278
    iget-object v5, p0, Lcom/amap/api/search/geocoder/c;->o:Ljava/util/ArrayList;

    invoke-virtual {p0, v5}, Lcom/amap/api/search/geocoder/c;->a(Ljava/util/ArrayList;)V

    .line 281
    :cond_5
    const-string v5, "poilist"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 282
    const-string v5, "poilist"

    invoke-direct {p0, v4, v5}, Lcom/amap/api/search/geocoder/c;->a(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 283
    iget-object v4, p0, Lcom/amap/api/search/geocoder/c;->n:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_6

    .line 284
    iget-object v4, p0, Lcom/amap/api/search/geocoder/c;->n:Ljava/util/ArrayList;

    invoke-virtual {p0, v4}, Lcom/amap/api/search/geocoder/c;->a(Ljava/util/ArrayList;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 253
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 245
    :catch_0
    move-exception v0

    .line 246
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto/16 :goto_0

    .line 289
    :catch_1
    move-exception v0

    .line 290
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 297
    :cond_7
    :goto_2
    iget-boolean v0, p0, Lcom/amap/api/search/geocoder/c;->r:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/amap/api/search/geocoder/c;->q:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/amap/api/search/geocoder/c;->p:Z

    if-eqz v0, :cond_9

    .line 298
    :cond_8
    invoke-direct {p0, v2}, Lcom/amap/api/search/geocoder/c;->b(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 322
    :goto_3
    return-object v0

    .line 291
    :catch_2
    move-exception v0

    .line 292
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 293
    :catch_3
    move-exception v0

    .line 295
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 300
    :cond_9
    iget-object v0, p0, Lcom/amap/api/search/geocoder/c;->j:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 301
    invoke-static {}, Lcom/amap/api/search/core/d;->a()Landroid/location/Address;

    move-result-object v1

    .line 302
    iget-object v0, p0, Lcom/amap/api/search/geocoder/c;->j:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/location/Address;->setAdminArea(Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/amap/api/search/geocoder/c;->i:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/location/Address;->setLocality(Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/amap/api/search/geocoder/c;->k:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/location/Address;->setFeatureName(Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/amap/api/search/geocoder/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/search/geocoder/d;

    iget-wide v4, v0, Lcom/amap/api/search/geocoder/d;->b:D

    invoke-virtual {v1, v4, v5}, Landroid/location/Address;->setLatitude(D)V

    .line 306
    iget-object v0, p0, Lcom/amap/api/search/geocoder/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/search/geocoder/d;

    iget-wide v4, v0, Lcom/amap/api/search/geocoder/d;->a:D

    invoke-virtual {v1, v4, v5}, Landroid/location/Address;->setLongitude(D)V

    .line 308
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v4, "setSubLocality"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 310
    if-eqz v0, :cond_a

    .line 311
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/amap/api/search/geocoder/c;->k:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 314
    :cond_a
    :goto_4
    const-string v0, "\u4e2d\u56fd"

    invoke-virtual {v1, v3, v0}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V

    .line 315
    iget-object v0, p0, Lcom/amap/api/search/geocoder/c;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/amap/api/search/geocoder/c;->i:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/amap/api/search/geocoder/c;->j:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/amap/api/search/geocoder/c;->i:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/amap/api/search/geocoder/c;->k:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v8, v0}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V

    .line 320
    :goto_5
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    move-object v0, v2

    .line 322
    goto/16 :goto_3

    .line 318
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/amap/api/search/geocoder/c;->i:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/amap/api/search/geocoder/c;->k:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v8, v0}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V

    goto :goto_5

    .line 312
    :catch_4
    move-exception v0

    goto :goto_4
.end method

.method protected a(Ljava/util/ArrayList;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/location/Address;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 86
    iget-object v0, p0, Lcom/amap/api/search/geocoder/c;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 87
    invoke-static {}, Lcom/amap/api/search/core/d;->a()Landroid/location/Address;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    .line 91
    iget-object v2, p0, Lcom/amap/api/search/geocoder/c;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/location/Address;->setAdminArea(Ljava/lang/String;)V

    .line 92
    iget-object v2, p0, Lcom/amap/api/search/geocoder/c;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/location/Address;->setLocality(Ljava/lang/String;)V

    .line 95
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setSubLocality"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 97
    if-eqz v2, :cond_1

    .line 98
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/amap/api/search/geocoder/c;->k:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :cond_1
    :goto_1
    const-string v2, "\u4e2d\u56fd"

    invoke-virtual {v0, v8, v2}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V

    .line 102
    iget-object v2, p0, Lcom/amap/api/search/geocoder/c;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/amap/api/search/geocoder/c;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/amap/api/search/geocoder/c;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/api/search/geocoder/c;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/api/search/geocoder/c;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v7, v2}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/amap/api/search/geocoder/c;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/api/search/geocoder/c;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v7, v2}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V

    goto :goto_0

    .line 108
    :cond_3
    return-void

    .line 99
    :catch_0
    move-exception v2

    goto :goto_1
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
    .line 22
    invoke-virtual {p0, p1}, Lcom/amap/api/search/geocoder/c;->a(Ljava/io/InputStream;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected d()[B
    .locals 5

    .prologue
    .line 328
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 329
    const-string v0, "sid=7001&resType=json&encode=utf-8"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&region="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/amap/api/search/geocoder/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/search/geocoder/d;

    iget-wide v3, v0, Lcom/amap/api/search/geocoder/d;->a:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/amap/api/search/geocoder/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/search/geocoder/d;

    iget-wide v3, v0, Lcom/amap/api/search/geocoder/d;->b:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&range=500&roadnum=10&crossnum=1&poinum="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/amap/api/search/geocoder/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/search/geocoder/d;

    iget v0, v0, Lcom/amap/api/search/geocoder/d;->c:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method protected e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/amap/api/search/core/g;->a()Lcom/amap/api/search/core/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/search/core/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/rgeocode/simple?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
