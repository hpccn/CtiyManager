.class public Lcom/cymobile/ymwork/types/Group;
.super Ljava/util/ArrayList;
.source "Group.java"

# interfaces
.implements Lcom/cymobile/ymwork/types/BaseType;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/cymobile/ymwork/types/BaseType;",
        ">",
        "Ljava/util/ArrayList",
        "<TT;>;",
        "Lcom/cymobile/ymwork/types/BaseType;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mNumber:I

.field private mType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    .local p0, this:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<TT;>;"
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p0, this:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<TT;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<TT;>;"
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 18
    return-void
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .prologue
    .line 33
    .local p0, this:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<TT;>;"
    iget v0, p0, Lcom/cymobile/ymwork/types/Group;->mNumber:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    .local p0, this:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<TT;>;"
    iget-object v0, p0, Lcom/cymobile/ymwork/types/Group;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public setNumber(I)V
    .locals 0
    .parameter "n"

    .prologue
    .line 29
    .local p0, this:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<TT;>;"
    iput p1, p0, Lcom/cymobile/ymwork/types/Group;->mNumber:I

    .line 30
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 21
    .local p0, this:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<TT;>;"
    iput-object p1, p0, Lcom/cymobile/ymwork/types/Group;->mType:Ljava/lang/String;

    .line 22
    return-void
.end method
