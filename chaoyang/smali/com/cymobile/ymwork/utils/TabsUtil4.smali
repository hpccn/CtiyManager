.class public Lcom/cymobile/ymwork/utils/TabsUtil4;
.super Ljava/lang/Object;
.source "TabsUtil4.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    return-void
.end method

.method public static getTabCount(Landroid/widget/TabHost;)I
    .locals 1
    .parameter "tabHost"

    .prologue
    .line 16
    invoke-virtual {p0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v0

    return v0
.end method

.method public static setTabIndicator(Landroid/widget/TabHost$TabSpec;Landroid/view/View;)V
    .locals 0
    .parameter "spec"
    .parameter "view"

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    .line 13
    return-void
.end method
