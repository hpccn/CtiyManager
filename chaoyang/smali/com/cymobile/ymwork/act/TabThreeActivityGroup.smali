.class public Lcom/cymobile/ymwork/act/TabThreeActivityGroup;
.super Landroid/app/ActivityGroup;
.source "TabThreeActivityGroup.java"


# static fields
.field public static group:Lcom/cymobile/ymwork/act/TabThreeActivityGroup;


# instance fields
.field private history:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/ActivityGroup;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/TabThreeActivityGroup;->history:Ljava/util/ArrayList;

    .line 11
    return-void
.end method


# virtual methods
.method public back()V
    .locals 3

    .prologue
    .line 27
    iget-object v0, p0, Lcom/cymobile/ymwork/act/TabThreeActivityGroup;->history:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 28
    sget-object v1, Lcom/cymobile/ymwork/act/TabThreeActivityGroup;->group:Lcom/cymobile/ymwork/act/TabThreeActivityGroup;

    iget-object v0, p0, Lcom/cymobile/ymwork/act/TabThreeActivityGroup;->history:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/cymobile/ymwork/act/TabThreeActivityGroup;->history:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/cymobile/ymwork/act/TabThreeActivityGroup;->setContentView(Landroid/view/View;)V

    .line 29
    iget-object v0, p0, Lcom/cymobile/ymwork/act/TabThreeActivityGroup;->history:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/cymobile/ymwork/act/TabThreeActivityGroup;->history:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 34
    :goto_0
    return-void

    .line 32
    :cond_0
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/TabThreeActivityGroup;->getParent()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/cymobile/ymwork/act/TabThreeActivityGroup;->group:Lcom/cymobile/ymwork/act/TabThreeActivityGroup;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/TabThreeActivityGroup;->back()V

    .line 23
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 16
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreate(Landroid/os/Bundle;)V

    .line 17
    sput-object p0, Lcom/cymobile/ymwork/act/TabThreeActivityGroup;->group:Lcom/cymobile/ymwork/act/TabThreeActivityGroup;

    .line 18
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 37
    invoke-super {p0}, Landroid/app/ActivityGroup;->onResume()V

    .line 38
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/cymobile/ymwork/act/TabThreeActivityGroup;->history:Ljava/util/ArrayList;

    .line 43
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/cymobile/ymwork/act/AnalysisActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 44
    const/high16 v4, 0x400

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 46
    .local v0, intent:Landroid/content/Intent;
    sget-object v3, Lcom/cymobile/ymwork/act/TabThreeActivityGroup;->group:Lcom/cymobile/ymwork/act/TabThreeActivityGroup;

    invoke-virtual {v3}, Lcom/cymobile/ymwork/act/TabThreeActivityGroup;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v3

    .line 47
    const-string v4, "AnalysisActivity"

    .line 46
    invoke-virtual {v3, v4, v0}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v2

    .line 48
    .local v2, w:Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 50
    .local v1, view:Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/TabThreeActivityGroup;->replaceView(Landroid/view/View;)V

    .line 51
    return-void
.end method

.method public replaceView(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/cymobile/ymwork/act/TabThreeActivityGroup;->history:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v0, Lcom/cymobile/ymwork/act/TabThreeActivityGroup;->group:Lcom/cymobile/ymwork/act/TabThreeActivityGroup;

    invoke-virtual {v0, p1}, Lcom/cymobile/ymwork/act/TabThreeActivityGroup;->setContentView(Landroid/view/View;)V

    .line 55
    return-void
.end method
