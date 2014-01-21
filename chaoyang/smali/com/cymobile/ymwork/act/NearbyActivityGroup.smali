.class public Lcom/cymobile/ymwork/act/NearbyActivityGroup;
.super Landroid/app/ActivityGroup;
.source "NearbyActivityGroup.java"


# static fields
.field public static group:Lcom/cymobile/ymwork/act/NearbyActivityGroup;


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
    .line 21
    invoke-direct {p0}, Landroid/app/ActivityGroup;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/NearbyActivityGroup;->history:Ljava/util/ArrayList;

    .line 21
    return-void
.end method


# virtual methods
.method public back()V
    .locals 3

    .prologue
    .line 40
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbyActivityGroup;->history:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 41
    sget-object v1, Lcom/cymobile/ymwork/act/NearbyActivityGroup;->group:Lcom/cymobile/ymwork/act/NearbyActivityGroup;

    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbyActivityGroup;->history:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/cymobile/ymwork/act/NearbyActivityGroup;->history:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/cymobile/ymwork/act/NearbyActivityGroup;->setContentView(Landroid/view/View;)V

    .line 42
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbyActivityGroup;->history:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/cymobile/ymwork/act/NearbyActivityGroup;->history:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 47
    :goto_0
    return-void

    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/NearbyActivityGroup;->getParent()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/cymobile/ymwork/act/NearbyActivityGroup;->group:Lcom/cymobile/ymwork/act/NearbyActivityGroup;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/NearbyActivityGroup;->back()V

    .line 37
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreate(Landroid/os/Bundle;)V

    .line 32
    sput-object p0, Lcom/cymobile/ymwork/act/NearbyActivityGroup;->group:Lcom/cymobile/ymwork/act/NearbyActivityGroup;

    .line 33
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 51
    invoke-super {p0}, Landroid/app/ActivityGroup;->onResume()V

    .line 52
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/cymobile/ymwork/act/NearbyActivityGroup;->history:Ljava/util/ArrayList;

    .line 57
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/cymobile/ymwork/act/MainActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 58
    const/high16 v4, 0x400

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 60
    .local v0, intent:Landroid/content/Intent;
    sget-object v3, Lcom/cymobile/ymwork/act/NearbyActivityGroup;->group:Lcom/cymobile/ymwork/act/NearbyActivityGroup;

    invoke-virtual {v3}, Lcom/cymobile/ymwork/act/NearbyActivityGroup;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v3

    .line 61
    const-string v4, "MainActivity"

    .line 60
    invoke-virtual {v3, v4, v0}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v2

    .line 62
    .local v2, w:Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 64
    .local v1, view:Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/NearbyActivityGroup;->replaceView(Landroid/view/View;)V

    .line 65
    return-void
.end method

.method public replaceView(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbyActivityGroup;->history:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v0, Lcom/cymobile/ymwork/act/NearbyActivityGroup;->group:Lcom/cymobile/ymwork/act/NearbyActivityGroup;

    invoke-virtual {v0, p1}, Lcom/cymobile/ymwork/act/NearbyActivityGroup;->setContentView(Landroid/view/View;)V

    .line 69
    return-void
.end method
