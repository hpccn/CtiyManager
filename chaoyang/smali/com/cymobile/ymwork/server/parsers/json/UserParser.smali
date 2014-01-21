.class public Lcom/cymobile/ymwork/server/parsers/json/UserParser;
.super Lcom/cymobile/ymwork/server/parsers/json/AbstractParser;
.source "UserParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cymobile/ymwork/server/parsers/json/AbstractParser",
        "<",
        "Lcom/cymobile/ymwork/types/User;",
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
    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/server/parsers/json/UserParser;->parse(Lorg/json/JSONObject;)Lcom/cymobile/ymwork/types/User;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lorg/json/JSONObject;)Lcom/cymobile/ymwork/types/User;
    .locals 5
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 13
    new-instance v2, Lcom/cymobile/ymwork/types/User;

    invoke-direct {v2}, Lcom/cymobile/ymwork/types/User;-><init>()V

    .line 14
    .local v2, user:Lcom/cymobile/ymwork/types/User;
    const-string v3, "userid"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 15
    const-string v3, "userid"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cymobile/ymwork/types/User;->setId(Ljava/lang/String;)V

    .line 17
    :cond_0
    const-string v3, "username"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 18
    const-string v3, "username"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cymobile/ymwork/types/User;->setUserName(Ljava/lang/String;)V

    .line 20
    :cond_1
    const-string v3, "passwd"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 21
    const-string v3, "passwd"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cymobile/ymwork/types/User;->setPassword(Ljava/lang/String;)V

    .line 23
    :cond_2
    const-string v3, "usergender"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 25
    const-string v3, "usergender"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 26
    const/4 v1, 0x0

    .line 30
    .local v1, gender:Z
    :goto_0
    invoke-virtual {v2, v1}, Lcom/cymobile/ymwork/types/User;->setGender(Z)V

    .line 32
    .end local v1           #gender:Z
    :cond_3
    const-string v3, "isadmin"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 34
    const-string v3, "isadmin"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 35
    const/4 v0, 0x0

    .line 39
    .local v0, admin:Z
    :goto_1
    invoke-virtual {v2, v0}, Lcom/cymobile/ymwork/types/User;->setAdmin(Z)V

    .line 41
    .end local v0           #admin:Z
    :cond_4
    const-string v3, "userage"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 42
    const-string v3, "userage"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/cymobile/ymwork/types/User;->setAge(I)V

    .line 45
    :cond_5
    const-string v3, "zoneid"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 46
    const-string v3, "zoneid"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cymobile/ymwork/types/User;->setZoneid(Ljava/lang/String;)V

    .line 47
    :cond_6
    const-string v3, "workcompany"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 48
    const-string v3, "workcompany"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cymobile/ymwork/types/User;->setWorkcompany(Ljava/lang/String;)V

    .line 49
    :cond_7
    const-string v3, "workpost"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 50
    const-string v3, "workpost"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cymobile/ymwork/types/User;->setWorkpost(Ljava/lang/String;)V

    .line 52
    :cond_8
    const-string v3, "zonename"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 53
    const-string v3, "zonename"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cymobile/ymwork/types/User;->setZoneName(Ljava/lang/String;)V

    .line 55
    :cond_9
    const-string v3, "usermobile"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 56
    const-string v3, "usermobile"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cymobile/ymwork/types/User;->setMobile(Ljava/lang/String;)V

    .line 58
    :cond_a
    const-string v3, "userlocation"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 59
    const-string v3, "userlocation"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cymobile/ymwork/types/User;->setLocation(Ljava/lang/String;)V

    .line 61
    :cond_b
    const-string v3, "useravatar"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 62
    const-string v3, "useravatar"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cymobile/ymwork/types/User;->setImage(Ljava/lang/String;)V

    .line 64
    :cond_c
    const-string v3, "useravatarlarge"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 65
    const-string v3, "useravatarlarge"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cymobile/ymwork/types/User;->setImageLarge(Ljava/lang/String;)V

    .line 67
    :cond_d
    const-string v3, "descr"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 68
    const-string v3, "descr"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cymobile/ymwork/types/User;->setDesc(Ljava/lang/String;)V

    .line 70
    :cond_e
    return-object v2

    .line 28
    :cond_f
    const/4 v1, 0x1

    .restart local v1       #gender:Z
    goto/16 :goto_0

    .line 37
    .end local v1           #gender:Z
    :cond_10
    const/4 v0, 0x1

    .restart local v0       #admin:Z
    goto/16 :goto_1
.end method
