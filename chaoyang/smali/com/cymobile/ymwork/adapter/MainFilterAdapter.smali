.class public Lcom/cymobile/ymwork/adapter/MainFilterAdapter;
.super Lcom/cymobile/ymwork/adapter/SubFilterAdapter;
.source "MainFilterAdapter.java"


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "paramContext"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<+",
            "Landroid/os/Parcelable;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 18
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Landroid/os/Parcelable;>;"
    invoke-direct {p0, p1, p2}, Lcom/cymobile/ymwork/adapter/SubFilterAdapter;-><init>(Ljava/util/ArrayList;Landroid/content/Context;)V

    .line 19
    return-void
.end method

.method public static getCategoryIconId(J)I
    .locals 1
    .parameter "p"

    .prologue
    .line 54
    const v0, 0x7f020036

    return v0
.end method


# virtual methods
.method protected getMainItemLayout()I
    .locals 1

    .prologue
    .line 22
    const v0, 0x7f030015

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "paramInt"
    .parameter "paramView"
    .parameter "paramViewGroup"

    .prologue
    const/4 v4, 0x0

    .line 26
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p0, :cond_1

    .line 27
    :cond_0
    iget-object v2, p0, Lcom/cymobile/ymwork/adapter/MainFilterAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/cymobile/ymwork/adapter/MainFilterAdapter;->getMainItemLayout()I

    move-result v3

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 29
    invoke-virtual {p2, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 32
    :cond_1
    const v2, 0x7f08004b

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 31
    check-cast v0, Landroid/widget/ImageView;

    .line 33
    .local v0, localImageView:Landroid/widget/ImageView;
    if-eqz v0, :cond_3

    .line 34
    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/adapter/MainFilterAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 35
    .local v1, localObject:Ljava/lang/Object;
    instance-of v2, v1, Lcom/cymobile/ymwork/types/Category;

    if-nez v2, :cond_2

    .line 36
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 38
    :cond_2
    check-cast v1, Lcom/cymobile/ymwork/types/Category;

    .line 39
    .end local v1           #localObject:Ljava/lang/Object;
    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/Category;->id()J

    move-result-wide v2

    .line 38
    invoke-static {v2, v3}, Lcom/cymobile/ymwork/adapter/MainFilterAdapter;->getCategoryIconId(J)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 40
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 42
    :cond_3
    const v2, 0x1020014

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 43
    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/adapter/MainFilterAdapter;->getName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget v2, p0, Lcom/cymobile/ymwork/adapter/MainFilterAdapter;->selectedItem:I

    if-eq v2, p1, :cond_4

    .line 45
    invoke-virtual {p2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 50
    :goto_0
    return-object p2

    .line 47
    :cond_4
    const v2, 0x7f02001d

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method
