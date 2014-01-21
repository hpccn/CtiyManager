.class public Lcom/cymobile/ymwork/types/ServerSettings;
.super Ljava/lang/Object;
.source "ServerSettings.java"

# interfaces
.implements Lcom/cymobile/ymwork/types/BaseType;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/cymobile/ymwork/types/ServerSettings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field downloadaddress:Ljava/lang/String;

.field private mFeedsKey:Ljava/lang/String;

.field private mGetPings:Z

.field private mPings:Ljava/lang/String;

.field version:Ljava/lang/String;

.field versionName:Ljava/lang/String;

.field versiondesc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/cymobile/ymwork/types/ServerSettings$1;

    invoke-direct {v0}, Lcom/cymobile/ymwork/types/ServerSettings$1;-><init>()V

    sput-object v0, Lcom/cymobile/ymwork/types/ServerSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    const/4 v0, 0x1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {p1}, Lcom/cymobile/ymwork/utils/ParcelUtils;->readStringFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cymobile/ymwork/types/ServerSettings;->mFeedsKey:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/cymobile/ymwork/types/ServerSettings;->mGetPings:Z

    .line 22
    invoke-static {p1}, Lcom/cymobile/ymwork/utils/ParcelUtils;->readStringFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cymobile/ymwork/types/ServerSettings;->mPings:Ljava/lang/String;

    .line 24
    return-void

    .line 21
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/cymobile/ymwork/types/ServerSettings;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/cymobile/ymwork/types/ServerSettings;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public getDownloadaddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/cymobile/ymwork/types/ServerSettings;->downloadaddress:Ljava/lang/String;

    return-object v0
.end method

.method public getFeedsKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/cymobile/ymwork/types/ServerSettings;->mFeedsKey:Ljava/lang/String;

    return-object v0
.end method

.method public getGetPings()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/cymobile/ymwork/types/ServerSettings;->mGetPings:Z

    return v0
.end method

.method public getPings()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/cymobile/ymwork/types/ServerSettings;->mPings:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/cymobile/ymwork/types/ServerSettings;->version:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/cymobile/ymwork/types/ServerSettings;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public getVersiondesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/cymobile/ymwork/types/ServerSettings;->versiondesc:Ljava/lang/String;

    return-object v0
.end method

.method public setDownloadaddress(Ljava/lang/String;)V
    .locals 0
    .parameter "downloadaddress"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/cymobile/ymwork/types/ServerSettings;->downloadaddress:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setFeedsKey(Ljava/lang/String;)V
    .locals 0
    .parameter "feedsKey"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/cymobile/ymwork/types/ServerSettings;->mFeedsKey:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setGetPings(Z)V
    .locals 0
    .parameter "getPings"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/cymobile/ymwork/types/ServerSettings;->mGetPings:Z

    .line 50
    return-void
.end method

.method public setPings(Ljava/lang/String;)V
    .locals 0
    .parameter "pings"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/cymobile/ymwork/types/ServerSettings;->mPings:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .parameter "version"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/cymobile/ymwork/types/ServerSettings;->version:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/cymobile/ymwork/types/ServerSettings;->versionName:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setVersiondesc(Ljava/lang/String;)V
    .locals 0
    .parameter "versiondesc"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/cymobile/ymwork/types/ServerSettings;->versiondesc:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/cymobile/ymwork/types/ServerSettings;->mFeedsKey:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/cymobile/ymwork/utils/ParcelUtils;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 62
    iget-boolean v0, p0, Lcom/cymobile/ymwork/types/ServerSettings;->mGetPings:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    iget-object v0, p0, Lcom/cymobile/ymwork/types/ServerSettings;->mPings:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/cymobile/ymwork/utils/ParcelUtils;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 64
    return-void

    .line 62
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
