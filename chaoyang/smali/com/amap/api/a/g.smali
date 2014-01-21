.class public Lcom/amap/api/a/g;
.super Ljava/lang/Object;
.source "CameraAnimator.java"


# static fields
.field private static J:F

.field private static final K:[F

.field private static final L:[F

.field private static P:F

.field private static Q:F


# instance fields
.field private A:F

.field private B:F

.field private C:Z

.field private D:Landroid/view/animation/Interpolator;

.field private E:Z

.field private F:F

.field private G:F

.field private H:I

.field private I:F

.field private M:F

.field private final N:F

.field private O:F

.field private a:I

.field private b:I

.field private c:I

.field private d:F

.field private e:F

.field private f:F

.field private g:I

.field private h:I

.field private i:F

.field private j:F

.field private k:F

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:F

.field private s:F

.field private t:F

.field private u:J

.field private v:J

.field private w:F

.field private x:F

.field private y:F

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    const v14, 0x3e333333

    const/4 v4, 0x0

    const-wide v12, 0x3ee4f8b588e368f1L

    const/16 v11, 0x64

    const/high16 v1, 0x3f80

    .line 58
    const-wide v2, 0x3fe8f5c28f5c28f6L

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    const-wide v5, 0x3feccccccccccccdL

    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    move-result-wide v5

    div-double/2addr v2, v5

    double-to-float v0, v2

    sput v0, Lcom/amap/api/a/g;->J:F

    .line 66
    const/16 v0, 0x65

    new-array v0, v0, [F

    sput-object v0, Lcom/amap/api/a/g;->K:[F

    .line 67
    const/16 v0, 0x65

    new-array v0, v0, [F

    sput-object v0, Lcom/amap/api/a/g;->L:[F

    .line 78
    const/4 v0, 0x0

    move v5, v0

    move v2, v4

    :goto_0
    if-ge v5, v11, :cond_4

    .line 79
    int-to-float v0, v5

    const/high16 v3, 0x42c8

    div-float v6, v0, v3

    move v0, v1

    move v3, v2

    .line 84
    :goto_1
    sub-float v2, v0, v3

    const/high16 v7, 0x4000

    div-float/2addr v2, v7

    add-float/2addr v2, v3

    .line 85
    const/high16 v7, 0x4040

    mul-float/2addr v7, v2

    sub-float v8, v1, v2

    mul-float/2addr v7, v8

    .line 86
    sub-float v8, v1, v2

    mul-float/2addr v8, v14

    const v9, 0x3eb33334

    mul-float/2addr v9, v2

    add-float/2addr v8, v9

    mul-float/2addr v8, v7

    mul-float v9, v2, v2

    mul-float/2addr v9, v2

    add-float/2addr v8, v9

    .line 87
    sub-float v9, v8, v6

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-double v9, v9

    cmpg-double v9, v9, v12

    if-gez v9, :cond_0

    .line 91
    sget-object v0, Lcom/amap/api/a/g;->K:[F

    sub-float v8, v1, v2

    const/high16 v9, 0x3f00

    mul-float/2addr v8, v9

    add-float/2addr v8, v2

    mul-float/2addr v7, v8

    mul-float v8, v2, v2

    mul-float/2addr v2, v8

    add-float/2addr v2, v7

    aput v2, v0, v5

    move v0, v1

    .line 96
    :goto_2
    sub-float v2, v0, v4

    const/high16 v7, 0x4000

    div-float/2addr v2, v7

    add-float/2addr v2, v4

    .line 97
    const/high16 v7, 0x4040

    mul-float/2addr v7, v2

    sub-float v8, v1, v2

    mul-float/2addr v7, v8

    .line 98
    sub-float v8, v1, v2

    const/high16 v9, 0x3f00

    mul-float/2addr v8, v9

    add-float/2addr v8, v2

    mul-float/2addr v8, v7

    mul-float v9, v2, v2

    mul-float/2addr v9, v2

    add-float/2addr v8, v9

    .line 99
    sub-float v9, v8, v6

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-double v9, v9

    cmpg-double v9, v9, v12

    if-gez v9, :cond_2

    .line 103
    sget-object v0, Lcom/amap/api/a/g;->L:[F

    sub-float v6, v1, v2

    mul-float/2addr v6, v14

    const v8, 0x3eb33334

    mul-float/2addr v8, v2

    add-float/2addr v6, v8

    mul-float/2addr v6, v7

    mul-float v7, v2, v2

    mul-float/2addr v2, v7

    add-float/2addr v2, v6

    aput v2, v0, v5

    .line 78
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    move v2, v3

    goto :goto_0

    .line 88
    :cond_0
    cmpl-float v7, v8, v6

    if-lez v7, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v3, v2

    .line 89
    goto :goto_1

    .line 100
    :cond_2
    cmpl-float v7, v8, v6

    if-lez v7, :cond_3

    move v0, v2

    goto :goto_2

    :cond_3
    move v4, v2

    .line 101
    goto :goto_2

    .line 105
    :cond_4
    sget-object v0, Lcom/amap/api/a/g;->K:[F

    sget-object v2, Lcom/amap/api/a/g;->L:[F

    aput v1, v2, v11

    aput v1, v0, v11

    .line 108
    const/high16 v0, 0x4100

    sput v0, Lcom/amap/api/a/g;->P:F

    .line 110
    sput v1, Lcom/amap/api/a/g;->Q:F

    .line 111
    invoke-static {v1}, Lcom/amap/api/a/g;->a(F)F

    move-result v0

    div-float v0, v1, v0

    sput v0, Lcom/amap/api/a/g;->Q:F

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 131
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/amap/api/a/g;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .line 133
    return-void

    .line 131
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    iput v0, p0, Lcom/amap/api/a/g;->I:F

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/a/g;->C:Z

    .line 142
    iput-object p2, p0, Lcom/amap/api/a/g;->D:Landroid/view/animation/Interpolator;

    .line 143
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x4320

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/amap/api/a/g;->N:F

    .line 144
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/amap/api/a/g;->b(F)F

    move-result v0

    iput v0, p0, Lcom/amap/api/a/g;->M:F

    .line 145
    iput-boolean p3, p0, Lcom/amap/api/a/g;->E:Z

    .line 147
    const v0, 0x3f570a3d

    invoke-direct {p0, v0}, Lcom/amap/api/a/g;->b(F)F

    move-result v0

    iput v0, p0, Lcom/amap/api/a/g;->O:F

    .line 148
    return-void
.end method

.method static a(F)F
    .locals 5
    .parameter

    .prologue
    const/high16 v4, 0x3f80

    .line 577
    sget v0, Lcom/amap/api/a/g;->P:F

    mul-float/2addr v0, p0

    .line 578
    cmpg-float v1, v0, v4

    if-gez v1, :cond_0

    .line 579
    neg-float v1, v0

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float v1, v4, v1

    sub-float/2addr v0, v1

    .line 585
    :goto_0
    sget v1, Lcom/amap/api/a/g;->Q:F

    mul-float/2addr v0, v1

    .line 586
    return v0

    .line 581
    :cond_0
    const v1, 0x3ebc5ab2

    .line 582
    sub-float v0, v4, v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float v0, v2

    sub-float v0, v4, v0

    .line 583
    sub-float v2, v4, v1

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method private b(F)F
    .locals 2
    .parameter

    .prologue
    .line 163
    const v0, 0x43c10b3d

    iget v1, p0, Lcom/amap/api/a/g;->N:F

    mul-float/2addr v0, v1

    mul-float/2addr v0, p1

    return v0
.end method

.method private c(F)D
    .locals 3
    .parameter

    .prologue
    .line 560
    const v0, 0x3eb33333

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/amap/api/a/g;->I:F

    iget v2, p0, Lcom/amap/api/a/g;->O:F

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private d(F)I
    .locals 6
    .parameter

    .prologue
    .line 564
    invoke-direct {p0, p1}, Lcom/amap/api/a/g;->c(F)D

    move-result-wide v0

    .line 565
    sget v2, Lcom/amap/api/a/g;->J:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff0

    sub-double/2addr v2, v4

    .line 566
    const-wide v4, 0x408f400000000000L

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    mul-double/2addr v0, v4

    double-to-int v0, v0

    return v0
.end method

.method private e(F)D
    .locals 8
    .parameter

    .prologue
    .line 570
    invoke-direct {p0, p1}, Lcom/amap/api/a/g;->c(F)D

    move-result-wide v0

    .line 571
    sget v2, Lcom/amap/api/a/g;->J:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff0

    sub-double/2addr v2, v4

    .line 572
    iget v4, p0, Lcom/amap/api/a/g;->I:F

    iget v5, p0, Lcom/amap/api/a/g;->O:F

    mul-float/2addr v4, v5

    float-to-double v4, v4

    sget v6, Lcom/amap/api/a/g;->J:F

    float-to-double v6, v6

    div-double v2, v6, v2

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    mul-double/2addr v0, v4

    return-wide v0
.end method


# virtual methods
.method public a(IIFFFIIFFFJ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 463
    const/4 v0, 0x3

    iput v0, p0, Lcom/amap/api/a/g;->a:I

    .line 464
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/a/g;->C:Z

    .line 465
    iput-wide p11, p0, Lcom/amap/api/a/g;->v:J

    .line 466
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/a/g;->u:J

    .line 467
    iput p1, p0, Lcom/amap/api/a/g;->b:I

    .line 468
    iput p2, p0, Lcom/amap/api/a/g;->c:I

    .line 469
    iput p3, p0, Lcom/amap/api/a/g;->d:F

    .line 470
    iput p4, p0, Lcom/amap/api/a/g;->e:F

    .line 471
    iput p5, p0, Lcom/amap/api/a/g;->f:F

    .line 472
    add-int v0, p1, p6

    iput v0, p0, Lcom/amap/api/a/g;->g:I

    .line 473
    add-int v0, p2, p7

    iput v0, p0, Lcom/amap/api/a/g;->h:I

    .line 474
    add-float v0, p3, p8

    iput v0, p0, Lcom/amap/api/a/g;->i:F

    .line 475
    add-float v0, p4, p9

    iput v0, p0, Lcom/amap/api/a/g;->j:F

    .line 476
    add-float v0, p5, p10

    iput v0, p0, Lcom/amap/api/a/g;->k:F

    .line 477
    int-to-float v0, p6

    iput v0, p0, Lcom/amap/api/a/g;->x:F

    .line 478
    int-to-float v0, p7

    iput v0, p0, Lcom/amap/api/a/g;->y:F

    .line 479
    iput p8, p0, Lcom/amap/api/a/g;->z:F

    .line 480
    iput p9, p0, Lcom/amap/api/a/g;->A:F

    .line 481
    iput p10, p0, Lcom/amap/api/a/g;->B:F

    .line 482
    const/high16 v0, 0x3f80

    iget-wide v1, p0, Lcom/amap/api/a/g;->v:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/amap/api/a/g;->w:F

    .line 483
    return-void
.end method

.method public a(IIIIIIII)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v0, 0x3f80

    const/4 v6, 0x0

    .line 507
    iget-boolean v1, p0, Lcom/amap/api/a/g;->E:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/amap/api/a/g;->C:Z

    if-nez v1, :cond_0

    .line 508
    invoke-virtual {p0}, Lcom/amap/api/a/g;->g()F

    move-result v1

    .line 510
    iget v2, p0, Lcom/amap/api/a/g;->g:I

    iget v3, p0, Lcom/amap/api/a/g;->b:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 511
    iget v3, p0, Lcom/amap/api/a/g;->h:I

    iget v4, p0, Lcom/amap/api/a/g;->c:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 512
    mul-float v4, v2, v2

    mul-float v5, v3, v3

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 514
    div-float/2addr v2, v4

    .line 515
    div-float/2addr v3, v4

    .line 517
    mul-float/2addr v2, v1

    .line 518
    mul-float/2addr v1, v3

    .line 519
    int-to-float v3, p3

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    int-to-float v3, p4

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    .line 521
    int-to-float v3, p3

    add-float/2addr v2, v3

    float-to-int p3, v2

    .line 522
    int-to-float v2, p4

    add-float/2addr v1, v2

    float-to-int p4, v1

    .line 526
    :cond_0
    const/4 v1, 0x1

    iput v1, p0, Lcom/amap/api/a/g;->a:I

    .line 527
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/amap/api/a/g;->C:Z

    .line 529
    mul-int v1, p3, p3

    mul-int v2, p4, p4

    add-int/2addr v1, v2

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v2, v1

    .line 531
    iput v2, p0, Lcom/amap/api/a/g;->F:F

    .line 532
    invoke-direct {p0, v2}, Lcom/amap/api/a/g;->d(F)I

    move-result v1

    int-to-long v3, v1

    iput-wide v3, p0, Lcom/amap/api/a/g;->v:J

    .line 533
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/amap/api/a/g;->u:J

    .line 534
    iput p1, p0, Lcom/amap/api/a/g;->b:I

    .line 535
    iput p2, p0, Lcom/amap/api/a/g;->c:I

    .line 537
    cmpl-float v1, v2, v6

    if-nez v1, :cond_1

    move v1, v0

    .line 538
    :goto_0
    cmpl-float v3, v2, v6

    if-nez v3, :cond_2

    .line 540
    :goto_1
    invoke-direct {p0, v2}, Lcom/amap/api/a/g;->e(F)D

    move-result-wide v3

    .line 541
    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    float-to-double v5, v2

    mul-double/2addr v5, v3

    double-to-int v2, v5

    iput v2, p0, Lcom/amap/api/a/g;->H:I

    .line 543
    iput p5, p0, Lcom/amap/api/a/g;->l:I

    .line 544
    iput p6, p0, Lcom/amap/api/a/g;->m:I

    .line 545
    iput p7, p0, Lcom/amap/api/a/g;->n:I

    .line 546
    iput p8, p0, Lcom/amap/api/a/g;->o:I

    .line 548
    float-to-double v1, v1

    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v1, v1

    add-int/2addr v1, p1

    iput v1, p0, Lcom/amap/api/a/g;->g:I

    .line 550
    iget v1, p0, Lcom/amap/api/a/g;->g:I

    iget v2, p0, Lcom/amap/api/a/g;->m:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/amap/api/a/g;->g:I

    .line 551
    iget v1, p0, Lcom/amap/api/a/g;->g:I

    iget v2, p0, Lcom/amap/api/a/g;->l:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/amap/api/a/g;->g:I

    .line 553
    float-to-double v0, v0

    mul-double/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    add-int/2addr v0, p2

    iput v0, p0, Lcom/amap/api/a/g;->h:I

    .line 555
    iget v0, p0, Lcom/amap/api/a/g;->h:I

    iget v1, p0, Lcom/amap/api/a/g;->o:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/amap/api/a/g;->h:I

    .line 556
    iget v0, p0, Lcom/amap/api/a/g;->h:I

    iget v1, p0, Lcom/amap/api/a/g;->n:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/amap/api/a/g;->h:I

    .line 557
    return-void

    .line 537
    :cond_1
    int-to-float v1, p3

    div-float/2addr v1, v2

    goto :goto_0

    .line 538
    :cond_2
    int-to-float v0, p4

    div-float/2addr v0, v2

    goto :goto_1
.end method

.method public final a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 185
    iput-boolean p1, p0, Lcom/amap/api/a/g;->C:Z

    .line 186
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/amap/api/a/g;->C:Z

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lcom/amap/api/a/g;->p:I

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lcom/amap/api/a/g;->q:I

    return v0
.end method

.method public final d()F
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Lcom/amap/api/a/g;->r:F

    return v0
.end method

.method public final e()F
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Lcom/amap/api/a/g;->s:F

    return v0
.end method

.method public final f()F
    .locals 1

    .prologue
    .line 224
    iget v0, p0, Lcom/amap/api/a/g;->t:F

    return v0
.end method

.method public g()F
    .locals 3

    .prologue
    .line 234
    iget v0, p0, Lcom/amap/api/a/g;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/amap/api/a/g;->G:F

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/amap/api/a/g;->F:F

    iget v1, p0, Lcom/amap/api/a/g;->M:F

    invoke-virtual {p0}, Lcom/amap/api/a/g;->i()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x44fa

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    goto :goto_0
.end method

.method public h()Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/high16 v7, 0x42c8

    .line 304
    iget-boolean v0, p0, Lcom/amap/api/a/g;->C:Z

    if-eqz v0, :cond_0

    .line 305
    const/4 v0, 0x0

    .line 392
    :goto_0
    return v0

    .line 308
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/amap/api/a/g;->u:J

    sub-long/2addr v0, v3

    long-to-int v0, v0

    .line 310
    int-to-long v3, v0

    iget-wide v5, p0, Lcom/amap/api/a/g;->v:J

    cmp-long v1, v3, v5

    if-gez v1, :cond_6

    .line 311
    iget v1, p0, Lcom/amap/api/a/g;->a:I

    packed-switch v1, :pswitch_data_0

    :cond_1
    :goto_1
    move v0, v2

    .line 392
    goto :goto_0

    .line 313
    :pswitch_0
    int-to-float v0, v0

    iget v1, p0, Lcom/amap/api/a/g;->w:F

    mul-float/2addr v0, v1

    .line 315
    iget-object v1, p0, Lcom/amap/api/a/g;->D:Landroid/view/animation/Interpolator;

    if-nez v1, :cond_2

    .line 316
    invoke-static {v0}, Lcom/amap/api/a/g;->a(F)F

    move-result v0

    .line 320
    :goto_2
    iget v1, p0, Lcom/amap/api/a/g;->b:I

    iget v3, p0, Lcom/amap/api/a/g;->x:F

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v1, v3

    iput v1, p0, Lcom/amap/api/a/g;->p:I

    .line 321
    iget v1, p0, Lcom/amap/api/a/g;->c:I

    iget v3, p0, Lcom/amap/api/a/g;->y:F

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/amap/api/a/g;->q:I

    goto :goto_1

    .line 318
    :cond_2
    iget-object v1, p0, Lcom/amap/api/a/g;->D:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    goto :goto_2

    .line 325
    :pswitch_1
    int-to-float v0, v0

    iget-wide v3, p0, Lcom/amap/api/a/g;->v:J

    long-to-float v1, v3

    div-float v3, v0, v1

    .line 326
    mul-float v0, v7, v3

    float-to-int v4, v0

    .line 327
    const/high16 v1, 0x3f80

    .line 328
    const/4 v0, 0x0

    .line 329
    const/16 v5, 0x64

    if-ge v4, v5, :cond_3

    .line 330
    int-to-float v0, v4

    div-float v1, v0, v7

    .line 331
    add-int/lit8 v0, v4, 0x1

    int-to-float v0, v0

    div-float/2addr v0, v7

    .line 332
    sget-object v5, Lcom/amap/api/a/g;->K:[F

    aget v5, v5, v4

    .line 333
    sget-object v6, Lcom/amap/api/a/g;->K:[F

    add-int/lit8 v4, v4, 0x1

    aget v4, v6, v4

    .line 334
    sub-float/2addr v4, v5

    sub-float/2addr v0, v1

    div-float v0, v4, v0

    .line 335
    sub-float v1, v3, v1

    mul-float/2addr v1, v0

    add-float/2addr v1, v5

    .line 338
    :cond_3
    iget v3, p0, Lcom/amap/api/a/g;->H:I

    int-to-float v3, v3

    mul-float/2addr v0, v3

    iget-wide v3, p0, Lcom/amap/api/a/g;->v:J

    long-to-float v3, v3

    div-float/2addr v0, v3

    const/high16 v3, 0x447a

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/amap/api/a/g;->G:F

    .line 340
    iget v0, p0, Lcom/amap/api/a/g;->b:I

    iget v3, p0, Lcom/amap/api/a/g;->g:I

    iget v4, p0, Lcom/amap/api/a/g;->b:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v0, v3

    iput v0, p0, Lcom/amap/api/a/g;->p:I

    .line 342
    iget v0, p0, Lcom/amap/api/a/g;->p:I

    iget v3, p0, Lcom/amap/api/a/g;->m:I

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/amap/api/a/g;->p:I

    .line 343
    iget v0, p0, Lcom/amap/api/a/g;->p:I

    iget v3, p0, Lcom/amap/api/a/g;->l:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/amap/api/a/g;->p:I

    .line 345
    iget v0, p0, Lcom/amap/api/a/g;->c:I

    iget v3, p0, Lcom/amap/api/a/g;->h:I

    iget v4, p0, Lcom/amap/api/a/g;->c:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/amap/api/a/g;->q:I

    .line 347
    iget v0, p0, Lcom/amap/api/a/g;->q:I

    iget v1, p0, Lcom/amap/api/a/g;->o:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/amap/api/a/g;->q:I

    .line 348
    iget v0, p0, Lcom/amap/api/a/g;->q:I

    iget v1, p0, Lcom/amap/api/a/g;->n:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/amap/api/a/g;->q:I

    .line 350
    iget v0, p0, Lcom/amap/api/a/g;->p:I

    iget v1, p0, Lcom/amap/api/a/g;->g:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/amap/api/a/g;->q:I

    iget v1, p0, Lcom/amap/api/a/g;->h:I

    if-ne v0, v1, :cond_1

    .line 351
    iput-boolean v2, p0, Lcom/amap/api/a/g;->C:Z

    goto/16 :goto_1

    .line 357
    :pswitch_2
    int-to-float v0, v0

    iget v1, p0, Lcom/amap/api/a/g;->w:F

    mul-float/2addr v0, v1

    .line 359
    iget-object v1, p0, Lcom/amap/api/a/g;->D:Landroid/view/animation/Interpolator;

    if-nez v1, :cond_4

    .line 360
    invoke-static {v0}, Lcom/amap/api/a/g;->a(F)F

    move-result v0

    .line 364
    :goto_3
    iget v1, p0, Lcom/amap/api/a/g;->d:F

    iget v3, p0, Lcom/amap/api/a/g;->z:F

    mul-float/2addr v0, v3

    add-float/2addr v0, v1

    iput v0, p0, Lcom/amap/api/a/g;->r:F

    goto/16 :goto_1

    .line 362
    :cond_4
    iget-object v1, p0, Lcom/amap/api/a/g;->D:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    goto :goto_3

    .line 368
    :pswitch_3
    int-to-float v0, v0

    iget v1, p0, Lcom/amap/api/a/g;->w:F

    mul-float/2addr v0, v1

    .line 370
    iget-object v1, p0, Lcom/amap/api/a/g;->D:Landroid/view/animation/Interpolator;

    if-nez v1, :cond_5

    .line 371
    invoke-static {v0}, Lcom/amap/api/a/g;->a(F)F

    move-result v0

    .line 375
    :goto_4
    iget v1, p0, Lcom/amap/api/a/g;->b:I

    iget v3, p0, Lcom/amap/api/a/g;->x:F

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v1, v3

    iput v1, p0, Lcom/amap/api/a/g;->p:I

    .line 376
    iget v1, p0, Lcom/amap/api/a/g;->c:I

    iget v3, p0, Lcom/amap/api/a/g;->y:F

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v1, v3

    iput v1, p0, Lcom/amap/api/a/g;->q:I

    .line 377
    iget v1, p0, Lcom/amap/api/a/g;->d:F

    iget v3, p0, Lcom/amap/api/a/g;->z:F

    mul-float/2addr v3, v0

    add-float/2addr v1, v3

    iput v1, p0, Lcom/amap/api/a/g;->r:F

    .line 378
    iget v1, p0, Lcom/amap/api/a/g;->e:F

    iget v3, p0, Lcom/amap/api/a/g;->A:F

    mul-float/2addr v3, v0

    add-float/2addr v1, v3

    iput v1, p0, Lcom/amap/api/a/g;->s:F

    .line 379
    iget v1, p0, Lcom/amap/api/a/g;->f:F

    iget v3, p0, Lcom/amap/api/a/g;->B:F

    mul-float/2addr v0, v3

    add-float/2addr v0, v1

    iput v0, p0, Lcom/amap/api/a/g;->t:F

    goto/16 :goto_1

    .line 373
    :cond_5
    iget-object v1, p0, Lcom/amap/api/a/g;->D:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    goto :goto_4

    .line 385
    :cond_6
    iget v0, p0, Lcom/amap/api/a/g;->g:I

    iput v0, p0, Lcom/amap/api/a/g;->p:I

    .line 386
    iget v0, p0, Lcom/amap/api/a/g;->h:I

    iput v0, p0, Lcom/amap/api/a/g;->q:I

    .line 387
    iget v0, p0, Lcom/amap/api/a/g;->i:F

    iput v0, p0, Lcom/amap/api/a/g;->r:F

    .line 388
    iget v0, p0, Lcom/amap/api/a/g;->j:F

    iput v0, p0, Lcom/amap/api/a/g;->s:F

    .line 389
    iget v0, p0, Lcom/amap/api/a/g;->k:F

    iput v0, p0, Lcom/amap/api/a/g;->t:F

    .line 390
    iput-boolean v2, p0, Lcom/amap/api/a/g;->C:Z

    goto/16 :goto_1

    .line 311
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public i()I
    .locals 4

    .prologue
    .line 626
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amap/api/a/g;->u:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public final j()I
    .locals 1

    .prologue
    .line 664
    iget v0, p0, Lcom/amap/api/a/g;->a:I

    return v0
.end method
