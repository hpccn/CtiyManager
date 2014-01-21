.class public Lcom/cymobile/ymwork/types/Classes;
.super Lcom/cymobile/ymwork/types/DataItemBase;
.source "Classes.java"

# interfaces
.implements Lcom/cymobile/ymwork/types/BaseType;


# instance fields
.field public cid:Ljava/lang/String;

.field private className:Ljava/lang/String;

.field private classid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/cymobile/ymwork/types/DataItemBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getCid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/cymobile/ymwork/types/Classes;->cid:Ljava/lang/String;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/cymobile/ymwork/types/Classes;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getClassid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7
    iget-object v0, p0, Lcom/cymobile/ymwork/types/Classes;->classid:Ljava/lang/String;

    return-object v0
.end method

.method public setCid(Ljava/lang/String;)V
    .locals 0
    .parameter "cid"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/cymobile/ymwork/types/Classes;->cid:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 0
    .parameter "className"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/cymobile/ymwork/types/Classes;->className:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public setClassid(Ljava/lang/String;)V
    .locals 0
    .parameter "classid"

    .prologue
    .line 10
    iput-object p1, p0, Lcom/cymobile/ymwork/types/Classes;->classid:Ljava/lang/String;

    .line 11
    return-void
.end method
