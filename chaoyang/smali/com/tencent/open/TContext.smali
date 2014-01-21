.class public Lcom/tencent/open/TContext;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:J

.field private d:Ljava/lang/String;

.field private e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tencent/open/TContext;->c:J

    .line 26
    iput-object p1, p0, Lcom/tencent/open/TContext;->a:Ljava/lang/String;

    .line 27
    invoke-virtual {p0, p2}, Lcom/tencent/open/TContext;->a(Landroid/content/Context;)V

    .line 28
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/tencent/open/TContext;->e:Landroid/content/Context;

    .line 74
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/tencent/open/TContext;->d:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 43
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/open/TContext;->c:J

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/open/TContext;->b:Ljava/lang/String;

    .line 45
    if-nez p2, :cond_0

    .line 46
    const-string p2, "0"

    .line 47
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/open/TContext;->c:J

    .line 49
    iput-object p1, p0, Lcom/tencent/open/TContext;->b:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public a()Z
    .locals 4

    .prologue
    .line 31
    iget-object v0, p0, Lcom/tencent/open/TContext;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/open/TContext;->c:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 32
    const/4 v0, 0x1

    .line 34
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/tencent/open/TContext;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/tencent/open/TContext;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/tencent/open/TContext;->a:Ljava/lang/String;

    return-object v0
.end method

.method public e()J
    .locals 2

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/tencent/open/TContext;->c:J

    return-wide v0
.end method

.method public f()Landroid/content/Context;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/tencent/open/TContext;->e:Landroid/content/Context;

    return-object v0
.end method
