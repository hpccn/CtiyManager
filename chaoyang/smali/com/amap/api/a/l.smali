.class Lcom/amap/api/a/l;
.super Ljava/lang/Object;
.source "GLESUtility.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljavax/microedition/khronos/opengles/GL10;IILjava/nio/FloatBuffer;FI)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 167
    const/4 v1, 0x3

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/amap/api/a/l;->b(Ljavax/microedition/khronos/opengles/GL10;IILjava/nio/FloatBuffer;FI)V

    .line 169
    return-void
.end method

.method public static a(Ljavax/microedition/khronos/opengles/GL10;IILjava/nio/FloatBuffer;FLjava/nio/FloatBuffer;II)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 176
    const/4 v1, 0x4

    const/high16 v4, 0x3f80

    move-object v0, p0

    move v2, p1

    move-object v3, p5

    move v5, p7

    invoke-static/range {v0 .. v5}, Lcom/amap/api/a/l;->b(Ljavax/microedition/khronos/opengles/GL10;IILjava/nio/FloatBuffer;FI)V

    .line 181
    const/4 v1, 0x2

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p6

    invoke-static/range {v0 .. v5}, Lcom/amap/api/a/l;->b(Ljavax/microedition/khronos/opengles/GL10;IILjava/nio/FloatBuffer;FI)V

    .line 183
    return-void
.end method

.method private static b(Ljavax/microedition/khronos/opengles/GL10;IILjava/nio/FloatBuffer;FI)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v9, 0xb10

    const/high16 v8, 0x4000

    const/4 v7, 0x0

    const/high16 v4, 0x437f

    const/high16 v6, 0x3f80

    .line 25
    const/4 v0, 0x0

    cmpl-float v0, p4, v0

    if-nez v0, :cond_0

    .line 163
    :goto_0
    return-void

    .line 29
    :cond_0
    invoke-interface {p0}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 30
    invoke-interface {p0, v6, v6, v6, v6}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 31
    const/16 v0, 0xbe2

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 32
    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-interface {p0, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 36
    const v0, 0x8074

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 50
    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    .line 51
    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    .line 52
    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    .line 53
    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    .line 57
    const v4, 0x809d

    invoke-interface {p0, v4}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 58
    const/4 v4, 0x3

    const/16 v5, 0x1406

    invoke-interface {p0, v4, v5, v7, p3}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 59
    invoke-interface {p0, v1, v2, v3, v0}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 60
    invoke-interface {p0, p4}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidth(F)V

    .line 61
    invoke-interface {p0, p1, v7, p5}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 62
    const v4, 0x809d

    invoke-interface {p0, v4}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 65
    invoke-interface {p0, v9}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 66
    const/16 v4, 0xc51

    const/16 v5, 0x1102

    invoke-interface {p0, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glHint(II)V

    .line 68
    const/high16 v4, 0x4120

    cmpl-float v4, p4, v4

    if-ltz v4, :cond_2

    .line 69
    const/high16 p4, 0x40c0

    .line 75
    :cond_1
    :goto_1
    const/high16 v4, 0x4080

    div-float/2addr v0, v4

    invoke-interface {p0, v1, v2, v3, v0}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 76
    invoke-interface {p0, p4}, Ljavax/microedition/khronos/opengles/GL10;->glPointSize(F)V

    .line 77
    const/4 v0, 0x1

    add-int/lit8 v1, p5, -0x2

    invoke-interface {p0, v7, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 78
    invoke-interface {p0, v9}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 81
    const v0, 0x8074

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 82
    invoke-interface {p0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    goto :goto_0

    .line 70
    :cond_2
    const/high16 v4, 0x40a0

    cmpl-float v4, p4, v4

    if-ltz v4, :cond_3

    .line 71
    sub-float/2addr p4, v8

    goto :goto_1

    .line 72
    :cond_3
    cmpl-float v4, p4, v8

    if-ltz v4, :cond_1

    .line 73
    sub-float/2addr p4, v6

    goto :goto_1
.end method

.method public static b(Ljavax/microedition/khronos/opengles/GL10;IILjava/nio/FloatBuffer;FLjava/nio/FloatBuffer;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 187
    invoke-static/range {p0 .. p7}, Lcom/amap/api/a/l;->a(Ljavax/microedition/khronos/opengles/GL10;IILjava/nio/FloatBuffer;FLjava/nio/FloatBuffer;II)V

    .line 189
    return-void
.end method
