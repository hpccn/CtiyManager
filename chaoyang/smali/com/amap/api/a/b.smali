.class Lcom/amap/api/a/b;
.super Landroid/opengl/GLSurfaceView;
.source "AMapDelegateImpGLSurfaceView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Lcom/amap/api/a/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/a/b$a;,
        Lcom/amap/api/a/b$d;,
        Lcom/amap/api/a/b$b;,
        Lcom/amap/api/a/b$c;,
        Lcom/amap/api/a/b$e;
    }
.end annotation


# instance fields
.field private A:Lcom/amap/api/maps/AMap$OnMapLongClickListener;

.field private B:Lcom/amap/api/maps/AMap$OnInfoWindowClickListener;

.field private C:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

.field private D:Landroid/view/View;

.field private E:Lcom/amap/api/maps/model/Marker;

.field private F:Lcom/amap/api/a/u;

.field private G:Lcom/amap/api/a/w;

.field private H:Lcom/amap/api/maps/LocationSource;

.field private I:Landroid/graphics/Rect;

.field private J:Z

.field private K:Z

.field private L:Lcom/amap/api/a/e;

.field private M:Lcom/amap/api/a/a/b;

.field private N:Lcom/amap/api/a/ae;

.field private O:Lcom/amap/api/a/f;

.field private P:Lcom/amap/api/a/g;

.field private Q:I

.field private R:I

.field private S:Lcom/amap/api/maps/AMap$CancelableCallback;

.field private T:Landroid/graphics/drawable/Drawable;

.field private U:Landroid/location/Location;

