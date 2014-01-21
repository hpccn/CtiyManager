.class Lcom/amap/api/a/z;
.super Ljava/lang/Object;
.source "MapMessage.java"


# instance fields
.field a:I

.field b:Z


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/amap/api/a/z;->a:I

    .line 32
    return-void
.end method


# virtual methods
.method public a(Z)Lcom/amap/api/a/z;
    .locals 0
    .parameter

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/amap/api/a/z;->b:Z

    .line 27
    return-object p0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/amap/api/a/z;->b:Z

    return v0
.end method
