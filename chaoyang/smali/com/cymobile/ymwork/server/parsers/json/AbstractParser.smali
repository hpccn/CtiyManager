.class public abstract Lcom/cymobile/ymwork/server/parsers/json/AbstractParser;
.super Ljava/lang/Object;
.source "AbstractParser.java"

# interfaces
.implements Lcom/cymobile/ymwork/server/parsers/json/Parser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/cymobile/ymwork/types/BaseType;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/cymobile/ymwork/server/parsers/json/Parser",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    .local p0, this:Lcom/cymobile/ymwork/server/parsers/json/AbstractParser;,"Lcom/cymobile/ymwork/server/parsers/json/AbstractParser<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract parse(Lorg/json/JSONObject;)Lcom/cymobile/ymwork/types/BaseType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method public parse(Lorg/json/JSONArray;)Lcom/cymobile/ymwork/types/Group;
    .locals 2
    .parameter "array"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 24
    .local p0, this:Lcom/cymobile/ymwork/server/parsers/json/AbstractParser;,"Lcom/cymobile/ymwork/server/parsers/json/AbstractParser<TT;>;"
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "Unexpected JSONArray parse type encountered."

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
