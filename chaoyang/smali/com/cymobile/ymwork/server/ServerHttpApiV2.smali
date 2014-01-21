.class public Lcom/cymobile/ymwork/server/ServerHttpApiV2;
.super Ljava/lang/Object;
.source "ServerHttpApiV2.java"


# static fields
.field private static final DATATYPE:Ljava/lang/String; = ".json"

.field private static final TAG:Ljava/lang/String; = "ServerHttpApiV2"

.field private static final URL_API_BUILDING_AILFullNumber:Ljava/lang/String; = "/ChaoYangWorkV2/SelectBuildingdetails"

.field private static final URL_API_BUILDING_Category_GROUP:Ljava/lang/String; = "/ChaoYangWorkV2/BuildingCategoryServlet"

.field private static final URL_API_BUILDING_DETAIL:Ljava/lang/String; = "/ChaoYangWorkV2/Building_recordsSelect"

.field private static final URL_API_BUILDING_DETAILFullNumber:Ljava/lang/String; = "/ChaoYangWorkV2/SelectBuildingrecordsnum"

.field private static final URL_API_BUILDING_EARTHWORK_Report1:Ljava/lang/String; = "/ChaoYangWorkV2/BuildingEarthworkReportv1"

.field private static final URL_API_BUILDING_EARTHWORK_Report2:Ljava/lang/String; = "/ChaoYangWorkV2/BuildingEarthworkReport"

.field private static final URL_API_BUILDING_EARTHWORK_Report4:Ljava/lang/String; = "/ChaoYangWorkV2/BuildingEarthworkReportv4"

.field private static final URL_API_BUILDING_EXTRA18:Ljava/lang/String; = "/ChaoYangWorkV2/BuildingCategoryServletv3"

.field private static final URL_API_BUILDING_FIRE_Report:Ljava/lang/String; = "/ChaoYangWorkV2/BuildingFireSafetyReportv1"

.field private static final URL_API_BUILDING_FIRE_Report2:Ljava/lang/String; = "/ChaoYangWorkV2/BuildingFireSafetyReportV2"

.field private static final URL_API_BUILDING_FIRE_Report3:Ljava/lang/String; = "/ChaoYangWorkV2/BuildingFireSafetyReportv3"

.field private static final URL_API_BUILDING_FIRE_Report4:Ljava/lang/String; = "/ChaoYangWorkV2/BuildingFireSafetyReportv4"

.field private static final URL_API_BUILDING_GROUP:Ljava/lang/String; = "/ChaoYangWorkV2/ServletBuilding_AllServlet"

.field private static final URL_API_BUILDING_GROUP_Report:Ljava/lang/String; = "/ChaoYangWorkV2/BuildingAllNumberArea"

.field private static final URL_API_BUILDING_PUBLIC_Report1:Ljava/lang/String; = "/ChaoYangWorkV2/BuildingGeneralPublicReportv1"

.field private static final URL_API_BUILDING_PUBLIC_Report2:Ljava/lang/String; = "/ChaoYangWorkV2/BuildingGeneralPublicReportV2"

.field private static final URL_API_CASENUMBER:Ljava/lang/String; = "/ChaoYangWorkV2/SelectClassnumServlet"

.field private static final URL_API_CASEREPLYS:Ljava/lang/String; = "/ChaoYangWorkV2/SelectReplysServlet"

.field private static final URL_API_COMMS:Ljava/lang/String; = "/ChaoYangWorkV2/CommCnameServlet"

.field private static final URL_API_EMAIL_REGISTER:Ljava/lang/String; = "/com.jerser.first/Zscy_HttpemailRegister"

.field private static final URL_API_FORGET_PASSWORD:Ljava/lang/String; = "/ChaoYangWorkV2/Zscy_HttpForgetPasswd"

.field private static final URL_API_LOGIN:Ljava/lang/String; = "/ChaoYangWorkV2/UsersLoginServlet"

.field private static final URL_API_MOBILE_REGISTER:Ljava/lang/String; = "/com.jersey.first/Zscy_HttpmobileRegister"

.field private static final URL_API_NEWREPLY:Ljava/lang/String; = "/ChaoYangWorkV2/SaveReplysServlet"

.field private static final URL_API_NEWUSER:Ljava/lang/String; = "/ChaoYangWorkV2/SaveUsersServlet"

.field private static final URL_API_REGISTER:Ljava/lang/String; = "/ChaoYangWorkV2/UsersRegisterV2Servlet"

.field private static final URL_API_SAVE_PROFILE_CHANGES:Ljava/lang/String; = "/com.jersey.first/Zscy_HttpUsers_update"

.field private static final URL_API_SERVERSETTINGS:Ljava/lang/String; = "/ChaoYangWorkV2/UpgradeSuper.jsp"

.field private static final URL_API_SERVERSETTINGSSuper:Ljava/lang/String; = "/ChaoYangWorkV2/UpgradeSuper.jsp"

.field private static final URL_API_SHOPDETAIL:Ljava/lang/String; = "/com.jersey.first/Zscy_HttpServlet"

.field private static final URL_API_SHOPS:Ljava/lang/String; = "/com.jersey.first/Zscy_Httpshops"

.field private static final URL_API_USER:Ljava/lang/String; = "/angel/login.php"

.field private static final URL_API_USERAREA:Ljava/lang/String; = "/ChaoYangWorkV2/BianjieServlet"

.field private static final URL_API_USERDETAIL:Ljava/lang/String; = "/ChaoYangWorkV2/UsersAll_mobileServlet"

.field private static final URL_API_USERS:Ljava/lang/String; = "/ChaoYangWorkV2/UsersAllServlet"

.field private static final URL_API_USERUPDATE:Ljava/lang/String; = "/ChaoYangWorkV2/Users_updateAllServlet"

.field private static final URL_API_USERUPDATEPasswd:Ljava/lang/String; = "/ChaoYangWorkV2/UpdateUsersServlet"

.field private static final URL_API_USER_UPDATE:Ljava/lang/String; = "/user/update"

.field private static final URL_API_Visitorvolume:Ljava/lang/String; = "/ChaoYangWorkV2/VisitsStatisticsServlet"

