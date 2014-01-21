.class public Lcom/cymobile/ymwork/server/error/ServerException;
.super Ljava/lang/Exception;
.source "ServerException.java"


# static fields
.field public static final ErrorCode_Custom:I = 0x42

.field public static final ErrorCode_DataDuplicated:I = 0x15

.field public static final ErrorCode_DataError:I = 0x19

.field public static final ErrorCode_DataTypeWrong:I = 0x1e

.field public static final ErrorCode_noData:I = 0x14

.field public static final ErrorCode_serverError:I = 0xa

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field errorCode:I

.field private mExtra:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/cymobile/ymwork/server/error/ServerException;->errorCode:I

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "message"
    .parameter "extra"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/cymobile/ymwork/server/error/ServerException;->errorCode:I

    .line 22
    iput-object p2, p0, Lcom/cymobile/ymwork/server/error/ServerException;->mExtra:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "message"
    .parameter "extra"
    .parameter "code"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/cymobile/ymwork/server/error/ServerException;->errorCode:I

    .line 26
    iput-object p2, p0, Lcom/cymobile/ymwork/server/error/ServerException;->mExtra:Ljava/lang/String;

    .line 27
    iput p3, p0, Lcom/cymobile/ymwork/server/error/ServerException;->errorCode:I

    .line 28
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/cymobile/ymwork/server/error/ServerException;->errorCode:I

    return v0
.end method

.method public getExtra()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/cymobile/ymwork/server/error/ServerException;->mExtra:Ljava/lang/String;

    return-object v0
.end method
