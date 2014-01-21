.class public abstract Lcom/cymobile/ymwork/utils/json/JsonInfo;
.super Ljava/lang/Object;
.source "JsonInfo.java"


# instance fields
.field protected mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cymobile/ymwork/utils/json/JsonInfo;->mUrl:Ljava/lang/String;

    .line 11
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/cymobile/ymwork/utils/json/JsonInfo;->mUrl:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public getInfoFromJson()Ljava/util/List;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/cymobile/ymwork/utils/json/JsonInfo;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/cymobile/ymwork/utils/json/JsonEngine;->getJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/utils/json/JsonInfo;->parseJson(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/cymobile/ymwork/utils/json/JsonInfo;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public abstract parseJson(Ljava/lang/String;)Ljava/util/List;
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/cymobile/ymwork/utils/json/JsonInfo;->mUrl:Ljava/lang/String;

    .line 31
    return-void
.end method
