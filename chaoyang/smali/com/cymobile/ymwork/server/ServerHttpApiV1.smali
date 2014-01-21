.class public Lcom/cymobile/ymwork/server/ServerHttpApiV1;
.super Ljava/lang/Object;
.source "ServerHttpApiV1.java"


# static fields
.field private static final DATATYPE:Ljava/lang/String; = ".json"

.field private static final TAG:Ljava/lang/String; = "ServerHttpApiV1"

.field private static final URL_API_BUILDING_DETAIL:Ljava/lang/String; = "/ChaoYangWork/Building_recordsSelect"

.field private static final URL_API_BUILDING_DETAILFullNumber:Ljava/lang/String; = "/ChaoYangWork/SelectBuildingrecordsnum"

.field private static final URL_API_BUILDING_GROUP:Ljava/lang/String; = "/ChaoYangWork/ServletBuilding_AllServlet"

.field private static final URL_API_BUILDING_GROUP_Report:Ljava/lang/String; = "/ChaoYangWork/BuildingAllNumberArea"

.field private static final URL_API_CASENUMBER:Ljava/lang/String; = "/ChaoYangWork/SelectClassnumServlet"

.field private static final URL_API_CASEREPLYS:Ljava/lang/String; = "/ChaoYangWork/SelectReplysServlet"

.field private static final URL_API_COMMS:Ljava/lang/String; = "/ChaoYangWork/CommCnameServlet"

.field private static final URL_API_EMAIL_REGISTER:Ljava/lang/String; = "/com.jerser.first/Zscy_HttpemailRegister"

.field private static final URL_API_FORGET_PASSWORD:Ljava/lang/String; = "/ChaoYangWork/Zscy_HttpForgetPasswd"

.field private static final URL_API_LOGIN:Ljava/lang/String; = "/ChaoYangWork/UsersLoginServlet"

.field private static final URL_API_MOBILE_REGISTER:Ljava/lang/String; = "/com.jersey.first/Zscy_HttpmobileRegister"

.field private static final URL_API_NEWREPLY:Ljava/lang/String; = "/ChaoYangWork/SaveReplysServlet"

.field private static final URL_API_NEWUSER:Ljava/lang/String; = "/ChaoYangWork/SaveUsersServlet"

.field private static final URL_API_SAVE_PROFILE_CHANGES:Ljava/lang/String; = "/com.jersey.first/Zscy_HttpUsers_update"

.field private static final URL_API_SERVERSETTINGS:Ljava/lang/String; = "/ChaoYangWork/UpgradeServlet"

.field private static final URL_API_SERVERSETTINGSSuper:Ljava/lang/String; = "/ChaoYangWork/UpgradeServletSuper"

.field private static final URL_API_SHOPDETAIL:Ljava/lang/String; = "/com.jersey.first/Zscy_HttpServlet"

.field private static final URL_API_SHOPS:Ljava/lang/String; = "/com.jersey.first/Zscy_Httpshops"

.field private static final URL_API_USER:Ljava/lang/String; = "/angel/login.php"

.field private static final URL_API_USERAREA:Ljava/lang/String; = "/ChaoYangWork/BianjieServlet"

.field private static final URL_API_USERDETAIL:Ljava/lang/String; = "/ChaoYangWork/UsersAll_mobileServlet"

.field private static final URL_API_USERS:Ljava/lang/String; = "/ChaoYangWork/UsersAllServlet"

.field private static final URL_API_USERUPDATE:Ljava/lang/String; = "/ChaoYangWork/Users_updateAllServlet"

.field private static final URL_API_USERUPDATEPasswd:Ljava/lang/String; = "/ChaoYangWork/UpdateUsersServlet"

.field private static final URL_API_USER_UPDATE:Ljava/lang/String; = "/user/update"

.field private static final URL_API_ZONES:Ljava/lang/String; = "/ChaoYangWork/StreetCnameServlet"


# instance fields
.field private final mApiBaseUrl:Ljava/lang/String;

.field private final mAuthScope:Lorg/apache/http/auth/AuthScope;

.field private mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

