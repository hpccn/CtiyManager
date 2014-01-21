.class public Lcom/cymobile/ymwork/server/parsers/json/SettingsParser;
.super Lcom/cymobile/ymwork/server/parsers/json/AbstractParser;
.source "SettingsParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cymobile/ymwork/server/parsers/json/AbstractParser",
        "<",
        "Lcom/cymobile/ymwork/types/ServerSettings;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
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
    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/server/parsers/json/SettingsParser;->parse(Lorg/json/JSONObject;)Lcom/cymobile/ymwork/types/ServerSettings;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lorg/json/JSONObject;)Lcom/cymobile/ymwork/types/ServerSettings;
    .locals 2
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 12
    new-instance v0, Lcom/cymobile/ymwork/types/ServerSettings;

    invoke-direct {v0}, Lcom/cymobile/ymwork/types/ServerSettings;-><init>()V

    .line 13
    .local v0, obj:Lcom/cymobile/ymwork/types/ServerSettings;
    const-string v1, "feeds_key"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 14
    const-string v1, "feeds_key"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/types/ServerSettings;->setFeedsKey(Ljava/lang/String;)V

    .line 16
    :cond_0
    const-string v1, "get_pings"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 17
    const-string v1, "get_pings"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/types/ServerSettings;->setGetPings(Z)V

    .line 19
    :cond_1
    const-string v1, "pings"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 20
    const-string v1, "pings"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/types/ServerSettings;->setPings(Ljava/lang/String;)V

    .line 22
    :cond_2
    const-string v1, "version"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 23
    const-string v1, "version"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/types/ServerSettings;->setVersion(Ljava/lang/String;)V

    .line 25
    :cond_3
    const-string v1, "versionName"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 26
    const-string v1, "versionName"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/types/ServerSettings;->setVersionName(Ljava/lang/String;)V

    .line 28
    :cond_4
    const-string v1, "versiondesc"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 29
    const-string v1, "versiondesc"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/types/ServerSettings;->setVersiondesc(Ljava/lang/String;)V

    .line 31
    :cond_5
    const-string v1, "downloadaddress"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 32
    const-string v1, "downloadaddress"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/types/ServerSettings;->setDownloadaddress(Ljava/lang/String;)V

    .line 34
    :cond_6
    return-object v0
.end method
