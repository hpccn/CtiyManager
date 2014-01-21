.class public Lcom/cymobile/ymwork/types/Region;
.super Ljava/lang/Object;
.source "Region.java"


# instance fields
.field private firstChar:I

.field private id:I

.field private lat:D

.field private lng:D

.field private name:Ljava/lang/String;

.field private parentId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0
    .parameter "aid"
    .parameter "aname"
    .parameter "aparent"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/cymobile/ymwork/types/Region;->id:I

    .line 21
    iput-object p2, p0, Lcom/cymobile/ymwork/types/Region;->name:Ljava/lang/String;

    .line 22
    iput p3, p0, Lcom/cymobile/ymwork/types/Region;->parentId:I

    .line 23
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IDD)V
    .locals 0
    .parameter "aid"
    .parameter "aname"
    .parameter "aparentid"
    .parameter "alat"
    .parameter "alng"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lcom/cymobile/ymwork/types/Region;->id:I

    .line 28
    iput-object p2, p0, Lcom/cymobile/ymwork/types/Region;->name:Ljava/lang/String;

    .line 29
    iput p3, p0, Lcom/cymobile/ymwork/types/Region;->parentId:I

    .line 30
    iput-wide p4, p0, Lcom/cymobile/ymwork/types/Region;->lat:D

    .line 31
    iput-wide p6, p0, Lcom/cymobile/ymwork/types/Region;->lng:D

    .line 32
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "paramObject"

    .prologue
    .line 35
    if-eq p1, p0, :cond_1

    .line 36
    instance-of v0, p1, Lcom/cymobile/ymwork/types/Region;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/cymobile/ymwork/types/Region;

    .end local p1
    iget v0, p1, Lcom/cymobile/ymwork/types/Region;->id:I

    iget v1, p0, Lcom/cymobile/ymwork/types/Region;->id:I

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    .line 35
    goto :goto_0
.end method

.method public firstChar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/cymobile/ymwork/types/Region;->firstChar:I

    if-nez v0, :cond_0

    .line 41
    const-string v0, ""

    .line 42
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/cymobile/ymwork/types/Region;->firstChar:I

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLat()D
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/cymobile/ymwork/types/Region;->lat:D

    return-wide v0
.end method

.method public getLng()D
    .locals 2

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/cymobile/ymwork/types/Region;->lng:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/cymobile/ymwork/types/Region;->id:I

    return v0
.end method

.method public id()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/cymobile/ymwork/types/Region;->id:I

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/cymobile/ymwork/types/Region;->name:Ljava/lang/String;

    return-object v0
.end method

.method public parentId()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/cymobile/ymwork/types/Region;->parentId:I

    return v0
.end method

.method public setFirstChar(I)V
    .locals 0
    .parameter "paramInt"

    .prologue
    .line 70
    iput p1, p0, Lcom/cymobile/ymwork/types/Region;->firstChar:I

    .line 71
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/cymobile/ymwork/types/Region;->id:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cymobile/ymwork/types/Region;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "paramParcel"
    .parameter "paramInt"

    .prologue
    .line 78
    iget v0, p0, Lcom/cymobile/ymwork/types/Region;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    iget-object v0, p0, Lcom/cymobile/ymwork/types/Region;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    iget v0, p0, Lcom/cymobile/ymwork/types/Region;->parentId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    iget-wide v0, p0, Lcom/cymobile/ymwork/types/Region;->lat:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 82
    iget-wide v0, p0, Lcom/cymobile/ymwork/types/Region;->lng:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 83
    iget v0, p0, Lcom/cymobile/ymwork/types/Region;->firstChar:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    return-void
.end method
