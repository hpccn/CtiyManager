.class public Lcom/cymobile/ymwork/adapter/SubClassFilterAdapter;
.super Landroid/widget/BaseAdapter;
.source "SubClassFilterAdapter.java"

# interfaces
.implements Lcom/cymobile/ymwork/adapter/IFilterAdapter;


# instance fields
.field protected layoutInflater:Landroid/view/LayoutInflater;

.field protected list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field protected selectedItem:I

.field protected textColor_n:I


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 1
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
    .line 24
    .local p1, paramArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Landroid/os/Parcelable;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cymobile/ymwork/adapter/SubClassFilterAdapter;->list:Ljava/util/List;

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/cymobile/ymwork/adapter/SubClassFilterAdapter;->selectedItem:I

    .line 26
    if-eqz p1, :cond_0

    .line 27
    iget-object v0, p0, Lcom/cymobile/ymwork/adapter/SubClassFilterAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 28
    iget-object v0, p0, Lcom/cymobile/ymwork/adapter/SubClassFilterAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 30
    :cond_0
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/cymobile/ymwork/adapter/SubClassFilterAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 31
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/cymobile/ymwork/adapter/SubClassFilterAdapter;->list:Ljava/util/List;

    if-nez v0, :cond_0

    .line 35
    const/4 v0, 0x0

    .line 36
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/cymobile/ymwork/adapter/SubClassFilterAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method protected getId(Landroid/os/Parcelable;)J
    .locals 2
    .parameter "paramParcelable"

    .prologue
    .line 40
    if-nez p1, :cond_0

    .line 41
    const-wide/16 v0, 0x0

    .line 46
    .end local p1
    :goto_0
    return-wide v0

    .line 42
    .restart local p1
    :cond_0
    instance-of v0, p1, Lcom/cymobile/ymwork/types/Category;

    if-eqz v0, :cond_1

    .line 43
    check-cast p1, Lcom/cymobile/ymwork/types/Category;

    .end local p1
    invoke-virtual {p1}, Lcom/cymobile/ymwork/types/Category;->id()J

    move-result-wide v0

    goto :goto_0

    .line 44
    .restart local p1
    :cond_1
    instance-of v0, p1, Lcom/cymobile/ymwork/types/Region;

    if-eqz v0, :cond_2

    .line 45
    check-cast p1, Lcom/cymobile/ymwork/types/Region;

    .end local p1
    invoke-virtual {p1}, Lcom/cymobile/ymwork/types/Region;->id()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    .line 46
    .restart local p1
    :cond_2
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "paramInt"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/cymobile/ymwork/adapter/SubClassFilterAdapter;->list:Ljava/util/List;

    if-nez v0, :cond_0

    .line 51
    const/4 v0, 0x0

    .line 52
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/cymobile/ymwork/adapter/SubClassFilterAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "paramInt"

    .prologue
    .line 56
    int-to-long v0, p1

    return-wide v0
.end method

.method protected getName(I)Ljava/lang/String;
    .locals 2
    .parameter "id"

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/adapter/SubClassFilterAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 61
    .local v0, obj:Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 62
    const-string v1, ""

    .line 69
    .end local v0           #obj:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 63
    .restart local v0       #obj:Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Lcom/cymobile/ymwork/types/Category;

    if-eqz v1, :cond_1

    .line 64
    check-cast v0, Lcom/cymobile/ymwork/types/Category;

    .end local v0           #obj:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/cymobile/ymwork/types/Category;->name()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 65
    .restart local v0       #obj:Ljava/lang/Object;
    :cond_1
    instance-of v1, v0, Lcom/cymobile/ymwork/types/Region;

    if-eqz v1, :cond_2

    .line 66
    check-cast v0, Lcom/cymobile/ymwork/types/Region;

    .end local v0           #obj:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/cymobile/ymwork/types/Region;->name()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 67
    .restart local v0       #obj:Ljava/lang/Object;
    :cond_2
    instance-of v1, v0, Lcom/cymobile/ymwork/types/Pair;

    if-eqz v1, :cond_3

    .line 68
    check-cast v0, Lcom/cymobile/ymwork/types/Pair;

    .end local v0           #obj:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/cymobile/ymwork/types/Pair;->name()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 69
    .restart local v0       #obj:Ljava/lang/Object;
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getSelectItem()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/cymobile/ymwork/adapter/SubClassFilterAdapter;->selectedItem:I

    return v0
.end method

