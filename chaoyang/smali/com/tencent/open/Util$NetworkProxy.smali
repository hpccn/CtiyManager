.class public Lcom/tencent/open/Util$NetworkProxy;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 774
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 775
    iput-object p1, p0, Lcom/tencent/open/Util$NetworkProxy;->a:Ljava/lang/String;

    .line 776
    iput p2, p0, Lcom/tencent/open/Util$NetworkProxy;->b:I

    .line 777
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/tencent/open/e;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 769
    invoke-direct {p0, p1, p2}, Lcom/tencent/open/Util$NetworkProxy;-><init>(Ljava/lang/String;I)V

    return-void
.end method
