.class Loauth/signpost/signature/SignatureBaseString$ComparableParameter;
.super Ljava/lang/Object;
.source "SignatureBaseString.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Loauth/signpost/signature/SignatureBaseString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ComparableParameter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Loauth/signpost/signature/SignatureBaseString$ComparableParameter;",
        ">;"
    }
.end annotation


# instance fields
.field private final key:Ljava/lang/String;

.field final value:Loauth/signpost/Parameter;


# direct methods
.method constructor <init>(Loauth/signpost/Parameter;)V
    .locals 4
    .parameter "value"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Loauth/signpost/signature/SignatureBaseString$ComparableParameter;->value:Loauth/signpost/Parameter;

    .line 40
    invoke-virtual {p1}, Loauth/signpost/Parameter;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Loauth/signpost/signature/SignatureBaseString$ComparableParameter;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, n:Ljava/lang/String;
    invoke-virtual {p1}, Loauth/signpost/Parameter;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Loauth/signpost/signature/SignatureBaseString$ComparableParameter;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, v:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Loauth/signpost/OAuth;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Loauth/signpost/OAuth;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Loauth/signpost/signature/SignatureBaseString$ComparableParameter;->key:Ljava/lang/String;

    .line 45
    return-void
.end method

.method private static safeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "from"

    .prologue
    .line 52
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    check-cast p1, Loauth/signpost/signature/SignatureBaseString$ComparableParameter;

    .end local p1
    invoke-virtual {p0, p1}, Loauth/signpost/signature/SignatureBaseString$ComparableParameter;->compareTo(Loauth/signpost/signature/SignatureBaseString$ComparableParameter;)I

    move-result v0

    return v0
.end method

.method public compareTo(Loauth/signpost/signature/SignatureBaseString$ComparableParameter;)I
    .locals 2
    .parameter "that"

    .prologue
    .line 56
    iget-object v0, p0, Loauth/signpost/signature/SignatureBaseString$ComparableParameter;->key:Ljava/lang/String;

    iget-object v1, p1, Loauth/signpost/signature/SignatureBaseString$ComparableParameter;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Loauth/signpost/signature/SignatureBaseString$ComparableParameter;->key:Ljava/lang/String;

    return-object v0
.end method
