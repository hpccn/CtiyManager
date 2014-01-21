.class public Lcom/cymobile/ymwork/types/User;
.super Lcom/cymobile/ymwork/types/DataItemBase;
.source "User.java"

# interfaces
.implements Lcom/cymobile/ymwork/types/BaseType;


# static fields
.field public static final FEMALE:Z = false

.field public static final MALE:Z = true


# instance fields
.field private admin:Z

.field private age:I

.field private createdTime:Ljava/lang/String;

.field private desc:Ljava/lang/String;

.field private gender:Z

.field private id:Ljava/lang/String;

.field private image:Ljava/lang/String;

.field private imageLarge:Ljava/lang/String;

.field private lastLoginTime:Ljava/lang/String;

.field private lastgeo:Ljava/lang/String;

.field private location:Ljava/lang/String;

.field private mobile:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private userName:Ljava/lang/String;

.field private workcompany:Ljava/lang/String;

.field private workpost:Ljava/lang/String;

.field private zoneName:Ljava/lang/String;

.field private zoneid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/cymobile/ymwork/types/DataItemBase;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cymobile/ymwork/types/User;->admin:Z

    .line 3
    return-void
.end method


# virtual methods
.method public getAge()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/cymobile/ymwork/types/User;->age:I

    return v0
.end method

.method public getCreatedTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/cymobile/ymwork/types/User;->createdTime:Ljava/lang/String;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/cymobile/ymwork/types/User;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/cymobile/ymwork/types/User;->gender:Z

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/cymobile/ymwork/types/User;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/cymobile/ymwork/types/User;->image:Ljava/lang/String;

    return-object v0
.end method

.method public getImageLarge()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/cymobile/ymwork/types/User;->imageLarge:Ljava/lang/String;

    return-object v0
.end method

.method public getLastLoginTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/cymobile/ymwork/types/User;->lastLoginTime:Ljava/lang/String;

    return-object v0
.end method

.method public getLastgeo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/cymobile/ymwork/types/User;->lastgeo:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/cymobile/ymwork/types/User;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getMobile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/cymobile/ymwork/types/User;->mobile:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/cymobile/ymwork/types/User;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/cymobile/ymwork/types/User;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public getWorkcompany()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/cymobile/ymwork/types/User;->workcompany:Ljava/lang/String;

    return-object v0
.end method

.method public getWorkpost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/cymobile/ymwork/types/User;->workpost:Ljava/lang/String;

    return-object v0
.end method

.method public getZoneName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/cymobile/ymwork/types/User;->zoneName:Ljava/lang/String;

    return-object v0
.end method

.method public getZoneid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/cymobile/ymwork/types/User;->zoneid:Ljava/lang/String;

    return-object v0
.end method

.method public isAdmin()Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/cymobile/ymwork/types/User;->admin:Z

    return v0
.end method

.method public setAdmin(Z)V
    .locals 0
    .parameter "admin"

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/cymobile/ymwork/types/User;->admin:Z

    .line 56
    return-void
.end method

.method public setAge(I)V
    .locals 0
    .parameter "age"

    .prologue
    .line 102
    iput p1, p0, Lcom/cymobile/ymwork/types/User;->age:I

    .line 103
    return-void
.end method

.method public setCreatedTime(Ljava/lang/String;)V
    .locals 0
    .parameter "createdTime"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/cymobile/ymwork/types/User;->createdTime:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0
    .parameter "desc"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/cymobile/ymwork/types/User;->desc:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setGender(Z)V
    .locals 0
    .parameter "gender"

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/cymobile/ymwork/types/User;->gender:Z

    .line 97
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/cymobile/ymwork/types/User;->id:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0
    .parameter "image"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/cymobile/ymwork/types/User;->image:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setImageLarge(Ljava/lang/String;)V
    .locals 0
    .parameter "imagelarge"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/cymobile/ymwork/types/User;->imageLarge:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setLastLoginTime(Ljava/lang/String;)V
    .locals 0
    .parameter "lastLoginTime"

    .prologue
    .line 151
    iput-object p1, p0, Lcom/cymobile/ymwork/types/User;->lastLoginTime:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public setLastgeo(Ljava/lang/String;)V
    .locals 0
    .parameter "lastgeo"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/cymobile/ymwork/types/User;->lastgeo:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0
    .parameter "location"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/cymobile/ymwork/types/User;->location:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setMobile(Ljava/lang/String;)V
    .locals 0
    .parameter "mobile"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/cymobile/ymwork/types/User;->mobile:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .parameter "password"

    .prologue
    .line 132
    iput-object p1, p0, Lcom/cymobile/ymwork/types/User;->password:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/cymobile/ymwork/types/User;->userName:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setWorkcompany(Ljava/lang/String;)V
    .locals 0
    .parameter "workcompany"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/cymobile/ymwork/types/User;->workcompany:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setWorkpost(Ljava/lang/String;)V
    .locals 0
    .parameter "workpost"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/cymobile/ymwork/types/User;->workpost:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setZoneName(Ljava/lang/String;)V
    .locals 0
    .parameter "zn"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/cymobile/ymwork/types/User;->zoneName:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setZoneid(Ljava/lang/String;)V
    .locals 0
    .parameter "zoneid"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/cymobile/ymwork/types/User;->zoneid:Ljava/lang/String;

    .line 43
    return-void
.end method
