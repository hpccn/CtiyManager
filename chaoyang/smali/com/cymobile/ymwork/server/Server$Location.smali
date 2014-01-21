.class public Lcom/cymobile/ymwork/server/Server$Location;
.super Ljava/lang/Object;
.source "Server.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/server/Server;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Location"
.end annotation


# instance fields
.field geoalt:Ljava/lang/String;

.field geohacc:Ljava/lang/String;

.field geolat:Ljava/lang/String;

.field geolong:Ljava/lang/String;

.field geovacc:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object v0, p0, Lcom/cymobile/ymwork/server/Server$Location;->geolat:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/cymobile/ymwork/server/Server$Location;->geolong:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/cymobile/ymwork/server/Server$Location;->geohacc:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/cymobile/ymwork/server/Server$Location;->geovacc:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lcom/cymobile/ymwork/server/Server$Location;->geoalt:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "geolat"
    .parameter "geolong"

    .prologue
    const/4 v3, 0x0

    .line 84
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/cymobile/ymwork/server/Server$Location;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "geolat"
    .parameter "geolong"
    .parameter "geohacc"
    .parameter "geovacc"
    .parameter "geoalt"

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object v0, p0, Lcom/cymobile/ymwork/server/Server$Location;->geolat:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/cymobile/ymwork/server/Server$Location;->geolong:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/cymobile/ymwork/server/Server$Location;->geohacc:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/cymobile/ymwork/server/Server$Location;->geovacc:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lcom/cymobile/ymwork/server/Server$Location;->geoalt:Ljava/lang/String;

    .line 76
    iput-object p1, p0, Lcom/cymobile/ymwork/server/Server$Location;->geolat:Ljava/lang/String;

    .line 77
    iput-object p2, p0, Lcom/cymobile/ymwork/server/Server$Location;->geolong:Ljava/lang/String;

    .line 78
    iput-object p3, p0, Lcom/cymobile/ymwork/server/Server$Location;->geohacc:Ljava/lang/String;

    .line 79
    iput-object p4, p0, Lcom/cymobile/ymwork/server/Server$Location;->geovacc:Ljava/lang/String;

    .line 80
    iput-object p4, p0, Lcom/cymobile/ymwork/server/Server$Location;->geoalt:Ljava/lang/String;

    .line 81
    return-void
.end method
