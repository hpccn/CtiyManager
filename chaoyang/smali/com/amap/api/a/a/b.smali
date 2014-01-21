.class public Lcom/amap/api/a/a/b;
.super Ljava/lang/Object;
.source "MultiTouchSupport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/a/a/b$a;
    }
.end annotation


# instance fields
.field protected final a:Landroid/content/Context;

.field protected b:Ljava/lang/reflect/Method;

.field protected c:Ljava/lang/reflect/Method;

.field protected d:Ljava/lang/reflect/Method;

.field protected e:Ljava/lang/reflect/Method;

.field private f:Z

.field private final g:Lcom/amap/api/a/a/b$a;

.field private h:J

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/a/a/b$a;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean v2, p0, Lcom/amap/api/a/a/b;->f:Z

    .line 33
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/a/a/b;->h:J

    .line 66
    iput-boolean v2, p0, Lcom/amap/api/a/a/b;->i:Z

    .line 36
    iput-object p1, p0, Lcom/amap/api/a/a/b;->a:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/amap/api/a/a/b;->g:Lcom/amap/api/a/a/b$a;

    .line 38
    invoke-direct {p0}, Lcom/amap/api/a/a/b;->d()V

    .line 39
    return-void
.end method

.method private d()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 55
    :try_start_0
    const-class v0, Landroid/view/MotionEvent;

    const-string v1, "getPointerCount"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/a/a/b;->b:Ljava/lang/reflect/Method;

    .line 56
    const-class v0, Landroid/view/MotionEvent;

    const-string v1, "getPointerId"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/a/a/b;->e:Ljava/lang/reflect/Method;

    .line 58
    const-class v0, Landroid/view/MotionEvent;

    const-string v1, "getX"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/a/a/b;->c:Ljava/lang/reflect/Method;

    .line 59
    const-class v0, Landroid/view/MotionEvent;

    const-string v1, "getY"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/a/a/b;->d:Ljava/lang/reflect/Method;

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/a/a/b;->f:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    iput-boolean v5, p0, Lcom/amap/api/a/a/b;->f:Z

    goto :goto_0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/amap/api/a/a/b;->f:Z

    return v0
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter

    .prologue
    const/4 v12, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 69
    invoke-virtual {p0}, Lcom/amap/api/a/a/b;->a()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v7

    .line 99
    :goto_0
    return v1

    .line 72
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v9, v1, 0xff

    .line 74
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/a/a/b;->b:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 75
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v1, v12, :cond_1

    move v1, v7

    .line 76
    goto :goto_0

    .line 78
    :cond_1
    iget-object v1, p0, Lcom/amap/api/a/a/b;->c:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/Float;

    move-object v3, v0

    .line 79
    iget-object v1, p0, Lcom/amap/api/a/a/b;->c:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/Float;

    move-object v5, v0

    .line 80
    iget-object v1, p0, Lcom/amap/api/a/a/b;->d:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v4

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/Float;

    move-object v4, v0

    .line 81
    iget-object v1, p0, Lcom/amap/api/a/a/b;->d:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v6

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/Float;

    move-object v6, v0

    .line 82
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v10

    sub-float/2addr v2, v10

    mul-float/2addr v1, v2

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v10

    sub-float/2addr v2, v10

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v11

    sub-float/2addr v10, v11

    mul-float/2addr v2, v10

    add-float/2addr v1, v2

    invoke-static {v1}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    .line 84
    const/4 v1, 0x5

    if-ne v9, v1, :cond_2

    .line 85
    iget-object v1, p0, Lcom/amap/api/a/a/b;->g:Lcom/amap/api/a/a/b$a;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-interface/range {v1 .. v6}, Lcom/amap/api/a/a/b$a;->a(FFFFF)V

    .line 86
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/amap/api/a/a/b;->i:Z

    move v1, v8

    .line 87
    goto/16 :goto_0

    .line 88
    :cond_2
    const/4 v1, 0x6

    if-ne v9, v1, :cond_4

    .line 89
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/amap/api/a/a/b;->h:J

    .line 90
    iget-boolean v1, p0, Lcom/amap/api/a/a/b;->i:Z

    if-eqz v1, :cond_3

    .line 91
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/amap/api/a/a/b;->i:Z

    :cond_3
    move v1, v7

    .line 93
    goto/16 :goto_0

    .line 94
    :cond_4
    iget-boolean v1, p0, Lcom/amap/api/a/a/b;->i:Z

    if-eqz v1, :cond_5

    if-ne v9, v12, :cond_5

    .line 95
    iget-object v1, p0, Lcom/amap/api/a/a/b;->g:Lcom/amap/api/a/a/b$a;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    move-object v2, p1

    invoke-interface/range {v1 .. v6}, Lcom/amap/api/a/a/b$a;->a(Landroid/view/MotionEvent;FFFF)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto/16 :goto_0

    .line 97
    :catch_0
    move-exception v1

    :cond_5
    move v1, v7

    .line 99
    goto/16 :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/amap/api/a/a/b;->i:Z

    return v0
.end method

.method public c()J
    .locals 2

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/amap/api/a/a/b;->h:J

    return-wide v0
.end method
