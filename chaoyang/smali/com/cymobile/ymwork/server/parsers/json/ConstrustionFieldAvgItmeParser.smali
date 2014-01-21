.class public Lcom/cymobile/ymwork/server/parsers/json/ConstrustionFieldAvgItmeParser;
.super Lcom/cymobile/ymwork/server/parsers/json/AbstractParser;
.source "ConstrustionFieldAvgItmeParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cymobile/ymwork/server/parsers/json/AbstractParser",
        "<",
        "Lcom/cymobile/ymwork/types/ConstrustionFieldAvgItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
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
    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/server/parsers/json/ConstrustionFieldAvgItmeParser;->parse(Lorg/json/JSONObject;)Lcom/cymobile/ymwork/types/ConstrustionFieldAvgItem;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lorg/json/JSONObject;)Lcom/cymobile/ymwork/types/ConstrustionFieldAvgItem;
    .locals 2
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 16
    const/4 v0, 0x0

    .line 17
    .local v0, buildingReport:Lcom/cymobile/ymwork/types/ConstrustionFieldAvgItem;
    if-eqz p1, :cond_1

    .line 18
    new-instance v0, Lcom/cymobile/ymwork/types/ConstrustionFieldAvgItem;

    .end local v0           #buildingReport:Lcom/cymobile/ymwork/types/ConstrustionFieldAvgItem;
    invoke-direct {v0}, Lcom/cymobile/ymwork/types/ConstrustionFieldAvgItem;-><init>()V

    .line 19
    .restart local v0       #buildingReport:Lcom/cymobile/ymwork/types/ConstrustionFieldAvgItem;
    const-string v1, "name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 20
    const-string v1, "name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/types/ConstrustionFieldAvgItem;->setName(Ljava/lang/String;)V

    .line 22
    :cond_0
    const-string v1, "avg"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 23
    const-string v1, "avg"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/types/ConstrustionFieldAvgItem;->setAvg(Ljava/lang/String;)V

    .line 27
    :cond_1
    return-object v0
.end method