.field private final V:[I

.field private W:Z

.field private X:Z

.field private Y:Z

.field private Z:Z

.field a:Lcom/amap/api/a/aa;

.field private aa:Lcom/amap/api/maps/model/Marker;

.field private ab:I

.field private ac:Z

.field private ad:Ljava/lang/Thread;

.field b:Lcom/amap/api/a/am;

.field c:Z

.field d:Lcom/amap/api/a/m;

.field e:Landroid/os/Handler;

.field private f:I

.field private g:Lcom/autonavi/amap/mapcore/MapCore;

.field private h:Landroid/content/Context;

.field private i:Lcom/amap/api/a/a;

.field private j:Lcom/autonavi/amap/mapcore/MapProjection;

.field private k:Landroid/view/GestureDetector;

.field private l:Landroid/view/ScaleGestureDetector;

.field private m:Lcom/amap/api/a/a/c;

.field private n:Landroid/view/SurfaceHolder;

.field private o:Lcom/amap/api/a/ac;

.field private p:Lcom/amap/api/a/ab;

.field private q:Lcom/amap/api/a/al;

.field private r:Lcom/amap/api/a/x;

.field private s:Lcom/amap/api/a/j;

.field private t:Lcom/amap/api/a/aj;

.field private u:Lcom/amap/api/maps/AMap$OnMyLocationChangeListener;

.field private v:Lcom/amap/api/maps/AMap$OnMarkerClickListener;

.field private w:Lcom/amap/api/maps/AMap$OnMarkerDragListener;

.field private x:Lcom/amap/api/maps/AMap$OnMapLoadedListener;

.field private y:Lcom/amap/api/maps/AMap$OnCameraChangeListener;

.field private z:Lcom/amap/api/maps/AMap$OnMapClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 162
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/amap/api/a/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 163
    sput-object p1, Lcom/amap/api/a/y;->a:Landroid/content/Context;

    .line 164
    iput-object p1, p0, Lcom/amap/api/a/b;->h:Landroid/content/Context;

    .line 165
    invoke-virtual {p0}, Lcom/amap/api/a/b;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/a/b;->n:Landroid/view/SurfaceHolder;

    .line 166
    iget-object v0, p0, Lcom/amap/api/a/b;->n:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 167
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 13
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v12, -0x2

    const-wide/16 v10, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 181
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    iput v8, p0, Lcom/amap/api/a/b;->f:I

    .line 88
    iput-object v7, p0, Lcom/amap/api/a/b;->i:Lcom/amap/api/a/a;

    .line 93
    new-instance v0, Lcom/amap/api/a/aa;

    invoke-direct {v0}, Lcom/amap/api/a/aa;-><init>()V

    iput-object v0, p0, Lcom/amap/api/a/b;->a:Lcom/amap/api/a/aa;

    .line 94
    iput-object v7, p0, Lcom/amap/api/a/b;->n:Landroid/view/SurfaceHolder;

    .line 118
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/amap/api/a/b;->I:Landroid/graphics/Rect;

    .line 119
    iput-boolean v8, p0, Lcom/amap/api/a/b;->J:Z

    .line 120
    iput-boolean v2, p0, Lcom/amap/api/a/b;->K:Z

    .line 121
    iput-boolean v2, p0, Lcom/amap/api/a/b;->c:Z

    .line 129
    iput v2, p0, Lcom/amap/api/a/b;->Q:I

    .line 130
    iput v2, p0, Lcom/amap/api/a/b;->R:I

    .line 131
    iput-object v7, p0, Lcom/amap/api/a/b;->S:Lcom/amap/api/maps/AMap$CancelableCallback;

    .line 132
    iput-object v7, p0, Lcom/amap/api/a/b;->T:Landroid/graphics/drawable/Drawable;

    .line 135
    const/16 v0, 0x15

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/amap/api/a/b;->V:[I

    .line 142
    new-instance v0, Lcom/amap/api/a/m;

    invoke-direct {v0}, Lcom/amap/api/a/m;-><init>()V

    iput-object v0, p0, Lcom/amap/api/a/b;->d:Lcom/amap/api/a/m;

    .line 904
    iput-boolean v2, p0, Lcom/amap/api/a/b;->W:Z

    .line 1148
    iput-boolean v2, p0, Lcom/amap/api/a/b;->X:Z

    .line 1152
    iput-boolean v2, p0, Lcom/amap/api/a/b;->Y:Z

    .line 1154
    iput-boolean v2, p0, Lcom/amap/api/a/b;->Z:Z

    .line 1155
    iput-object v7, p0, Lcom/amap/api/a/b;->aa:Lcom/amap/api/maps/model/Marker;

    .line 1182
    iput v2, p0, Lcom/amap/api/a/b;->ab:I

    .line 1186
    iput-boolean v2, p0, Lcom/amap/api/a/b;->ac:Z

    .line 1841
    new-instance v0, Lcom/amap/api/a/c;

    invoke-direct {v0, p0}, Lcom/amap/api/a/c;-><init>(Lcom/amap/api/a/b;)V

    iput-object v0, p0, Lcom/amap/api/a/b;->ad:Ljava/lang/Thread;

    .line 1858
    new-instance v0, Lcom/amap/api/a/d;

    invoke-direct {v0, p0}, Lcom/amap/api/a/d;-><init>(Lcom/amap/api/a/b;)V

    iput-object v0, p0, Lcom/amap/api/a/b;->e:Landroid/os/Handler;

    .line 182
    new-instance v0, Lcom/amap/api/a/f;

    invoke-direct {v0}, Lcom/amap/api/a/f;-><init>()V

    iput-object v0, p0, Lcom/amap/api/a/b;->O:Lcom/amap/api/a/f;

    .line 183
    iput-object p1, p0, Lcom/amap/api/a/b;->h:Landroid/content/Context;

    .line 184
    new-instance v0, Lcom/autonavi/amap/mapcore/MapCore;

    invoke-direct {v0, p1}, Lcom/autonavi/amap/mapcore/MapCore;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/a/b;->g:Lcom/autonavi/amap/mapcore/MapCore;

    .line 185
    new-instance v0, Lcom/amap/api/a/a;

    invoke-direct {v0, p0}, Lcom/amap/api/a/a;-><init>(Lcom/amap/api/a/b;)V

    iput-object v0, p0, Lcom/amap/api/a/b;->i:Lcom/amap/api/a/a;

    .line 186
    iget-object v0, p0, Lcom/amap/api/a/b;->g:Lcom/autonavi/amap/mapcore/MapCore;

    iget-object v1, p0, Lcom/amap/api/a/b;->i:Lcom/amap/api/a/a;

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapCore;->setMapCallback(Lcom/autonavi/amap/mapcore/IMapCallback;)V

    .line 187
    iget-object v0, p0, Lcom/amap/api/a/b;->g:Lcom/autonavi/amap/mapcore/MapCore;

    const/16 v1, 0x3e9

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/autonavi/amap/mapcore/MapCore;->setParameter(IIIII)V

    .line 188
    iget-object v0, p0, Lcom/amap/api/a/b;->g:Lcom/autonavi/amap/mapcore/MapCore;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapCore;->getMapstate()Lcom/autonavi/amap/mapcore/MapProjection;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/a/b;->j:Lcom/autonavi/amap/mapcore/MapProjection;

    .line 198
    iget-object v0, p0, Lcom/amap/api/a/b;->a:Lcom/amap/api/a/aa;

    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    const-wide v3, 0x4043f64cb5bb3850L

    const-wide v5, 0x405d1976a004eda6L

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    const/high16 v3, 0x4120

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v3, v4, v5}, Lcom/amap/api/a/h;->a(Lcom/amap/api/maps/model/LatLng;FFF)Lcom/amap/api/a/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/a/aa;->a(Lcom/amap/api/a/h;)V

    .line 201
    new-instance v0, Lcom/amap/api/a/ai;

    invoke-direct {v0, p0}, Lcom/amap/api/a/ai;-><init>(Lcom/amap/api/a/n;)V

    iput-object v0, p0, Lcom/amap/api/a/b;->F:Lcom/amap/api/a/u;

    .line 202
    new-instance v0, Lcom/amap/api/a/e;

    invoke-direct {v0, p0}, Lcom/amap/api/a/e;-><init>(Lcom/amap/api/a/n;)V

    iput-object v0, p0, Lcom/amap/api/a/b;->L:Lcom/amap/api/a/e;

    .line 203
    new-instance v0, Lcom/amap/api/a/ak;

    invoke-direct {v0, p0}, Lcom/amap/api/a/ak;-><init>(Lcom/amap/api/a/n;)V

    iput-object v0, p0, Lcom/amap/api/a/b;->G:Lcom/amap/api/a/w;

    .line 212
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/amap/api/a/b$c;

    invoke-direct {v1, p0, v7}, Lcom/amap/api/a/b$c;-><init>(Lcom/amap/api/a/b;Lcom/amap/api/a/b$1;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/amap/api/a/b;->k:Landroid/view/GestureDetector;

    .line 217
    iget-object v0, p0, Lcom/amap/api/a/b;->k:Landroid/view/GestureDetector;

    new-instance v1, Lcom/amap/api/a/b$b;

    invoke-direct {v1, p0, v7}, Lcom/amap/api/a/b$b;-><init>(Lcom/amap/api/a/b;Lcom/amap/api/a/b$1;)V

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 218
    iget-object v0, p0, Lcom/amap/api/a/b;->k:Landroid/view/GestureDetector;

    invoke-virtual {v0, v8}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 223
    new-instance v0, Landroid/view/ScaleGestureDetector;

    new-instance v1, Lcom/amap/api/a/b$e;

    invoke-direct {v1, p0, v7}, Lcom/amap/api/a/b$e;-><init>(Lcom/amap/api/a/b;Lcom/amap/api/a/b$1;)V

    invoke-direct {v0, p1, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/amap/api/a/b;->l:Landroid/view/ScaleGestureDetector;

    .line 229
    new-instance v0, Lcom/amap/api/a/a/c;

    new-instance v1, Lcom/amap/api/a/b$d;

    invoke-direct {v1, p0, v7}, Lcom/amap/api/a/b$d;-><init>(Lcom/amap/api/a/b;Lcom/amap/api/a/b$1;)V

    invoke-direct {v0, p1, v1}, Lcom/amap/api/a/a/c;-><init>(Landroid/content/Context;Lcom/amap/api/a/a/c$a;)V

    iput-object v0, p0, Lcom/amap/api/a/b;->m:Lcom/amap/api/a/a/c;

    .line 235
    new-instance v0, Lcom/amap/api/a/a/b;

    new-instance v1, Lcom/amap/api/a/b$a;

    invoke-direct {v1, p0, v7}, Lcom/amap/api/a/b$a;-><init>(Lcom/amap/api/a/b;Lcom/amap/api/a/b$1;)V

    invoke-direct {v0, p1, v1}, Lcom/amap/api/a/a/b;-><init>(Landroid/content/Context;Lcom/amap/api/a/a/b$a;)V

    iput-object v0, p0, Lcom/amap/api/a/b;->M:Lcom/amap/api/a/a/b;

    .line 240
    new-instance v0, Lcom/amap/api/a/ac;

    invoke-direct {v0, p1, p0}, Lcom/amap/api/a/ac;-><init>(Landroid/content/Context;Lcom/amap/api/a/n;)V

    iput-object v0, p0, Lcom/amap/api/a/b;->o:Lcom/amap/api/a/ac;

    .line 241
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v3, -0x1

    invoke-direct {v0, v1, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 244
    iget-object v1, p0, Lcom/amap/api/a/b;->o:Lcom/amap/api/a/ac;

    invoke-virtual {v1, p0, v2, v0}, Lcom/amap/api/a/ac;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 246
    new-instance v1, Lcom/amap/api/a/ab;

    iget-object v3, p0, Lcom/amap/api/a/b;->h:Landroid/content/Context;

    invoke-direct {v1, v3, p2, p0}, Lcom/amap/api/a/ab;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/amap/api/a/n;)V

    iput-object v1, p0, Lcom/amap/api/a/b;->p:Lcom/amap/api/a/ab;

    .line 248
    new-instance v1, Lcom/amap/api/a/ac$a;

    invoke-direct {v1, v0}, Lcom/amap/api/a/ac$a;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    iget-object v3, p0, Lcom/amap/api/a/b;->o:Lcom/amap/api/a/ac;

    iget-object v4, p0, Lcom/amap/api/a/b;->p:Lcom/amap/api/a/ab;

    invoke-virtual {v3, v4, v1}, Lcom/amap/api/a/ac;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 253
    new-instance v1, Lcom/amap/api/a/al;

    iget-object v3, p0, Lcom/amap/api/a/b;->h:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/amap/api/a/al;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/amap/api/a/b;->q:Lcom/amap/api/a/al;

    .line 254
    iget-object v1, p0, Lcom/amap/api/a/b;->o:Lcom/amap/api/a/ac;

    iget-object v3, p0, Lcom/amap/api/a/b;->q:Lcom/amap/api/a/al;

    invoke-virtual {v1, v3, v0}, Lcom/amap/api/a/ac;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 256
    new-instance v1, Lcom/amap/api/a/aj;

    iget-object v3, p0, Lcom/amap/api/a/b;->h:Landroid/content/Context;

    invoke-direct {v1, v3, p0}, Lcom/amap/api/a/aj;-><init>(Landroid/content/Context;Lcom/amap/api/a/b;)V

    iput-object v1, p0, Lcom/amap/api/a/b;->t:Lcom/amap/api/a/aj;

    .line 257
    iget-object v1, p0, Lcom/amap/api/a/b;->o:Lcom/amap/api/a/ac;

    iget-object v3, p0, Lcom/amap/api/a/b;->t:Lcom/amap/api/a/aj;

    invoke-virtual {v1, v3, v0}, Lcom/amap/api/a/ac;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 259
    new-instance v0, Lcom/amap/api/a/am;

    iget-object v1, p0, Lcom/amap/api/a/b;->h:Landroid/content/Context;

    iget-object v3, p0, Lcom/amap/api/a/b;->a:Lcom/amap/api/a/aa;

    invoke-direct {v0, v1, v3, p0}, Lcom/amap/api/a/am;-><init>(Landroid/content/Context;Lcom/amap/api/a/aa;Lcom/amap/api/a/n;)V

    iput-object v0, p0, Lcom/amap/api/a/b;->b:Lcom/amap/api/a/am;

    .line 261
    new-instance v3, Lcom/amap/api/a/ac$a;

    new-instance v6, Lcom/amap/api/maps/model/LatLng;

    invoke-direct {v6, v10, v11, v10, v11}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    const/16 v9, 0x53

    move v4, v12

    move v5, v12

    move v7, v2

    move v8, v2

    invoke-direct/range {v3 .. v9}, Lcom/amap/api/a/ac$a;-><init>(IILcom/amap/api/maps/model/LatLng;III)V

    .line 265
    iget-object v0, p0, Lcom/amap/api/a/b;->o:Lcom/amap/api/a/ac;

    iget-object v1, p0, Lcom/amap/api/a/b;->b:Lcom/amap/api/a/am;

    invoke-virtual {v0, v1, v3}, Lcom/amap/api/a/ac;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 267
    new-instance v3, Lcom/amap/api/a/ac$a;

    new-instance v6, Lcom/amap/api/maps/model/LatLng;

    invoke-direct {v6, v10, v11, v10, v11}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    const/16 v9, 0x53

    move v4, v12

    move v5, v12

    move v7, v2

    move v8, v2

    invoke-direct/range {v3 .. v9}, Lcom/amap/api/a/ac$a;-><init>(IILcom/amap/api/maps/model/LatLng;III)V

    .line 271
    new-instance v0, Lcom/amap/api/a/x;

    iget-object v1, p0, Lcom/amap/api/a/b;->h:Landroid/content/Context;

    iget-object v4, p0, Lcom/amap/api/a/b;->a:Lcom/amap/api/a/aa;

    invoke-direct {v0, v1, v4, p0}, Lcom/amap/api/a/x;-><init>(Landroid/content/Context;Lcom/amap/api/a/aa;Lcom/amap/api/a/n;)V

    iput-object v0, p0, Lcom/amap/api/a/b;->r:Lcom/amap/api/a/x;

    .line 273
    iget-object v0, p0, Lcom/amap/api/a/b;->o:Lcom/amap/api/a/ac;

    iget-object v1, p0, Lcom/amap/api/a/b;->r:Lcom/amap/api/a/x;

    invoke-virtual {v0, v1, v3}, Lcom/amap/api/a/ac;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 275
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/a/b;->s()Lcom/amap/api/a/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/a/w;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/amap/api/a/b;->r:Lcom/amap/api/a/x;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/amap/api/a/x;->setVisibility(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    :cond_0
    :goto_0
    new-instance v3, Lcom/amap/api/a/ac$a;

    new-instance v6, Lcom/amap/api/maps/model/LatLng;

    invoke-direct {v6, v10, v11, v10, v11}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    const/16 v9, 0x33

    move v4, v12

    move v5, v12

    move v7, v2

    move v8, v2

    invoke-direct/range {v3 .. v9}, Lcom/amap/api/a/ac$a;-><init>(IILcom/amap/api/maps/model/LatLng;III)V

    .line 286
    new-instance v0, Lcom/amap/api/a/j;

    iget-object v1, p0, Lcom/amap/api/a/b;->h:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/a/b;->a:Lcom/amap/api/a/aa;

    invoke-direct {v0, v1, v2, p0}, Lcom/amap/api/a/j;-><init>(Landroid/content/Context;Lcom/amap/api/a/aa;Lcom/amap/api/a/n;)V

    iput-object v0, p0, Lcom/amap/api/a/b;->s:Lcom/amap/api/a/j;

    .line 288
    iget-object v0, p0, Lcom/amap/api/a/b;->o:Lcom/amap/api/a/ac;

    iget-object v1, p0, Lcom/amap/api/a/b;->s:Lcom/amap/api/a/j;

    invoke-virtual {v0, v1, v3}, Lcom/amap/api/a/ac;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 289
    iget-object v0, p0, Lcom/amap/api/a/b;->s:Lcom/amap/api/a/j;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/amap/api/a/j;->setVisibility(I)V

    .line 291
    new-instance v0, Lcom/amap/api/a/g;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-direct {v0, p1, v1}, Lcom/amap/api/a/g;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/amap/api/a/b;->P:Lcom/amap/api/a/g;

    .line 294
    invoke-virtual {p0, p0}, Lcom/amap/api/a/b;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 295
    return-void

    .line 278
    :catch_0
    move-exception v0

    .line 279
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 135
    :array_0
    .array-data 0x4
        0x80t 0x96t 0x98t 0x0t
        0x40t 0x4bt 0x4ct 0x0t
        0x80t 0x84t 0x1et 0x0t
        0x40t 0x42t 0xft 0x0t
        0x20t 0xa1t 0x7t 0x0t
        0x40t 0xdt 0x3t 0x0t
        0xa0t 0x86t 0x1t 0x0t
        0x50t 0xc3t 0x0t 0x0t
        0x30t 0x75t 0x0t 0x0t
        0x20t 0x4et 0x0t 0x0t
        0x10t 0x27t 0x0t 0x0t
        0x88t 0x13t 0x0t 0x0t
        0xd0t 0x7t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private A()Lcom/amap/api/maps/model/CameraPosition;
    .locals 2

    .prologue
    .line 1133
    invoke-direct {p0}, Lcom/amap/api/a/b;->z()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    .line 1134
    invoke-static {}, Lcom/amap/api/maps/model/CameraPosition;->builder()Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amap/api/maps/model/CameraPosition$Builder;->target(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/a/b;->j:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapAngle()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/CameraPosition$Builder;->bearing(F)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/a/b;->j:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapProjection;->getCameraHeaderAngle()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/CameraPosition$Builder;->tilt(F)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/a/b;->j:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapZoomer()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/CameraPosition$Builder;->zoom(F)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps/model/CameraPosition$Builder;->build()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v0

    return-object v0
.end method

.method private B()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1158
    iput-boolean v0, p0, Lcom/amap/api/a/b;->X:Z

    .line 1159
    iput-boolean v0, p0, Lcom/amap/api/a/b;->Y:Z

    .line 1160
    iput-boolean v0, p0, Lcom/amap/api/a/b;->Z:Z

    .line 1161
    iget-object v0, p0, Lcom/amap/api/a/b;->w:Lcom/amap/api/maps/AMap$OnMarkerDragListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/a/b;->aa:Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_0

    .line 1162
    iget-object v0, p0, Lcom/amap/api/a/b;->w:Lcom/amap/api/maps/AMap$OnMarkerDragListener;

    iget-object v1, p0, Lcom/amap/api/a/b;->aa:Lcom/amap/api/maps/model/Marker;

    invoke-interface {v0, v1}, Lcom/amap/api/maps/AMap$OnMarkerDragListener;->onMarkerDragEnd(Lcom/amap/api/maps/model/Marker;)V

    .line 1163
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/a/b;->aa:Lcom/amap/api/maps/model/Marker;

    .line 1165
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/amap/api/a/b;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 72
    iput p1, p0, Lcom/amap/api/a/b;->ab:I

    return p1
.end method

.method static synthetic a(Lcom/amap/api/a/b;)Lcom/amap/api/a/j;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/amap/api/a/b;->s:Lcom/amap/api/a/j;

    return-object v0
.end method

.method static synthetic a(Lcom/amap/api/a/b;Lcom/amap/api/maps/AMap$CancelableCallback;)Lcom/amap/api/maps/AMap$CancelableCallback;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/amap/api/a/b;->S:Lcom/amap/api/maps/AMap$CancelableCallback;

    return-object p1
.end method

.method static synthetic a(Lcom/amap/api/a/b;Lcom/amap/api/maps/model/Marker;)Lcom/amap/api/maps/model/Marker;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/amap/api/a/b;->aa:Lcom/amap/api/maps/model/Marker;

    return-object p1
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter

    .prologue
    .line 1168
    iget-boolean v0, p0, Lcom/amap/api/a/b;->Z:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/a/b;->aa:Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_0

    .line 1169
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 1170
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    const/high16 v2, 0x4270

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 1171
    new-instance v2, Lcom/autonavi/amap/mapcore/DPoint;

    invoke-direct {v2}, Lcom/autonavi/amap/mapcore/DPoint;-><init>()V

    .line 1172
    invoke-virtual {p0, v0, v1, v2}, Lcom/amap/api/a/b;->a(IILcom/autonavi/amap/mapcore/DPoint;)V

    .line 1173
    new-instance v0, Lcom/amap/api/maps/model/LatLng;

    iget-wide v3, v2, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v1, v2, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    .line 1174
    iget-object v1, p0, Lcom/amap/api/a/b;->aa:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v1, v0}, Lcom/amap/api/maps/model/Marker;->setPosition(Lcom/amap/api/maps/model/LatLng;)V

    .line 1175
    iget-object v0, p0, Lcom/amap/api/a/b;->w:Lcom/amap/api/maps/AMap$OnMarkerDragListener;

    iget-object v1, p0, Lcom/amap/api/a/b;->aa:Lcom/amap/api/maps/model/Marker;

    invoke-interface {v0, v1}, Lcom/amap/api/maps/AMap$OnMarkerDragListener;->onMarkerDrag(Lcom/amap/api/maps/model/Marker;)V

    .line 1177
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/amap/api/a/b;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/amap/api/a/b;->Y:Z

    return p1
.end method

.method static synthetic b(Lcom/amap/api/a/b;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 72
    iput p1, p0, Lcom/amap/api/a/b;->Q:I

    return p1
.end method

.method static synthetic b(Lcom/amap/api/a/b;)Z
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/amap/api/a/b;->X:Z

    return v0
.end method

.method static synthetic b(Lcom/amap/api/a/b;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/amap/api/a/b;->ac:Z

    return p1
.end method

.method static synthetic c(Lcom/amap/api/a/b;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 72
    iput p1, p0, Lcom/amap/api/a/b;->R:I

    return p1
.end method

.method static synthetic c(Lcom/amap/api/a/b;)Z
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/amap/api/a/b;->Y:Z

    return v0
.end method

.method static synthetic c(Lcom/amap/api/a/b;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/amap/api/a/b;->Z:Z

    return p1
.end method

.method static synthetic d(Lcom/amap/api/a/b;)Lcom/amap/api/a/w;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/amap/api/a/b;->G:Lcom/amap/api/a/w;

    return-object v0
.end method

.method static synthetic d(Lcom/amap/api/a/b;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/amap/api/a/b;->X:Z

    return p1
.end method

.method static synthetic e(Lcom/amap/api/a/b;)Lcom/autonavi/amap/mapcore/MapProjection;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/amap/api/a/b;->j:Lcom/autonavi/amap/mapcore/MapProjection;

    return-object v0
.end method

.method static synthetic f(Lcom/amap/api/a/b;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/amap/api/a/b;->B()V

    return-void
.end method

.method static synthetic g(Lcom/amap/api/a/b;)Lcom/amap/api/a/g;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/amap/api/a/b;->P:Lcom/amap/api/a/g;

    return-object v0
.end method

.method static synthetic h(Lcom/amap/api/a/b;)Lcom/amap/api/maps/AMap$CancelableCallback;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/amap/api/a/b;->S:Lcom/amap/api/maps/AMap$CancelableCallback;

    return-object v0
.end method

.method static synthetic i(Lcom/amap/api/a/b;)Lcom/amap/api/a/a/b;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/amap/api/a/b;->M:Lcom/amap/api/a/a/b;

    return-object v0
.end method

.method static synthetic j(Lcom/amap/api/a/b;)I
    .locals 1
    .parameter

    .prologue
    .line 72
    iget v0, p0, Lcom/amap/api/a/b;->Q:I

    return v0
.end method

.method static synthetic k(Lcom/amap/api/a/b;)I
    .locals 1
    .parameter

    .prologue
    .line 72
    iget v0, p0, Lcom/amap/api/a/b;->R:I

    return v0
.end method

.method static synthetic l(Lcom/amap/api/a/b;)Lcom/amap/api/maps/AMap$OnMapLongClickListener;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/amap/api/a/b;->A:Lcom/amap/api/maps/AMap$OnMapLongClickListener;

    return-object v0
.end method

.method static synthetic m(Lcom/amap/api/a/b;)Lcom/amap/api/a/ab;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/amap/api/a/b;->p:Lcom/amap/api/a/ab;

    return-object v0
.end method

.method static synthetic n(Lcom/amap/api/a/b;)Lcom/amap/api/maps/AMap$OnMarkerDragListener;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/amap/api/a/b;->w:Lcom/amap/api/maps/AMap$OnMarkerDragListener;

    return-object v0
.end method

.method static synthetic o(Lcom/amap/api/a/b;)Lcom/amap/api/maps/model/Marker;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/amap/api/a/b;->aa:Lcom/amap/api/maps/model/Marker;

    return-object v0
.end method

.method static synthetic p(Lcom/amap/api/a/b;)I
    .locals 1
    .parameter

    .prologue
    .line 72
    iget v0, p0, Lcom/amap/api/a/b;->ab:I

    return v0
.end method

.method static synthetic q(Lcom/amap/api/a/b;)Z
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/amap/api/a/b;->ac:Z

    return v0
.end method

.method static synthetic r(Lcom/amap/api/a/b;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/amap/api/a/b;->D:Landroid/view/View;

    return-object v0
.end method

.method static synthetic s(Lcom/amap/api/a/b;)Lcom/amap/api/maps/AMap$OnInfoWindowClickListener;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/amap/api/a/b;->B:Lcom/amap/api/maps/AMap$OnInfoWindowClickListener;

    return-object v0
.end method

.method static synthetic t(Lcom/amap/api/a/b;)Lcom/amap/api/maps/AMap$OnMarkerClickListener;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/amap/api/a/b;->v:Lcom/amap/api/maps/AMap$OnMarkerClickListener;

    return-object v0
.end method

.method static synthetic u(Lcom/amap/api/a/b;)Lcom/amap/api/maps/AMap$OnMapClickListener;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/amap/api/a/b;->z:Lcom/amap/api/maps/AMap$OnMapClickListener;

    return-object v0
.end method

.method static synthetic v(Lcom/amap/api/a/b;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/amap/api/a/b;->h:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic w(Lcom/amap/api/a/b;)Lcom/amap/api/a/f;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/amap/api/a/b;->O:Lcom/amap/api/a/f;

    return-object v0
.end method

.method static synthetic x(Lcom/amap/api/a/b;)Lcom/amap/api/maps/AMap$OnCameraChangeListener;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/amap/api/a/b;->y:Lcom/amap/api/maps/AMap$OnCameraChangeListener;

    return-object v0
.end method

.method private z()Lcom/amap/api/maps/model/LatLng;
    .locals 6

    .prologue
    .line 1124
    new-instance v0, Lcom/autonavi/amap/mapcore/DPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/DPoint;-><init>()V

    .line 1125
    new-instance v1, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v1}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 1126
    iget-object v2, p0, Lcom/amap/api/a/b;->j:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v2, v1}, Lcom/autonavi/amap/mapcore/MapProjection;->getGeoCenter(Lcom/autonavi/amap/mapcore/IPoint;)V

    .line 1127
    iget v2, v1, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v1, v1, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-static {v2, v1, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->geo2LonLat(IILcom/autonavi/amap/mapcore/DPoint;)V

    .line 1128
    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v4, v0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    .line 1129
    return-object v1
.end method


# virtual methods
.method public a(F)F
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1053
    invoke-static {p1}, Lcom/amap/api/a/b/g;->b(F)F

    move-result v0

    return v0
.end method

.method public a(Lcom/amap/api/maps/model/CircleOptions;)Lcom/amap/api/a/o;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 809
    new-instance v0, Lcom/amap/api/a/i;

    invoke-direct {v0, p0}, Lcom/amap/api/a/i;-><init>(Lcom/amap/api/a/n;)V

    .line 810
    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleOptions;->getFillColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/a/i;->b(I)V

    .line 811
    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleOptions;->getCenter()Lcom/amap/api/maps/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/a/i;->a(Lcom/amap/api/maps/model/LatLng;)V

    .line 812
    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleOptions;->isVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/a/i;->a(Z)V

    .line 813
    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleOptions;->getStrokeWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/a/i;->b(F)V

    .line 814
    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleOptions;->getZIndex()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/a/i;->a(F)V

    .line 815
    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleOptions;->getStrokeColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/a/i;->a(I)V

    .line 816
    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleOptions;->getRadius()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/a/i;->a(D)V

    .line 817
    iget-object v1, p0, Lcom/amap/api/a/b;->d:Lcom/amap/api/a/m;

    invoke-virtual {v1, v0}, Lcom/amap/api/a/m;->a(Lcom/amap/api/a/r;)V

    .line 819
    return-object v0
.end method

.method public a(Lcom/amap/api/maps/model/PolygonOptions;)Lcom/amap/api/a/s;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 794
    new-instance v0, Lcom/amap/api/a/ag;

    invoke-direct {v0, p0}, Lcom/amap/api/a/ag;-><init>(Lcom/amap/api/a/n;)V

    .line 795
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolygonOptions;->getFillColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/a/ag;->a(I)V

    .line 796
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolygonOptions;->getPoints()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/a/ag;->a(Ljava/util/List;)V

    .line 797
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolygonOptions;->isVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/a/ag;->a(Z)V

    .line 798
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolygonOptions;->getStrokeWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/a/ag;->b(F)V

    .line 799
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolygonOptions;->getZIndex()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/a/ag;->a(F)V

    .line 800
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolygonOptions;->getStrokeColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/a/ag;->b(I)V

    .line 802
    iget-object v1, p0, Lcom/amap/api/a/b;->d:Lcom/amap/api/a/m;

    invoke-virtual {v1, v0}, Lcom/amap/api/a/m;->a(Lcom/amap/api/a/r;)V

    .line 803
    return-object v0
.end method

.method public a(Lcom/amap/api/maps/model/PolylineOptions;)Lcom/amap/api/a/t;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 781
    new-instance v0, Lcom/amap/api/a/ah;

    invoke-direct {v0, p0}, Lcom/amap/api/a/ah;-><init>(Lcom/amap/api/a/n;)V

    .line 782
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/a/ah;->a(I)V

    .line 783
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getPoints()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/a/ah;->a(Ljava/util/List;)V

    .line 784
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->isVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/a/ah;->a(Z)V

    .line 785
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/a/ah;->b(F)V

    .line 786
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getZIndex()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/a/ah;->a(F)V

    .line 787
    iget-object v1, p0, Lcom/amap/api/a/b;->d:Lcom/amap/api/a/m;

    invoke-virtual {v1, v0}, Lcom/amap/api/a/m;->a(Lcom/amap/api/a/r;)V

    .line 788
    return-object v0
.end method

.method public a(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 824
    new-instance v0, Lcom/amap/api/a/ad;

    iget-object v1, p0, Lcom/amap/api/a/b;->p:Lcom/amap/api/a/ab;

    invoke-direct {v0, p1, v1}, Lcom/amap/api/a/ad;-><init>(Lcom/amap/api/maps/model/MarkerOptions;Lcom/amap/api/a/ab;)V

    .line 826
    iget-object v1, p0, Lcom/amap/api/a/b;->p:Lcom/amap/api/a/ab;

    invoke-virtual {v1, v0}, Lcom/amap/api/a/ab;->a(Lcom/amap/api/a/q;)V

    .line 827
    new-instance v1, Lcom/amap/api/maps/model/Marker;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/Marker;-><init>(Lcom/amap/api/a/q;)V

    return-object v1
.end method

.method public a()Lcom/autonavi/amap/mapcore/MapCore;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/amap/api/a/b;->g:Lcom/autonavi/amap/mapcore/MapCore;

    return-object v0
.end method

.method public a(DDLcom/autonavi/amap/mapcore/IPoint;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1090
    invoke-static {p3, p4, p1, p2, p5}, Lcom/autonavi/amap/mapcore/MapProjection;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 1091
    return-void
.end method

.method public a(I)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v2, 0x7db

    .line 881
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 882
    iput v2, p0, Lcom/amap/api/a/b;->f:I

    .line 883
    iget-object v0, p0, Lcom/amap/api/a/b;->a:Lcom/amap/api/a/aa;

    new-instance v1, Lcom/amap/api/a/z;

    invoke-direct {v1, v2}, Lcom/amap/api/a/z;-><init>(I)V

    invoke-virtual {v1, v4}, Lcom/amap/api/a/z;->a(Z)Lcom/amap/api/a/z;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/a/aa;->a(Lcom/amap/api/a/z;)V

    .line 886
    iget-object v0, p0, Lcom/amap/api/a/b;->q:Lcom/amap/api/a/al;

    invoke-virtual {v0, v4}, Lcom/amap/api/a/al;->a(Z)V

    .line 894
    :goto_0
    return-void

    .line 889
    :cond_0
    iget-object v0, p0, Lcom/amap/api/a/b;->a:Lcom/amap/api/a/aa;

    new-instance v1, Lcom/amap/api/a/z;

    invoke-direct {v1, v2}, Lcom/amap/api/a/z;-><init>(I)V

    invoke-virtual {v1, v3}, Lcom/amap/api/a/z;->a(Z)Lcom/amap/api/a/z;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/a/aa;->a(Lcom/amap/api/a/z;)V

    .line 892
    iget-object v0, p0, Lcom/amap/api/a/b;->q:Lcom/amap/api/a/al;

    invoke-virtual {v0, v3}, Lcom/amap/api/a/al;->a(Z)V

    goto :goto_0
.end method

.method public a(IILcom/autonavi/amap/mapcore/DPoint;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1064
    new-instance v0, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/FPoint;-><init>()V

    .line 1066
    iget-object v1, p0, Lcom/amap/api/a/b;->j:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v1, p1, p2, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->win2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    .line 1067
    new-instance v1, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v1}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 1068
    iget-object v2, p0, Lcom/amap/api/a/b;->j:Lcom/autonavi/amap/mapcore/MapProjection;

    iget v3, v0, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget v0, v0, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    invoke-virtual {v2, v3, v0, v1}, Lcom/autonavi/amap/mapcore/MapProjection;->map2Geo(FFLcom/autonavi/amap/mapcore/IPoint;)V

    .line 1069
    iget v0, v1, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v1, v1, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-static {v0, v1, p3}, Lcom/autonavi/amap/mapcore/MapProjection;->geo2LonLat(IILcom/autonavi/amap/mapcore/DPoint;)V

    .line 1070
    return-void
.end method

.method public a(IILcom/autonavi/amap/mapcore/FPoint;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/amap/api/a/b;->j:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v0, p2, p1, p3}, Lcom/autonavi/amap/mapcore/MapProjection;->geo2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    .line 1097
    return-void
.end method

.method public a(IILcom/autonavi/amap/mapcore/IPoint;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1074
    new-instance v0, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/FPoint;-><init>()V

    .line 1075
    iget-object v1, p0, Lcom/amap/api/a/b;->j:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v1, p1, p2, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->win2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    .line 1076
    iget-object v1, p0, Lcom/amap/api/a/b;->j:Lcom/autonavi/amap/mapcore/MapProjection;

    iget v2, v0, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget v0, v0, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    invoke-virtual {v1, v2, v0, p3}, Lcom/autonavi/amap/mapcore/MapProjection;->map2Geo(FFLcom/autonavi/amap/mapcore/IPoint;)V

    .line 1077
    return-void
.end method

.method a(J)V
    .locals 2
    .parameter

    .prologue
    .line 432
    iget-object v0, p0, Lcom/amap/api/a/b;->e:Landroid/os/Handler;

    new-instance v1, Lcom/amap/api/a/b$1;

    invoke-direct {v1, p0}, Lcom/amap/api/a/b$1;-><init>(Lcom/amap/api/a/b;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 440
    return-void
.end method

.method public a(Landroid/location/Location;)V
    .locals 6
    .parameter

    .prologue
    .line 309
    if-nez p1, :cond_0

    .line 343
    :goto_0
    return-void

    .line 312
    :cond_0
    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    .line 315
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/a/b;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/a/b;->H:Lcom/amap/api/maps/LocationSource;

    if-nez v0, :cond_5

    .line 316
    :cond_1
    iget-object v0, p0, Lcom/amap/api/a/b;->N:Lcom/amap/api/a/ae;

    invoke-virtual {v0}, Lcom/amap/api/a/ae;->a()V

    .line 317
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/a/b;->N:Lcom/amap/api/a/ae;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 328
    :catch_0
    move-exception v0

    .line 329
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 331
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/amap/api/a/b;->N:Lcom/amap/api/a/ae;

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/amap/api/a/ae;->a(Lcom/amap/api/maps/model/LatLng;D)V

    .line 333
    iget-object v0, p0, Lcom/amap/api/a/b;->u:Lcom/amap/api/maps/AMap$OnMyLocationChangeListener;

    if-eqz v0, :cond_4

    .line 334
    iget-object v0, p0, Lcom/amap/api/a/b;->U:Landroid/location/Location;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/a/b;->U:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getBearing()F

    move-result v0

    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/a/b;->U:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/a/b;->U:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/a/b;->U:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_4

    .line 339
    :cond_3
    iget-object v0, p0, Lcom/amap/api/a/b;->u:Lcom/amap/api/maps/AMap$OnMyLocationChangeListener;

    invoke-interface {v0, p1}, Lcom/amap/api/maps/AMap$OnMyLocationChangeListener;->onMyLocationChange(Landroid/location/Location;)V

    .line 342
    :cond_4
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Lcom/amap/api/a/b;->U:Landroid/location/Location;

    goto :goto_0

    .line 320
    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/a/b;->N:Lcom/amap/api/a/ae;

    if-nez v0, :cond_2

    .line 321
    new-instance v0, Lcom/amap/api/a/ae;

    invoke-direct {v0, p0}, Lcom/amap/api/a/ae;-><init>(Lcom/amap/api/a/n;)V

    iput-object v0, p0, Lcom/amap/api/a/b;->N:Lcom/amap/api/a/ae;

    .line 323
    if-eqz v1, :cond_2

    .line 324
    iget-object v0, p0, Lcom/amap/api/a/b;->j:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapZoomer()F

    move-result v0

    invoke-static {v1, v0}, Lcom/amap/api/a/h;->a(Lcom/amap/api/maps/model/LatLng;F)Lcom/amap/api/a/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/a/b;->a(Lcom/amap/api/a/h;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public a(Lcom/amap/api/a/h;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 624
    iget-object v0, p1, Lcom/amap/api/a/h;->a:Lcom/amap/api/a/h$a;

    sget-object v1, Lcom/amap/api/a/h$a;->n:Lcom/amap/api/a/h$a;

    if-ne v0, v1, :cond_0

    .line 625
    invoke-virtual {p0}, Lcom/amap/api/a/b;->getWidth()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/amap/api/a/b;->getHeight()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v1, "the map must have a size"

    invoke-static {v0, v1}, Lcom/amap/api/a/b/b;->a(ZLjava/lang/Object;)V

    .line 628
    :cond_0
    iget-object v0, p0, Lcom/amap/api/a/b;->a:Lcom/amap/api/a/aa;

    invoke-virtual {v0, p1}, Lcom/amap/api/a/aa;->a(Lcom/amap/api/a/h;)V

    .line 629
    return-void

    .line 625
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/amap/api/a/h;JLcom/amap/api/maps/AMap$CancelableCallback;)V
    .locals 17
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 651
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/amap/api/a/h;->a:Lcom/amap/api/a/h$a;

    sget-object v3, Lcom/amap/api/a/h$a;->n:Lcom/amap/api/a/h$a;

    if-ne v2, v3, :cond_0

    .line 652
    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/a/b;->getWidth()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/a/b;->getHeight()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    const-string v3, "the map must have a size"

    invoke-static {v2, v3}, Lcom/amap/api/a/b/b;->a(ZLjava/lang/Object;)V

    .line 655
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/a/b;->P:Lcom/amap/api/a/g;

    invoke-virtual {v2}, Lcom/amap/api/a/g;->a()Z

    move-result v2

    if-nez v2, :cond_1

    .line 656
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/a/b;->P:Lcom/amap/api/a/g;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/amap/api/a/g;->a(Z)V

    .line 657
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/a/b;->S:Lcom/amap/api/maps/AMap$CancelableCallback;

    if-eqz v2, :cond_1

    .line 658
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/a/b;->S:Lcom/amap/api/maps/AMap$CancelableCallback;

    invoke-interface {v2}, Lcom/amap/api/maps/AMap$CancelableCallback;->onCancel()V

    .line 660
    :cond_1
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/amap/api/a/b;->S:Lcom/amap/api/maps/AMap$CancelableCallback;

    .line 662
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/amap/api/a/h;->a:Lcom/amap/api/a/h$a;

    sget-object v3, Lcom/amap/api/a/h$a;->l:Lcom/amap/api/a/h$a;

    if-ne v2, v3, :cond_4

    .line 663
    move-object/from16 v0, p1

    iget v2, v0, Lcom/amap/api/a/h;->b:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    move-object/from16 v0, p1

    iget v2, v0, Lcom/amap/api/a/h;->c:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    .line 665
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/amap/api/a/b;->S:Lcom/amap/api/maps/AMap$CancelableCallback;

    .line 765
    :goto_1
    return-void

    .line 652
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 668
    :cond_3
    new-instance v9, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v9}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 669
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/a/b;->j:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v2, v9}, Lcom/autonavi/amap/mapcore/MapProjection;->getGeoCenter(Lcom/autonavi/amap/mapcore/IPoint;)V

    .line 670
    new-instance v10, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v10}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 671
    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/a/b;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p1

    iget v3, v0, Lcom/amap/api/a/h;->b:F

    float-to-int v3, v3

    add-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/a/b;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    move-object/from16 v0, p1

    iget v4, v0, Lcom/amap/api/a/h;->c:F

    float-to-int v4, v4

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v10}, Lcom/amap/api/a/b;->a(IILcom/autonavi/amap/mapcore/IPoint;)V

    .line 674
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/a/b;->P:Lcom/amap/api/a/g;

    iget v3, v9, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v4, v9, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/amap/api/a/b;->j:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v5}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapZoomer()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/amap/api/a/b;->j:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v6}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapAngle()F

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/amap/api/a/b;->j:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v7}, Lcom/autonavi/amap/mapcore/MapProjection;->getCameraHeaderAngle()F

    move-result v7

    iget v8, v10, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v11, v9, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    sub-int/2addr v8, v11

    iget v10, v10, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget v9, v9, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    sub-int v9, v10, v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-wide/from16 v13, p2

    invoke-virtual/range {v2 .. v14}, Lcom/amap/api/a/g;->a(IIFFFIIFFFJ)V

    goto :goto_1

    .line 678
    :cond_4
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/amap/api/a/h;->a:Lcom/amap/api/a/h$a;

    sget-object v3, Lcom/amap/api/a/h$a;->b:Lcom/amap/api/a/h$a;

    if-ne v2, v3, :cond_6

    .line 679
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/a/b;->j:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapZoomer()F

    move-result v5

    .line 680
    const/high16 v2, 0x3f80

    add-float/2addr v2, v5

    invoke-static {v2}, Lcom/amap/api/a/b/g;->b(F)F

    move-result v2

    sub-float v10, v2, v5

    .line 681
    const/4 v2, 0x0

    cmpl-float v2, v10, v2

    if-nez v2, :cond_5

    .line 682
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/amap/api/a/b;->S:Lcom/amap/api/maps/AMap$CancelableCallback;

    goto/16 :goto_1

    .line 685
    :cond_5
    new-instance v4, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v4}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 686
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/a/b;->j:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v2, v4}, Lcom/autonavi/amap/mapcore/MapProjection;->getGeoCenter(Lcom/autonavi/amap/mapcore/IPoint;)V

    .line 687
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/a/b;->P:Lcom/amap/api/a/g;

    iget v3, v4, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v4, v4, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/amap/api/a/b;->j:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v6}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapAngle()F

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/amap/api/a/b;->j:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v7}, Lcom/autonavi/amap/mapcore/MapProjection;->getCameraHeaderAngle()F

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-wide/from16 v13, p2

    invoke-virtual/range {v2 .. v14}, Lcom/amap/api/a/g;->a(IIFFFIIFFFJ)V

    goto/16 :goto_1

    .line 690
    :cond_6
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/amap/api/a/h;->a:Lcom/amap/api/a/h$a;

    sget-object v3, Lcom/amap/api/a/h$a;->i:Lcom/amap/api/a/h$a;

    if-ne v2, v3, :cond_8

    .line 691
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/a/b;->j:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapZoomer()F

    move-result v5

    .line 692
    const/high16 v2, 0x3f80

    sub-float v2, v5, v2

    invoke-static {v2}, Lcom/amap/api/a/b/g;->b(F)F

    move-result v2

    sub-float v10, v2, v5

    .line 693
    const/4 v2, 0x0

    cmpl-float v2, v10, v2

    if-nez v2, :cond_7

    .line 694
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/amap/api/a/b;->S:Lcom/amap/api/maps/AMap$CancelableCallback;

    goto/16 :goto_1

    .line 697
    :cond_7
    new-instance v4, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v4}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 698
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/a/b;->j:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v2, v4}, Lcom/autonavi/amap/mapcore/MapProjection;->getGeoCenter(Lcom/autonavi/amap/mapcore/IPoint;)V

    .line 699
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/a/b;->P:Lcom/amap/api/a/g;

    iget v3, v4, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v4, v4, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/amap/api/a/b;->j:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v6}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapAngle()F

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/amap/api/a/b;->j:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v7}, Lcom/autonavi/amap/mapcore/MapProjection;->getCameraHeaderAngle()F

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-wide/from16 v13, p2

    invoke-virtual/range {v2 .. v14}, Lcom/amap/api/a/g;->a(IIFFFIIFFFJ)V

    goto/16 :goto_1

    .line 702
    :cond_8
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/amap/api/a/h;->a:Lcom/amap/api/a/h$a;

    sget-object v3, Lcom/amap/api/a/h$a;->j:Lcom/amap/api/a/h$a;

    if-ne v2, v3, :cond_a

    .line 703
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/a/b;->j:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapZoomer()F

    move-result v5

    .line 704
    move-object/from16 v0, p1

    iget v2, v0, Lcom/amap/api/a/h;->d:F

    invoke-static {v2}, Lcom/amap/api/a/b/g;->b(F)F

    move-result v2

    sub-float v10, v2, v5

    .line 706
    const/4 v2, 0x0

    cmpl-float v2, v10, v2

    if-nez v2, :cond_9

    .line 707
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/amap/api/a/b;->S:Lcom/amap/api/maps/AMap$CancelableCallback;

    goto/16 :goto_1

    .line 710
    :cond_9
    new-instance v4, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v4}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 711
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/a/b;->j:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v2, v4}, Lcom/autonavi/amap/mapcore/MapProjection;->getGeoCenter(Lcom/autonavi/amap/mapcore/IPoint;)V

    .line 712
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/a/b;->P:Lcom/amap/api/a/g;

    iget v3, v4, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v4, v4, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/amap/api/a/b;->j:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v6}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapAngle()F

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/amap/api/a/b;->j:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v7}, Lcom/autonavi/amap/mapcore/MapProjection;->getCameraHeaderAngle()F

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-wide/from16 v13, p2

    invoke-virtual/range {v2 .. v14}, Lcom/amap/api/a/g;->a(IIFFFIIFFFJ)V

    goto/16 :goto_1

    .line 715
    :cond_a
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/amap/api/a/h;->a:Lcom/amap/api/a/h$a;

    sget-object v3, Lcom/amap/api/a/h$a;->k:Lcom/amap/api/a/h$a;

    if-ne v2, v3, :cond_d

    .line 716
    move-object/from16 v0, p1

    iget v2, v0, Lcom/amap/api/a/h;->e:F

    .line 717
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amap/api/a/b;->j:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v3}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapZoomer()F

    move-result v5

    .line 718
    add-float v3, v5, v2

    invoke-static {v3}, Lcom/amap/api/a/b/g;->b(F)F

    move-result v3

    sub-float v10, v3, v5

    .line 719
    const/4 v3, 0x0

    cmpl-float v3, v10, v3

    if-nez v3, :cond_b

    .line 720
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/amap/api/a/b;->S:Lcom/amap/api/maps/AMap$CancelableCallback;

    goto/16 :goto_1

    .line 723
    :cond_b
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/amap/api/a/h;->m:Landroid/graphics/Point;

    .line 724
    new-instance v4, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v4}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 725
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/amap/api/a/b;->j:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v6, v4}, Lcom/autonavi/amap/mapcore/MapProjection;->getGeoCenter(Lcom/autonavi/amap/mapcore/IPoint;)V

    .line 726
    const/4 v8, 0x0

    .line 727
    const/4 v9, 0x0

    .line 728
    if-eqz v3, :cond_c

    .line 729
    new-instance v6, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v6}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 730
    iget v7, v3, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v3, v6}, Lcom/amap/api/a/b;->a(IILcom/autonavi/amap/mapcore/IPoint;)V

    .line 731
    iget v3, v6, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    int-to-double v7, v3

    iget v3, v4, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v9, v6, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    sub-int/2addr v3, v9

    int-to-double v11, v3

    const-wide/high16 v13, 0x4000

    float-to-double v15, v2

    invoke-static/range {v13 .. v16}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v13

    div-double/2addr v11, v13

    add-double/2addr v7, v11

    double-to-int v8, v7

    .line 733
    iget v3, v6, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    int-to-double v11, v3

    iget v3, v4, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget v6, v6, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    sub-int/2addr v3, v6

    int-to-double v6, v3

    const-wide/high16 v13, 0x4000

    float-to-double v2, v2

    invoke-static {v13, v14, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    div-double v2, v6, v2

    add-double/2addr v2, v11

    double-to-int v9, v2

    .line 736
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/a/b;->P:Lcom/amap/api/a/g;

    iget v3, v4, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v4, v4, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/amap/api/a/b;->j:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v6}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapAngle()F

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/amap/api/a/b;->j:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v7}, Lcom/autonavi/amap/mapcore/MapProjection;->getCameraHeaderAngle()F

    move-result v7

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-wide/from16 v13, p2

    invoke-virtual/range {v2 .. v14}, Lcom/amap/api/a/g;->a(IIFFFIIFFFJ)V

    goto/16 :goto_1

    .line 739
    :cond_d
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/amap/api/a/h;->a:Lcom/amap/api/a/h$a;

    sget-object v3, Lcom/amap/api/a/h$a;->m:Lcom/amap/api/a/h$a;

    if-ne v2, v3, :cond_f

    .line 740
    new-instance v4, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v4}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 741
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/a/b;->j:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v2, v4}, Lcom/autonavi/amap/mapcore/MapProjection;->getGeoCenter(Lcom/autonavi/amap/mapcore/IPoint;)V

    .line 742
    new-instance v2, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v2}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 743
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/amap/api/a/h;->h:Lcom/amap/api/maps/model/CameraPosition;

    .line 744
    iget-object v5, v3, Lcom/amap/api/maps/model/CameraPosition;->target:Lcom/amap/api/maps/model/LatLng;

    iget-wide v5, v5, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-object v7, v3, Lcom/amap/api/maps/model/CameraPosition;->target:Lcom/amap/api/maps/model/LatLng;

    iget-wide v7, v7, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v5, v6, v7, v8, v2}, Lcom/autonavi/amap/mapcore/MapProjection;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 746
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/amap/api/a/b;->j:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v5}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapZoomer()F

    move-result v5

    .line 747
    iget v6, v2, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v7, v4, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    sub-int v8, v6, v7

    .line 748
    iget v2, v2, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget v6, v4, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    sub-int v9, v2, v6

    .line 749
    iget v2, v3, Lcom/amap/api/maps/model/CameraPosition;->zoom:F

    invoke-static {v2}, Lcom/amap/api/a/b/g;->b(F)F

    move-result v2

    sub-float v10, v2, v5

    .line 750
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/a/b;->j:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapAngle()F

    move-result v6

    .line 751
    iget v2, v3, Lcom/amap/api/maps/model/CameraPosition;->bearing:F

    sub-float v11, v2, v6

    .line 752
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/a/b;->j:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapProjection;->getCameraHeaderAngle()F

    move-result v7

    .line 753
    iget v2, v3, Lcom/amap/api/maps/model/CameraPosition;->tilt:F

    invoke-static {v2}, Lcom/amap/api/a/b/g;->a(F)F

    move-result v2

    sub-float v12, v2, v7

    .line 754
    if-nez v8, :cond_e

    if-nez v9, :cond_e

    const/4 v2, 0x0

    cmpl-float v2, v10, v2

    if-nez v2, :cond_e

    const/4 v2, 0x0

    cmpl-float v2, v11, v2

    if-nez v2, :cond_e

    const/4 v2, 0x0

    cmpl-float v2, v12, v2

    if-nez v2, :cond_e

    .line 756
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/amap/api/a/b;->S:Lcom/amap/api/maps/AMap$CancelableCallback;

    goto/16 :goto_1

    .line 759
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/a/b;->P:Lcom/amap/api/a/g;

    iget v3, v4, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v4, v4, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    move-wide/from16 v13, p2

    invoke-virtual/range {v2 .. v14}, Lcom/amap/api/a/g;->a(IIFFFIIFFFJ)V

    goto/16 :goto_1

    .line 762
    :cond_f
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/amap/api/a/b;->S:Lcom/amap/api/maps/AMap$CancelableCallback;

    .line 763
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/a/b;->a:Lcom/amap/api/a/aa;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/amap/api/a/aa;->a(Lcom/amap/api/a/h;)V

    goto/16 :goto_1
