.class public Lcom/cymobile/ymwork/server/parsers/json/PhotoParser;
.super Lcom/cymobile/ymwork/server/parsers/json/AbstractParser;
.source "PhotoParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cymobile/ymwork/server/parsers/json/AbstractParser",
        "<",
        "Lcom/cymobile/ymwork/types/Photo;",
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
    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/server/parsers/json/PhotoParser;->parse(Lorg/json/JSONObject;)Lcom/cymobile/ymwork/types/Photo;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lorg/json/JSONObject;)Lcom/cymobile/ymwork/types/Photo;
    .locals 4
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 19
    new-instance v1, Lcom/cymobile/ymwork/types/Photo;

    invoke-direct {v1}, Lcom/cymobile/ymwork/types/Photo;-><init>()V

    .line 21
    .local v1, photo:Lcom/cymobile/ymwork/types/Photo;
    const-string v2, "photoid"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 22
    const-string v2, "photoid"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cymobile/ymwork/types/Photo;->setPhotoid(Ljava/lang/String;)V

    .line 24
    :cond_0
    const-string v2, "phototype"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 25
    const-string v2, "phototype"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cymobile/ymwork/types/Photo;->setPhototype(Ljava/lang/String;)V

    .line 27
    :cond_1
    const-string v2, "photoowner"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 28
    const-string v2, "photoowner"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cymobile/ymwork/types/Photo;->setPhotoowner(Ljava/lang/String;)V

    .line 30
    :cond_2
    const-string v2, "photoclass"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 31
    const-string v2, "photoclass"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cymobile/ymwork/types/Photo;->setPhotoclass(Ljava/lang/String;)V

    .line 33
    :cond_3
    const-string v2, "photourl"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 34
    const-string v2, "photourl"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cymobile/ymwork/types/Photo;->setPhotourl(Ljava/lang/String;)V

    .line 36
    :cond_4
    const-string v2, "phototime"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 38
    :try_start_0
    const-string v2, "phototime"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/cymobile/ymwork/types/Photo;->setPhototime(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :cond_5
    :goto_0
    const-string v2, "photodesc"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 44
    const-string v2, "photodesc"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cymobile/ymwork/types/Photo;->setPhotodesc(Ljava/lang/String;)V

    .line 46
    :cond_6
    const-string v2, "flowerstimes"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 48
    :try_start_1
    const-string v2, "flowerstimes"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/cymobile/ymwork/types/Photo;->setFlowerstimes(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 54
    :cond_7
    :goto_1
    return-object v1

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, ee:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 49
    .end local v0           #ee:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 50
    .restart local v0       #ee:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
