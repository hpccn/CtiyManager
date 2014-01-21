.class public Lcom/amap/api/a/b/a;
.super Ljava/lang/Exception;
.source "AMapException.java"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 19
    const-string v0, "\u672a\u77e5\u7684\u9519\u8bef"

    iput-object v0, p0, Lcom/amap/api/a/b/a;->a:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 19
    const-string v0, "\u672a\u77e5\u7684\u9519\u8bef"

    iput-object v0, p0, Lcom/amap/api/a/b/a;->a:Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lcom/amap/api/a/b/a;->a:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/amap/api/a/b/a;->a:Ljava/lang/String;

    return-object v0
.end method
