.class public Lcom/cymobile/ymwork/utils/ParcelUtils;
.super Ljava/lang/Object;
.source "ParcelUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readStringFromParcel(Landroid/os/Parcel;)Ljava/lang/String;
    .locals 2
    .parameter "in"

    .prologue
    .line 17
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 18
    .local v0, flag:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 19
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 21
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V
    .locals 1
    .parameter "out"
    .parameter "str"

    .prologue
    .line 8
    if-eqz p1, :cond_0

    .line 9
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 10
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    :goto_0
    return-void

    .line 12
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
