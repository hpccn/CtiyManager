.class public Lcom/cymobile/ymwork/types/Photo;
.super Lcom/cymobile/ymwork/types/DataItemBase;
.source "Photo.java"

# interfaces
.implements Lcom/cymobile/ymwork/types/BaseType;


# instance fields
.field private flowerstimes:I

.field private photethumb:Ljava/lang/String;

.field private photoaboutid:Ljava/lang/String;

.field private photoclass:Ljava/lang/String;

.field private photodesc:Ljava/lang/String;

.field private photoid:Ljava/lang/String;

.field private photoowner:Ljava/lang/String;

.field private phototime:J

.field private phototype:Ljava/lang/String;

.field private photourl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4
    invoke-direct {p0}, Lcom/cymobile/ymwork/types/DataItemBase;-><init>()V

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/cymobile/ymwork/types/Photo;->photoid:Ljava/lang/String;

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/cymobile/ymwork/types/Photo;->phototype:Ljava/lang/String;

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lcom/cymobile/ymwork/types/Photo;->photoowner:Ljava/lang/String;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/cymobile/ymwork/types/Photo;->photoaboutid:Ljava/lang/String;

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/cymobile/ymwork/types/Photo;->photethumb:Ljava/lang/String;

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/cymobile/ymwork/types/Photo;->photoclass:Ljava/lang/String;

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cymobile/ymwork/types/Photo;->photourl:Ljava/lang/String;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lcom/cymobile/ymwork/types/Photo;->photodesc:Ljava/lang/String;

    .line 4
    return-void
.end method


# virtual methods
.method public getFlowerstimes()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/cymobile/ymwork/types/Photo;->flowerstimes:I

    return v0
.end method

.method public getPhotethumb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/cymobile/ymwork/types/Photo;->photethumb:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoaboutid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/cymobile/ymwork/types/Photo;->photoaboutid:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoclass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/cymobile/ymwork/types/Photo;->photoclass:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotodesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/cymobile/ymwork/types/Photo;->photodesc:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7
    iget-object v0, p0, Lcom/cymobile/ymwork/types/Photo;->photoid:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoowner()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/cymobile/ymwork/types/Photo;->photoowner:Ljava/lang/String;

    return-object v0
.end method

.method public getPhototime()J
    .locals 2

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/cymobile/ymwork/types/Photo;->phototime:J

    return-wide v0
.end method

.method public getPhototype()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/cymobile/ymwork/types/Photo;->phototype:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotourl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/cymobile/ymwork/types/Photo;->photourl:Ljava/lang/String;

    return-object v0
.end method

.method public setFlowerstimes(I)V
    .locals 0
    .parameter "flowerstimes"

    .prologue
    .line 64
    iput p1, p0, Lcom/cymobile/ymwork/types/Photo;->flowerstimes:I

    .line 65
    return-void
.end method

.method public setPhotethumb(Ljava/lang/String;)V
    .locals 0
    .parameter "photethumb"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/cymobile/ymwork/types/Photo;->photethumb:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setPhotoaboutid(Ljava/lang/String;)V
    .locals 0
    .parameter "photoaboutid"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/cymobile/ymwork/types/Photo;->photoaboutid:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setPhotoclass(Ljava/lang/String;)V
    .locals 0
    .parameter "photoclass"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/cymobile/ymwork/types/Photo;->photoclass:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setPhotodesc(Ljava/lang/String;)V
    .locals 0
    .parameter "photodesc"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/cymobile/ymwork/types/Photo;->photodesc:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setPhotoid(Ljava/lang/String;)V
    .locals 0
    .parameter "photoid"

    .prologue
    .line 10
    iput-object p1, p0, Lcom/cymobile/ymwork/types/Photo;->photoid:Ljava/lang/String;

    .line 11
    return-void
.end method

.method public setPhotoowner(Ljava/lang/String;)V
    .locals 0
    .parameter "photoowner"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/cymobile/ymwork/types/Photo;->photoowner:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setPhototime(J)V
    .locals 0
    .parameter "phototime"

    .prologue
    .line 52
    iput-wide p1, p0, Lcom/cymobile/ymwork/types/Photo;->phototime:J

    .line 53
    return-void
.end method

.method public setPhototype(Ljava/lang/String;)V
    .locals 0
    .parameter "phototype"

    .prologue
    .line 16
    iput-object p1, p0, Lcom/cymobile/ymwork/types/Photo;->phototype:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public setPhotourl(Ljava/lang/String;)V
    .locals 0
    .parameter "photourl"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/cymobile/ymwork/types/Photo;->photourl:Ljava/lang/String;

    .line 47
    return-void
.end method
