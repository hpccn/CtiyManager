.class Lcom/cymobile/ymwork/server/RemoteResourceFetcher$Request;
.super Ljava/lang/Object;
.source "RemoteResourceFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/server/RemoteResourceFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Request"
.end annotation


# instance fields
.field hash:Ljava/lang/String;

.field uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0
    .parameter "requestUri"
    .parameter "requestHash"

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-object p1, p0, Lcom/cymobile/ymwork/server/RemoteResourceFetcher$Request;->uri:Landroid/net/Uri;

    .line 161
    iput-object p2, p0, Lcom/cymobile/ymwork/server/RemoteResourceFetcher$Request;->hash:Ljava/lang/String;

    .line 162
    return-void
.end method


# virtual methods
.method public hashCode()I
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/cymobile/ymwork/server/RemoteResourceFetcher$Request;->hash:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