.method protected getSubFilterItemLayout()I
    .locals 1

    .prologue
    .line 77
    const v0, 0x7f030016

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "paramInt"
    .parameter "paramView"
    .parameter "paramViewGroup"

    .prologue
    .line 81
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p0, :cond_1

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/cymobile/ymwork/adapter/SubClassFilterAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/cymobile/ymwork/adapter/SubClassFilterAdapter;->getSubFilterItemLayout()I

    move-result v2

    .line 83
    const/4 v3, 0x0

    .line 82
    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 84
    invoke-virtual {p2, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 86
    :cond_1
    const v1, 0x1020014

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 87
    .local v0, localTextView:Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/adapter/SubClassFilterAdapter;->getName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget v1, p0, Lcom/cymobile/ymwork/adapter/SubClassFilterAdapter;->selectedItem:I

    if-ne v1, p1, :cond_2

    .line 89
    const v1, -0x9aff

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 97
    :goto_0
    return-object p2

    .line 92
    :cond_2
    iget v1, p0, Lcom/cymobile/ymwork/adapter/SubClassFilterAdapter;->textColor_n:I

    if-eqz v1, :cond_3

    .line 93
    iget v1, p0, Lcom/cymobile/ymwork/adapter/SubClassFilterAdapter;->textColor_n:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 96
    :cond_3
    const v1, -0x99999a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method protected indexOf(Ljava/util/List;Landroid/os/Parcelable;)I
    .locals 6
    .parameter
    .parameter "paramParcelable"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Landroid/os/Parcelable;",
            ">;",
            "Landroid/os/Parcelable;",
            ")I"
        }
    .end annotation

    .prologue
    .local p1, paramList:Ljava/util/List;,"Ljava/util/List<+Landroid/os/Parcelable;>;"
    const/4 v5, -0x1

    .line 102
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 112
    :cond_0
    return v5

    .line 105
    :cond_1
    invoke-virtual {p0, p2}, Lcom/cymobile/ymwork/adapter/SubClassFilterAdapter;->getId(Landroid/os/Parcelable;)J

    move-result-wide v1

    .line 106
    .local v1, j:J
    const/4 v0, 0x0

    .line 107
    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 109
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {p0, v3}, Lcom/cymobile/ymwork/adapter/SubClassFilterAdapter;->getId(Landroid/os/Parcelable;)J

    move-result-wide v3

    cmp-long v3, v3, v1

    if-eqz v3, :cond_0

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setDataSet(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<+",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 116
    .local p1, paramArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Landroid/os/Parcelable;>;"
    iget-object v0, p0, Lcom/cymobile/ymwork/adapter/SubClassFilterAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 117
    if-eqz p1, :cond_0

    .line 118
    iget-object v0, p0, Lcom/cymobile/ymwork/adapter/SubClassFilterAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 119
    :cond_0
    invoke-virtual {p0}, Lcom/cymobile/ymwork/adapter/SubClassFilterAdapter;->notifyDataSetChanged()V

    .line 120
    return-void
.end method

.method public setDataSet(Ljava/util/List;Landroid/os/Parcelable;)V
    .locals 1
    .parameter
    .parameter "currentFilter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Landroid/os/Parcelable;",
            ">;",
            "Landroid/os/Parcelable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 124
    .local p1, paramList:Ljava/util/List;,"Ljava/util/List<+Landroid/os/Parcelable;>;"
    iget-object v0, p0, Lcom/cymobile/ymwork/adapter/SubClassFilterAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 125
    if-eqz p1, :cond_0

    .line 126
    iget-object v0, p0, Lcom/cymobile/ymwork/adapter/SubClassFilterAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 127
    invoke-virtual {p0, p1, p2}, Lcom/cymobile/ymwork/adapter/SubClassFilterAdapter;->indexOf(Ljava/util/List;Landroid/os/Parcelable;)I

    move-result v0

    iput v0, p0, Lcom/cymobile/ymwork/adapter/SubClassFilterAdapter;->selectedItem:I

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcom/cymobile/ymwork/adapter/SubClassFilterAdapter;->notifyDataSetChanged()V

    .line 130
    return-void
.end method

.method public setNormalTextColor(I)V
    .locals 0
    .parameter "paramInt"

    .prologue
    .line 133
    iput p1, p0, Lcom/cymobile/ymwork/adapter/SubClassFilterAdapter;->textColor_n:I

    .line 134
    return-void
.end method

.method public setSelectItem(I)V
    .locals 0
    .parameter "paramInt"

    .prologue
    .line 137
    iput p1, p0, Lcom/cymobile/ymwork/adapter/SubClassFilterAdapter;->selectedItem:I

    .line 138
    invoke-virtual {p0}, Lcom/cymobile/ymwork/adapter/SubClassFilterAdapter;->notifyDataSetChanged()V

    .line 139
    return-void
.end method
