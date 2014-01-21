.class public Loauth/signpost/Parameter;
.super Ljava/lang/Object;
.source "Parameter.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final key:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "key"
    .parameter "value"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Loauth/signpost/Parameter;->key:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Loauth/signpost/Parameter;->value:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 63
    if-ne p0, p1, :cond_1

    .line 80
    :cond_0
    :goto_0
    return v1

    .line 65
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 66
    goto :goto_0

    .line 67
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 68
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 69
    check-cast v0, Loauth/signpost/Parameter;

    .line 70
    .local v0, that:Loauth/signpost/Parameter;
    iget-object v3, p0, Loauth/signpost/Parameter;->key:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 71
    iget-object v3, v0, Loauth/signpost/Parameter;->key:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    .line 72
    goto :goto_0

    .line 73
    :cond_4
    iget-object v3, p0, Loauth/signpost/Parameter;->key:Ljava/lang/String;

    iget-object v4, v0, Loauth/signpost/Parameter;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 74
    goto :goto_0

    .line 75
    :cond_5
    iget-object v3, p0, Loauth/signpost/Parameter;->value:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 76
    iget-object v3, v0, Loauth/signpost/Parameter;->value:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 77
    goto :goto_0

    .line 78
    :cond_6
    iget-object v3, p0, Loauth/signpost/Parameter;->value:Ljava/lang/String;

    iget-object v4, v0, Loauth/signpost/Parameter;->value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 79
    goto :goto_0
.end method

.method public bridge synthetic getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Loauth/signpost/Parameter;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Loauth/signpost/Parameter;->key:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Loauth/signpost/Parameter;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Loauth/signpost/Parameter;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 54
    const/16 v0, 0x1f

    .line 55
    .local v0, prime:I
    const/4 v1, 0x1

    .line 56
    .local v1, result:I
    iget-object v2, p0, Loauth/signpost/Parameter;->key:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 57
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Loauth/signpost/Parameter;->value:Ljava/lang/String;

    if-nez v4, :cond_1

    :goto_1
    add-int v1, v2, v3

    .line 58
    return v1

    .line 56
    :cond_0
    iget-object v2, p0, Loauth/signpost/Parameter;->key:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 57
    :cond_1
    iget-object v3, p0, Loauth/signpost/Parameter;->value:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Loauth/signpost/Parameter;->setValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 41
    :try_start_0
    iget-object v0, p0, Loauth/signpost/Parameter;->value:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    iput-object p1, p0, Loauth/signpost/Parameter;->value:Ljava/lang/String;

    return-object v0

    :catchall_0
    move-exception v0

    iput-object p1, p0, Loauth/signpost/Parameter;->value:Ljava/lang/String;

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Loauth/signpost/Parameter;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Loauth/signpost/Parameter;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
