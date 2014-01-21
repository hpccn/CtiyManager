.class Lcom/tencent/qc/stat/r;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field a:J

.field b:Ljava/lang/String;

.field c:I

.field d:I


# direct methods
.method public constructor <init>(JLjava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-wide p1, p0, Lcom/tencent/qc/stat/r;->a:J

    .line 90
    iput-object p3, p0, Lcom/tencent/qc/stat/r;->b:Ljava/lang/String;

    .line 91
    iput p4, p0, Lcom/tencent/qc/stat/r;->c:I

    .line 92
    iput p5, p0, Lcom/tencent/qc/stat/r;->d:I

    .line 93
    return-void
.end method
