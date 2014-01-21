.class public Lcom/amap/api/a/a/c;
.super Lcom/amap/api/a/a/d;
.source "RotateGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/a/a/c$a;
    }
.end annotation


# instance fields
.field private final l:Lcom/amap/api/a/a/c$a;

.field private m:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/a/a/c$a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/amap/api/a/a/d;-><init>(Landroid/content/Context;)V

    .line 47
    iput-object p2, p0, Lcom/amap/api/a/a/c;->l:Lcom/amap/api/a/a/c$a;

    .line 48
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .prologue
    .line 135
    invoke-super {p0}, Lcom/amap/api/a/a/d;->a()V

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/a/a/c;->m:Z

    .line 137
    return-void
.end method

.method protected a(ILandroid/view/MotionEvent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 52
    packed-switch p1, :pswitch_data_0

    .line 91
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 56
    :pswitch_1
    invoke-virtual {p0}, Lcom/amap/api/a/a/c;->a()V

    .line 57
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/a/a/c;->c:Landroid/view/MotionEvent;

    .line 58
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/a/a/c;->g:J

    .line 60
    invoke-virtual {p0, p2}, Lcom/amap/api/a/a/c;->b(Landroid/view/MotionEvent;)V

    .line 63
    invoke-virtual {p0, p2}, Lcom/amap/api/a/a/c;->d(Landroid/view/MotionEvent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/a/a/c;->m:Z

    .line 64
    iget-boolean v0, p0, Lcom/amap/api/a/a/c;->m:Z

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/amap/api/a/a/c;->l:Lcom/amap/api/a/a/c$a;

    invoke-interface {v0, p0}, Lcom/amap/api/a/a/c$a;->b(Lcom/amap/api/a/a/c;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/a/a/c;->b:Z

    goto :goto_0

    .line 71
    :pswitch_2
    iget-boolean v0, p0, Lcom/amap/api/a/a/c;->m:Z

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p0, p2}, Lcom/amap/api/a/a/c;->d(Landroid/view/MotionEvent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/a/a/c;->m:Z

    .line 77
    iget-boolean v0, p0, Lcom/amap/api/a/a/c;->m:Z

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/amap/api/a/a/c;->l:Lcom/amap/api/a/a/c$a;

    invoke-interface {v0, p0}, Lcom/amap/api/a/a/c$a;->b(Lcom/amap/api/a/a/c;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/a/a/c;->b:Z

    goto :goto_0

    .line 85
    :pswitch_3
    iget-boolean v0, p0, Lcom/amap/api/a/a/c;->m:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public b()F
    .locals 6

    .prologue
    .line 147
    iget v0, p0, Lcom/amap/api/a/a/c;->i:F

    float-to-double v0, v0

    iget v2, p0, Lcom/amap/api/a/a/c;->h:F

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    iget v2, p0, Lcom/amap/api/a/a/c;->k:F

    float-to-double v2, v2

    iget v4, p0, Lcom/amap/api/a/a/c;->j:F

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    sub-double/2addr v0, v2

    .line 148
    const-wide v2, 0x4066800000000000L

    mul-double/2addr v0, v2

    const-wide v2, 0x400921fb54442d18L

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method protected b(ILandroid/view/MotionEvent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 96
    packed-switch p1, :pswitch_data_0

    .line 131
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 99
    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/amap/api/a/a/c;->b(Landroid/view/MotionEvent;)V

    .line 101
    iget-boolean v0, p0, Lcom/amap/api/a/a/c;->m:Z

    if-nez v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/amap/api/a/a/c;->l:Lcom/amap/api/a/a/c$a;

    invoke-interface {v0, p0}, Lcom/amap/api/a/a/c$a;->c(Lcom/amap/api/a/a/c;)V

    .line 105
    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/a/a/c;->a()V

    goto :goto_0

    .line 109
    :pswitch_2
    iget-boolean v0, p0, Lcom/amap/api/a/a/c;->m:Z

    if-nez v0, :cond_2

    .line 110
    iget-object v0, p0, Lcom/amap/api/a/a/c;->l:Lcom/amap/api/a/a/c$a;

    invoke-interface {v0, p0}, Lcom/amap/api/a/a/c$a;->c(Lcom/amap/api/a/a/c;)V

    .line 113
    :cond_2
    invoke-virtual {p0}, Lcom/amap/api/a/a/c;->a()V

    goto :goto_0

    .line 117
    :pswitch_3
    invoke-virtual {p0, p2}, Lcom/amap/api/a/a/c;->b(Landroid/view/MotionEvent;)V

    .line 122
    iget v0, p0, Lcom/amap/api/a/a/c;->e:F

    iget v1, p0, Lcom/amap/api/a/a/c;->f:F

    div-float/2addr v0, v1

    const v1, 0x3f2b851f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/amap/api/a/a/c;->l:Lcom/amap/api/a/a/c$a;

    invoke-interface {v0, p0}, Lcom/amap/api/a/a/c$a;->a(Lcom/amap/api/a/a/c;)Z

    move-result v0

    .line 124
    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/amap/api/a/a/c;->c:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 126
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/a/a/c;->c:Landroid/view/MotionEvent;

    goto :goto_0

    .line 96
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
