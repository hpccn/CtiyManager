.class public Lcom/cymobile/ymwork/server/parsers/json/StringArrayParser;
.super Ljava/lang/Object;
.source "StringArrayParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 4
    .parameter "json"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .local v0, array:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .local v2, m:I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 17
    return-object v0

    .line 14
    :cond_0
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
