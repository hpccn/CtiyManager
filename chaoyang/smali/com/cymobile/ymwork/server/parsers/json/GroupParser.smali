.class public Lcom/cymobile/ymwork/server/parsers/json/GroupParser;
.super Lcom/cymobile/ymwork/server/parsers/json/AbstractParser;
.source "GroupParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cymobile/ymwork/server/parsers/json/AbstractParser",
        "<",
        "Lcom/cymobile/ymwork/types/Group;",
        ">;"
    }
.end annotation


# instance fields
.field private mSubParser:Lcom/cymobile/ymwork/server/parsers/json/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cymobile/ymwork/server/parsers/json/Parser",
            "<+",
            "Lcom/cymobile/ymwork/types/BaseType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/cymobile/ymwork/server/parsers/json/Parser;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cymobile/ymwork/server/parsers/json/Parser",
            "<+",
            "Lcom/cymobile/ymwork/types/BaseType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p1, subParser:Lcom/cymobile/ymwork/server/parsers/json/Parser;,"Lcom/cymobile/ymwork/server/parsers/json/Parser<+Lcom/cymobile/ymwork/types/BaseType;>;"
    invoke-direct {p0}, Lcom/cymobile/ymwork/server/parsers/json/AbstractParser;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/cymobile/ymwork/server/parsers/json/GroupParser;->mSubParser:Lcom/cymobile/ymwork/server/parsers/json/Parser;

    .line 25
    return-void
.end method

.method private parse(Lcom/cymobile/ymwork/types/Group;Lorg/json/JSONArray;)V
    .locals 5
    .parameter "group"
    .parameter "array"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 67
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .local v3, m:I
    :goto_0
    if-lt v1, v3, :cond_0

    .line 77
    return-void

    .line 68
    :cond_0
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 69
    .local v0, element:Ljava/lang/Object;
    const/4 v2, 0x0

    .line 70
    .local v2, item:Lcom/cymobile/ymwork/types/BaseType;
    instance-of v4, v0, Lorg/json/JSONArray;

    if-eqz v4, :cond_1

    .line 71
    iget-object v4, p0, Lcom/cymobile/ymwork/server/parsers/json/GroupParser;->mSubParser:Lcom/cymobile/ymwork/server/parsers/json/Parser;

    check-cast v0, Lorg/json/JSONArray;

    .end local v0           #element:Ljava/lang/Object;
    invoke-interface {v4, v0}, Lcom/cymobile/ymwork/server/parsers/json/Parser;->parse(Lorg/json/JSONArray;)Lcom/cymobile/ymwork/types/Group;

    move-result-object v2

    .line 75
    :goto_1
    invoke-virtual {p1, v2}, Lcom/cymobile/ymwork/types/Group;->add(Ljava/lang/Object;)Z

    .line 67
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 73
    .restart local v0       #element:Ljava/lang/Object;
    :cond_1
    iget-object v4, p0, Lcom/cymobile/ymwork/server/parsers/json/GroupParser;->mSubParser:Lcom/cymobile/ymwork/server/parsers/json/Parser;

    check-cast v0, Lorg/json/JSONObject;

    .end local v0           #element:Ljava/lang/Object;
    invoke-interface {v4, v0}, Lcom/cymobile/ymwork/server/parsers/json/Parser;->parse(Lorg/json/JSONObject;)Lcom/cymobile/ymwork/types/BaseType;

    move-result-object v2

    goto :goto_1
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
    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/server/parsers/json/GroupParser;->parse(Lorg/json/JSONObject;)Lcom/cymobile/ymwork/types/Group;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lorg/json/JSONArray;)Lcom/cymobile/ymwork/types/Group;
    .locals 1
    .parameter "array"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 61
    new-instance v0, Lcom/cymobile/ymwork/types/Group;

    invoke-direct {v0}, Lcom/cymobile/ymwork/types/Group;-><init>()V

    .line 62
    .local v0, group:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/BaseType;>;"
    invoke-direct {p0, v0, p1}, Lcom/cymobile/ymwork/server/parsers/json/GroupParser;->parse(Lcom/cymobile/ymwork/types/Group;Lorg/json/JSONArray;)V

    .line 63
    return-object v0
.end method

.method public parse(Lorg/json/JSONObject;)Lcom/cymobile/ymwork/types/Group;
    .locals 6
    .parameter "json"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/cymobile/ymwork/types/Group",
            "<",
            "Lcom/cymobile/ymwork/types/BaseType;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 33
    new-instance v0, Lcom/cymobile/ymwork/types/Group;

    invoke-direct {v0}, Lcom/cymobile/ymwork/types/Group;-><init>()V

    .line 35
    .local v0, group:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/BaseType;>;"
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 36
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 52
    return-object v0

    .line 37
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 38
    .local v2, key:Ljava/lang/String;
    const-string v4, "type"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 39
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/cymobile/ymwork/types/Group;->setType(Ljava/lang/String;)V

    .line 40
    :cond_1
    const-string v4, "number"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 41
    const-string v4, "number"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/cymobile/ymwork/types/Group;->setNumber(I)V

    goto :goto_0

    .line 43
    :cond_2
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 44
    .local v3, obj:Ljava/lang/Object;
    instance-of v4, v3, Lorg/json/JSONArray;

    if-eqz v4, :cond_3

    .line 45
    check-cast v3, Lorg/json/JSONArray;

    .end local v3           #obj:Ljava/lang/Object;
    invoke-direct {p0, v0, v3}, Lcom/cymobile/ymwork/server/parsers/json/GroupParser;->parse(Lcom/cymobile/ymwork/types/Group;Lorg/json/JSONArray;)V

    goto :goto_0

    .line 47
    .restart local v3       #obj:Ljava/lang/Object;
    :cond_3
    new-instance v4, Lorg/json/JSONException;

    const-string v5, "Could not parse data."

    invoke-direct {v4, v5}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
