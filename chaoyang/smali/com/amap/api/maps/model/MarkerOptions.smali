.class public final Lcom/amap/api/maps/model/MarkerOptions;
.super Ljava/lang/Object;
.source "MarkerOptions.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Lcom/amap/api/maps/model/MarkerOptionsCreator;


# instance fields
.field a:Ljava/lang/String;

.field private b:Lcom/amap/api/maps/model/LatLng;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/amap/api/maps/model/BitmapDescriptor;

.field private f:F

.field private g:F

.field private h:Z

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/amap/api/maps/model/MarkerOptionsCreator;

    invoke-direct {v0}, Lcom/amap/api/maps/model/MarkerOptionsCreator;-><init>()V

    sput-object v0, Lcom/amap/api/maps/model/MarkerOptions;->CREATOR:Lcom/amap/api/maps/model/MarkerOptionsCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->f:F

    .line 21
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->g:F

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->h:Z

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->i:Z

    .line 27
    return-void
.end method


# virtual methods
.method public anchor(FF)Lcom/amap/api/maps/model/MarkerOptions;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    iput p1, p0, Lcom/amap/api/maps/model/MarkerOptions;->f:F

    .line 51
    iput p2, p0, Lcom/amap/api/maps/model/MarkerOptions;->g:F

    .line 52
    return-object p0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public draggable(Z)Lcom/amap/api/maps/model/MarkerOptions;
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/amap/api/maps/model/MarkerOptions;->h:Z

    .line 67
    return-object p0
.end method

.method public getAnchorU()F
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->f:F

    return v0
.end method

.method public getAnchorV()F
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->g:F

    return v0
.end method

.method public getIcon()Lcom/amap/api/maps/model/BitmapDescriptor;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->e:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-nez v0, :cond_0

    .line 109
    invoke-static {}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->defaultMarker()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->e:Lcom/amap/api/maps/model/BitmapDescriptor;

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->e:Lcom/amap/api/maps/model/BitmapDescriptor;

    return-object v0
.end method

.method public getPosition()Lcom/amap/api/maps/model/LatLng;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->b:Lcom/amap/api/maps/model/LatLng;

    return-object v0
.end method

.method public getSnippet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->c:Ljava/lang/String;

    return-object v0
.end method

.method public icon(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/MarkerOptions;
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/amap/api/maps/model/MarkerOptions;->e:Lcom/amap/api/maps/model/BitmapDescriptor;

    .line 36
    return-object p0
.end method

.method public isDraggable()Z
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->h:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->i:Z

    return v0
.end method

.method public position(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/MarkerOptions;
    .locals 0
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/amap/api/maps/model/MarkerOptions;->b:Lcom/amap/api/maps/model/LatLng;

    .line 31
    return-object p0
.end method

.method public snippet(Ljava/lang/String;)Lcom/amap/api/maps/model/MarkerOptions;
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/amap/api/maps/model/MarkerOptions;->d:Ljava/lang/String;

    .line 62
    return-object p0
.end method

.method public title(Ljava/lang/String;)Lcom/amap/api/maps/model/MarkerOptions;
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/amap/api/maps/model/MarkerOptions;->c:Ljava/lang/String;

    .line 57
    return-object p0
.end method

.method public visible(Z)Lcom/amap/api/maps/model/MarkerOptions;
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/amap/api/maps/model/MarkerOptions;->i:Z

    .line 72
    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 149
    iget-object v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->b:Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 150
    iget-object v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->e:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 151
    iget-object v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 153
    iget v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->f:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 154
    iget v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->g:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 155
    const/4 v0, 0x2

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/amap/api/maps/model/MarkerOptions;->i:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/amap/api/maps/model/MarkerOptions;->h:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 156
    iget-object v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    return-void
.end method
