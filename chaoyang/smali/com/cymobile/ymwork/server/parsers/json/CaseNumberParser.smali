.class public Lcom/cymobile/ymwork/server/parsers/json/CaseNumberParser;
.super Lcom/cymobile/ymwork/server/parsers/json/AbstractParser;
.source "CaseNumberParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cymobile/ymwork/server/parsers/json/AbstractParser",
        "<",
        "Lcom/cymobile/ymwork/types/CaseNumber;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
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
    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/server/parsers/json/CaseNumberParser;->parse(Lorg/json/JSONObject;)Lcom/cymobile/ymwork/types/CaseNumber;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lorg/json/JSONObject;)Lcom/cymobile/ymwork/types/CaseNumber;
    .locals 3
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 13
    const/4 v0, 0x0

    .line 14
    .local v0, caseNumber:Lcom/cymobile/ymwork/types/CaseNumber;
    if-eqz p1, :cond_10

    .line 15
    new-instance v0, Lcom/cymobile/ymwork/types/CaseNumber;

    .end local v0           #caseNumber:Lcom/cymobile/ymwork/types/CaseNumber;
    invoke-direct {v0}, Lcom/cymobile/ymwork/types/CaseNumber;-><init>()V

    .line 16
    .restart local v0       #caseNumber:Lcom/cymobile/ymwork/types/CaseNumber;
    const-string v1, "class0number"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 17
    const/4 v1, 0x0

    const-string v2, "class0number"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 19
    :cond_0
    const-string v1, "class1number"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 20
    const/4 v1, 0x1

    const-string v2, "class1number"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 22
    :cond_1
    const-string v1, "class2number"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 23
    const/4 v1, 0x2

    const-string v2, "class2number"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 25
    :cond_2
    const-string v1, "class3number"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 26
    const/4 v1, 0x3

    const-string v2, "class3number"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 28
    :cond_3
    const-string v1, "class4number"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 29
    const/4 v1, 0x4

    const-string v2, "class4number"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 31
    :cond_4
    const-string v1, "class5number"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 32
    const/4 v1, 0x5

    const-string v2, "class5number"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 34
    :cond_5
    const-string v1, "class6number"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 35
    const/4 v1, 0x6

    const-string v2, "class6number"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 37
    :cond_6
    const-string v1, "class7number"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 38
    const/4 v1, 0x7

    const-string v2, "class7number"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 41
    :cond_7
    const-string v1, "class8number"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 42
    const/16 v1, 0x8

    const-string v2, "class8number"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 44
    :cond_8
    const-string v1, "class9number"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 45
    const/16 v1, 0x9

    const-string v2, "class9number"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 47
    :cond_9
    const-string v1, "class10number"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 48
    const/16 v1, 0xa

    const-string v2, "class10number"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 50
    :cond_a
    const-string v1, "class11number"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 51
    const/16 v1, 0xb

    const-string v2, "class11number"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 53
    :cond_b
    const-string v1, "class12number"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 54
    const/16 v1, 0xc

    const-string v2, "class12number"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 56
    :cond_c
    const-string v1, "class13number"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 57
    const/16 v1, 0xd

    const-string v2, "class13number"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 59
    :cond_d
    const-string v1, "class14number"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 60
    const/16 v1, 0xe

    const-string v2, "class14number"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 62
    :cond_e
    const-string v1, "class15number"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 63
    const/16 v1, 0xf

    const-string v2, "class15number"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 65
    :cond_f
    const-string v1, "class16number"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 66
    const/16 v1, 0x10

    const-string v2, "class16number"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/cymobile/ymwork/types/CaseNumber;->setClassNumber(II)V

    .line 69
    :cond_10
    return-object v0
.end method
