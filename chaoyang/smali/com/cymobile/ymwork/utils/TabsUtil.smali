.class public Lcom/cymobile/ymwork/utils/TabsUtil;
.super Ljava/lang/Object;
.source "TabsUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addTab(Landroid/widget/TabHost;Ljava/lang/String;III)V
    .locals 4
    .parameter "host"
    .parameter "title"
    .parameter "drawable"
    .parameter "index"
    .parameter "layout"

    .prologue
    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tab"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 31
    .local v0, spec:Landroid/widget/TabHost$TabSpec;
    invoke-virtual {v0, p4}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    .line 32
    invoke-virtual {p0}, Landroid/widget/TabHost;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1, p2}, Lcom/cymobile/ymwork/utils/TabsUtil;->prepareTabView(Landroid/content/Context;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v1

    .line 33
    .local v1, view:Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/TabHost;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v0, p1, v2, v1}, Lcom/cymobile/ymwork/utils/TabsUtil;->setTabIndicator(Landroid/widget/TabHost$TabSpec;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 34
    invoke-virtual {p0, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 35
    return-void
.end method

.method public static addTab(Landroid/widget/TabHost;Ljava/lang/String;IILandroid/content/Intent;)V
    .locals 4
    .parameter "host"
    .parameter "title"
    .parameter "drawable"
    .parameter "index"
    .parameter "intent"

    .prologue
    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tab"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 39
    .local v0, spec:Landroid/widget/TabHost$TabSpec;
    invoke-virtual {v0, p4}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    .line 40
    invoke-virtual {p0}, Landroid/widget/TabHost;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1, p2}, Lcom/cymobile/ymwork/utils/TabsUtil;->prepareTabView(Landroid/content/Context;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v1

    .line 41
    .local v1, view:Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/TabHost;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v0, p1, v2, v1}, Lcom/cymobile/ymwork/utils/TabsUtil;->setTabIndicator(Landroid/widget/TabHost$TabSpec;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 42
    invoke-virtual {p0, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 43
    return-void
.end method

.method private static prepareTabView(Landroid/content/Context;Ljava/lang/String;I)Landroid/view/View;
    .locals 6
    .parameter "context"
    .parameter "text"
    .parameter "drawable"

    .prologue
    .line 46
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030045

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 47
    .local v2, view:Landroid/view/View;
    const v3, 0x7f08011a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 48
    .local v1, tv:Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    const v3, 0x7f080119

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 50
    .local v0, iv:Landroid/widget/ImageView;
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 51
    return-object v2
.end method

.method private static setTabIndicator(Landroid/widget/TabHost$TabSpec;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/view/View;)V
    .locals 3
    .parameter "spec"
    .parameter "title"
    .parameter "drawable"
    .parameter "view"

    .prologue
    .line 21
    new-instance v1, Ljava/lang/Integer;

    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 22
    .local v0, sdk:I
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 23
    invoke-static {p0, p1, p2}, Lcom/cymobile/ymwork/utils/TabsUtil3;->setTabIndicator(Landroid/widget/TabHost$TabSpec;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 27
    :goto_0
    return-void

    .line 25
    :cond_0
    invoke-static {p0, p3}, Lcom/cymobile/ymwork/utils/TabsUtil4;->setTabIndicator(Landroid/widget/TabHost$TabSpec;Landroid/view/View;)V

    goto :goto_0
.end method
