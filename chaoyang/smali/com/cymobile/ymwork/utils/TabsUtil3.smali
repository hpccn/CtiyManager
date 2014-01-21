.class public Lcom/cymobile/ymwork/utils/TabsUtil3;
.super Ljava/lang/Object;
.source "TabsUtil3.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

.method public static setTabIndicator(Landroid/widget/TabHost$TabSpec;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "spec"
    .parameter "title"
    .parameter "drawable"

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    .line 16
    return-void
.end method
