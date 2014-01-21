.class public Lcom/cymobile/ymwork/search/SearchRecord;
.super Ljava/lang/Object;
.source "SearchRecord.java"


# instance fields
.field private mIndex:I

.field private mSearchRecordText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "recordText"

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/cymobile/ymwork/search/SearchRecord;->mSearchRecordText:Ljava/lang/String;

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Lcom/cymobile/ymwork/search/SearchRecord;->mIndex:I

    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "recordText"
    .parameter "index"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/cymobile/ymwork/search/SearchRecord;->mSearchRecordText:Ljava/lang/String;

    .line 14
    iput p2, p0, Lcom/cymobile/ymwork/search/SearchRecord;->mIndex:I

    .line 15
    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/cymobile/ymwork/search/SearchRecord;->mIndex:I

    return v0
.end method

.method public getSearchRecordText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/cymobile/ymwork/search/SearchRecord;->mSearchRecordText:Ljava/lang/String;

    return-object v0
.end method

.method public setIndex(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 26
    iput p1, p0, Lcom/cymobile/ymwork/search/SearchRecord;->mIndex:I

    .line 27
    return-void
.end method

.method public setSearchRecordText(Ljava/lang/String;)V
    .locals 0
    .parameter "recordText"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/cymobile/ymwork/search/SearchRecord;->mSearchRecordText:Ljava/lang/String;

    .line 31
    return-void
.end method
