.class public Lcom/cymobile/ymwork/types/Credentials;
.super Ljava/lang/Object;
.source "Credentials.java"

# interfaces
.implements Lcom/cymobile/ymwork/types/BaseType;


# instance fields
.field private mOauthToken:Ljava/lang/String;

.field private mOauthTokenSecret:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    return-void
.end method


# virtual methods
.method public getOauthToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/cymobile/ymwork/types/Credentials;->mOauthToken:Ljava/lang/String;

    return-object v0
.end method

.method public getOauthTokenSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/cymobile/ymwork/types/Credentials;->mOauthTokenSecret:Ljava/lang/String;

    return-object v0
.end method

.method public setOauthToken(Ljava/lang/String;)V
    .locals 0
    .parameter "oauthToken"

    .prologue
    .line 16
    iput-object p1, p0, Lcom/cymobile/ymwork/types/Credentials;->mOauthToken:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public setOauthTokenSecret(Ljava/lang/String;)V
    .locals 0
    .parameter "oauthTokenSecret"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/cymobile/ymwork/types/Credentials;->mOauthTokenSecret:Ljava/lang/String;

    .line 25
    return-void
.end method
