.class public Lcom/cymobile/ymwork/server/parsers/json/VisitorvolumeParser;
.super Lcom/cymobile/ymwork/server/parsers/json/AbstractParser;
.source "VisitorvolumeParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cymobile/ymwork/server/parsers/json/AbstractParser",
        "<",
        "Lcom/cymobile/ymwork/types/VisitorvolumeReport;",
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
    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/server/parsers/json/VisitorvolumeParser;->parse(Lorg/json/JSONObject;)Lcom/cymobile/ymwork/types/VisitorvolumeReport;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lorg/json/JSONObject;)Lcom/cymobile/ymwork/types/VisitorvolumeReport;
    .locals 7
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 19
    const/4 v2, 0x0

    .line 21
    .local v2, field:Lcom/cymobile/ymwork/types/VisitorvolumeReport;
    if-eqz p1, :cond_3

    .line 22
    new-instance v2, Lcom/cymobile/ymwork/types/VisitorvolumeReport;

    .end local v2           #field:Lcom/cymobile/ymwork/types/VisitorvolumeReport;
    invoke-direct {v2}, Lcom/cymobile/ymwork/types/VisitorvolumeReport;-><init>()V

    .line 55
    .restart local v2       #field:Lcom/cymobile/ymwork/types/VisitorvolumeReport;
    const-string v5, "times"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 56
    const-string v5, "times"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/cymobile/ymwork/types/VisitorvolumeReport;->setTimes(Ljava/lang/String;)V

    .line 59
    :cond_0
    :try_start_0
    const-string v5, "time"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 66
    const-string v5, "time"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/cymobile/ymwork/types/VisitorvolumeReport;->setTime(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :cond_1
    :goto_0
    const-string v5, "registTimes"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 72
    const-string v5, "registTimes"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/cymobile/ymwork/types/VisitorvolumeReport;->setRegistTimes(Ljava/lang/String;)V

    .line 75
    :cond_2
    :try_start_1
    const-string v5, "registTime"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 76
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "HH"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 77
    .local v4, sdf:Ljava/text/SimpleDateFormat;
    const-string v5, "GMT"

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 78
    new-instance v0, Ljava/util/Date;

    const-string v5, "registTime"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-direct {v0, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 79
    .local v0, d:Ljava/util/Date;
    invoke-virtual {v4, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, sDateTime:Ljava/lang/String;
    invoke-virtual {v2, v3}, Lcom/cymobile/ymwork/types/VisitorvolumeReport;->setRegistTime(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 87
    .end local v0           #d:Ljava/util/Date;
    .end local v3           #sDateTime:Ljava/lang/String;
    .end local v4           #sdf:Ljava/text/SimpleDateFormat;
    :cond_3
    :goto_1
    return-object v2

    .line 68
    :catch_0
    move-exception v1

    .line 69
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 82
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 83
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
