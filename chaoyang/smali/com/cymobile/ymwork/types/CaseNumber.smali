.class public Lcom/cymobile/ymwork/types/CaseNumber;
.super Lcom/cymobile/ymwork/types/DataItemBase;
.source "CaseNumber.java"

# interfaces
.implements Lcom/cymobile/ymwork/types/BaseType;


# instance fields
.field classNumber:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4
    invoke-direct {p0}, Lcom/cymobile/ymwork/types/DataItemBase;-><init>()V

    .line 5
    const/16 v0, 0x11

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/cymobile/ymwork/types/CaseNumber;->classNumber:[I

    .line 4
    return-void
.end method


# virtual methods
.method public getClassNumber(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 7
    iget-object v0, p0, Lcom/cymobile/ymwork/types/CaseNumber;->classNumber:[I

    aget v0, v0, p1

    return v0
.end method

.method public setClassNumber(II)V
    .locals 1
    .parameter "index"
    .parameter "class0Number"

    .prologue
    .line 10
    iget-object v0, p0, Lcom/cymobile/ymwork/types/CaseNumber;->classNumber:[I

    aput p2, v0, p1

    .line 11
    return-void
.end method
