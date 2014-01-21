.class public Lcom/cymobile/ymwork/search/SearchRemindJsonInfo;
.super Lcom/cymobile/ymwork/utils/json/JsonInfo;
.source "SearchRemindJsonInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/cymobile/ymwork/utils/json/JsonInfo;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/cymobile/ymwork/utils/json/JsonInfo;-><init>(Ljava/lang/String;)V

    .line 19
    return-void
.end method


# virtual methods
.method public parseJson(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .parameter "jsonStr"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v8, "("

    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v7, v8, 0x1

    .line 32
    .local v7, start:I
    const-string v8, ");"

    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 34
    .local v2, end:I
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 35
    invoke-virtual {p1, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 36
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 37
    .local v5, obj:Lorg/json/JSONObject;
    const-string v8, "q"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 38
    .local v6, query:Ljava/lang/String;
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    const-string v8, "s"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 40
    .local v0, arry:Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lt v3, v8, :cond_1

    .line 47
    .end local v0           #arry:Lorg/json/JSONArray;
    .end local v3           #i:I
    .end local v5           #obj:Lorg/json/JSONObject;
    .end local v6           #query:Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v4

    .line 41
    .restart local v0       #arry:Lorg/json/JSONArray;
    .restart local v3       #i:I
    .restart local v5       #obj:Lorg/json/JSONObject;
    .restart local v6       #query:Ljava/lang/String;
    :cond_1
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 44
    .end local v0           #arry:Lorg/json/JSONArray;
    .end local v3           #i:I
    .end local v5           #obj:Lorg/json/JSONObject;
    .end local v6           #query:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 45
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method
