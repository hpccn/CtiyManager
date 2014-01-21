.class public Lcom/cymobile/ymwork/types/ConstrustionFieldAvgItem;
.super Lcom/cymobile/ymwork/types/DataItemBase;
.source "ConstrustionFieldAvgItem.java"

# interfaces
.implements Lcom/cymobile/ymwork/types/BaseType;


# instance fields
.field private avg:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/cymobile/ymwork/types/DataItemBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/cymobile/ymwork/types/ConstrustionFieldAvgItem;->avg:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/cymobile/ymwork/types/ConstrustionFieldAvgItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setAvg(Ljava/lang/String;)V
    .locals 0
    .parameter "avg"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/cymobile/ymwork/types/ConstrustionFieldAvgItem;->avg:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/cymobile/ymwork/types/ConstrustionFieldAvgItem;->name:Ljava/lang/String;

    .line 24
    return-void
.end method
