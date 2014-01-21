.class public Lcom/cymobile/ymwork/types/Pair;
.super Ljava/lang/Object;
.source "Pair.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/cymobile/ymwork/types/Pair;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/cymobile/ymwork/types/Pair$1;

    invoke-direct {v0}, Lcom/cymobile/ymwork/types/Pair$1;-><init>()V

    sput-object v0, Lcom/cymobile/ymwork/types/Pair;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .parameter "paramInt"
    .parameter "paramString"

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/cymobile/ymwork/types/Pair;-><init>(ILjava/lang/String;I)V

    .line 26
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 1
    .parameter "paramInt1"
    .parameter "paramString"
    .parameter "paramInt2"

    .prologue
    .line 29
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/cymobile/ymwork/types/Pair;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 30
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "parcel"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cymobile/ymwork/types/Pair;->id:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cymobile/ymwork/types/Pair;->name:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cymobile/ymwork/types/Pair;->type:I

    .line 36
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/cymobile/ymwork/types/Pair;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/cymobile/ymwork/types/Pair;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "paramString1"
    .parameter "paramString2"

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/cymobile/ymwork/types/Pair;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "aid"
    .parameter "aname"
    .parameter "atype"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/cymobile/ymwork/types/Pair;->id:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/cymobile/ymwork/types/Pair;->name:Ljava/lang/String;

    .line 45
    iput p3, p0, Lcom/cymobile/ymwork/types/Pair;->type:I

    .line 46
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/cymobile/ymwork/types/Pair;->id:Ljava/lang/String;

    return-object v0
.end method

.method public intId()I
    .locals 2

    .prologue
    .line 58
    :try_start_0
    iget-object v1, p0, Lcom/cymobile/ymwork/types/Pair;->id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 62
    :goto_0
    return v0

    .line 60
    :catch_0
    move-exception v1

    .line 62
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/cymobile/ymwork/types/Pair;->name:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cymobile/ymwork/types/Pair;->id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cymobile/ymwork/types/Pair;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public type()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/cymobile/ymwork/types/Pair;->type:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "paramParcel"
    .parameter "paramInt"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/cymobile/ymwork/types/Pair;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/cymobile/ymwork/types/Pair;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    iget v0, p0, Lcom/cymobile/ymwork/types/Pair;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    return-void
.end method