.field private final mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 2
    .parameter "domain"
    .parameter "clientVersion"
    .parameter "useOAuth"
    .parameter "port"

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    invoke-static {}, Lcom/cymobile/ymwork/server/http/AbstractHttpApi;->createHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV1;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 101
    const/16 v0, 0x50

    if-eq p4, v0, :cond_0

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV1;->mApiBaseUrl:Ljava/lang/String;

    .line 106
    :goto_0
    new-instance v0, Lorg/apache/http/auth/AuthScope;

    invoke-direct {v0, p1, p4}, Lorg/apache/http/auth/AuthScope;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV1;->mAuthScope:Lorg/apache/http/auth/AuthScope;

    .line 108
    if-eqz p3, :cond_1

    .line 109
    new-instance v0, Lcom/cymobile/ymwork/server/http/HttpApiWithOAuth;

    iget-object v1, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV1;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v1, p2}, Lcom/cymobile/ymwork/server/http/HttpApiWithOAuth;-><init>(Lorg/apache/http/impl/client/DefaultHttpClient;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV1;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    .line 113
    :goto_1
    return-void

    .line 104
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV1;->mApiBaseUrl:Ljava/lang/String;

    goto :goto_0

    .line 111
    :cond_1
    new-instance v0, Lcom/cymobile/ymwork/server/http/HttpApiWithBasicAuth;

    iget-object v1, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV1;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v1, p2}, Lcom/cymobile/ymwork/server/http/HttpApiWithBasicAuth;-><init>(Lorg/apache/http/impl/client/DefaultHttpClient;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV1;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    goto :goto_1
.end method

.method private fullUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "url"

    .prologue
    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV1;->mApiBaseUrl:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method UserAreas(Ljava/lang/String;Ljava/lang/String;)Lcom/cymobile/ymwork/types/UserArea;
    .locals 7
    .parameter "UserID"
    .parameter "USerAreaID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cymobile/ymwork/server/error/ServerCredentialsException;,
            Lcom/cymobile/ymwork/server/error/ServerParseException;,
            Lcom/cymobile/ymwork/server/error/ServerException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 347
    iget-object v1, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV1;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    const-string v2, "/ChaoYangWork/BianjieServlet"

    invoke-direct {p0, v2}, Lcom/cymobile/ymwork/server/ServerHttpApiV1;->fullUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/apache/http/NameValuePair;

    const/4 v4, 0x0

    .line 348
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "UserID"

    invoke-direct {v5, v6, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 349
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "code"

    invoke-direct {v5, v6, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    .line 347
    invoke-interface {v1, v2, v3}, Lcom/cymobile/ymwork/server/http/HttpApi;->createHttpGet(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 350
    .local v0, httpGet:Lorg/apache/http/client/methods/HttpGet;
    iget-object v1, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV1;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    new-instance v2, Lcom/cymobile/ymwork/server/parsers/json/UserAreaParser;

    invoke-direct {v2}, Lcom/cymobile/ymwork/server/parsers/json/UserAreaParser;-><init>()V

    invoke-interface {v1, v0, v2}, Lcom/cymobile/ymwork/server/http/HttpApi;->doHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/cymobile/ymwork/server/parsers/json/Parser;)Lcom/cymobile/ymwork/types/BaseType;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/types/UserArea;

    return-object v1
.end method

.method public addReply(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cymobile/ymwork/types/CommonResult;
    .locals 9
    .parameter "caseid"
    .parameter "classid"
    .parameter "usermobile"
    .parameter "userzoneid"
    .parameter "userid"
    .parameter "result"
    .parameter "detail"
    .parameter "desc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cymobile/ymwork/server/error/ServerCredentialsException;,
            Lcom/cymobile/ymwork/server/error/ServerParseException;,
            Lcom/cymobile/ymwork/server/error/ServerException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 369
    iget-object v2, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV1;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    const-string v3, "/ChaoYangWork/SaveReplysServlet"

    invoke-direct {p0, v3}, Lcom/cymobile/ymwork/server/ServerHttpApiV1;->fullUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x8

    new-array v4, v4, [Lorg/apache/http/NameValuePair;

    const/4 v5, 0x0

    .line 370
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "caseid"

    invoke-direct {v6, v7, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 371
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "classid"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 372
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "usermobile"

    invoke-direct {v6, v7, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v4, v5

    const/4 v5, 0x3

    .line 373
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "userzoneid"

    invoke-direct {v6, v7, p4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v4, v5

    const/4 v5, 0x4

    .line 374
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "userid"

    invoke-direct {v6, v7, p5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v4, v5

    const/4 v5, 0x5

    .line 375
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "result"

    invoke-direct {v6, v7, p6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v4, v5

    const/4 v5, 0x6

    .line 376
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "detail"

    move-object/from16 v0, p7

    invoke-direct {v6, v7, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v4, v5

    const/4 v5, 0x7

    .line 377
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "desc"

    move-object/from16 v0, p8

    invoke-direct {v6, v7, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v4, v5

    .line 369
    invoke-interface {v2, v3, v4}, Lcom/cymobile/ymwork/server/http/HttpApi;->createHttpGet(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v1

    .line 379
    .local v1, httpGet:Lorg/apache/http/client/methods/HttpGet;
    iget-object v2, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV1;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    new-instance v3, Lcom/cymobile/ymwork/server/parsers/json/ResultParser;

    invoke-direct {v3}, Lcom/cymobile/ymwork/server/parsers/json/ResultParser;-><init>()V

    invoke-interface {v2, v1, v3}, Lcom/cymobile/ymwork/server/http/HttpApi;->doHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/cymobile/ymwork/server/parsers/json/Parser;)Lcom/cymobile/ymwork/types/BaseType;

    move-result-object v2

    check-cast v2, Lcom/cymobile/ymwork/types/CommonResult;

    return-object v2
.end method

.method public addUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cymobile/ymwork/server/Server$Location;)Lcom/cymobile/ymwork/types/CommonResult;
    .locals 8
    .parameter "username"
    .parameter "phone"
    .parameter "password"
    .parameter "isadmin"
    .parameter "zoneid"
    .parameter "zoneName"
    .parameter "desc"
    .parameter "location"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cymobile/ymwork/server/error/ServerCredentialsException;,
            Lcom/cymobile/ymwork/server/error/ServerParseException;,
            Lcom/cymobile/ymwork/server/error/ServerException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 296
    iget-object v2, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV1;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    const-string v1, "/ChaoYangWork/SaveUsersServlet"

    invoke-direct {p0, v1}, Lcom/cymobile/ymwork/server/ServerHttpApiV1;->fullUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x7

    new-array v4, v1, [Lorg/apache/http/NameValuePair;

    const/4 v1, 0x0

    .line 297
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "usermobile"

    invoke-direct {v5, v6, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v4, v1

    const/4 v1, 0x1

    .line 298
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "passwd"

    invoke-direct {v5, v6, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v4, v1

    const/4 v1, 0x2

    .line 299
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "username"

    invoke-direct {v5, v6, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v4, v1

    const/4 v5, 0x3

    .line 300
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "isadmin"

    if-eqz p4, :cond_0

    const-string v1, "1"

    :goto_0
    invoke-direct {v6, v7, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v4, v5

    const/4 v1, 0x4

    .line 301
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "zoneid"

    invoke-direct {v5, v6, p5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v4, v1

    const/4 v1, 0x5

    .line 302
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "zonename"

    invoke-direct {v5, v6, p6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v4, v1

    const/4 v1, 0x6

    .line 303
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "desc"

    invoke-direct {v5, v6, p7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v4, v1

    .line 296
    invoke-interface {v2, v3, v4}, Lcom/cymobile/ymwork/server/http/HttpApi;->createHttpGet(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 305
    .local v0, httpGet:Lorg/apache/http/client/methods/HttpGet;
    iget-object v1, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV1;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    new-instance v2, Lcom/cymobile/ymwork/server/parsers/json/ResultParser;

    invoke-direct {v2}, Lcom/cymobile/ymwork/server/parsers/json/ResultParser;-><init>()V

    invoke-interface {v1, v0, v2}, Lcom/cymobile/ymwork/server/http/HttpApi;->doHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/cymobile/ymwork/server/parsers/json/Parser;)Lcom/cymobile/ymwork/types/BaseType;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/types/CommonResult;

    return-object v1

    .line 300
    .end local v0           #httpGet:Lorg/apache/http/client/methods/HttpGet;
    :cond_0
    const-string v1, "0"

    goto :goto_0
.end method

.method public buildingDetail(Ljava/lang/String;Ljava/lang/String;)Lcom/cymobile/ymwork/types/Building;
    .locals 7
    .parameter "recordnumber"
    .parameter "zoneid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cymobile/ymwork/server/error/ServerCredentialsException;,
            Lcom/cymobile/ymwork/server/error/ServerParseException;,
            Lcom/cymobile/ymwork/server/error/ServerException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 233
    iget-object v1, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV1;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    const-string v2, "/ChaoYangWork/Building_recordsSelect"

    invoke-direct {p0, v2}, Lcom/cymobile/ymwork/server/ServerHttpApiV1;->fullUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/apache/http/NameValuePair;

    const/4 v4, 0x0

    .line 234
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "buildingrecordsnum"

    invoke-direct {v5, v6, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 235
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "zoneid"

    invoke-direct {v5, v6, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    .line 233
    invoke-interface {v1, v2, v3}, Lcom/cymobile/ymwork/server/http/HttpApi;->createHttpGet(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 236
    .local v0, httpGet:Lorg/apache/http/client/methods/HttpGet;
    iget-object v1, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV1;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    new-instance v2, Lcom/cymobile/ymwork/server/parsers/json/BuildingParser;

    invoke-direct {v2}, Lcom/cymobile/ymwork/server/parsers/json/BuildingParser;-><init>()V

    invoke-interface {v1, v0, v2}, Lcom/cymobile/ymwork/server/http/HttpApi;->doHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/cymobile/ymwork/server/parsers/json/Parser;)Lcom/cymobile/ymwork/types/BaseType;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/types/Building;

    return-object v1
.end method

.method public buildingDetailFullNumber(Ljava/lang/String;Ljava/lang/String;I)Lcom/cymobile/ymwork/types/Building;
    .locals 8
    .parameter "recordnumber"
    .parameter "zoneid"
    .parameter "classid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cymobile/ymwork/server/error/ServerCredentialsException;,
            Lcom/cymobile/ymwork/server/error/ServerParseException;,
            Lcom/cymobile/ymwork/server/error/ServerException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 239
    iget-object v1, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV1;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    const-string v2, "/ChaoYangWork/SelectBuildingrecordsnum"

    invoke-direct {p0, v2}, Lcom/cymobile/ymwork/server/ServerHttpApiV1;->fullUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Lorg/apache/http/NameValuePair;

    const/4 v4, 0x0

    .line 240
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "buildingrecordsnum"

    invoke-direct {v5, v6, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 241
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "zoneid"

    invoke-direct {v5, v6, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 242
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "classid"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    .line 239
    invoke-interface {v1, v2, v3}, Lcom/cymobile/ymwork/server/http/HttpApi;->createHttpGet(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 243
    .local v0, httpGet:Lorg/apache/http/client/methods/HttpGet;
    iget-object v1, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV1;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    new-instance v2, Lcom/cymobile/ymwork/server/parsers/json/BuildingParser;

    invoke-direct {v2}, Lcom/cymobile/ymwork/server/parsers/json/BuildingParser;-><init>()V

    invoke-interface {v1, v0, v2}, Lcom/cymobile/ymwork/server/http/HttpApi;->doHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/cymobile/ymwork/server/parsers/json/Parser;)Lcom/cymobile/ymwork/types/BaseType;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/types/Building;

    return-object v1
.end method

.method buildings(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;IILcom/cymobile/ymwork/server/Server$Location;)Lcom/cymobile/ymwork/types/Group;
    .locals 10
    .parameter "classid"
    .parameter "zoneId"
    .parameter "range"
    .parameter "category"
    .parameter "order"
    .parameter "index"
    .parameter "listnum"
    .parameter "location"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lcom/cymobile/ymwork/server/Server$Location;",
            ")",
            "Lcom/cymobile/ymwork/types/Group",
            "<",
            "Lcom/cymobile/ymwork/types/Building;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cymobile/ymwork/server/error/ServerCredentialsException;,
            Lcom/cymobile/ymwork/server/error/ServerParseException;,
            Lcom/cymobile/ymwork/server/error/ServerException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 205
    iget-object v3, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV1;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    const-string v2, "/ChaoYangWork/ServletBuilding_AllServlet"

    invoke-direct {p0, v2}, Lcom/cymobile/ymwork/server/ServerHttpApiV1;->fullUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0xc

    new-array v5, v2, [Lorg/apache/http/NameValuePair;

    const/4 v2, 0x0

    .line 206
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "code"

    invoke-direct {v6, v7, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v2

    const/4 v2, 0x1

    .line 207
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "classid"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v2

    const/4 v2, 0x2

    .line 208
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "day"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v2

    const/4 v2, 0x3

    .line 209
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "category"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v2

    const/4 v2, 0x4

    .line 210
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "order"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v2

    const/4 v2, 0x5

    .line 211
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "startintent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p6

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v2

    const/4 v2, 0x6

    .line 212
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "endnum"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    add-int v9, p6, p7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v2

    const/4 v6, 0x7

    .line 213
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "geolat"

    if-eqz p8, :cond_0

    move-object/from16 v0, p8

    iget-object v2, v0, Lcom/cymobile/ymwork/server/Server$Location;->geolat:Ljava/lang/String;

    :goto_0
    invoke-direct {v7, v8, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v5, v6

    const/16 v6, 0x8

    .line 214
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "geolong"

    if-eqz p8, :cond_1

    move-object/from16 v0, p8

    iget-object v2, v0, Lcom/cymobile/ymwork/server/Server$Location;->geolong:Ljava/lang/String;

    :goto_1
    invoke-direct {v7, v8, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v5, v6

    const/16 v6, 0x9

    .line 215
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "geohacc"

    if-eqz p8, :cond_2

    move-object/from16 v0, p8

    iget-object v2, v0, Lcom/cymobile/ymwork/server/Server$Location;->geohacc:Ljava/lang/String;

    :goto_2
    invoke-direct {v7, v8, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v5, v6

    const/16 v6, 0xa

    .line 216
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "geovacc"

    if-eqz p8, :cond_3

    move-object/from16 v0, p8

    iget-object v2, v0, Lcom/cymobile/ymwork/server/Server$Location;->geovacc:Ljava/lang/String;

    :goto_3
    invoke-direct {v7, v8, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v5, v6

    const/16 v6, 0xb

    .line 217
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "geoalt"

    if-eqz p8, :cond_4

    move-object/from16 v0, p8

    iget-object v2, v0, Lcom/cymobile/ymwork/server/Server$Location;->geoalt:Ljava/lang/String;

    :goto_4
    invoke-direct {v7, v8, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v5, v6

    .line 205
    invoke-interface {v3, v4, v5}, Lcom/cymobile/ymwork/server/http/HttpApi;->createHttpGet(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v1

    .line 219
    .local v1, httpGet:Lorg/apache/http/client/methods/HttpGet;
    iget-object v2, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV1;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    new-instance v3, Lcom/cymobile/ymwork/server/parsers/json/GroupParser;

    new-instance v4, Lcom/cymobile/ymwork/server/parsers/json/BuildingParser;

    invoke-direct {v4}, Lcom/cymobile/ymwork/server/parsers/json/BuildingParser;-><init>()V

    invoke-direct {v3, v4}, Lcom/cymobile/ymwork/server/parsers/json/GroupParser;-><init>(Lcom/cymobile/ymwork/server/parsers/json/Parser;)V

    invoke-interface {v2, v1, v3}, Lcom/cymobile/ymwork/server/http/HttpApi;->doHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/cymobile/ymwork/server/parsers/json/Parser;)Lcom/cymobile/ymwork/types/BaseType;

    move-result-object v2

    check-cast v2, Lcom/cymobile/ymwork/types/Group;

    return-object v2

    .line 213
    .end local v1           #httpGet:Lorg/apache/http/client/methods/HttpGet;
    :cond_0
    const-string v2, "39.11"

    goto :goto_0

    .line 214
    :cond_1
    const-string v2, "116.111"

    goto :goto_1

    .line 215
    :cond_2
    const-string v2, ""

    goto :goto_2

    .line 216
    :cond_3
    const-string v2, ""

    goto :goto_3

    .line 217
    :cond_4
    const-string v2, ""

    goto :goto_4
.end method

.method public buildingsReport(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Lcom/cymobile/ymwork/types/BuildingReport;
    .locals 9
    .parameter "zoneId"
    .parameter "type"
    .parameter "range"
    .parameter "category"
    .parameter "order"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cymobile/ymwork/server/error/ServerCredentialsException;,
            Lcom/cymobile/ymwork/server/error/ServerParseException;,
            Lcom/cymobile/ymwork/server/error/ServerException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 223
    iget-object v1, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV1;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    const-string v2, "/ChaoYangWork/BuildingAllNumberArea"

    invoke-direct {p0, v2}, Lcom/cymobile/ymwork/server/ServerHttpApiV1;->fullUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    new-array v3, v3, [Lorg/apache/http/NameValuePair;

    const/4 v4, 0x0

    .line 224
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "code"

    invoke-direct {v5, v6, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 225
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "classid"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 226
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "day"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x3

    .line 227
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "category"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x4

    .line 228
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "order"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    .line 223
    invoke-interface {v1, v2, v3}, Lcom/cymobile/ymwork/server/http/HttpApi;->createHttpGet(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 230
    .local v0, httpGet:Lorg/apache/http/client/methods/HttpGet;
    iget-object v1, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV1;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    new-instance v2, Lcom/cymobile/ymwork/server/parsers/json/BuildingParserReport;

    invoke-direct {v2}, Lcom/cymobile/ymwork/server/parsers/json/BuildingParserReport;-><init>()V

    invoke-interface {v1, v0, v2}, Lcom/cymobile/ymwork/server/http/HttpApi;->doHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/cymobile/ymwork/server/parsers/json/Parser;)Lcom/cymobile/ymwork/types/BaseType;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/types/BuildingReport;

    return-object v1
.end method

.method changePasswd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cymobile/ymwork/server/Server$Location;)Lcom/cymobile/ymwork/types/CommonResult;
    .locals 7
    .parameter "phone"
    .parameter "oldpasswd"
    .parameter "password"
    .parameter "location"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cymobile/ymwork/server/error/ServerCredentialsException;,
            Lcom/cymobile/ymwork/server/error/ServerParseException;,
            Lcom/cymobile/ymwork/server/error/ServerException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 339
    iget-object v1, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV1;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    const-string v2, "/ChaoYangWork/UpdateUsersServlet"

    invoke-direct {p0, v2}, Lcom/cymobile/ymwork/server/ServerHttpApiV1;->fullUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Lorg/apache/http/NameValuePair;

    const/4 v4, 0x0

    .line 340
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "usermobile"

    invoke-direct {v5, v6, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 341
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "passwd"

    invoke-direct {v5, v6, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 342
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "passwdtwo"

    invoke-direct {v5, v6, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    .line 339
    invoke-interface {v1, v2, v3}, Lcom/cymobile/ymwork/server/http/HttpApi;->createHttpGet(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 344
    .local v0, httpGet:Lorg/apache/http/client/methods/HttpGet;
    iget-object v1, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV1;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    new-instance v2, Lcom/cymobile/ymwork/server/parsers/json/ResultParser;

    invoke-direct {v2}, Lcom/cymobile/ymwork/server/parsers/json/ResultParser;-><init>()V

    invoke-interface {v1, v0, v2}, Lcom/cymobile/ymwork/server/http/HttpApi;->doHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/cymobile/ymwork/server/parsers/json/Parser;)Lcom/cymobile/ymwork/types/BaseType;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/types/CommonResult;

    return-object v1
.end method

.method public forgetPassword(Ljava/lang/String;)Lcom/cymobile/ymwork/types/CommonResult;
    .locals 7
    .parameter "moe"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cymobile/ymwork/server/error/ServerCredentialsException;,
            Lcom/cymobile/ymwork/server/error/ServerParseException;,
            Lcom/cymobile/ymwork/server/error/ServerException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 285
    iget-object v1, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV1;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    const-string v2, "/ChaoYangWork/Zscy_HttpForgetPasswd"

    invoke-direct {p0, v2}, Lcom/cymobile/ymwork/server/ServerHttpApiV1;->fullUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Lorg/apache/http/NameValuePair;

    const/4 v4, 0x0

    .line 286
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "mobieloremail"

    invoke-direct {v5, v6, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    .line 285
    invoke-interface {v1, v2, v3}, Lcom/cymobile/ymwork/server/http/HttpApi;->createHttpGet(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 287
    .local v0, httpGet:Lorg/apache/http/client/methods/HttpGet;
    iget-object v1, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV1;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    new-instance v2, Lcom/cymobile/ymwork/server/parsers/json/ResultParser;

    invoke-direct {v2}, Lcom/cymobile/ymwork/server/parsers/json/ResultParser;-><init>()V

    invoke-interface {v1, v0, v2}, Lcom/cymobile/ymwork/server/http/HttpApi;->doHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/cymobile/ymwork/server/parsers/json/Parser;)Lcom/cymobile/ymwork/types/BaseType;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/types/CommonResult;

    return-object v1
.end method

.method getAllComm()Lcom/cymobile/ymwork/types/Group;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cymobile/ymwork/types/Group",
            "<",
            "Lcom/cymobile/ymwork/types/Zone;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cymobile/ymwork/server/error/ServerCredentialsException;,
            Lcom/cymobile/ymwork/server/error/ServerParseException;,
            Lcom/cymobile/ymwork/server/error/ServerException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 314
    iget-object v1, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV1;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    const-string v2, "/ChaoYangWork/CommCnameServlet"

    invoke-direct {p0, v2}, Lcom/cymobile/ymwork/server/ServerHttpApiV1;->fullUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Lorg/apache/http/NameValuePair;

    const/4 v4, 0x0

    .line 315
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "code"

    const-string v7, ""

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    .line 314
    invoke-interface {v1, v2, v3}, Lcom/cymobile/ymwork/server/http/HttpApi;->createHttpGet(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 317
    .local v0, httpGet:Lorg/apache/http/client/methods/HttpGet;
    iget-object v1, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV1;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    new-instance v2, Lcom/cymobile/ymwork/server/parsers/json/GroupParser;

    new-instance v3, Lcom/cymobile/ymwork/server/parsers/json/ZoneParser;

    invoke-direct {v3}, Lcom/cymobile/ymwork/server/parsers/json/ZoneParser;-><init>()V

    invoke-direct {v2, v3}, Lcom/cymobile/ymwork/server/parsers/json/GroupParser;-><init>(Lcom/cymobile/ymwork/server/parsers/json/Parser;)V

    invoke-interface {v1, v0, v2}, Lcom/cymobile/ymwork/server/http/HttpApi;->doHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/cymobile/ymwork/server/parsers/json/Parser;)Lcom/cymobile/ymwork/types/BaseType;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/types/Group;

    return-object v1
.end method

.method getCaseReplys(Ljava/lang/String;I)Lcom/cymobile/ymwork/types/Group;
    .locals 8
    .parameter "caseid"
    .parameter "classid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/cymobile/ymwork/types/Group",
            "<",
            "Lcom/cymobile/ymwork/types/Reply;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cymobile/ymwork/server/error/ServerCredentialsException;,
            Lcom/cymobile/ymwork/server/error/ServerParseException;,
            Lcom/cymobile/ymwork/server/error/ServerException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 361
    iget-object v1, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV1;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    const-string v2, "/ChaoYangWork/SelectReplysServlet"

    invoke-direct {p0, v2}, Lcom/cymobile/ymwork/server/ServerHttpApiV1;->fullUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/apache/http/NameValuePair;

    const/4 v4, 0x0

    .line 362
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "caseid"

    invoke-direct {v5, v6, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 363
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "classid"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    .line 361
    invoke-interface {v1, v2, v3}, Lcom/cymobile/ymwork/server/http/HttpApi;->createHttpGet(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 365
    .local v0, httpGet:Lorg/apache/http/client/methods/HttpGet;
    iget-object v1, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV1;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    new-instance v2, Lcom/cymobile/ymwork/server/parsers/json/GroupParser;

    new-instance v3, Lcom/cymobile/ymwork/server/parsers/json/ReplyParser;

    invoke-direct {v3}, Lcom/cymobile/ymwork/server/parsers/json/ReplyParser;-><init>()V

    invoke-direct {v2, v3}, Lcom/cymobile/ymwork/server/parsers/json/GroupParser;-><init>(Lcom/cymobile/ymwork/server/parsers/json/Parser;)V

    invoke-interface {v1, v0, v2}, Lcom/cymobile/ymwork/server/http/HttpApi;->doHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/cymobile/ymwork/server/parsers/json/Parser;)Lcom/cymobile/ymwork/types/BaseType;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/types/Group;

    return-object v1
.end method

.method getZone(Ljava/lang/String;)Lcom/cymobile/ymwork/types/Group;
    .locals 7
    .parameter "zonecode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/cymobile/ymwork/types/Group",
            "<",
            "Lcom/cymobile/ymwork/types/Zone;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cymobile/ymwork/server/error/ServerCredentialsException;,
            Lcom/cymobile/ymwork/server/error/ServerParseException;,
            Lcom/cymobile/ymwork/server/error/ServerException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 308
    iget-object v1, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV1;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    const-string v2, "/ChaoYangWork/StreetCnameServlet"

    invoke-direct {p0, v2}, Lcom/cymobile/ymwork/server/ServerHttpApiV1;->fullUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Lorg/apache/http/NameValuePair;

    const/4 v4, 0x0

    .line 309
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "code"

    invoke-direct {v5, v6, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    .line 308
    invoke-interface {v1, v2, v3}, Lcom/cymobile/ymwork/server/http/HttpApi;->createHttpGet(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 311
    .local v0, httpGet:Lorg/apache/http/client/methods/HttpGet;
    iget-object v1, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV1;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    new-instance v2, Lcom/cymobile/ymwork/server/parsers/json/GroupParser;

    new-instance v3, Lcom/cymobile/ymwork/server/parsers/json/ZoneParser;

    invoke-direct {v3}, Lcom/cymobile/ymwork/server/parsers/json/ZoneParser;-><init>()V

    invoke-direct {v2, v3}, Lcom/cymobile/ymwork/server/parsers/json/GroupParser;-><init>(Lcom/cymobile/ymwork/server/parsers/json/Parser;)V

    invoke-interface {v1, v0, v2}, Lcom/cymobile/ymwork/server/http/HttpApi;->doHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/cymobile/ymwork/server/parsers/json/Parser;)Lcom/cymobile/ymwork/types/BaseType;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/types/Group;

    return-object v1
.end method

.method public hasCredentials()Z
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV1;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV1;->mAuthScope:Lorg/apache/http/auth/AuthScope;

    invoke-interface {v0, v1}, Lorg/apache/http/client/CredentialsProvider;->getCredentials(Lorg/apache/http/auth/AuthScope;)Lorg/apache/http/auth/Credentials;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loginUser(Ljava/lang/String;Ljava/lang/String;Lcom/cymobile/ymwork/server/Server$Location;)Lcom/cymobile/ymwork/types/User;
    .locals 8
    .parameter "moe"
    .parameter "password"
    .parameter "location"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cymobile/ymwork/server/error/ServerCredentialsException;,
            Lcom/cymobile/ymwork/server/error/ServerParseException;,
            Lcom/cymobile/ymwork/server/error/ServerException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 273
    iget-object v1, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV1;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    const-string v2, "/ChaoYangWork/UsersLoginServlet"

    invoke-direct {p0, v2}, Lcom/cymobile/ymwork/server/ServerHttpApiV1;->fullUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x7

    new-array v3, v3, [Lorg/apache/http/NameValuePair;

    const/4 v4, 0x0

    .line 274
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "usermobile"

    invoke-direct {v5, v6, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 275
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "passwd"

    invoke-direct {v5, v6, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 276
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "geolat"

    iget-object v7, p3, Lcom/cymobile/ymwork/server/Server$Location;->geolat:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x3

    .line 277
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "geolong"

    iget-object v7, p3, Lcom/cymobile/ymwork/server/Server$Location;->geolong:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x4

    .line 278
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "geohacc"

    iget-object v7, p3, Lcom/cymobile/ymwork/server/Server$Location;->geohacc:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x5

    .line 279
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "geovacc"

    iget-object v7, p3, Lcom/cymobile/ymwork/server/Server$Location;->geovacc:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x6

    .line 280
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "geoalt"

    iget-object v7, p3, Lcom/cymobile/ymwork/server/Server$Location;->geoalt:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    .line 273
    invoke-interface {v1, v2, v3}, Lcom/cymobile/ymwork/server/http/HttpApi;->createHttpGet(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 281
    .local v0, httpGet:Lorg/apache/http/client/methods/HttpGet;
    iget-object v1, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV1;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    new-instance v2, Lcom/cymobile/ymwork/server/parsers/json/UserParser;

    invoke-direct {v2}, Lcom/cymobile/ymwork/server/parsers/json/UserParser;-><init>()V

    invoke-interface {v1, v0, v2}, Lcom/cymobile/ymwork/server/http/HttpApi;->doHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/cymobile/ymwork/server/parsers/json/Parser;)Lcom/cymobile/ymwork/types/BaseType;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/types/User;

    return-object v1
.end method

.method serverSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cymobile/ymwork/types/ServerSettings;
    .locals 7
    .parameter "geolat"
    .parameter "geolong"
    .parameter "geohacc"
    .parameter "geovacc"
    .parameter "geoalt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cymobile/ymwork/server/error/ServerException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 260
    iget-object v1, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV1;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    const-string v2, "/ChaoYangWork/UpgradeServlet"

    invoke-direct {p0, v2}, Lcom/cymobile/ymwork/server/ServerHttpApiV1;->fullUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    new-array v3, v3, [Lorg/apache/http/NameValuePair;

    const/4 v4, 0x0

    .line 261
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "geolat"

    invoke-direct {v5, v6, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 262
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "geolong"

    invoke-direct {v5, v6, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 263
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "geohacc"

    invoke-direct {v5, v6, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x3

    .line 264
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "geovacc"

    invoke-direct {v5, v6, p4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x4

    .line 265
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "geoalt"

    invoke-direct {v5, v6, p5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    .line 260
    invoke-interface {v1, v2, v3}, Lcom/cymobile/ymwork/server/http/HttpApi;->createHttpGet(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 266
    .local v0, httpGet:Lorg/apache/http/client/methods/HttpGet;
    iget-object v1, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV1;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    .line 267
    new-instance v2, Lcom/cymobile/ymwork/server/parsers/json/SettingsParser;

    invoke-direct {v2}, Lcom/cymobile/ymwork/server/parsers/json/SettingsParser;-><init>()V

    .line 266
    invoke-interface {v1, v0, v2}, Lcom/cymobile/ymwork/server/http/HttpApi;->doHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/cymobile/ymwork/server/parsers/json/Parser;)Lcom/cymobile/ymwork/types/BaseType;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/types/ServerSettings;

    return-object v1
.end method

.method setCredentials(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "phone"
    .parameter "password"

    .prologue
    .line 119
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 120
    :cond_0
    const-string v0, "ServerHttpApiV1"

    const-string v1, "Clearing Credentials"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v0, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV1;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/client/CredentialsProvider;->clear()V

    .line 128
    :goto_0
    return-void

    .line 123
    :cond_1
    const-string v0, "ServerHttpApiV1"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Setting Phone/Password: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/******"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v0, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV1;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV1;->mAuthScope:Lorg/apache/http/auth/AuthScope;

    .line 126
    new-instance v2, Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-direct {v2, p1, p2}, Lorg/apache/http/auth/UsernamePasswordCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/CredentialsProvider;->setCredentials(Lorg/apache/http/auth/AuthScope;Lorg/apache/http/auth/Credentials;)V

    goto :goto_0
.end method

.method userCaseNumber(Ljava/lang/String;)Lcom/cymobile/ymwork/types/CaseNumber;
    .locals 7
    .parameter "zoneid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cymobile/ymwork/server/error/ServerCredentialsException;,
            Lcom/cymobile/ymwork/server/error/ServerParseException;,
            Lcom/cymobile/ymwork/server/error/ServerException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 354
    iget-object v1, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV1;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    const-string v2, "/ChaoYangWork/SelectClassnumServlet"

    invoke-direct {p0, v2}, Lcom/cymobile/ymwork/server/ServerHttpApiV1;->fullUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Lorg/apache/http/NameValuePair;

    const/4 v4, 0x0

    .line 355
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "zoneid"

    invoke-direct {v5, v6, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    .line 354
    invoke-interface {v1, v2, v3}, Lcom/cymobile/ymwork/server/http/HttpApi;->createHttpGet(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 357
    .local v0, httpGet:Lorg/apache/http/client/methods/HttpGet;
    iget-object v1, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV1;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    new-instance v2, Lcom/cymobile/ymwork/server/parsers/json/CaseNumberParser;

    invoke-direct {v2}, Lcom/cymobile/ymwork/server/parsers/json/CaseNumberParser;-><init>()V

    invoke-interface {v1, v0, v2}, Lcom/cymobile/ymwork/server/http/HttpApi;->doHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/cymobile/ymwork/server/parsers/json/Parser;)Lcom/cymobile/ymwork/types/BaseType;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/types/CaseNumber;

    return-object v1
.end method

.method userDetail(Ljava/lang/String;)Lcom/cymobile/ymwork/types/User;
    .locals 7
    .parameter "mobile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cymobile/ymwork/server/error/ServerCredentialsException;,
            Lcom/cymobile/ymwork/server/error/ServerParseException;,
            Lcom/cymobile/ymwork/server/error/ServerException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 320
    iget-object v1, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV1;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    const-string v2, "/ChaoYangWork/UsersAll_mobileServlet"

    invoke-direct {p0, v2}, Lcom/cymobile/ymwork/server/ServerHttpApiV1;->fullUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Lorg/apache/http/NameValuePair;

    const/4 v4, 0x0

    .line 321
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "usermobile"

    invoke-direct {v5, v6, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    .line 320
    invoke-interface {v1, v2, v3}, Lcom/cymobile/ymwork/server/http/HttpApi;->createHttpGet(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 323
    .local v0, httpGet:Lorg/apache/http/client/methods/HttpGet;
    iget-object v1, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV1;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    new-instance v2, Lcom/cymobile/ymwork/server/parsers/json/UserParser;

    invoke-direct {v2}, Lcom/cymobile/ymwork/server/parsers/json/UserParser;-><init>()V

    invoke-interface {v1, v0, v2}, Lcom/cymobile/ymwork/server/http/HttpApi;->doHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/cymobile/ymwork/server/parsers/json/Parser;)Lcom/cymobile/ymwork/types/BaseType;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/types/User;

    return-object v1
.end method

.method userUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/cymobile/ymwork/types/CommonResult;
    .locals 9
    .parameter "userid"
    .parameter "mobile"
    .parameter "username"
    .parameter "passwd"
    .parameter "zoneid"
    .parameter "zonename"
    .parameter "isadmin"
    .parameter "desc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cymobile/ymwork/server/error/ServerCredentialsException;,
            Lcom/cymobile/ymwork/server/error/ServerParseException;,
            Lcom/cymobile/ymwork/server/error/ServerException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 327
    iget-object v3, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV1;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    const-string v2, "/ChaoYangWork/Users_updateAllServlet"

    invoke-direct {p0, v2}, Lcom/cymobile/ymwork/server/ServerHttpApiV1;->fullUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x7

    new-array v5, v2, [Lorg/apache/http/NameValuePair;

    const/4 v2, 0x0

    .line 328
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "username"

    invoke-direct {v6, v7, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v2

    const/4 v2, 0x1

    .line 329
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "usermobile"

    invoke-direct {v6, v7, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v2

    const/4 v2, 0x2

    .line 330
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "passwd"

    invoke-direct {v6, v7, p4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v2

    const/4 v2, 0x3

    .line 331
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "zoneid"

    invoke-direct {v6, v7, p5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v2

    const/4 v2, 0x4

    .line 332
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "zonename"

    invoke-direct {v6, v7, p6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v2

    const/4 v6, 0x5

    .line 333
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "isadmin"

    if-eqz p7, :cond_0

    const-string v2, "1"

    :goto_0
    invoke-direct {v7, v8, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v5, v6

    const/4 v2, 0x6

    .line 334
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "desc"

    move-object/from16 v0, p8

    invoke-direct {v6, v7, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v2

    .line 327
    invoke-interface {v3, v4, v5}, Lcom/cymobile/ymwork/server/http/HttpApi;->createHttpGet(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v1

    .line 335
    .local v1, httpGet:Lorg/apache/http/client/methods/HttpGet;
    iget-object v2, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV1;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    new-instance v3, Lcom/cymobile/ymwork/server/parsers/json/ResultParser;

    invoke-direct {v3}, Lcom/cymobile/ymwork/server/parsers/json/ResultParser;-><init>()V

    invoke-interface {v2, v1, v3}, Lcom/cymobile/ymwork/server/http/HttpApi;->doHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/cymobile/ymwork/server/parsers/json/Parser;)Lcom/cymobile/ymwork/types/BaseType;

    move-result-object v2

    check-cast v2, Lcom/cymobile/ymwork/types/CommonResult;

    return-object v2

    .line 333
    .end local v1           #httpGet:Lorg/apache/http/client/methods/HttpGet;
    :cond_0
    const-string v2, "0"

    goto :goto_0
.end method

.method public userUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cymobile/ymwork/types/User;
    .locals 24
    .parameter "imagePathToJpg"
    .parameter "username"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketTimeoutException;,
            Ljava/io/IOException;,
            Lcom/cymobile/ymwork/server/error/ServerParseException;
        }
    .end annotation

    .prologue
    .line 146
    const-string v2, "------------------319831265358979362846"

    .line 147
    .local v2, BOUNDARY:Ljava/lang/String;
    const-string v13, "\r\n"

    .line 148
    .local v13, lineEnd:Ljava/lang/String;
    const-string v18, "--"

    .line 149
    .local v18, twoHyphens:Ljava/lang/String;
    const/16 v14, 0x2000

    .line 151
    .local v14, maxBufferSize:I
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 152
    .local v10, file:Ljava/io/File;
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 154
    .local v11, fileInputStream:Ljava/io/FileInputStream;
    new-instance v19, Ljava/net/URL;

    const-string v20, "/user/update"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/cymobile/ymwork/server/ServerHttpApiV1;->fullUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 155
    .local v19, url:Ljava/net/URL;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/server/ServerHttpApiV1;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v2}, Lcom/cymobile/ymwork/server/http/HttpApi;->createHttpURLConnectionPost(Ljava/net/URL;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v7

    .line 156
    .local v7, conn:Ljava/net/HttpURLConnection;
    const-string v20, "Authorization"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "Basic "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v23, ":"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/cymobile/ymwork/utils/Base64Coder;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    new-instance v8, Ljava/io/DataOutputStream;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v8, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 160
    .local v8, dos:Ljava/io/DataOutputStream;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 161
    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "Content-Disposition: form-data; name=\"image,jpeg\";filename=\"image.jpeg\""

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 162
    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "Content-Type: image/jpeg"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v8, v13}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v11}, Ljava/io/FileInputStream;->available()I

    move-result v5

    .line 166
    .local v5, bytesAvailable:I
    invoke-static {v5, v14}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 167
    .local v4, bufferSize:I
    new-array v3, v4, [B

    .line 169
    .local v3, buffer:[B
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v11, v3, v0, v4}, Ljava/io/FileInputStream;->read([BII)I

    move-result v6

    .line 170
    .local v6, bytesRead:I
    move/from16 v17, v6

    .line 171
    .local v17, totalBytesRead:I
    :goto_0
    if-gtz v6, :cond_0

    .line 178
    invoke-virtual {v8, v13}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 179
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 182
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->flush()V

    .line 183
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->close()V

    .line 185
    new-instance v12, Ljava/io/BufferedReader;

    new-instance v20, Ljava/io/InputStreamReader;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v20

    invoke-direct {v12, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 186
    .local v12, in:Ljava/io/BufferedReader;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    .local v15, response:Ljava/lang/StringBuilder;
    const-string v16, ""

    .line 188
    .local v16, responseLine:Ljava/lang/String;
    :goto_1
    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v16

    if-nez v16, :cond_1

    .line 191
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V

    .line 194
    :try_start_0
    new-instance v20, Lcom/cymobile/ymwork/server/parsers/json/UserParser;

    invoke-direct/range {v20 .. v20}, Lcom/cymobile/ymwork/server/parsers/json/UserParser;-><init>()V

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/cymobile/ymwork/utils/JSONUtils;->consume(Lcom/cymobile/ymwork/server/parsers/json/Parser;Ljava/lang/String;)Lcom/cymobile/ymwork/types/BaseType;

    move-result-object v20

    check-cast v20, Lcom/cymobile/ymwork/types/User;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v20

    .line 172
    .end local v12           #in:Ljava/io/BufferedReader;
    .end local v15           #response:Ljava/lang/StringBuilder;
    .end local v16           #responseLine:Ljava/lang/String;
    :cond_0
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v8, v3, v0, v4}, Ljava/io/DataOutputStream;->write([BII)V

    .line 173
    invoke-virtual {v11}, Ljava/io/FileInputStream;->available()I

    move-result v5

    .line 174
    invoke-static {v5, v14}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 175
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v11, v3, v0, v4}, Ljava/io/FileInputStream;->read([BII)I

    move-result v6

    .line 176
    add-int v17, v17, v6

    goto :goto_0

    .line 189
    .restart local v12       #in:Ljava/io/BufferedReader;
    .restart local v15       #response:Ljava/lang/StringBuilder;
    .restart local v16       #responseLine:Ljava/lang/String;
    :cond_1
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 195
    :catch_0
    move-exception v9

    .line 196
    .local v9, ex:Ljava/lang/Exception;
    new-instance v20, Lcom/cymobile/ymwork/server/error/ServerParseException;

    .line 197
    const-string v21, "Error parsing user photo upload response, invalid json."

    .line 196
    invoke-direct/range {v20 .. v21}, Lcom/cymobile/ymwork/server/error/ServerParseException;-><init>(Ljava/lang/String;)V

    throw v20
.end method

.method users(Ljava/lang/String;)Lcom/cymobile/ymwork/types/Group;
    .locals 7
    .parameter "zonecode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/cymobile/ymwork/types/Group",
            "<",
            "Lcom/cymobile/ymwork/types/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cymobile/ymwork/server/error/ServerCredentialsException;,
            Lcom/cymobile/ymwork/server/error/ServerParseException;,
            Lcom/cymobile/ymwork/server/error/ServerException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 291
    iget-object v1, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV1;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    const-string v2, "/ChaoYangWork/UsersAllServlet"

    invoke-direct {p0, v2}, Lcom/cymobile/ymwork/server/ServerHttpApiV1;->fullUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Lorg/apache/http/NameValuePair;

    const/4 v4, 0x0

    .line 292
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "zoneid"

    invoke-direct {v5, v6, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    .line 291
    invoke-interface {v1, v2, v3}, Lcom/cymobile/ymwork/server/http/HttpApi;->createHttpGet(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 293
    .local v0, httpGet:Lorg/apache/http/client/methods/HttpGet;
    iget-object v1, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV1;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    new-instance v2, Lcom/cymobile/ymwork/server/parsers/json/GroupParser;

    new-instance v3, Lcom/cymobile/ymwork/server/parsers/json/UserParser;

    invoke-direct {v3}, Lcom/cymobile/ymwork/server/parsers/json/UserParser;-><init>()V

    invoke-direct {v2, v3}, Lcom/cymobile/ymwork/server/parsers/json/GroupParser;-><init>(Lcom/cymobile/ymwork/server/parsers/json/Parser;)V

    invoke-interface {v1, v0, v2}, Lcom/cymobile/ymwork/server/http/HttpApi;->doHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/cymobile/ymwork/server/parsers/json/Parser;)Lcom/cymobile/ymwork/types/BaseType;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/types/Group;

    return-object v1
.end method