.end method

.method public a(Lcom/amap/api/a/h;Lcom/amap/api/maps/AMap$CancelableCallback;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 642
    const-wide/16 v0, 0xfa

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/amap/api/a/b;->a(Lcom/amap/api/a/h;JLcom/amap/api/maps/AMap$CancelableCallback;)V

    .line 644
    return-void
.end method

.method public a(Lcom/amap/api/a/q;)V
    .locals 8
    .parameter

    .prologue
    const/4 v1, -0x2

    const/high16 v5, -0x100

    .line 1482
    if-nez p1, :cond_1

    .line 1556
    :cond_0
    :goto_0
    return-void

    .line 1485
    :cond_1
    invoke-interface {p1}, Lcom/amap/api/a/q;->f()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Lcom/amap/api/a/q;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1489
    :cond_2
    iget-object v0, p0, Lcom/amap/api/a/b;->C:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

    if-eqz v0, :cond_0

    .line 1490
    invoke-virtual {p0}, Lcom/amap/api/a/b;->w()V

    .line 1491
    new-instance v7, Lcom/amap/api/maps/model/Marker;

    invoke-direct {v7, p1}, Lcom/amap/api/maps/model/Marker;-><init>(Lcom/amap/api/a/q;)V

    .line 1492
    iget-object v0, p0, Lcom/amap/api/a/b;->C:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

    invoke-interface {v0, v7}, Lcom/amap/api/maps/AMap$InfoWindowAdapter;->getInfoWindow(Lcom/amap/api/maps/model/Marker;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/a/b;->D:Landroid/view/View;

    .line 1494
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/a/b;->T:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    .line 1495
    iget-object v0, p0, Lcom/amap/api/a/b;->h:Landroid/content/Context;

    const-string v2, "infowindow_bg.9.png"

    invoke-static {v0, v2}, Lcom/amap/api/a/af;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/a/b;->T:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1503
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/amap/api/a/b;->D:Landroid/view/View;

    if-nez v0, :cond_4

    .line 1504
    iget-object v0, p0, Lcom/amap/api/a/b;->C:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

    invoke-interface {v0, v7}, Lcom/amap/api/maps/AMap$InfoWindowAdapter;->getInfoContents(Lcom/amap/api/maps/model/Marker;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/a/b;->D:Landroid/view/View;

    .line 1506
    :cond_4
    iget-object v0, p0, Lcom/amap/api/a/b;->D:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 1507
    iget-object v0, p0, Lcom/amap/api/a/b;->D:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_5

    .line 1515
    iget-object v0, p0, Lcom/amap/api/a/b;->D:Landroid/view/View;

    iget-object v2, p0, Lcom/amap/api/a/b;->T:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1546
    :cond_5
    :goto_2
    invoke-interface {p1}, Lcom/amap/api/a/q;->e()Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v2

    .line 1547
    new-instance v0, Lcom/amap/api/a/ac$a;

    invoke-interface {p1}, Lcom/amap/api/a/q;->c()Lcom/amap/api/maps/model/LatLng;

    move-result-object v3

    iget v4, v2, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    float-to-int v4, v4

    neg-int v4, v4

    invoke-interface {p1}, Lcom/amap/api/a/q;->h()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amap/api/maps/model/BitmapDescriptor;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget v2, v2, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    float-to-int v2, v2

    neg-int v2, v2

    add-int/lit8 v5, v2, 0x2

    const/16 v6, 0x51

    move v2, v1

    invoke-direct/range {v0 .. v6}, Lcom/amap/api/a/ac$a;-><init>(IILcom/amap/api/maps/model/LatLng;III)V

    .line 1553
    iput-object v7, p0, Lcom/amap/api/a/b;->E:Lcom/amap/api/maps/model/Marker;

    .line 1554
    iget-object v1, p0, Lcom/amap/api/a/b;->o:Lcom/amap/api/a/ac;

    iget-object v2, p0, Lcom/amap/api/a/b;->D:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Lcom/amap/api/a/ac;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1499
    :catch_0
    move-exception v0

    .line 1500
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1519
    :cond_6
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/amap/api/a/b;->h:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1521
    iget-object v2, p0, Lcom/amap/api/a/b;->T:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1522
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/amap/api/a/b;->h:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1523
    invoke-interface {p1}, Lcom/amap/api/a/q;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1524
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1525
    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/amap/api/a/b;->h:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1526
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1527
    invoke-interface {p1}, Lcom/amap/api/a/q;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1528
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1529
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1530
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1532
    iput-object v0, p0, Lcom/amap/api/a/b;->D:Landroid/view/View;

    goto :goto_2
.end method

.method public a(Lcom/amap/api/maps/AMap$InfoWindowAdapter;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1043
    iput-object p1, p0, Lcom/amap/api/a/b;->C:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

    .line 1044
    return-void
.end method

.method public a(Lcom/amap/api/maps/AMap$OnCameraChangeListener;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 987
    iput-object p1, p0, Lcom/amap/api/a/b;->y:Lcom/amap/api/maps/AMap$OnCameraChangeListener;

    .line 988
    return-void
.end method

.method public a(Lcom/amap/api/maps/AMap$OnInfoWindowClickListener;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1037
    iput-object p1, p0, Lcom/amap/api/a/b;->B:Lcom/amap/api/maps/AMap$OnInfoWindowClickListener;

    .line 1038
    return-void
.end method

.method public a(Lcom/amap/api/maps/AMap$OnMapClickListener;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1007
    iput-object p1, p0, Lcom/amap/api/a/b;->z:Lcom/amap/api/maps/AMap$OnMapClickListener;

    .line 1008
    return-void
.end method

.method public a(Lcom/amap/api/maps/AMap$OnMapLoadedListener;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1031
    iput-object p1, p0, Lcom/amap/api/a/b;->x:Lcom/amap/api/maps/AMap$OnMapLoadedListener;

    .line 1032
    return-void
.end method

.method public a(Lcom/amap/api/maps/AMap$OnMapLongClickListener;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1013
    iput-object p1, p0, Lcom/amap/api/a/b;->A:Lcom/amap/api/maps/AMap$OnMapLongClickListener;

    .line 1014
    return-void
.end method

.method public a(Lcom/amap/api/maps/AMap$OnMarkerClickListener;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1019
    iput-object p1, p0, Lcom/amap/api/a/b;->v:Lcom/amap/api/maps/AMap$OnMarkerClickListener;

    .line 1020
    return-void
.end method

.method public a(Lcom/amap/api/maps/AMap$OnMarkerDragListener;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1025
    iput-object p1, p0, Lcom/amap/api/a/b;->w:Lcom/amap/api/maps/AMap$OnMarkerDragListener;

    .line 1026
    return-void
.end method

.method public a(Lcom/amap/api/maps/AMap$OnMyLocationChangeListener;)V
    .locals 0
    .parameter

    .prologue
    .line 299
    iput-object p1, p0, Lcom/amap/api/a/b;->u:Lcom/amap/api/maps/AMap$OnMyLocationChangeListener;

    .line 300
    return-void
.end method

.method public a(Lcom/amap/api/maps/LocationSource;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 966
    iput-object p1, p0, Lcom/amap/api/a/b;->H:Lcom/amap/api/maps/LocationSource;

    .line 967
    if-eqz p1, :cond_0

    .line 968
    iget-object v0, p0, Lcom/amap/api/a/b;->r:Lcom/amap/api/a/x;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/a/x;->a(Z)V

    .line 972
    :goto_0
    return-void

    .line 970
    :cond_0
    iget-object v0, p0, Lcom/amap/api/a/b;->r:Lcom/amap/api/a/x;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/a/x;->a(Z)V

    goto :goto_0
.end method

.method a(Lcom/amap/api/maps/model/CameraPosition;)V
    .locals 2
    .parameter

    .prologue
    .line 992
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 993
    const/16 v1, 0xa

    iput v1, v0, Landroid/os/Message;->what:I

    .line 994
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 995
    iget-object v1, p0, Lcom/amap/api/a/b;->e:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 996
    return-void
.end method

.method a(Lcom/amap/api/maps/model/LatLngBounds;III)V
    .locals 13
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1645
    new-instance v0, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 1646
    iget-object v1, p1, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    iget-wide v1, v1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-object v3, p1, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    iget-wide v3, v3, Lcom/amap/api/maps/model/LatLng;->longitude:D

    add-double/2addr v1, v3

    const-wide/high16 v3, 0x4000

    div-double/2addr v1, v3

    iget-object v3, p1, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    iget-wide v3, v3, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-object v5, p1, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    iget-wide v5, v5, Lcom/amap/api/maps/model/LatLng;->latitude:D

    add-double/2addr v3, v5

    const-wide/high16 v5, 0x4000

    div-double/2addr v3, v5

    invoke-static {v1, v2, v3, v4, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 1650
    iget-object v1, p0, Lcom/amap/api/a/b;->j:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapZoomer()F

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/amap/api/a/h;->a(Lcom/autonavi/amap/mapcore/IPoint;FFF)Lcom/amap/api/a/h;

    move-result-object v0

    .line 1652
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/amap/api/a/h;->o:Z

    .line 1653
    iget-object v1, p0, Lcom/amap/api/a/b;->a:Lcom/amap/api/a/aa;

    invoke-virtual {v1, v0}, Lcom/amap/api/a/aa;->a(Lcom/amap/api/a/h;)V

    .line 1655
    const-wide/16 v0, 0x29

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1659
    :goto_0
    iget-object v0, p0, Lcom/amap/api/a/b;->j:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapZoomer()F

    move-result v12

    .line 1660
    new-instance v5, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v5}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 1661
    new-instance v11, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v11}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 1662
    iget-object v0, p1, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    iget-wide v1, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-object v0, p1, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    iget-wide v3, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/a/b;->b(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 1664
    iget-object v0, p1, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    iget-wide v7, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-object v0, p1, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    iget-wide v9, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/amap/api/a/b;->b(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 1667
    iget v0, v5, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v1, v11, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    sub-int/2addr v0, v1

    .line 1668
    iget v1, v11, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget v2, v5, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    sub-int/2addr v1, v2

    .line 1670
    int-to-float v0, v0

    mul-int/lit8 v2, p4, 0x2

    sub-int v2, p2, v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 1671
    int-to-float v1, v1

    mul-int/lit8 v2, p4, 0x2

    sub-int v2, p3, v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 1673
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 1675
    const/high16 v1, 0x3f80

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 1676
    invoke-static {v0}, Lcom/amap/api/a/b/g;->c(F)I

    move-result v0

    int-to-float v0, v0

    sub-float v0, v12, v0

    .line 1677
    invoke-static {v0}, Lcom/amap/api/a/b/g;->b(F)F

    move-result v0

    .line 1683
    :goto_1
    invoke-static {v0}, Lcom/amap/api/a/h;->a(F)Lcom/amap/api/a/h;

    move-result-object v0

    .line 1685
    iget-object v1, p0, Lcom/amap/api/a/b;->a:Lcom/amap/api/a/aa;

    invoke-virtual {v1, v0}, Lcom/amap/api/a/aa;->a(Lcom/amap/api/a/h;)V

    .line 1686
    return-void

    .line 1656
    :catch_0
    move-exception v0

    .line 1657
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 1678
    :cond_0
    float-to-double v1, v0

    const-wide/high16 v3, 0x3fe0

    cmpg-double v1, v1, v3

    if-gez v1, :cond_1

    .line 1679
    const/high16 v1, 0x3f80

    div-float v0, v1, v0

    invoke-static {v0}, Lcom/amap/api/a/b/g;->c(F)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v12

    const/high16 v1, 0x3f80

    sub-float/2addr v0, v1

    .line 1681
    invoke-static {v0}, Lcom/amap/api/a/b/g;->b(F)F

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v12

    goto :goto_1
.end method

.method public a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 347
    if-eqz p1, :cond_0

    .line 348
    iget-object v0, p0, Lcom/amap/api/a/b;->b:Lcom/amap/api/a/am;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/a/am;->setVisibility(I)V

    .line 352
    :goto_0
    return-void

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/amap/api/a/b;->b:Lcom/amap/api/a/am;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/amap/api/a/am;->setVisibility(I)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 483
    iget-object v0, p0, Lcom/amap/api/a/b;->d:Lcom/amap/api/a/m;

    invoke-virtual {v0, p1}, Lcom/amap/api/a/m;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public b()Lcom/autonavi/amap/mapcore/MapProjection;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/amap/api/a/b;->j:Lcom/autonavi/amap/mapcore/MapProjection;

    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/amap/api/a/b;->g:Lcom/autonavi/amap/mapcore/MapCore;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapCore;->getMapstate()Lcom/autonavi/amap/mapcore/MapProjection;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/a/b;->j:Lcom/autonavi/amap/mapcore/MapProjection;

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/amap/api/a/b;->j:Lcom/autonavi/amap/mapcore/MapProjection;

    return-object v0
.end method

.method public b(DDLcom/autonavi/amap/mapcore/IPoint;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1107
    new-instance v0, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 1108
    new-instance v1, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {v1}, Lcom/autonavi/amap/mapcore/FPoint;-><init>()V

    .line 1110
    invoke-static {p3, p4, p1, p2, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 1111
    iget-object v2, p0, Lcom/amap/api/a/b;->j:Lcom/autonavi/amap/mapcore/MapProjection;

    iget v3, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v0, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-virtual {v2, v3, v0, v1}, Lcom/autonavi/amap/mapcore/MapProjection;->geo2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    .line 1112
    iget-object v0, p0, Lcom/amap/api/a/b;->j:Lcom/autonavi/amap/mapcore/MapProjection;

    iget v2, v1, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget v1, v1, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    invoke-virtual {v0, v2, v1, p5}, Lcom/autonavi/amap/mapcore/MapProjection;->map2Win(FFLcom/autonavi/amap/mapcore/IPoint;)V

    .line 1113
    invoke-virtual {p0}, Lcom/amap/api/a/b;->getHeight()I

    move-result v0

    iget v1, p5, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    sub-int/2addr v0, v1

    iput v0, p5, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    .line 1115
    return-void
.end method

.method public b(IILcom/autonavi/amap/mapcore/DPoint;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1102
    invoke-static {p1, p2, p3}, Lcom/autonavi/amap/mapcore/MapProjection;->geo2LonLat(IILcom/autonavi/amap/mapcore/DPoint;)V

    .line 1103
    return-void
.end method

.method public b(Lcom/amap/api/a/h;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 635
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/amap/api/a/b;->a(Lcom/amap/api/a/h;Lcom/amap/api/maps/AMap$CancelableCallback;)V

    .line 636
    return-void
.end method

.method public b(Z)V
    .locals 2
    .parameter

    .prologue
    .line 405
    if-eqz p1, :cond_0

    .line 406
    iget-object v0, p0, Lcom/amap/api/a/b;->r:Lcom/amap/api/a/x;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/a/x;->setVisibility(I)V

    .line 411
    :goto_0
    return-void

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/amap/api/a/b;->r:Lcom/amap/api/a/x;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/amap/api/a/x;->setVisibility(I)V

    goto :goto_0
.end method

.method public b(Lcom/amap/api/a/q;)Z
    .locals 2
    .parameter

    .prologue
    .line 1566
    iget-object v0, p0, Lcom/amap/api/a/b;->E:Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/a/b;->D:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1567
    iget-object v0, p0, Lcom/amap/api/a/b;->E:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/amap/api/a/q;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1569
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 858
    const/4 v1, 0x0

    .line 860
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/a/b;->p:Lcom/amap/api/a/ab;

    invoke-virtual {v0, p1}, Lcom/amap/api/a/ab;->a(Ljava/lang/String;)Lcom/amap/api/a/q;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 864
    :goto_0
    if-eqz v0, :cond_0

    .line 865
    iget-object v1, p0, Lcom/amap/api/a/b;->p:Lcom/amap/api/a/ab;

    invoke-virtual {v1, v0}, Lcom/amap/api/a/ab;->b(Lcom/amap/api/a/q;)Z

    move-result v0

    .line 867
    :goto_1
    return v0

    .line 861
    :catch_0
    move-exception v0

    .line 862
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    .line 867
    :cond_0
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public c()V
    .locals 2

    .prologue
    .line 359
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/a/b;->b:Lcom/amap/api/a/am;

    invoke-virtual {v0}, Lcom/amap/api/a/am;->a()V

    .line 360
    iget-object v0, p0, Lcom/amap/api/a/b;->t:Lcom/amap/api/a/aj;

    invoke-virtual {v0}, Lcom/amap/api/a/aj;->a()V

    .line 361
    iget-object v0, p0, Lcom/amap/api/a/b;->q:Lcom/amap/api/a/al;

    invoke-virtual {v0}, Lcom/amap/api/a/al;->a()V

    .line 362
    iget-object v0, p0, Lcom/amap/api/a/b;->r:Lcom/amap/api/a/x;

    invoke-virtual {v0}, Lcom/amap/api/a/x;->a()V

    .line 363
    iget-object v0, p0, Lcom/amap/api/a/b;->s:Lcom/amap/api/a/j;

    invoke-virtual {v0}, Lcom/amap/api/a/j;->a()V

    .line 364
    iget-object v0, p0, Lcom/amap/api/a/b;->d:Lcom/amap/api/a/m;

    invoke-virtual {v0}, Lcom/amap/api/a/m;->b()V

    .line 365
    iget-object v0, p0, Lcom/amap/api/a/b;->p:Lcom/amap/api/a/ab;

    invoke-virtual {v0}, Lcom/amap/api/a/ab;->d()V

    .line 366
    sget-object v0, Lcom/amap/api/a/f;->d:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 367
    sget-object v0, Lcom/amap/api/a/f;->d:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/amap/api/a/b;->ad:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 370
    iget-object v0, p0, Lcom/amap/api/a/b;->ad:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 372
    :cond_1
    iget-object v0, p0, Lcom/amap/api/a/b;->i:Lcom/amap/api/a/a;

    if-eqz v0, :cond_2

    .line 373
    iget-object v0, p0, Lcom/amap/api/a/b;->i:Lcom/amap/api/a/a;

    iget-object v1, p0, Lcom/amap/api/a/b;->g:Lcom/autonavi/amap/mapcore/MapCore;

    invoke-virtual {v0, v1}, Lcom/amap/api/a/a;->OnMapDestory(Lcom/autonavi/amap/mapcore/MapCore;)V

    .line 375
    :cond_2
    iget-object v0, p0, Lcom/amap/api/a/b;->T:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 376
    iget-object v0, p0, Lcom/amap/api/a/b;->T:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 379
    :cond_3
    iget-object v0, p0, Lcom/amap/api/a/b;->o:Lcom/amap/api/a/ac;

    invoke-virtual {v0}, Lcom/amap/api/a/ac;->removeAllViews()V

    .line 380
    invoke-virtual {p0}, Lcom/amap/api/a/b;->w()V

    .line 382
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/a/b;->o:Lcom/amap/api/a/ac;

    .line 383
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/a/b;->b:Lcom/amap/api/a/am;

    .line 384
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/a/b;->t:Lcom/amap/api/a/aj;

    .line 385
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/a/b;->i:Lcom/amap/api/a/a;

    .line 387
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/a/b;->g:Lcom/autonavi/amap/mapcore/MapCore;

    .line 388
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/a/b;->a:Lcom/amap/api/a/aa;

    .line 390
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/a/b;->a:Lcom/amap/api/a/aa;

    .line 391
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/a/b;->e:Landroid/os/Handler;

    .line 392
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/a/b;->U:Landroid/location/Location;

    .line 393
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/a/b;->ad:Ljava/lang/Thread;

    .line 395
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/a/b;->d:Lcom/amap/api/a/m;

    .line 396
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/a/b;->p:Lcom/amap/api/a/ab;

    .line 397
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/a/b;->T:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    :goto_0
    return-void

    .line 398
    :catch_0
    move-exception v0

    .line 399
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public c(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 415
    if-eqz p1, :cond_2

    .line 416
    iget-object v0, p0, Lcom/amap/api/a/b;->j:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapAngle()F

    move-result v0

    .line 417
    iget-object v1, p0, Lcom/amap/api/a/b;->j:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapProjection;->getCameraHeaderAngle()F

    move-result v1

    .line 418
    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    cmpl-float v0, v1, v2

    if-eqz v0, :cond_1

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/amap/api/a/b;->s:Lcom/amap/api/a/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/a/j;->setVisibility(I)V

    .line 420
    iget-object v0, p0, Lcom/amap/api/a/b;->s:Lcom/amap/api/a/j;

    invoke-virtual {v0}, Lcom/amap/api/a/j;->b()V

    .line 425
    :cond_1
    :goto_0
    return-void

    .line 423
    :cond_2
    iget-object v0, p0, Lcom/amap/api/a/b;->s:Lcom/amap/api/a/j;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/amap/api/a/j;->setVisibility(I)V

    goto :goto_0
.end method

.method d()V
    .locals 2

    .prologue
    .line 428
    iget-object v0, p0, Lcom/amap/api/a/b;->e:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 429
    return-void
.end method

.method public d(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 444
    if-eqz p1, :cond_0

    .line 445
    iget-object v0, p0, Lcom/amap/api/a/b;->t:Lcom/amap/api/a/aj;

    invoke-virtual {v0, v2}, Lcom/amap/api/a/aj;->setVisibility(I)V

    .line 446
    invoke-virtual {p0}, Lcom/amap/api/a/b;->e()V

    .line 452
    :goto_0
    return-void

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/amap/api/a/b;->t:Lcom/amap/api/a/aj;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/amap/api/a/aj;->a(Ljava/lang/String;)V

    .line 449
    iget-object v0, p0, Lcom/amap/api/a/b;->t:Lcom/amap/api/a/aj;

    invoke-virtual {v0, v2}, Lcom/amap/api/a/aj;->a(I)V

    .line 450
    iget-object v0, p0, Lcom/amap/api/a/b;->t:Lcom/amap/api/a/aj;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/amap/api/a/aj;->setVisibility(I)V

    goto :goto_0
.end method

.method e()V
    .locals 2

    .prologue
    .line 455
    iget-object v0, p0, Lcom/amap/api/a/b;->e:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 456
    return-void
.end method

.method public e(Z)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 911
    iput-boolean p1, p0, Lcom/amap/api/a/b;->W:Z

    .line 912
    iget-object v0, p0, Lcom/amap/api/a/b;->a:Lcom/amap/api/a/aa;

    new-instance v1, Lcom/amap/api/a/z;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/amap/api/a/z;-><init>(I)V

    invoke-virtual {v1, p1}, Lcom/amap/api/a/z;->a(Z)Lcom/amap/api/a/z;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/a/aa;->a(Lcom/amap/api/a/z;)V

    .line 914
    return-void
.end method

.method f()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 459
    invoke-virtual {p0}, Lcom/amap/api/a/b;->getWidth()I

    move-result v0

    .line 460
    new-instance v1, Lcom/autonavi/amap/mapcore/DPoint;

    invoke-direct {v1}, Lcom/autonavi/amap/mapcore/DPoint;-><init>()V

    .line 461
    new-instance v2, Lcom/autonavi/amap/mapcore/DPoint;

    invoke-direct {v2}, Lcom/autonavi/amap/mapcore/DPoint;-><init>()V

    .line 462
    invoke-virtual {p0, v3, v3, v1}, Lcom/amap/api/a/b;->a(IILcom/autonavi/amap/mapcore/DPoint;)V

    .line 463
    invoke-virtual {p0, v0, v3, v2}, Lcom/amap/api/a/b;->a(IILcom/autonavi/amap/mapcore/DPoint;)V

    .line 464
    new-instance v3, Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v1, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v6, v1, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v2, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v6, v2, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-static {v3, v1}, Lcom/amap/api/a/b/g;->a(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)D

    move-result-wide v1

    .line 467
    iget-object v3, p0, Lcom/amap/api/a/b;->j:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v3}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapZoomer()F

    move-result v3

    float-to-int v3, v3

    .line 468
    iget-object v4, p0, Lcom/amap/api/a/b;->V:[I

    aget v4, v4, v3

    mul-int/2addr v0, v4

    int-to-double v4, v0

    div-double v0, v4, v1

    double-to-int v0, v0

    .line 469
    iget-object v1, p0, Lcom/amap/api/a/b;->V:[I

    aget v1, v1, v3

    invoke-static {v1}, Lcom/amap/api/a/b/g;->b(I)Ljava/lang/String;

    move-result-object v1

    .line 470
    iget-object v2, p0, Lcom/amap/api/a/b;->t:Lcom/amap/api/a/aj;

    invoke-virtual {v2, v0}, Lcom/amap/api/a/aj;->a(I)V

    .line 471
    iget-object v0, p0, Lcom/amap/api/a/b;->t:Lcom/amap/api/a/aj;

    invoke-virtual {v0, v1}, Lcom/amap/api/a/aj;->a(Ljava/lang/String;)V

    .line 472
    iget-object v0, p0, Lcom/amap/api/a/b;->t:Lcom/amap/api/a/aj;

    invoke-virtual {v0}, Lcom/amap/api/a/aj;->invalidate()V

    .line 473
    return-void
.end method

.method public f(Z)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 935
    iget-object v0, p0, Lcom/amap/api/a/b;->H:Lcom/amap/api/maps/LocationSource;

    if-eqz v0, :cond_1

    .line 936
    if-eqz p1, :cond_0

    .line 937
    iget-object v0, p0, Lcom/amap/api/a/b;->H:Lcom/amap/api/maps/LocationSource;

    iget-object v1, p0, Lcom/amap/api/a/b;->L:Lcom/amap/api/a/e;

    invoke-interface {v0, v1}, Lcom/amap/api/maps/LocationSource;->activate(Lcom/amap/api/maps/LocationSource$OnLocationChangedListener;)V

    .line 938
    iget-object v0, p0, Lcom/amap/api/a/b;->r:Lcom/amap/api/a/x;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/a/x;->a(Z)V

    .line 946
    :goto_0
    if-eqz p1, :cond_2

    .line 947
    iget-object v0, p0, Lcom/amap/api/a/b;->r:Lcom/amap/api/a/x;

    invoke-virtual {v0, v2}, Lcom/amap/api/a/x;->setVisibility(I)V

    .line 951
    :goto_1
    iput-boolean p1, p0, Lcom/amap/api/a/b;->J:Z

    .line 953
    return-void

    .line 940
    :cond_0
    iget-object v0, p0, Lcom/amap/api/a/b;->H:Lcom/amap/api/maps/LocationSource;

    invoke-interface {v0}, Lcom/amap/api/maps/LocationSource;->deactivate()V

    .line 941
    iget-object v0, p0, Lcom/amap/api/a/b;->r:Lcom/amap/api/a/x;

    invoke-virtual {v0, v2}, Lcom/amap/api/a/x;->a(Z)V

    goto :goto_0

    .line 944
    :cond_1
    iget-object v0, p0, Lcom/amap/api/a/b;->r:Lcom/amap/api/a/x;

    invoke-virtual {v0, v2}, Lcom/amap/api/a/x;->a(Z)V

    goto :goto_0

    .line 949
    :cond_2
    iget-object v0, p0, Lcom/amap/api/a/b;->r:Lcom/amap/api/a/x;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/amap/api/a/x;->setVisibility(I)V

    goto :goto_1
.end method

.method public g()I
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lcom/amap/api/a/b;->I:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lcom/amap/api/a/b;->I:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method public i()V
    .locals 2

    .prologue
    .line 590
    iget-object v0, p0, Lcom/amap/api/a/b;->D:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/a/b;->E:Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_1

    .line 591
    iget-object v0, p0, Lcom/amap/api/a/b;->D:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/amap/api/a/ac$a;

    .line 593
    if-eqz v0, :cond_0

    .line 594
    iget-object v1, p0, Lcom/amap/api/a/b;->E:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v1}, Lcom/amap/api/maps/model/Marker;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v1

    iput-object v1, v0, Lcom/amap/api/a/ac$a;->b:Lcom/amap/api/maps/model/LatLng;

    .line 596
    :cond_0
    iget-object v0, p0, Lcom/amap/api/a/b;->o:Lcom/amap/api/a/ac;

    invoke-virtual {v0}, Lcom/amap/api/a/ac;->a()V

    .line 598
    :cond_1
    return-void
.end method

.method public j()Lcom/amap/api/maps/model/CameraPosition;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 607
    invoke-direct {p0}, Lcom/amap/api/a/b;->A()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v0

    return-object v0
.end method

.method public k()F
    .locals 1

    .prologue
    .line 612
    const/high16 v0, 0x41a0

    return v0
.end method

.method public l()F
    .locals 1

    .prologue
    .line 617
    const/high16 v0, 0x4080

    return v0
.end method

.method public m()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 769
    iget-object v0, p0, Lcom/amap/api/a/b;->P:Lcom/amap/api/a/g;

    invoke-virtual {v0}, Lcom/amap/api/a/g;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 770
    iget-object v0, p0, Lcom/amap/api/a/b;->P:Lcom/amap/api/a/g;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/a/g;->a(Z)V

    .line 771
    iget-object v0, p0, Lcom/amap/api/a/b;->S:Lcom/amap/api/maps/AMap$CancelableCallback;

    if-eqz v0, :cond_0

    .line 772
    iget-object v0, p0, Lcom/amap/api/a/b;->S:Lcom/amap/api/maps/AMap$CancelableCallback;

    invoke-interface {v0}, Lcom/amap/api/maps/AMap$CancelableCallback;->onCancel()V

    .line 773
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/a/b;->S:Lcom/amap/api/maps/AMap$CancelableCallback;

    .line 775
    :cond_1
    return-void
.end method

.method public n()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 848
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/a/b;->w()V

    .line 849
    iget-object v0, p0, Lcom/amap/api/a/b;->d:Lcom/amap/api/a/m;

    invoke-virtual {v0}, Lcom/amap/api/a/m;->a()V

    .line 850
    iget-object v0, p0, Lcom/amap/api/a/b;->p:Lcom/amap/api/a/ab;

    invoke-virtual {v0}, Lcom/amap/api/a/ab;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 854
    :goto_0
    return-void

    .line 851
    :catch_0
    move-exception v0

    .line 852
    const-string v1, "amapApi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AMapDelegateImpGLSurfaceView clear erro"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public o()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 872
    iget v0, p0, Lcom/amap/api/a/b;->f:I

    return v0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2
    .parameter

    .prologue
    .line 504
    iget-object v0, p0, Lcom/amap/api/a/b;->g:Lcom/autonavi/amap/mapcore/MapCore;

    invoke-virtual {v0, p1}, Lcom/autonavi/amap/mapcore/MapCore;->setGL(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 505
    iget-object v0, p0, Lcom/amap/api/a/b;->g:Lcom/autonavi/amap/mapcore/MapCore;

    invoke-virtual {v0, p1}, Lcom/autonavi/amap/mapcore/MapCore;->drawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 508
    iget-object v0, p0, Lcom/amap/api/a/b;->d:Lcom/amap/api/a/m;

    invoke-virtual {v0, p1}, Lcom/amap/api/a/m;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 509
    iget-object v0, p0, Lcom/amap/api/a/b;->p:Lcom/amap/api/a/ab;

    invoke-virtual {v0, p1}, Lcom/amap/api/a/ab;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 512
    iget-object v0, p0, Lcom/amap/api/a/b;->P:Lcom/amap/api/a/g;

    invoke-virtual {v0}, Lcom/amap/api/a/g;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/amap/api/a/b;->e:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 515
    :cond_0
    iget-boolean v0, p0, Lcom/amap/api/a/b;->K:Z

    if-nez v0, :cond_2

    .line 516
    iget-object v0, p0, Lcom/amap/api/a/b;->x:Lcom/amap/api/maps/AMap$OnMapLoadedListener;

    if-eqz v0, :cond_1

    .line 517
    iget-object v0, p0, Lcom/amap/api/a/b;->x:Lcom/amap/api/maps/AMap$OnMapLoadedListener;

    invoke-interface {v0}, Lcom/amap/api/maps/AMap$OnMapLoadedListener;->onMapLoaded()V

    .line 519
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/a/b;->K:Z

    .line 521
    :cond_2
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 541
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v3, v3, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/amap/api/a/b;->I:Landroid/graphics/Rect;

    .line 542
    iget-object v0, p0, Lcom/amap/api/a/b;->g:Lcom/autonavi/amap/mapcore/MapCore;

    invoke-virtual {v0, p1}, Lcom/autonavi/amap/mapcore/MapCore;->setGL(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 543
    iget-object v0, p0, Lcom/amap/api/a/b;->g:Lcom/autonavi/amap/mapcore/MapCore;

    invoke-virtual {v0, p1, p2, p3}, Lcom/autonavi/amap/mapcore/MapCore;->surfaceChange(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 545
    iget-object v0, p0, Lcom/amap/api/a/b;->g:Lcom/autonavi/amap/mapcore/MapCore;

    iget-object v1, p0, Lcom/amap/api/a/b;->h:Landroid/content/Context;

    const-string v4, "bk.pvr"

    invoke-static {v1, v4}, Lcom/amap/api/a/b/g;->a(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4}, Lcom/autonavi/amap/mapcore/MapCore;->setInternaltexture([BI)V

    .line 548
    iget-object v0, p0, Lcom/amap/api/a/b;->g:Lcom/autonavi/amap/mapcore/MapCore;

    iget-object v1, p0, Lcom/amap/api/a/b;->h:Landroid/content/Context;

    const-string v4, "icon.pvr"

    invoke-static {v1, v4}, Lcom/amap/api/a/b/g;->a(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/autonavi/amap/mapcore/MapCore;->setInternaltexture([BI)V

    .line 551
    iget-object v0, p0, Lcom/amap/api/a/b;->g:Lcom/autonavi/amap/mapcore/MapCore;

    iget-object v1, p0, Lcom/amap/api/a/b;->h:Landroid/content/Context;

    const-string v4, "roadarrow.pvr"

    invoke-static {v1, v4}, Lcom/amap/api/a/b/g;->a(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v4}, Lcom/autonavi/amap/mapcore/MapCore;->setInternaltexture([BI)V

    .line 554
    iget-object v0, p0, Lcom/amap/api/a/b;->g:Lcom/autonavi/amap/mapcore/MapCore;

    iget-object v1, p0, Lcom/amap/api/a/b;->h:Landroid/content/Context;

    const-string v4, "LineRound.pvr"

    invoke-static {v1, v4}, Lcom/amap/api/a/b/g;->a(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amap/mapcore/MapCore;->setInternaltexture([BI)V

    .line 557
    iget-object v0, p0, Lcom/amap/api/a/b;->g:Lcom/autonavi/amap/mapcore/MapCore;

    const/16 v1, 0x802

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/autonavi/amap/mapcore/MapCore;->setParameter(IIIII)V

    .line 558
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 563
    iget-object v0, p0, Lcom/amap/api/a/b;->g:Lcom/autonavi/amap/mapcore/MapCore;

    invoke-virtual {v0, p1}, Lcom/autonavi/amap/mapcore/MapCore;->setGL(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 565
    iget-object v0, p0, Lcom/amap/api/a/b;->g:Lcom/autonavi/amap/mapcore/MapCore;

    iget-object v1, p0, Lcom/amap/api/a/b;->h:Landroid/content/Context;

    const-string v2, "style_hv3.data"

    invoke-static {v1, v2}, Lcom/amap/api/a/b/g;->a(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amap/mapcore/MapCore;->setStyleData([BI)V

    .line 567
    iget-object v0, p0, Lcom/amap/api/a/b;->g:Lcom/autonavi/amap/mapcore/MapCore;

    iget-object v1, p0, Lcom/amap/api/a/b;->h:Landroid/content/Context;

    const-string v2, "style_shv3.data"

    invoke-static {v1, v2}, Lcom/amap/api/a/b/g;->a(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/autonavi/amap/mapcore/MapCore;->setStyleData([BI)V

    .line 570
    iget-object v0, p0, Lcom/amap/api/a/b;->g:Lcom/autonavi/amap/mapcore/MapCore;

    invoke-virtual {v0, p1}, Lcom/autonavi/amap/mapcore/MapCore;->surfaceCreate(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 573
    iget-boolean v0, p0, Lcom/amap/api/a/b;->c:Z

    if-nez v0, :cond_0

    .line 575
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/a/b;->ad:Ljava/lang/Thread;

    const-string v1, "AuthThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 576
    iget-object v0, p0, Lcom/amap/api/a/b;->ad:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 577
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/a/b;->c:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 582
    :cond_0
    :goto_0
    return-void

    .line 578
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1193
    iget-object v0, p0, Lcom/amap/api/a/b;->k:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1194
    iget-object v0, p0, Lcom/amap/api/a/b;->l:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1195
    iget-object v0, p0, Lcom/amap/api/a/b;->m:Lcom/amap/api/a/a/c;

    invoke-virtual {v0, p1}, Lcom/amap/api/a/a/c;->a(Landroid/view/MotionEvent;)Z

    .line 1196
    iget-object v0, p0, Lcom/amap/api/a/b;->M:Lcom/amap/api/a/a/b;

    invoke-virtual {v0, p1}, Lcom/amap/api/a/a/b;->a(Landroid/view/MotionEvent;)Z

    .line 1197
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1198
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1199
    invoke-direct {p0, p1}, Lcom/amap/api/a/b;->a(Landroid/view/MotionEvent;)V

    .line 1201
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 1202
    invoke-direct {p0}, Lcom/amap/api/a/b;->B()V

    .line 1204
    :cond_1
    return v2
.end method

.method public p()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 901
    iget-boolean v0, p0, Lcom/amap/api/a/b;->W:Z

    return v0
.end method

.method public q()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 930
    iget-boolean v0, p0, Lcom/amap/api/a/b;->J:Z

    return v0
.end method

.method public r()Landroid/location/Location;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 957
    iget-object v0, p0, Lcom/amap/api/a/b;->H:Lcom/amap/api/maps/LocationSource;

    if-eqz v0, :cond_0

    .line 958
    iget-object v0, p0, Lcom/amap/api/a/b;->L:Lcom/amap/api/a/e;

    iget-object v0, v0, Lcom/amap/api/a/e;->a:Landroid/location/Location;

    .line 960
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public s()Lcom/amap/api/a/w;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 976
    iget-object v0, p0, Lcom/amap/api/a/b;->G:Lcom/amap/api/a/w;

    return-object v0
.end method

.method public setZOrderOnTop(Z)V
    .locals 0
    .parameter

    .prologue
    .line 602
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->setZOrderOnTop(Z)V

    .line 603
    return-void
.end method

.method public t()Lcom/amap/api/a/u;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 981
    iget-object v0, p0, Lcom/amap/api/a/b;->F:Lcom/amap/api/a/u;

    return-object v0
.end method

.method public u()Lcom/amap/api/maps/AMap$OnCameraChangeListener;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/amap/api/a/b;->y:Lcom/amap/api/maps/AMap$OnCameraChangeListener;

    return-object v0
.end method

.method public v()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1048
    iget-object v0, p0, Lcom/amap/api/a/b;->o:Lcom/amap/api/a/ac;

    return-object v0
.end method

.method public w()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1574
    iget-object v0, p0, Lcom/amap/api/a/b;->D:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1575
    iget-object v0, p0, Lcom/amap/api/a/b;->D:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 1576
    iget-object v0, p0, Lcom/amap/api/a/b;->o:Lcom/amap/api/a/ac;

    iget-object v1, p0, Lcom/amap/api/a/b;->D:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/amap/api/a/ac;->removeView(Landroid/view/View;)V

    .line 1577
    iget-object v0, p0, Lcom/amap/api/a/b;->D:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1578
    if-eqz v0, :cond_0

    .line 1579
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1582
    :cond_0
    iput-object v2, p0, Lcom/amap/api/a/b;->D:Landroid/view/View;

    .line 1584
    :cond_1
    iput-object v2, p0, Lcom/amap/api/a/b;->E:Lcom/amap/api/maps/model/Marker;

    .line 1585
    return-void
.end method

.method public x()F
    .locals 1

    .prologue
    .line 1838
    iget-object v0, p0, Lcom/amap/api/a/b;->j:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapZoomer()F

    move-result v0

    return v0
.end method

.method y()I
    .locals 1

    .prologue
    .line 1973
    iget-object v0, p0, Lcom/amap/api/a/b;->q:Lcom/amap/api/a/al;

    invoke-virtual {v0}, Lcom/amap/api/a/al;->c()I

    move-result v0

    return v0
.end method
