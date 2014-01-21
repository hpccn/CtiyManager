.class public Lcom/cymobile/ymwork/types/Category;
.super Ljava/lang/Object;
.source "Category.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# instance fields
.field private distance:I

.field private favicon:Ljava/lang/String;

.field private id:J

.field private name:Ljava/lang/String;

.field private parentId:J

.field private searchPara:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "name"
    .parameter "parentid"
    .parameter "favicon"
    .parameter "distance"
    .parameter "searchpara"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 24
    :cond_0
    iput-wide p1, p0, Lcom/cymobile/ymwork/types/Category;->id:J

    .line 25
    iput-object p3, p0, Lcom/cymobile/ymwork/types/Category;->name:Ljava/lang/String;

    .line 26
    iput-wide p4, p0, Lcom/cymobile/ymwork/types/Category;->parentId:J

    .line 27
    iput-object p6, p0, Lcom/cymobile/ymwork/types/Category;->favicon:Ljava/lang/String;

    .line 28
    iput p7, p0, Lcom/cymobile/ymwork/types/Category;->distance:I

    .line 29
    iput-object p8, p0, Lcom/cymobile/ymwork/types/Category;->searchPara:Ljava/lang/String;

    .line 30
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "parcel"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/cymobile/ymwork/types/Category;->id:J

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cymobile/ymwork/types/Category;->name:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/cymobile/ymwork/types/Category;->parentId:J

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cymobile/ymwork/types/Category;->favicon:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cymobile/ymwork/types/Category;->distance:I

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cymobile/ymwork/types/Category;->searchPara:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public distance()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/cymobile/ymwork/types/Category;->distance:I

    if-lez v0, :cond_0

    .line 46
    iget v0, p0, Lcom/cymobile/ymwork/types/Category;->distance:I

    .line 47
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x1f4

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "paramObject"

    .prologue
    .line 51
    if-eq p1, p0, :cond_1

    .line 52
    instance-of v0, p1, Lcom/cymobile/ymwork/types/Category;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/cymobile/ymwork/types/Category;

    .end local p1
    iget-wide v0, p1, Lcom/cymobile/ymwork/types/Category;->id:J

    iget-wide v2, p0, Lcom/cymobile/ymwork/types/Category;->id:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    .line 51
    goto :goto_0
.end method

.method public favicon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/cymobile/ymwork/types/Category;->favicon:Ljava/lang/String;

    return-object v0
.end method

.method public id()J
    .locals 2

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/cymobile/ymwork/types/Category;->id:J

    return-wide v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/cymobile/ymwork/types/Category;->name:Ljava/lang/String;

    return-object v0
.end method

.method public parentId()J
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/cymobile/ymwork/types/Category;->parentId:J

    return-wide v0
.end method

.method public searchPara()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/cymobile/ymwork/types/Category;->searchPara:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "id:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/cymobile/ymwork/types/Category;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cymobile/ymwork/types/Category;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", parent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cymobile/ymwork/types/Category;->parentId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

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
    .line 84
    iget-wide v0, p0, Lcom/cymobile/ymwork/types/Category;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 85
    iget-object v0, p0, Lcom/cymobile/ymwork/types/Category;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    iget-wide v0, p0, Lcom/cymobile/ymwork/types/Category;->parentId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 87
    iget-object v0, p0, Lcom/cymobile/ymwork/types/Category;->favicon:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget v0, p0, Lcom/cymobile/ymwork/types/Category;->distance:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    iget-object v0, p0, Lcom/cymobile/ymwork/types/Category;->searchPara:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    return-void
.end method