.field private static final URL_API_ZONES:Ljava/lang/String; = "/ChaoYangWorkV2/StreetCnameServlet"


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
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    invoke-static {}, Lcom/cymobile/ymwork/server/http/AbstractHttpApi;->createHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 125
    const/16 v0, 0x50

    if-eq p4, v0, :cond_0

    .line 126
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

    iput-object v0, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->mApiBaseUrl:Ljava/lang/String;

    .line 130
    :goto_0
    new-instance v0, Lorg/apache/http/auth/AuthScope;

    invoke-direct {v0, p1, p4}, Lorg/apache/http/auth/AuthScope;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->mAuthScope:Lorg/apache/http/auth/AuthScope;

    .line 132
    if-eqz p3, :cond_1

    .line 133
    new-instance v0, Lcom/cymobile/ymwork/server/http/HttpApiWithOAuth;

    iget-object v1, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v1, p2}, Lcom/cymobile/ymwork/server/http/HttpApiWithOAuth;-><init>(Lorg/apache/http/impl/client/DefaultHttpClient;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    .line 137
    :goto_1
    return-void

    .line 128
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->mApiBaseUrl:Ljava/lang/String;

    goto :goto_0

    .line 135
    :cond_1
    new-instance v0, Lcom/cymobile/ymwork/server/http/HttpApiWithBasicAuth;

    iget-object v1, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v1, p2}, Lcom/cymobile/ymwork/server/http/HttpApiWithBasicAuth;-><init>(Lorg/apache/http/impl/client/DefaultHttpClient;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    goto :goto_1
.end method

.method private fullUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "url"

    .prologue
    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->mApiBaseUrl:Ljava/lang/String;

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
.method public ConstrustionFieldReport1(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Lcom/cymobile/ymwork/types/BuildingReport;
    .locals 9
    .parameter "contexts"
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
    .line 326
    iget-object v1, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    const-string v2, "/ChaoYangWorkV2/BuildingEarthworkReportv1"

    invoke-direct {p0, v2}, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->fullUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x9

    new-array v3, v3, [Lorg/apache/http/NameValuePair;

    const/4 v4, 0x0

    .line 328
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "code"

    invoke-direct {v5, v6, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 329
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "classid"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 330
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "day"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x3

    .line 331
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "category"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x4

    .line 332
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "imei"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x5

    .line 333
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "versions"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getReleaseVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x6

    .line 334
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "model"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getPhoneModel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x7

    .line 335
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "modelPhone"

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->getModelPhone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/16 v4, 0x8

    .line 336
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "order"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    .line 326
    invoke-interface {v1, v2, v3}, Lcom/cymobile/ymwork/server/http/HttpApi;->createHttpGet(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 338
    .local v0, httpGet:Lorg/apache/http/client/methods/HttpGet;
    iget-object v1, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    new-instance v2, Lcom/cymobile/ymwork/server/parsers/json/BuildingParserReport;

    invoke-direct {v2}, Lcom/cymobile/ymwork/server/parsers/json/BuildingParserReport;-><init>()V

    invoke-interface {v1, v0, v2}, Lcom/cymobile/ymwork/server/http/HttpApi;->doHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/cymobile/ymwork/server/parsers/json/Parser;)Lcom/cymobile/ymwork/types/BaseType;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/types/BuildingReport;

    return-object v1
.end method

.method public ConstrustionFieldReport2(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Lcom/cymobile/ymwork/types/BuildingReport;
    .locals 9
    .parameter "contexts"
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
    .line 341
    iget-object v1, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    const-string v2, "/ChaoYangWorkV2/BuildingEarthworkReport"

    invoke-direct {p0, v2}, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->fullUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x9

    new-array v3, v3, [Lorg/apache/http/NameValuePair;

    const/4 v4, 0x0

    .line 343
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "code"

    invoke-direct {v5, v6, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 344
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "classid"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 345
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "day"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x3

    .line 346
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "category"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x4

    .line 347
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "imei"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x5

    .line 348
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "versions"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getReleaseVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x6

    .line 349
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "model"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getPhoneModel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x7

    .line 350
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "modelPhone"

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->getModelPhone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/16 v4, 0x8

    .line 351
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "order"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    .line 341
    invoke-interface {v1, v2, v3}, Lcom/cymobile/ymwork/server/http/HttpApi;->createHttpGet(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 353
    .local v0, httpGet:Lorg/apache/http/client/methods/HttpGet;
    iget-object v1, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    new-instance v2, Lcom/cymobile/ymwork/server/parsers/json/BuildingParserReport;

    invoke-direct {v2}, Lcom/cymobile/ymwork/server/parsers/json/BuildingParserReport;-><init>()V

    invoke-interface {v1, v0, v2}, Lcom/cymobile/ymwork/server/http/HttpApi;->doHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/cymobile/ymwork/server/parsers/json/Parser;)Lcom/cymobile/ymwork/types/BaseType;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/types/BuildingReport;

    return-object v1
.end method

.method public ConstrustionFieldReport4(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Lcom/cymobile/ymwork/types/BuildingReport;
    .locals 9
    .parameter "contexts"
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
    .line 356
    iget-object v1, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    const-string v2, "/ChaoYangWorkV2/BuildingEarthworkReportv4"

    invoke-direct {p0, v2}, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->fullUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x9

    new-array v3, v3, [Lorg/apache/http/NameValuePair;

    const/4 v4, 0x0

    .line 358
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "code"

    invoke-direct {v5, v6, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 359
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "classid"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 360
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "day"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x3

    .line 361
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "category"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x4

    .line 362
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "imei"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x5

    .line 363
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "versions"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getReleaseVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x6

    .line 364
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "model"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getPhoneModel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x7

    .line 365
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "modelPhone"

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->getModelPhone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/16 v4, 0x8

    .line 366
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "order"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    .line 356
    invoke-interface {v1, v2, v3}, Lcom/cymobile/ymwork/server/http/HttpApi;->createHttpGet(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 368
    .local v0, httpGet:Lorg/apache/http/client/methods/HttpGet;
    iget-object v1, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    new-instance v2, Lcom/cymobile/ymwork/server/parsers/json/BuildingParserReport;

    invoke-direct {v2}, Lcom/cymobile/ymwork/server/parsers/json/BuildingParserReport;-><init>()V

    invoke-interface {v1, v0, v2}, Lcom/cymobile/ymwork/server/http/HttpApi;->doHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/cymobile/ymwork/server/parsers/json/Parser;)Lcom/cymobile/ymwork/types/BaseType;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/types/BuildingReport;

    return-object v1
.end method

.method Extra18(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;IILcom/cymobile/ymwork/server/Server$Location;Ljava/lang/String;Ljava/lang/String;)Lcom/cymobile/ymwork/types/Group;
    .locals 10
    .parameter "contexts"
    .parameter "classid"
    .parameter "zoneId"
    .parameter "range"
    .parameter "category"
    .parameter "order"
    .parameter "index"
    .parameter "listnum"
    .parameter "location"
    .parameter "tpyes"
    .parameter "emphasis"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lcom/cymobile/ymwork/server/Server$Location;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cymobile/ymwork/types/Group",
            "<",
            "Lcom/cymobile/ymwork/types/ConstrustionField;",
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
    .line 273
    iget-object v3, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    const-string v2, "/ChaoYangWorkV2/BuildingCategoryServletv3"

    invoke-direct {p0, v2}, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->fullUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x12

    new-array v5, v2, [Lorg/apache/http/NameValuePair;

    const/4 v2, 0x0

    .line 274
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "code"

    invoke-direct {v6, v7, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v2

    const/4 v2, 0x1

    .line 275
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "classid"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v2

    const/4 v2, 0x2

    .line 276
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "day"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v2

    const/4 v2, 0x3

    .line 277
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "category"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v2

    const/4 v2, 0x4

    .line 278
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "order"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p6

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v2

    const/4 v2, 0x5

    .line 279
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "startintent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p7

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v2

    const/4 v2, 0x6

    .line 280
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "endnum"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    add-int v9, p7, p8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v2

    const/4 v6, 0x7

    .line 281
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "geolat"

    if-eqz p9, :cond_0

    move-object/from16 v0, p9

    iget-object v2, v0, Lcom/cymobile/ymwork/server/Server$Location;->geolat:Ljava/lang/String;

    :goto_0
    invoke-direct {v7, v8, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v5, v6

    const/16 v6, 0x8

    .line 282
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "geolong"

    if-eqz p9, :cond_1

    move-object/from16 v0, p9

    iget-object v2, v0, Lcom/cymobile/ymwork/server/Server$Location;->geolong:Ljava/lang/String;

    :goto_1
    invoke-direct {v7, v8, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v5, v6

    const/16 v6, 0x9

    .line 283
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "geohacc"

    if-eqz p9, :cond_2

    move-object/from16 v0, p9

    iget-object v2, v0, Lcom/cymobile/ymwork/server/Server$Location;->geohacc:Ljava/lang/String;

    :goto_2
    invoke-direct {v7, v8, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v5, v6

    const/16 v6, 0xa

    .line 284
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "geovacc"

    if-eqz p9, :cond_3

    move-object/from16 v0, p9

    iget-object v2, v0, Lcom/cymobile/ymwork/server/Server$Location;->geovacc:Ljava/lang/String;

    :goto_3
    invoke-direct {v7, v8, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v5, v6

    const/16 v2, 0xb

    .line 285
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "imei"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v2

    const/16 v2, 0xc

    .line 286
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "versions"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getReleaseVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v2

    const/16 v2, 0xd

    .line 287
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "model"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getPhoneModel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v2

    const/16 v2, 0xe

    .line 288
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "modelPhone"

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->getModelPhone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v2

    const/16 v6, 0xf

    .line 289
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "geoalt"

    if-eqz p9, :cond_4

    move-object/from16 v0, p9

    iget-object v2, v0, Lcom/cymobile/ymwork/server/Server$Location;->geoalt:Ljava/lang/String;

    :goto_4
    invoke-direct {v7, v8, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v5, v6

    const/16 v2, 0x10

    .line 290
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "type"

    if-eqz p10, :cond_5

    .end local p10
    :goto_5
    move-object/from16 v0, p10

    invoke-direct {v6, v7, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v2

    const/16 v2, 0x11

    .line 291
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "emphasis"

    if-eqz p11, :cond_6

    .end local p11
    :goto_6
    move-object/from16 v0, p11

    invoke-direct {v6, v7, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v2

    .line 273
    invoke-interface {v3, v4, v5}, Lcom/cymobile/ymwork/server/http/HttpApi;->createHttpGet(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v1

    .line 293
    .local v1, httpGet:Lorg/apache/http/client/methods/HttpGet;
    iget-object v2, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    new-instance v3, Lcom/cymobile/ymwork/server/parsers/json/GroupParser;

    new-instance v4, Lcom/cymobile/ymwork/server/parsers/json/ConstrustionFieldParser;

    invoke-direct {v4}, Lcom/cymobile/ymwork/server/parsers/json/ConstrustionFieldParser;-><init>()V

    invoke-direct {v3, v4}, Lcom/cymobile/ymwork/server/parsers/json/GroupParser;-><init>(Lcom/cymobile/ymwork/server/parsers/json/Parser;)V

    invoke-interface {v2, v1, v3}, Lcom/cymobile/ymwork/server/http/HttpApi;->doHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/cymobile/ymwork/server/parsers/json/Parser;)Lcom/cymobile/ymwork/types/BaseType;

    move-result-object v2

    check-cast v2, Lcom/cymobile/ymwork/types/Group;

    return-object v2

    .line 281
    .end local v1           #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local p10
    .restart local p11
    :cond_0
    const-string v2, "39.11"

    goto/16 :goto_0

    .line 282
    :cond_1
    const-string v2, "116.111"

    goto/16 :goto_1

    .line 283
    :cond_2
    const-string v2, ""

    goto/16 :goto_2

    .line 284
    :cond_3
    const-string v2, ""

    goto/16 :goto_3

    .line 289
    :cond_4
    const-string v2, ""

    goto :goto_4

    .line 290
    :cond_5
    const-string p10, ""

    goto :goto_5

    .line 291
    .end local p10
    :cond_6
    const-string p11, ""

    goto :goto_6
.end method

.method public FireReport(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;I)Lcom/cymobile/ymwork/types/BuildingReport;
    .locals 10
    .parameter "contexts"
    .parameter "zoneId"
    .parameter "type"
    .parameter "range"
    .parameter "category"
    .parameter "order"
    .parameter "emphasis"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cymobile/ymwork/server/error/ServerCredentialsException;,
            Lcom/cymobile/ymwork/server/error/ServerParseException;,
            Lcom/cymobile/ymwork/server/error/ServerException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 371
    iget-object v2, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    const-string v3, "/ChaoYangWorkV2/BuildingFireSafetyReportv1"

    invoke-direct {p0, v3}, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->fullUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xa

    new-array v4, v4, [Lorg/apache/http/NameValuePair;

    const/4 v5, 0x0

    .line 373
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "code"

    invoke-direct {v6, v7, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 374
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "classid"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 375
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "day"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v4, v5

    const/4 v5, 0x3

    .line 376
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "category"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v4, v5

    const/4 v5, 0x4

    .line 377
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "imei"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v4, v5

    const/4 v5, 0x5

    .line 378
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "versions"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getReleaseVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v4, v5

    const/4 v5, 0x6

    .line 379
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "model"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getPhoneModel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v4, v5

    const/4 v5, 0x7

    .line 380
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "modelPhone"

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->getModelPhone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v4, v5

    const/16 v5, 0x8

    .line 381
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "order"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p6

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v4, v5

    const/16 v5, 0x9

    .line 382
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "emphasis"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p7

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v4, v5

    .line 371
    invoke-interface {v2, v3, v4}, Lcom/cymobile/ymwork/server/http/HttpApi;->createHttpGet(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v1

    .line 384
    .local v1, httpGet:Lorg/apache/http/client/methods/HttpGet;
    iget-object v2, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    new-instance v3, Lcom/cymobile/ymwork/server/parsers/json/BuildingParserReport;

    invoke-direct {v3}, Lcom/cymobile/ymwork/server/parsers/json/BuildingParserReport;-><init>()V

    invoke-interface {v2, v1, v3}, Lcom/cymobile/ymwork/server/http/HttpApi;->doHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/cymobile/ymwork/server/parsers/json/Parser;)Lcom/cymobile/ymwork/types/BaseType;

    move-result-object v2

    check-cast v2, Lcom/cymobile/ymwork/types/BuildingReport;

    return-object v2
.end method

.method public FireReport2(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;I)Lcom/cymobile/ymwork/types/BuildingReport;
    .locals 10
    .parameter "contexts"
    .parameter "zoneId"
    .parameter "type"
    .parameter "range"
    .parameter "category"
    .parameter "order"
    .parameter "emphasis"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cymobile/ymwork/server/error/ServerCredentialsException;,
            Lcom/cymobile/ymwork/server/error/ServerParseException;,
            Lcom/cymobile/ymwork/server/error/ServerException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 388
    iget-object v2, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    const-string v3, "/ChaoYangWorkV2/BuildingFireSafetyReportV2"

    invoke-direct {p0, v3}, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->fullUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xa

    new-array v4, v4, [Lorg/apache/http/NameValuePair;

    const/4 v5, 0x0

    .line 390
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "code"

    invoke-direct {v6, v7, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 391
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "classid"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 392
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "day"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v4, v5

    const/4 v5, 0x3

    .line 393
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "category"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v4, v5

    const/4 v5, 0x4

    .line 394
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "imei"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v4, v5

    const/4 v5, 0x5

    .line 395
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "versions"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getReleaseVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v4, v5

    const/4 v5, 0x6

    .line 396
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "model"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getPhoneModel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v4, v5

    const/4 v5, 0x7

    .line 397
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "modelPhone"

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->getModelPhone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v4, v5

    const/16 v5, 0x8

    .line 398
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "order"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p6

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v4, v5

    const/16 v5, 0x9

    .line 399
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "emphasis"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p7

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v4, v5

    .line 388
    invoke-interface {v2, v3, v4}, Lcom/cymobile/ymwork/server/http/HttpApi;->createHttpGet(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v1

    .line 401
    .local v1, httpGet:Lorg/apache/http/client/methods/HttpGet;
    iget-object v2, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    new-instance v3, Lcom/cymobile/ymwork/server/parsers/json/BuildingParserReport;

    invoke-direct {v3}, Lcom/cymobile/ymwork/server/parsers/json/BuildingParserReport;-><init>()V

    invoke-interface {v2, v1, v3}, Lcom/cymobile/ymwork/server/http/HttpApi;->doHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/cymobile/ymwork/server/parsers/json/Parser;)Lcom/cymobile/ymwork/types/BaseType;

    move-result-object v2

    check-cast v2, Lcom/cymobile/ymwork/types/BuildingReport;

    return-object v2
.end method

.method public FireReport3(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Lcom/cymobile/ymwork/types/BuildingReport;
    .locals 9
    .parameter "contexts"
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
    .line 404
    iget-object v1, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    const-string v2, "/ChaoYangWorkV2/BuildingFireSafetyReportv3"

    invoke-direct {p0, v2}, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->fullUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x9

    new-array v3, v3, [Lorg/apache/http/NameValuePair;

    const/4 v4, 0x0

    .line 406
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "code"

    invoke-direct {v5, v6, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 407
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "classid"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 408
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "day"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x3

    .line 409
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "category"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x4

    .line 410
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "imei"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x5

    .line 411
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "versions"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getReleaseVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x6

    .line 412
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "model"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getPhoneModel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x7

    .line 413
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "modelPhone"

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->getModelPhone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/16 v4, 0x8

    .line 414
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "order"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    .line 404
    invoke-interface {v1, v2, v3}, Lcom/cymobile/ymwork/server/http/HttpApi;->createHttpGet(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 416
    .local v0, httpGet:Lorg/apache/http/client/methods/HttpGet;
    iget-object v1, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    new-instance v2, Lcom/cymobile/ymwork/server/parsers/json/BuildingParserReport;

    invoke-direct {v2}, Lcom/cymobile/ymwork/server/parsers/json/BuildingParserReport;-><init>()V

    invoke-interface {v1, v0, v2}, Lcom/cymobile/ymwork/server/http/HttpApi;->doHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/cymobile/ymwork/server/parsers/json/Parser;)Lcom/cymobile/ymwork/types/BaseType;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/types/BuildingReport;

    return-object v1
.end method

.method public FireReport4(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Lcom/cymobile/ymwork/types/BuildingReport;
    .locals 9
    .parameter "contexts"
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
    .line 419
    iget-object v1, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    const-string v2, "/ChaoYangWorkV2/BuildingFireSafetyReportv4"

    invoke-direct {p0, v2}, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->fullUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x9

    new-array v3, v3, [Lorg/apache/http/NameValuePair;

    const/4 v4, 0x0

    .line 421
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "code"

    invoke-direct {v5, v6, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 422
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "classid"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 423
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "day"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x3

    .line 424
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "category"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x4

    .line 425
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "imei"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x5

    .line 426
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "versions"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getReleaseVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x6

    .line 427
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "model"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getPhoneModel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x7

    .line 428
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "modelPhone"

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->getModelPhone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/16 v4, 0x8

    .line 429
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "order"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    .line 419
    invoke-interface {v1, v2, v3}, Lcom/cymobile/ymwork/server/http/HttpApi;->createHttpGet(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 431
    .local v0, httpGet:Lorg/apache/http/client/methods/HttpGet;
    iget-object v1, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    new-instance v2, Lcom/cymobile/ymwork/server/parsers/json/BuildingParserReport;

    invoke-direct {v2}, Lcom/cymobile/ymwork/server/parsers/json/BuildingParserReport;-><init>()V

    invoke-interface {v1, v0, v2}, Lcom/cymobile/ymwork/server/http/HttpApi;->doHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/cymobile/ymwork/server/parsers/json/Parser;)Lcom/cymobile/ymwork/types/BaseType;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/types/BuildingReport;

    return-object v1
.end method

.method public PublicReport(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Lcom/cymobile/ymwork/types/BuildingReport;
    .locals 9
    .parameter "contexts"
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
    .line 434
    iget-object v1, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    const-string v2, "/ChaoYangWorkV2/BuildingGeneralPublicReportv1"

    invoke-direct {p0, v2}, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->fullUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x9

    new-array v3, v3, [Lorg/apache/http/NameValuePair;

    const/4 v4, 0x0

    .line 436
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "code"

    invoke-direct {v5, v6, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 437
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "classid"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 438
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "day"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x3

    .line 439
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "category"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x4

    .line 440
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "imei"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x5

    .line 441
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "versions"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getReleaseVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x6

    .line 442
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "model"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getPhoneModel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x7

    .line 443
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "modelPhone"

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->getModelPhone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/16 v4, 0x8

    .line 444
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "order"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    .line 434
    invoke-interface {v1, v2, v3}, Lcom/cymobile/ymwork/server/http/HttpApi;->createHttpGet(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 446
    .local v0, httpGet:Lorg/apache/http/client/methods/HttpGet;
    iget-object v1, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    new-instance v2, Lcom/cymobile/ymwork/server/parsers/json/BuildingParserReport;

    invoke-direct {v2}, Lcom/cymobile/ymwork/server/parsers/json/BuildingParserReport;-><init>()V

    invoke-interface {v1, v0, v2}, Lcom/cymobile/ymwork/server/http/HttpApi;->doHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/cymobile/ymwork/server/parsers/json/Parser;)Lcom/cymobile/ymwork/types/BaseType;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/types/BuildingReport;

    return-object v1
.end method

.method public PublicReport2(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Lcom/cymobile/ymwork/types/BuildingReport;
    .locals 9
    .parameter "contexts"
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
    .line 449
    iget-object v1, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    const-string v2, "/ChaoYangWorkV2/BuildingGeneralPublicReportV2"

    invoke-direct {p0, v2}, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->fullUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x9

    new-array v3, v3, [Lorg/apache/http/NameValuePair;

    const/4 v4, 0x0

    .line 451
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "code"

    invoke-direct {v5, v6, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 452
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "classid"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 453
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "day"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x3

    .line 454
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "category"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x4

    .line 455
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "imei"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x5

    .line 456
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "versions"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getReleaseVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x6

    .line 457
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "model"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getPhoneModel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x7

    .line 458
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "modelPhone"

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->getModelPhone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/16 v4, 0x8

    .line 459
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "order"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    .line 449
    invoke-interface {v1, v2, v3}, Lcom/cymobile/ymwork/server/http/HttpApi;->createHttpGet(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 461
    .local v0, httpGet:Lorg/apache/http/client/methods/HttpGet;
    iget-object v1, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    new-instance v2, Lcom/cymobile/ymwork/server/parsers/json/BuildingParserReport;

    invoke-direct {v2}, Lcom/cymobile/ymwork/server/parsers/json/BuildingParserReport;-><init>()V

    invoke-interface {v1, v0, v2}, Lcom/cymobile/ymwork/server/http/HttpApi;->doHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/cymobile/ymwork/server/parsers/json/Parser;)Lcom/cymobile/ymwork/types/BaseType;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/types/BuildingReport;

    return-object v1
.end method

.method UserAreas(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cymobile/ymwork/types/UserArea;
    .locals 8
    .parameter "contexts"
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
    .line 655
    iget-object v1, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    const-string v2, "/ChaoYangWorkV2/BianjieServlet"

    invoke-direct {p0, v2}, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->fullUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    new-array v3, v3, [Lorg/apache/http/NameValuePair;

    const/4 v4, 0x0

    .line 656
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "UserID"

    invoke-direct {v5, v6, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 657
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "imei"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 658
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "versions"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getReleaseVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x3

    .line 659
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "model"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getPhoneModel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x4

    .line 660
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "modelPhone"

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->getModelPhone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x5

    .line 661
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "code"

    invoke-direct {v5, v6, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    .line 655
    invoke-interface {v1, v2, v3}, Lcom/cymobile/ymwork/server/http/HttpApi;->createHttpGet(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 662
    .local v0, httpGet:Lorg/apache/http/client/methods/HttpGet;
    iget-object v1, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    new-instance v2, Lcom/cymobile/ymwork/server/parsers/json/UserAreaParser;

    invoke-direct {v2}, Lcom/cymobile/ymwork/server/parsers/json/UserAreaParser;-><init>()V

    invoke-interface {v1, v0, v2}, Lcom/cymobile/ymwork/server/http/HttpApi;->doHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/cymobile/ymwork/server/parsers/json/Parser;)Lcom/cymobile/ymwork/types/BaseType;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/types/UserArea;

    return-object v1
.end method

.method public VisitorvolumeReport1(Landroid/content/Context;ILjava/lang/String;)Lcom/cymobile/ymwork/types/VisitorvolumeReports;
    .locals 9
    .parameter "contexts"
    .parameter "day"
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
    .line 312
    iget-object v1, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    const-string v2, "/ChaoYangWorkV2/VisitsStatisticsServlet"

    invoke-direct {p0, v2}, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->fullUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    new-array v3, v3, [Lorg/apache/http/NameValuePair;

    const/4 v4, 0x0

    .line 314
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "zoneid"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 315
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "days"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 316
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "imei"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x3

    .line 317
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "versions"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getReleaseVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x4

    .line 318
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "model"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getPhoneModel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x5

    .line 319
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "modelPhone"

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->getModelPhone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    .line 312
    invoke-interface {v1, v2, v3}, Lcom/cymobile/ymwork/server/http/HttpApi;->createHttpGet(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 322
    .local v0, httpGet:Lorg/apache/http/client/methods/HttpGet;
    iget-object v1, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    new-instance v2, Lcom/cymobile/ymwork/server/parsers/json/VisitorvolumeParser1;

    invoke-direct {v2}, Lcom/cymobile/ymwork/server/parsers/json/VisitorvolumeParser1;-><init>()V

    invoke-interface {v1, v0, v2}, Lcom/cymobile/ymwork/server/http/HttpApi;->doHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/cymobile/ymwork/server/parsers/json/Parser;)Lcom/cymobile/ymwork/types/BaseType;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/types/VisitorvolumeReports;

    return-object v1
.end method

.method public addReply(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cymobile/ymwork/types/CommonResult;
    .locals 9
    .parameter "contexts"
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
    .line 689
    iget-object v2, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    const-string v3, "/ChaoYangWorkV2/SaveReplysServlet"

    invoke-direct {p0, v3}, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->fullUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xc

    new-array v4, v4, [Lorg/apache/http/NameValuePair;

    const/4 v5, 0x0

    .line 690
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "caseid"

    invoke-direct {v6, v7, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 691
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "classid"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 692
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "usermobile"

    invoke-direct {v6, v7, p4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v4, v5

    const/4 v5, 0x3

    .line 693
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "userzoneid"

    invoke-direct {v6, v7, p5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v4, v5

    const/4 v5, 0x4

    .line 694
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "userid"

    invoke-direct {v6, v7, p6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v4, v5

    const/4 v5, 0x5

    .line 695
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "result"

    move-object/from16 v0, p7

    invoke-direct {v6, v7, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v4, v5

    const/4 v5, 0x6

    .line 696
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "detail"

    move-object/from16 v0, p8

    invoke-direct {v6, v7, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v4, v5

    const/4 v5, 0x7

    .line 697
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "imei"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v4, v5

    const/16 v5, 0x8

    .line 698
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "versions"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getReleaseVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v4, v5

    const/16 v5, 0x9

    .line 699
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "model"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getPhoneModel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v4, v5

    const/16 v5, 0xa

    .line 700
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "modelPhone"

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->getModelPhone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v4, v5

    const/16 v5, 0xb

    .line 701
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "desc"

    move-object/from16 v0, p9

    invoke-direct {v6, v7, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v4, v5

    .line 689
    invoke-interface {v2, v3, v4}, Lcom/cymobile/ymwork/server/http/HttpApi;->createHttpGet(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v1

    .line 703
    .local v1, httpGet:Lorg/apache/http/client/methods/HttpGet;
    iget-object v2, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    new-instance v3, Lcom/cymobile/ymwork/server/parsers/json/ResultParser;

    invoke-direct {v3}, Lcom/cymobile/ymwork/server/parsers/json/ResultParser;-><init>()V

    invoke-interface {v2, v1, v3}, Lcom/cymobile/ymwork/server/http/HttpApi;->doHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/cymobile/ymwork/server/parsers/json/Parser;)Lcom/cymobile/ymwork/types/BaseType;

    move-result-object v2

    check-cast v2, Lcom/cymobile/ymwork/types/CommonResult;

    return-object v2
.end method

.method public addUser(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cymobile/ymwork/server/Server$Location;)Lcom/cymobile/ymwork/types/CommonResult;
    .locals 9
    .parameter "contexts"
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
    .line 582
    iget-object v3, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    const-string v2, "/ChaoYangWorkV2/SaveUsersServlet"

    invoke-direct {p0, v2}, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->fullUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0xb

    new-array v5, v2, [Lorg/apache/http/NameValuePair;

    const/4 v2, 0x0

    .line 583
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "usermobile"

    invoke-direct {v6, v7, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v2

    const/4 v2, 0x1

    .line 584
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "passwd"

    invoke-direct {v6, v7, p4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v2

    const/4 v2, 0x2

    .line 585
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "username"

    invoke-direct {v6, v7, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v2

    const/4 v6, 0x3

    .line 586
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "isadmin"

    if-eqz p5, :cond_0

    const-string v2, "1"

    :goto_0
    invoke-direct {v7, v8, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v5, v6

    const/4 v2, 0x4

    .line 587
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "zoneid"

    invoke-direct {v6, v7, p6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v2

    const/4 v2, 0x5

    .line 588
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "zonename"

    move-object/from16 v0, p7

    invoke-direct {v6, v7, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v2

    const/4 v2, 0x6

    .line 589
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "imei"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v2

    const/4 v2, 0x7

    .line 590
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "versions"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getReleaseVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v2

    const/16 v2, 0x8

    .line 591
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "model"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getPhoneModel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v2

    const/16 v2, 0x9

    .line 592
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "modelPhone"

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->getModelPhone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v2

    const/16 v2, 0xa

    .line 593
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "desc"

    move-object/from16 v0, p8

    invoke-direct {v6, v7, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v2

    .line 582
    invoke-interface {v3, v4, v5}, Lcom/cymobile/ymwork/server/http/HttpApi;->createHttpGet(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v1

    .line 595
    .local v1, httpGet:Lorg/apache/http/client/methods/HttpGet;
    iget-object v2, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    new-instance v3, Lcom/cymobile/ymwork/server/parsers/json/ResultParser;

    invoke-direct {v3}, Lcom/cymobile/ymwork/server/parsers/json/ResultParser;-><init>()V

    invoke-interface {v2, v1, v3}, Lcom/cymobile/ymwork/server/http/HttpApi;->doHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/cymobile/ymwork/server/parsers/json/Parser;)Lcom/cymobile/ymwork/types/BaseType;

    move-result-object v2

    check-cast v2, Lcom/cymobile/ymwork/types/CommonResult;

    return-object v2

    .line 586
    .end local v1           #httpGet:Lorg/apache/http/client/methods/HttpGet;
    :cond_0
    const-string v2, "0"

    goto :goto_0
.end method

.method public buildingDetail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cymobile/ymwork/types/Building;
    .locals 8
    .parameter "contexts"
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
    .line 464
    iget-object v1, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    const-string v2, "/ChaoYangWorkV2/Building_recordsSelect"

    invoke-direct {p0, v2}, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->fullUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    new-array v3, v3, [Lorg/apache/http/NameValuePair;

    const/4 v4, 0x0

    .line 465
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "buildingrecordsnum"

    invoke-direct {v5, v6, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 466
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "imei"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 467
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "versions"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getReleaseVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x3

    .line 468
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "model"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getPhoneModel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x4

    .line 469
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "modelPhone"

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->getModelPhone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x5

    .line 470
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "zoneid"

    invoke-direct {v5, v6, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    .line 464
    invoke-interface {v1, v2, v3}, Lcom/cymobile/ymwork/server/http/HttpApi;->createHttpGet(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 471
    .local v0, httpGet:Lorg/apache/http/client/methods/HttpGet;
    iget-object v1, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    new-instance v2, Lcom/cymobile/ymwork/server/parsers/json/BuildingParser;

    invoke-direct {v2}, Lcom/cymobile/ymwork/server/parsers/json/BuildingParser;-><init>()V

    invoke-interface {v1, v0, v2}, Lcom/cymobile/ymwork/server/http/HttpApi;->doHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/cymobile/ymwork/server/parsers/json/Parser;)Lcom/cymobile/ymwork/types/BaseType;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/types/Building;

    return-object v1
.end method

.method public buildingDetailFullNumber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lcom/cymobile/ymwork/types/Building;
    .locals 8
    .parameter "contexts"
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
    .line 474
    iget-object v1, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    const-string v2, "/ChaoYangWorkV2/SelectBuildingrecordsnum"

    invoke-direct {p0, v2}, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->fullUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x7

    new-array v3, v3, [Lorg/apache/http/NameValuePair;

    const/4 v4, 0x0

    .line 475
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "buildingrecordsnum"

    invoke-direct {v5, v6, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 476
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "zoneid"

    invoke-direct {v5, v6, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 477
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "imei"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x3

    .line 478
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "versions"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getReleaseVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x4

    .line 479
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "model"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getPhoneModel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x5

    .line 480
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "modelPhone"

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->getModelPhone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x6

    .line 481
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "classid"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    .line 474
    invoke-interface {v1, v2, v3}, Lcom/cymobile/ymwork/server/http/HttpApi;->createHttpGet(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 482
    .local v0, httpGet:Lorg/apache/http/client/methods/HttpGet;
    iget-object v1, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    new-instance v2, Lcom/cymobile/ymwork/server/parsers/json/BuildingParser;

    invoke-direct {v2}, Lcom/cymobile/ymwork/server/parsers/json/BuildingParser;-><init>()V

    invoke-interface {v1, v0, v2}, Lcom/cymobile/ymwork/server/http/HttpApi;->doHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/cymobile/ymwork/server/parsers/json/Parser;)Lcom/cymobile/ymwork/types/BaseType;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/types/Building;

    return-object v1
.end method

.method buildings(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;IILcom/cymobile/ymwork/server/Server$Location;)Lcom/cymobile/ymwork/types/Group;
    .locals 10
    .parameter "contexts"
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
            "(",
            "Landroid/content/Context;",
            "I",
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
    .line 229
    iget-object v3, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    const-string v2, "/ChaoYangWorkV2/ServletBuilding_AllServlet"

    invoke-direct {p0, v2}, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->fullUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x10

    new-array v5, v2, [Lorg/apache/http/NameValuePair;

    const/4 v2, 0x0

    .line 230
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "code"

    invoke-direct {v6, v7, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v2

    const/4 v2, 0x1

    .line 231
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "classid"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v2

    const/4 v2, 0x2

    .line 232
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "day"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v2

    const/4 v2, 0x3

    .line 233
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "category"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v2

    const/4 v2, 0x4

    .line 234
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "order"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p6

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v2

    const/4 v2, 0x5

    .line 235
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "startintent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p7

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v2

    const/4 v2, 0x6

    .line 236
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "endnum"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    add-int v9, p7, p8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v2

    const/4 v6, 0x7

    .line 237
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "geolat"

    if-eqz p9, :cond_0

    move-object/from16 v0, p9

    iget-object v2, v0, Lcom/cymobile/ymwork/server/Server$Location;->geolat:Ljava/lang/String;

    :goto_0
    invoke-direct {v7, v8, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v5, v6

    const/16 v6, 0x8

    .line 238
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "geolong"

    if-eqz p9, :cond_1

    move-object/from16 v0, p9

    iget-object v2, v0, Lcom/cymobile/ymwork/server/Server$Location;->geolong:Ljava/lang/String;

    :goto_1
    invoke-direct {v7, v8, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v5, v6

    const/16 v6, 0x9

    .line 239
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "geohacc"

    if-eqz p9, :cond_2

    move-object/from16 v0, p9

    iget-object v2, v0, Lcom/cymobile/ymwork/server/Server$Location;->geohacc:Ljava/lang/String;

    :goto_2
    invoke-direct {v7, v8, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v5, v6

    const/16 v6, 0xa

    .line 240
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "geovacc"

    if-eqz p9, :cond_3

    move-object/from16 v0, p9

    iget-object v2, v0, Lcom/cymobile/ymwork/server/Server$Location;->geovacc:Ljava/lang/String;

    :goto_3
    invoke-direct {v7, v8, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v5, v6

    const/16 v2, 0xb

    .line 241
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "imei"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v2

    const/16 v2, 0xc

    .line 242
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "versions"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getReleaseVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v2

    const/16 v2, 0xd

    .line 243
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "model"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getPhoneModel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v2

    const/16 v2, 0xe

    .line 244
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "modelPhone"

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->getModelPhone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v2

    const/16 v6, 0xf

    .line 245
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "geoalt"

    if-eqz p9, :cond_4

    move-object/from16 v0, p9

    iget-object v2, v0, Lcom/cymobile/ymwork/server/Server$Location;->geoalt:Ljava/lang/String;

    :goto_4
    invoke-direct {v7, v8, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v5, v6

    .line 229
    invoke-interface {v3, v4, v5}, Lcom/cymobile/ymwork/server/http/HttpApi;->createHttpGet(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v1

    .line 247
    .local v1, httpGet:Lorg/apache/http/client/methods/HttpGet;
    iget-object v2, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    new-instance v3, Lcom/cymobile/ymwork/server/parsers/json/GroupParser;

    new-instance v4, Lcom/cymobile/ymwork/server/parsers/json/BuildingParser;

    invoke-direct {v4}, Lcom/cymobile/ymwork/server/parsers/json/BuildingParser;-><init>()V

    invoke-direct {v3, v4}, Lcom/cymobile/ymwork/server/parsers/json/GroupParser;-><init>(Lcom/cymobile/ymwork/server/parsers/json/Parser;)V

    invoke-interface {v2, v1, v3}, Lcom/cymobile/ymwork/server/http/HttpApi;->doHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/cymobile/ymwork/server/parsers/json/Parser;)Lcom/cymobile/ymwork/types/BaseType;

    move-result-object v2

    check-cast v2, Lcom/cymobile/ymwork/types/Group;

    return-object v2

    .line 237
    .end local v1           #httpGet:Lorg/apache/http/client/methods/HttpGet;
    :cond_0
    const-string v2, "39.11"

    goto/16 :goto_0

    .line 238
    :cond_1
    const-string v2, "116.111"

    goto/16 :goto_1

    .line 239
    :cond_2
    const-string v2, ""

    goto/16 :goto_2

    .line 240
    :cond_3
    const-string v2, ""

    goto :goto_3

    .line 245
    :cond_4
    const-string v2, ""

    goto :goto_4
.end method

.method public buildingsReport(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Lcom/cymobile/ymwork/types/BuildingReport;
    .locals 9
    .parameter "contexts"
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
    .line 297
    iget-object v1, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    const-string v2, "/ChaoYangWorkV2/BuildingAllNumberArea"

    invoke-direct {p0, v2}, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->fullUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x9

    new-array v3, v3, [Lorg/apache/http/NameValuePair;

    const/4 v4, 0x0

    .line 299
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "code"

    invoke-direct {v5, v6, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 300
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "classid"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 301
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "day"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x3

    .line 302
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "category"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x4

    .line 303
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "imei"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x5

    .line 304
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "versions"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getReleaseVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x6

    .line 305
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "model"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getPhoneModel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x7

    .line 306
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "modelPhone"

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->getModelPhone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/16 v4, 0x8

    .line 307
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "order"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    .line 297
    invoke-interface {v1, v2, v3}, Lcom/cymobile/ymwork/server/http/HttpApi;->createHttpGet(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 309
    .local v0, httpGet:Lorg/apache/http/client/methods/HttpGet;
    iget-object v1, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    new-instance v2, Lcom/cymobile/ymwork/server/parsers/json/BuildingParserReport;

    invoke-direct {v2}, Lcom/cymobile/ymwork/server/parsers/json/BuildingParserReport;-><init>()V

    invoke-interface {v1, v0, v2}, Lcom/cymobile/ymwork/server/http/HttpApi;->doHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/cymobile/ymwork/server/parsers/json/Parser;)Lcom/cymobile/ymwork/types/BaseType;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/types/BuildingReport;

    return-object v1
.end method

.method changePasswd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cymobile/ymwork/server/Server$Location;)Lcom/cymobile/ymwork/types/CommonResult;
    .locals 8
    .parameter "contexts"
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
    .line 643
    iget-object v1, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    const-string v2, "/ChaoYangWorkV2/UpdateUsersServlet"

    invoke-direct {p0, v2}, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->fullUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x7

    new-array v3, v3, [Lorg/apache/http/NameValuePair;

    const/4 v4, 0x0

    .line 644
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "usermobile"

    invoke-direct {v5, v6, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 645
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "passwd"

    invoke-direct {v5, v6, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 646
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "imei"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x3

    .line 647
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "versions"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getReleaseVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x4

    .line 648
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "model"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getPhoneModel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x5

    .line 649
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "modelPhone"

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->getModelPhone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x6

    .line 650
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "passwdtwo"

    invoke-direct {v5, v6, p4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    .line 643
    invoke-interface {v1, v2, v3}, Lcom/cymobile/ymwork/server/http/HttpApi;->createHttpGet(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 652
    .local v0, httpGet:Lorg/apache/http/client/methods/HttpGet;
    iget-object v1, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    new-instance v2, Lcom/cymobile/ymwork/server/parsers/json/ResultParser;

    invoke-direct {v2}, Lcom/cymobile/ymwork/server/parsers/json/ResultParser;-><init>()V

    invoke-interface {v1, v0, v2}, Lcom/cymobile/ymwork/server/http/HttpApi;->doHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/cymobile/ymwork/server/parsers/json/Parser;)Lcom/cymobile/ymwork/types/BaseType;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/types/CommonResult;

    return-object v1
.end method

.method public construstionFieldDetailFullNumber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lcom/cymobile/ymwork/types/ConstrustionField;
    .locals 8
    .parameter "contexts"
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
    .line 485
    iget-object v1, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    const-string v2, "/ChaoYangWorkV2/SelectBuildingdetails"

    invoke-direct {p0, v2}, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->fullUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x7

    new-array v3, v3, [Lorg/apache/http/NameValuePair;

    const/4 v4, 0x0

    .line 486
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "buildingrecordsnum"

    invoke-direct {v5, v6, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 487
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "zoneid"

    invoke-direct {v5, v6, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 488
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "imei"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x3

    .line 489
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "versions"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getReleaseVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x4

    .line 490
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "model"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getPhoneModel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x5

    .line 491
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "modelPhone"

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->getModelPhone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x6

    .line 492
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "classid"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    .line 485
    invoke-interface {v1, v2, v3}, Lcom/cymobile/ymwork/server/http/HttpApi;->createHttpGet(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 493
    .local v0, httpGet:Lorg/apache/http/client/methods/HttpGet;
    iget-object v1, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    new-instance v2, Lcom/cymobile/ymwork/server/parsers/json/ConstrustionFieldParser;

    invoke-direct {v2}, Lcom/cymobile/ymwork/server/parsers/json/ConstrustionFieldParser;-><init>()V

    invoke-interface {v1, v0, v2}, Lcom/cymobile/ymwork/server/http/HttpApi;->doHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/cymobile/ymwork/server/parsers/json/Parser;)Lcom/cymobile/ymwork/types/BaseType;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/types/ConstrustionField;

    return-object v1
.end method

.method construstionfield(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;IILcom/cymobile/ymwork/server/Server$Location;Ljava/lang/String;Ljava/lang/String;)Lcom/cymobile/ymwork/types/Group;
    .locals 10
    .parameter "contexts"
    .parameter "classid"
    .parameter "zoneId"
    .parameter "range"
    .parameter "category"
    .parameter "order"
    .parameter "index"
    .parameter "listnum"
    .parameter "location"
    .parameter "tpyes"
    .parameter "emphasis"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lcom/cymobile/ymwork/server/Server$Location;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cymobile/ymwork/types/Group",
            "<",
            "Lcom/cymobile/ymwork/types/ConstrustionField;",
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
    .line 250
    iget-object v3, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    const-string v2, "/ChaoYangWorkV2/BuildingCategoryServlet"

    invoke-direct {p0, v2}, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->fullUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x12

    new-array v5, v2, [Lorg/apache/http/NameValuePair;

    const/4 v2, 0x0

    .line 251
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "code"

    invoke-direct {v6, v7, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v2

    const/4 v2, 0x1

    .line 252
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "classid"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v2

    const/4 v2, 0x2

    .line 253
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "day"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v2

    const/4 v2, 0x3

    .line 254
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "category"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v2

    const/4 v2, 0x4

    .line 255
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "order"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p6

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v2

    const/4 v2, 0x5

    .line 256
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "startintent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p7

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v2

    const/4 v2, 0x6

    .line 257
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "endnum"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    add-int v9, p7, p8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v2

    const/4 v6, 0x7

    .line 258
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "geolat"

    if-eqz p9, :cond_0

    move-object/from16 v0, p9

    iget-object v2, v0, Lcom/cymobile/ymwork/server/Server$Location;->geolat:Ljava/lang/String;

    :goto_0
    invoke-direct {v7, v8, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v5, v6

    const/16 v6, 0x8

    .line 259
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "geolong"

    if-eqz p9, :cond_1

    move-object/from16 v0, p9

    iget-object v2, v0, Lcom/cymobile/ymwork/server/Server$Location;->geolong:Ljava/lang/String;

    :goto_1
    invoke-direct {v7, v8, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v5, v6

    const/16 v6, 0x9

    .line 260
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "geohacc"

    if-eqz p9, :cond_2

    move-object/from16 v0, p9

    iget-object v2, v0, Lcom/cymobile/ymwork/server/Server$Location;->geohacc:Ljava/lang/String;

    :goto_2
    invoke-direct {v7, v8, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v5, v6

    const/16 v6, 0xa

    .line 261
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "geovacc"

    if-eqz p9, :cond_3

    move-object/from16 v0, p9

    iget-object v2, v0, Lcom/cymobile/ymwork/server/Server$Location;->geovacc:Ljava/lang/String;

    :goto_3
    invoke-direct {v7, v8, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v5, v6

    const/16 v2, 0xb

    .line 262
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "imei"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v2

    const/16 v2, 0xc

    .line 263
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "versions"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getReleaseVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v2

    const/16 v2, 0xd

    .line 264
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "model"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getPhoneModel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v2

    const/16 v2, 0xe

    .line 265
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "modelPhone"

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->getModelPhone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v2

    const/16 v6, 0xf

    .line 266
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "geoalt"

    if-eqz p9, :cond_4

    move-object/from16 v0, p9

    iget-object v2, v0, Lcom/cymobile/ymwork/server/Server$Location;->geoalt:Ljava/lang/String;

    :goto_4
    invoke-direct {v7, v8, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v5, v6

    const/16 v2, 0x10

    .line 267
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "type"

    if-eqz p10, :cond_5

    .end local p10
    :goto_5
    move-object/from16 v0, p10

    invoke-direct {v6, v7, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v2

    const/16 v2, 0x11

    .line 268
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "emphasis"

    if-eqz p11, :cond_6

    .end local p11
    :goto_6
    move-object/from16 v0, p11

    invoke-direct {v6, v7, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v2

    .line 250
    invoke-interface {v3, v4, v5}, Lcom/cymobile/ymwork/server/http/HttpApi;->createHttpGet(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v1

    .line 270
    .local v1, httpGet:Lorg/apache/http/client/methods/HttpGet;
    iget-object v2, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    new-instance v3, Lcom/cymobile/ymwork/server/parsers/json/GroupParser;

    new-instance v4, Lcom/cymobile/ymwork/server/parsers/json/ConstrustionFieldParser;

    invoke-direct {v4}, Lcom/cymobile/ymwork/server/parsers/json/ConstrustionFieldParser;-><init>()V

    invoke-direct {v3, v4}, Lcom/cymobile/ymwork/server/parsers/json/GroupParser;-><init>(Lcom/cymobile/ymwork/server/parsers/json/Parser;)V

    invoke-interface {v2, v1, v3}, Lcom/cymobile/ymwork/server/http/HttpApi;->doHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/cymobile/ymwork/server/parsers/json/Parser;)Lcom/cymobile/ymwork/types/BaseType;

    move-result-object v2

    check-cast v2, Lcom/cymobile/ymwork/types/Group;

    return-object v2

    .line 258
    .end local v1           #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local p10
    .restart local p11
    :cond_0
    const-string v2, "39.11"

    goto/16 :goto_0

    .line 259
    :cond_1
    const-string v2, "116.111"

    goto/16 :goto_1

    .line 260
    :cond_2
    const-string v2, ""

    goto/16 :goto_2

    .line 261
    :cond_3
    const-string v2, ""

    goto/16 :goto_3

    .line 266
    :cond_4
    const-string v2, ""

    goto :goto_4

    .line 267
    :cond_5
    const-string p10, ""

    goto :goto_5

    .line 268
    .end local p10
    :cond_6
    const-string p11, ""

    goto :goto_6
.end method

.method public forgetPassword(Landroid/content/Context;Ljava/lang/String;)Lcom/cymobile/ymwork/types/CommonResult;
    .locals 8
    .parameter "contexts"
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
    .line 563
    iget-object v1, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    const-string v2, "/ChaoYangWorkV2/Zscy_HttpForgetPasswd"

    invoke-direct {p0, v2}, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->fullUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    new-array v3, v3, [Lorg/apache/http/NameValuePair;

    const/4 v4, 0x0

    .line 564
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "imei"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 565
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "versions"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getReleaseVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 566
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "model"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getPhoneModel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x3

    .line 567
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "modelPhone"

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->getModelPhone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x4

    .line 568
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "mobieloremail"

    invoke-direct {v5, v6, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    .line 563
    invoke-interface {v1, v2, v3}, Lcom/cymobile/ymwork/server/http/HttpApi;->createHttpGet(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 569
    .local v0, httpGet:Lorg/apache/http/client/methods/HttpGet;
    iget-object v1, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    new-instance v2, Lcom/cymobile/ymwork/server/parsers/json/ResultParser;

    invoke-direct {v2}, Lcom/cymobile/ymwork/server/parsers/json/ResultParser;-><init>()V

    invoke-interface {v1, v0, v2}, Lcom/cymobile/ymwork/server/http/HttpApi;->doHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/cymobile/ymwork/server/parsers/json/Parser;)Lcom/cymobile/ymwork/types/BaseType;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/types/CommonResult;

    return-object v1
.end method

.method getAllComm(Landroid/content/Context;)Lcom/cymobile/ymwork/types/Group;
    .locals 8
    .parameter "contexts"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
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
    .line 608
    iget-object v1, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    const-string v2, "/ChaoYangWorkV2/CommCnameServlet"

    invoke-direct {p0, v2}, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->fullUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    new-array v3, v3, [Lorg/apache/http/NameValuePair;

    const/4 v4, 0x0

    .line 609
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "imei"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 610
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "versions"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getReleaseVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 611
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "model"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getPhoneModel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x3

    .line 612
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "modelPhone"

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->getModelPhone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x4

    .line 613
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "code"

    const-string v7, ""

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    .line 608
    invoke-interface {v1, v2, v3}, Lcom/cymobile/ymwork/server/http/HttpApi;->createHttpGet(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 614
    .local v0, httpGet:Lorg/apache/http/client/methods/HttpGet;
    iget-object v1, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    new-instance v2, Lcom/cymobile/ymwork/server/parsers/json/GroupParser;

    new-instance v3, Lcom/cymobile/ymwork/server/parsers/json/ZoneParser;

    invoke-direct {v3}, Lcom/cymobile/ymwork/server/parsers/json/ZoneParser;-><init>()V

    invoke-direct {v2, v3}, Lcom/cymobile/ymwork/server/parsers/json/GroupParser;-><init>(Lcom/cymobile/ymwork/server/parsers/json/Parser;)V

    invoke-interface {v1, v0, v2}, Lcom/cymobile/ymwork/server/http/HttpApi;->doHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/cymobile/ymwork/server/parsers/json/Parser;)Lcom/cymobile/ymwork/types/BaseType;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/types/Group;

    return-object v1
.end method

.method getCaseReplys(Landroid/content/Context;Ljava/lang/String;I)Lcom/cymobile/ymwork/types/Group;
    .locals 8
    .parameter "contexts"
    .parameter "caseid"
    .parameter "classid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
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
    .line 677
    iget-object v1, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    const-string v2, "/ChaoYangWorkV2/SelectReplysServlet"

    invoke-direct {p0, v2}, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->fullUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    new-array v3, v3, [Lorg/apache/http/NameValuePair;

    const/4 v4, 0x0

    .line 678
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "caseid"

    invoke-direct {v5, v6, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 679
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "imei"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 680
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "versions"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getReleaseVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x3

    .line 681
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "model"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getPhoneModel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x4

    .line 682
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "modelPhone"

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->getModelPhone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x5

    .line 683
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

    .line 677
    invoke-interface {v1, v2, v3}, Lcom/cymobile/ymwork/server/http/HttpApi;->createHttpGet(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 685
    .local v0, httpGet:Lorg/apache/http/client/methods/HttpGet;
    iget-object v1, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    new-instance v2, Lcom/cymobile/ymwork/server/parsers/json/GroupParser;

    new-instance v3, Lcom/cymobile/ymwork/server/parsers/json/ReplyParser;

    invoke-direct {v3}, Lcom/cymobile/ymwork/server/parsers/json/ReplyParser;-><init>()V

    invoke-direct {v2, v3}, Lcom/cymobile/ymwork/server/parsers/json/GroupParser;-><init>(Lcom/cymobile/ymwork/server/parsers/json/Parser;)V

    invoke-interface {v1, v0, v2}, Lcom/cymobile/ymwork/server/http/HttpApi;->doHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/cymobile/ymwork/server/parsers/json/Parser;)Lcom/cymobile/ymwork/types/BaseType;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/types/Group;

    return-object v1
.end method

.method public getModelPhone(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "contexts"

    .prologue
    .line 706
    const/4 v1, 0x0

    .line 708
    .local v1, modelPhone:Ljava/lang/String;
    :try_start_0
    const-class v2, Lcom/cymobile/ymwork/SettingBase;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "key_newGlobalUserPhone"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 712
    :goto_0
    return-object v1

    .line 709
    :catch_0
    move-exception v0

    .line 710
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method getZone(Landroid/content/Context;Ljava/lang/String;)Lcom/cymobile/ymwork/types/Group;
    .locals 8
    .parameter "contexts"
    .parameter "zonecode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
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
    .line 598
    iget-object v1, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    const-string v2, "/ChaoYangWorkV2/StreetCnameServlet"

    invoke-direct {p0, v2}, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->fullUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    new-array v3, v3, [Lorg/apache/http/NameValuePair;

    const/4 v4, 0x0

    .line 599
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "imei"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 600
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "versions"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getReleaseVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 601
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "model"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getPhoneModel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x3

    .line 602
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "modelPhone"

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->getModelPhone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x4

    .line 603
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "code"

    invoke-direct {v5, v6, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    .line 598
    invoke-interface {v1, v2, v3}, Lcom/cymobile/ymwork/server/http/HttpApi;->createHttpGet(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 605
    .local v0, httpGet:Lorg/apache/http/client/methods/HttpGet;
    iget-object v1, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

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
    .line 139
    iget-object v0, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->mAuthScope:Lorg/apache/http/auth/AuthScope;

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

.method public loginUser(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/cymobile/ymwork/server/Server$Location;)Lcom/cymobile/ymwork/types/User;
    .locals 8
    .parameter "contexts"
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
    .line 527
    iget-object v1, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    const-string v2, "/ChaoYangWorkV2/UsersLoginServlet"

    invoke-direct {p0, v2}, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->fullUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xb

    new-array v3, v3, [Lorg/apache/http/NameValuePair;

    const/4 v4, 0x0

    .line 528
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "usermobile"

    invoke-direct {v5, v6, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 529
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "passwd"

    invoke-direct {v5, v6, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 530
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "geolat"

    iget-object v7, p4, Lcom/cymobile/ymwork/server/Server$Location;->geolat:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x3

    .line 531
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "geolong"

    iget-object v7, p4, Lcom/cymobile/ymwork/server/Server$Location;->geolong:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x4

    .line 532
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "geohacc"

    iget-object v7, p4, Lcom/cymobile/ymwork/server/Server$Location;->geohacc:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x5

    .line 533
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "geovacc"

    iget-object v7, p4, Lcom/cymobile/ymwork/server/Server$Location;->geovacc:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x6

    .line 534
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "imei"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x7

    .line 535
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "versions"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getReleaseVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/16 v4, 0x8

    .line 536
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "model"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getPhoneModel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/16 v4, 0x9

    .line 537
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "modelPhone"

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->getModelPhone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/16 v4, 0xa

    .line 538
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "geoalt"

    iget-object v7, p4, Lcom/cymobile/ymwork/server/Server$Location;->geoalt:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    .line 527
    invoke-interface {v1, v2, v3}, Lcom/cymobile/ymwork/server/http/HttpApi;->createHttpGet(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 539
    .local v0, httpGet:Lorg/apache/http/client/methods/HttpGet;
    iget-object v1, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    new-instance v2, Lcom/cymobile/ymwork/server/parsers/json/UserParser;

    invoke-direct {v2}, Lcom/cymobile/ymwork/server/parsers/json/UserParser;-><init>()V

    invoke-interface {v1, v0, v2}, Lcom/cymobile/ymwork/server/http/HttpApi;->doHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/cymobile/ymwork/server/parsers/json/Parser;)Lcom/cymobile/ymwork/types/BaseType;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/types/User;

    return-object v1
.end method

.method public register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cymobile/ymwork/server/Server$Location;)Lcom/cymobile/ymwork/types/User;
    .locals 8
    .parameter "contexts"
    .parameter "phoneNumber"
    .parameter "userName"
    .parameter "workcompany"
    .parameter "workpost"
    .parameter "zoneid"
    .parameter "zonename"
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
    .line 543
    iget-object v1, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    const-string v2, "/ChaoYangWorkV2/UsersRegisterV2Servlet"

    invoke-direct {p0, v2}, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->fullUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xf

    new-array v3, v3, [Lorg/apache/http/NameValuePair;

    const/4 v4, 0x0

    .line 544
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "usermobile"

    invoke-direct {v5, v6, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 545
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "userName"

    invoke-direct {v5, v6, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 546
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "workcompany"

    invoke-direct {v5, v6, p4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x3

    .line 547
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "workpost"

    invoke-direct {v5, v6, p5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x4

    .line 548
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "zoneid"

    invoke-direct {v5, v6, p6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x5

    .line 549
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "zonename"

    invoke-direct {v5, v6, p7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x6

    .line 550
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "geolat"

    const-string v7, ""

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x7

    .line 551
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "geolong"

    const-string v7, ""

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/16 v4, 0x8

    .line 552
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "geohacc"

    const-string v7, ""

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/16 v4, 0x9

    .line 553
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "geovacc"

    const-string v7, ""

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/16 v4, 0xa

    .line 554
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "imei"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/16 v4, 0xb

    .line 555
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "versions"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getReleaseVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/16 v4, 0xc

    .line 556
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "model"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getPhoneModel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/16 v4, 0xd

    .line 557
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "modelPhone"

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->getModelPhone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/16 v4, 0xe

    .line 558
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "geoalt"

    const-string v7, ""

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    .line 543
    invoke-interface {v1, v2, v3}, Lcom/cymobile/ymwork/server/http/HttpApi;->createHttpGet(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 559
    .local v0, httpGet:Lorg/apache/http/client/methods/HttpGet;
    iget-object v1, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    new-instance v2, Lcom/cymobile/ymwork/server/parsers/json/UserParser;

    invoke-direct {v2}, Lcom/cymobile/ymwork/server/parsers/json/UserParser;-><init>()V

    invoke-interface {v1, v0, v2}, Lcom/cymobile/ymwork/server/http/HttpApi;->doHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/cymobile/ymwork/server/parsers/json/Parser;)Lcom/cymobile/ymwork/types/BaseType;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/types/User;

    return-object v1
.end method

.method serverSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cymobile/ymwork/types/ServerSettings;
    .locals 8
    .parameter "contexts"
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
    .line 510
    iget-object v1, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    const-string v2, "/ChaoYangWorkV2/UpgradeSuper.jsp"

    invoke-direct {p0, v2}, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->fullUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x9

    new-array v3, v3, [Lorg/apache/http/NameValuePair;

    const/4 v4, 0x0

    .line 511
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "geolat"

    invoke-direct {v5, v6, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 512
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "geolong"

    invoke-direct {v5, v6, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 513
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "geohacc"

    invoke-direct {v5, v6, p4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x3

    .line 514
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "geovacc"

    invoke-direct {v5, v6, p5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x4

    .line 515
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "imei"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x5

    .line 516
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "versions"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getReleaseVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x6

    .line 517
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "model"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getPhoneModel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x7

    .line 518
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "modelPhone"

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->getModelPhone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/16 v4, 0x8

    .line 519
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "geoalt"

    invoke-direct {v5, v6, p6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    .line 510
    invoke-interface {v1, v2, v3}, Lcom/cymobile/ymwork/server/http/HttpApi;->createHttpGet(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 520
    .local v0, httpGet:Lorg/apache/http/client/methods/HttpGet;
    iget-object v1, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    .line 521
    new-instance v2, Lcom/cymobile/ymwork/server/parsers/json/SettingsParser;

    invoke-direct {v2}, Lcom/cymobile/ymwork/server/parsers/json/SettingsParser;-><init>()V

    .line 520
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
    .line 143
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 144
    :cond_0
    const-string v0, "ServerHttpApiV2"

    const-string v1, "Clearing Credentials"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v0, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/client/CredentialsProvider;->clear()V

    .line 152
    :goto_0
    return-void

    .line 147
    :cond_1
    const-string v0, "ServerHttpApiV2"

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

    .line 149
    iget-object v0, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->mAuthScope:Lorg/apache/http/auth/AuthScope;

    .line 150
    new-instance v2, Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-direct {v2, p1, p2}, Lorg/apache/http/auth/UsernamePasswordCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/CredentialsProvider;->setCredentials(Lorg/apache/http/auth/AuthScope;Lorg/apache/http/auth/Credentials;)V

    goto :goto_0
.end method

.method userCaseNumber(Landroid/content/Context;Ljava/lang/String;)Lcom/cymobile/ymwork/types/CaseNumber;
    .locals 8
    .parameter "contexts"
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
    .line 666
    iget-object v1, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    const-string v2, "/ChaoYangWorkV2/SelectClassnumServlet"

    invoke-direct {p0, v2}, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->fullUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    new-array v3, v3, [Lorg/apache/http/NameValuePair;

    const/4 v4, 0x0

    .line 667
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "imei"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 668
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "versions"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getReleaseVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 669
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "model"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getPhoneModel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x3

    .line 670
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "modelPhone"

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->getModelPhone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x4

    .line 671
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "zoneid"

    invoke-direct {v5, v6, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    .line 666
    invoke-interface {v1, v2, v3}, Lcom/cymobile/ymwork/server/http/HttpApi;->createHttpGet(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 673
    .local v0, httpGet:Lorg/apache/http/client/methods/HttpGet;
    iget-object v1, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    new-instance v2, Lcom/cymobile/ymwork/server/parsers/json/CaseNumberParser;

    invoke-direct {v2}, Lcom/cymobile/ymwork/server/parsers/json/CaseNumberParser;-><init>()V

    invoke-interface {v1, v0, v2}, Lcom/cymobile/ymwork/server/http/HttpApi;->doHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/cymobile/ymwork/server/parsers/json/Parser;)Lcom/cymobile/ymwork/types/BaseType;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/types/CaseNumber;

    return-object v1
.end method

.method userDetail(Landroid/content/Context;Ljava/lang/String;)Lcom/cymobile/ymwork/types/User;
    .locals 8
    .parameter "contexts"
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
    .line 617
    iget-object v1, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    const-string v2, "/ChaoYangWorkV2/UsersAll_mobileServlet"

    invoke-direct {p0, v2}, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->fullUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    new-array v3, v3, [Lorg/apache/http/NameValuePair;

    const/4 v4, 0x0

    .line 618
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "imei"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 619
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "versions"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getReleaseVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 620
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "model"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getPhoneModel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x3

    .line 621
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "modelPhone"

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->getModelPhone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x4

    .line 622
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "usermobile"

    invoke-direct {v5, v6, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    .line 617
    invoke-interface {v1, v2, v3}, Lcom/cymobile/ymwork/server/http/HttpApi;->createHttpGet(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 623
    .local v0, httpGet:Lorg/apache/http/client/methods/HttpGet;
    iget-object v1, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    new-instance v2, Lcom/cymobile/ymwork/server/parsers/json/UserParser;

    invoke-direct {v2}, Lcom/cymobile/ymwork/server/parsers/json/UserParser;-><init>()V

    invoke-interface {v1, v0, v2}, Lcom/cymobile/ymwork/server/http/HttpApi;->doHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/cymobile/ymwork/server/parsers/json/Parser;)Lcom/cymobile/ymwork/types/BaseType;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/types/User;

    return-object v1
.end method

.method userUpdate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/cymobile/ymwork/types/CommonResult;
    .locals 9
    .parameter "contexts"
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
    .line 627
    iget-object v3, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    const-string v2, "/ChaoYangWorkV2/Users_updateAllServlet"

    invoke-direct {p0, v2}, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->fullUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0xb

    new-array v5, v2, [Lorg/apache/http/NameValuePair;

    const/4 v2, 0x0

    .line 628
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "username"

    invoke-direct {v6, v7, p4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v2

    const/4 v2, 0x1

    .line 629
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "usermobile"

    invoke-direct {v6, v7, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v2

    const/4 v2, 0x2

    .line 630
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "passwd"

    invoke-direct {v6, v7, p5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v2

    const/4 v2, 0x3

    .line 631
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "zoneid"

    invoke-direct {v6, v7, p6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v2

    const/4 v2, 0x4

    .line 632
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "zonename"

    move-object/from16 v0, p7

    invoke-direct {v6, v7, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v2

    const/4 v6, 0x5

    .line 633
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "isadmin"

    if-eqz p8, :cond_0

    const-string v2, "1"

    :goto_0
    invoke-direct {v7, v8, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v5, v6

    const/4 v2, 0x6

    .line 634
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "imei"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v2

    const/4 v2, 0x7

    .line 635
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "versions"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getReleaseVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v2

    const/16 v2, 0x8

    .line 636
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "model"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getPhoneModel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v2

    const/16 v2, 0x9

    .line 637
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "modelPhone"

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->getModelPhone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v2

    const/16 v2, 0xa

    .line 638
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "desc"

    move-object/from16 v0, p9

    invoke-direct {v6, v7, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v2

    .line 627
    invoke-interface {v3, v4, v5}, Lcom/cymobile/ymwork/server/http/HttpApi;->createHttpGet(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v1

    .line 639
    .local v1, httpGet:Lorg/apache/http/client/methods/HttpGet;
    iget-object v2, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    new-instance v3, Lcom/cymobile/ymwork/server/parsers/json/ResultParser;

    invoke-direct {v3}, Lcom/cymobile/ymwork/server/parsers/json/ResultParser;-><init>()V

    invoke-interface {v2, v1, v3}, Lcom/cymobile/ymwork/server/http/HttpApi;->doHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/cymobile/ymwork/server/parsers/json/Parser;)Lcom/cymobile/ymwork/types/BaseType;

    move-result-object v2

    check-cast v2, Lcom/cymobile/ymwork/types/CommonResult;

    return-object v2

    .line 633
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
    .line 170
    const-string v2, "------------------319831265358979362846"

    .line 171
    .local v2, BOUNDARY:Ljava/lang/String;
    const-string v13, "\r\n"

    .line 172
    .local v13, lineEnd:Ljava/lang/String;
    const-string v18, "--"

    .line 173
    .local v18, twoHyphens:Ljava/lang/String;
    const/16 v14, 0x2000

    .line 175
    .local v14, maxBufferSize:I
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 176
    .local v10, file:Ljava/io/File;
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 178
    .local v11, fileInputStream:Ljava/io/FileInputStream;
    new-instance v19, Ljava/net/URL;

    const-string v20, "/user/update"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->fullUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 179
    .local v19, url:Ljava/net/URL;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v2}, Lcom/cymobile/ymwork/server/http/HttpApi;->createHttpURLConnectionPost(Ljava/net/URL;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v7

    .line 180
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

    .line 183
    new-instance v8, Ljava/io/DataOutputStream;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v8, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 184
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

    .line 185
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

    .line 186
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

    .line 187
    invoke-virtual {v8, v13}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v11}, Ljava/io/FileInputStream;->available()I

    move-result v5

    .line 190
    .local v5, bytesAvailable:I
    invoke-static {v5, v14}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 191
    .local v4, bufferSize:I
    new-array v3, v4, [B

    .line 193
    .local v3, buffer:[B
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v11, v3, v0, v4}, Ljava/io/FileInputStream;->read([BII)I

    move-result v6

    .line 194
    .local v6, bytesRead:I
    move/from16 v17, v6

    .line 195
    .local v17, totalBytesRead:I
    :goto_0
    if-gtz v6, :cond_0

    .line 202
    invoke-virtual {v8, v13}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 203
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

    .line 205
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 206
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->flush()V

    .line 207
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->close()V

    .line 209
    new-instance v12, Ljava/io/BufferedReader;

    new-instance v20, Ljava/io/InputStreamReader;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v20

    invoke-direct {v12, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 210
    .local v12, in:Ljava/io/BufferedReader;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    .local v15, response:Ljava/lang/StringBuilder;
    const-string v16, ""

    .line 212
    .local v16, responseLine:Ljava/lang/String;
    :goto_1
    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v16

    if-nez v16, :cond_1

    .line 215
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V

    .line 218
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

    .line 196
    .end local v12           #in:Ljava/io/BufferedReader;
    .end local v15           #response:Ljava/lang/StringBuilder;
    .end local v16           #responseLine:Ljava/lang/String;
    :cond_0
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v8, v3, v0, v4}, Ljava/io/DataOutputStream;->write([BII)V

    .line 197
    invoke-virtual {v11}, Ljava/io/FileInputStream;->available()I

    move-result v5

    .line 198
    invoke-static {v5, v14}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 199
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v11, v3, v0, v4}, Ljava/io/FileInputStream;->read([BII)I

    move-result v6

    .line 200
    add-int v17, v17, v6

    goto :goto_0

    .line 213
    .restart local v12       #in:Ljava/io/BufferedReader;
    .restart local v15       #response:Ljava/lang/StringBuilder;
    .restart local v16       #responseLine:Ljava/lang/String;
    :cond_1
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 219
    :catch_0
    move-exception v9

    .line 220
    .local v9, ex:Ljava/lang/Exception;
    new-instance v20, Lcom/cymobile/ymwork/server/error/ServerParseException;

    .line 221
    const-string v21, "Error parsing user photo upload response, invalid json."

    .line 220
    invoke-direct/range {v20 .. v21}, Lcom/cymobile/ymwork/server/error/ServerParseException;-><init>(Ljava/lang/String;)V

    throw v20
.end method

.method users(Landroid/content/Context;Ljava/lang/String;)Lcom/cymobile/ymwork/types/Group;
    .locals 8
    .parameter "contexts"
    .parameter "zonecode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
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
    .line 573
    iget-object v1, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    const-string v2, "/ChaoYangWorkV2/UsersAllServlet"

    invoke-direct {p0, v2}, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->fullUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    new-array v3, v3, [Lorg/apache/http/NameValuePair;

    const/4 v4, 0x0

    .line 574
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "imei"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 575
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "versions"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getReleaseVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 576
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "model"

    invoke-static {p1}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getPhoneModel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x3

    .line 577
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "modelPhone"

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->getModelPhone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x4

    .line 578
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "zoneid"

    invoke-direct {v5, v6, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    .line 573
    invoke-interface {v1, v2, v3}, Lcom/cymobile/ymwork/server/http/HttpApi;->createHttpGet(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 579
    .local v0, httpGet:Lorg/apache/http/client/methods/HttpGet;
    iget-object v1, p0, Lcom/cymobile/ymwork/server/ServerHttpApiV2;->mHttpApi:Lcom/cymobile/ymwork/server/http/HttpApi;

    new-instance v2, Lcom/cymobile/ymwork/server/parsers/json/GroupParser;

    new-instance v3, Lcom/cymobile/ymwork/server/parsers/json/UserParser;

    invoke-direct {v3}, Lcom/cymobile/ymwork/server/parsers/json/UserParser;-><init>()V

    invoke-direct {v2, v3}, Lcom/cymobile/ymwork/server/parsers/json/GroupParser;-><init>(Lcom/cymobile/ymwork/server/parsers/json/Parser;)V

    invoke-interface {v1, v0, v2}, Lcom/cymobile/ymwork/server/http/HttpApi;->doHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/cymobile/ymwork/server/parsers/json/Parser;)Lcom/cymobile/ymwork/types/BaseType;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/types/Group;

    return-object v1
.end method
