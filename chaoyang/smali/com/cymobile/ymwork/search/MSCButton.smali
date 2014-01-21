.class public Lcom/cymobile/ymwork/search/MSCButton;
.super Landroid/widget/ImageButton;
.source "MSCButton.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MSCButton"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    return-void
.end method

.method private setupListener()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/cymobile/ymwork/search/MSCButton$1;

    invoke-direct {v0, p0}, Lcom/cymobile/ymwork/search/MSCButton$1;-><init>(Lcom/cymobile/ymwork/search/MSCButton;)V

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/search/MSCButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    return-void
.end method
