.class public final enum Loauth/signpost/signature/SignatureMethod;
.super Ljava/lang/Enum;
.source "SignatureMethod.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Loauth/signpost/signature/SignatureMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Loauth/signpost/signature/SignatureMethod;

.field public static final enum HMAC_SHA1:Loauth/signpost/signature/SignatureMethod;

.field public static final enum PLAINTEXT:Loauth/signpost/signature/SignatureMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Loauth/signpost/signature/SignatureMethod;

    const-string v1, "PLAINTEXT"

    invoke-direct {v0, v1, v2}, Loauth/signpost/signature/SignatureMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Loauth/signpost/signature/SignatureMethod;->PLAINTEXT:Loauth/signpost/signature/SignatureMethod;

    new-instance v0, Loauth/signpost/signature/SignatureMethod;

    const-string v1, "HMAC_SHA1"

    invoke-direct {v0, v1, v3}, Loauth/signpost/signature/SignatureMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Loauth/signpost/signature/SignatureMethod;->HMAC_SHA1:Loauth/signpost/signature/SignatureMethod;

    .line 17
    const/4 v0, 0x2

    new-array v0, v0, [Loauth/signpost/signature/SignatureMethod;

    sget-object v1, Loauth/signpost/signature/SignatureMethod;->PLAINTEXT:Loauth/signpost/signature/SignatureMethod;

    aput-object v1, v0, v2

    sget-object v1, Loauth/signpost/signature/SignatureMethod;->HMAC_SHA1:Loauth/signpost/signature/SignatureMethod;

    aput-object v1, v0, v3

    sput-object v0, Loauth/signpost/signature/SignatureMethod;->$VALUES:[Loauth/signpost/signature/SignatureMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Loauth/signpost/signature/SignatureMethod;
    .locals 1
    .parameter "name"

    .prologue
    .line 17
    const-class v0, Loauth/signpost/signature/SignatureMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Loauth/signpost/signature/SignatureMethod;

    return-object v0
.end method

.method public static final values()[Loauth/signpost/signature/SignatureMethod;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Loauth/signpost/signature/SignatureMethod;->$VALUES:[Loauth/signpost/signature/SignatureMethod;

    invoke-virtual {v0}, [Loauth/signpost/signature/SignatureMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Loauth/signpost/signature/SignatureMethod;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 23
    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5f

    const/16 v2, 0x2d

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
