.class public Lcom/cymobile/ymwork/types/CommonResult;
.super Lcom/cymobile/ymwork/types/DataItemBase;
.source "CommonResult.java"

# interfaces
.implements Lcom/cymobile/ymwork/types/BaseType;


# instance fields
.field private result:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/cymobile/ymwork/types/DataItemBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lcom/cymobile/ymwork/types/CommonResult;->result:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/cymobile/ymwork/types/CommonResult;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 12
    iput-object p1, p0, Lcom/cymobile/ymwork/types/CommonResult;->result:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .parameter "userId"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/cymobile/ymwork/types/CommonResult;->userId:Ljava/lang/String;

    .line 19
    return-void
.end method
