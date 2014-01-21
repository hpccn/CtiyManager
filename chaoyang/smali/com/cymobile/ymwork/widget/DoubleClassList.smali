.class public Lcom/cymobile/ymwork/widget/DoubleClassList;
.super Landroid/widget/LinearLayout;
.source "DoubleClassList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cymobile/ymwork/widget/DoubleClassList$OnDoubleItemClickListener;
    }
.end annotation


# instance fields
.field private adapter1:Lcom/cymobile/ymwork/adapter/IFilterAdapter;

.field private adapter2:Lcom/cymobile/ymwork/adapter/IFilterAdapter;

.field private list1_new:Landroid/widget/ListView;

.field private list2_new:Landroid/widget/ListView;

.field private onItemClickListener:Lcom/cymobile/ymwork/widget/DoubleClassList$OnDoubleItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "paramContext"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "paramContext"
    .parameter "paramAttributeSet"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method static synthetic access$0(Lcom/cymobile/ymwork/widget/DoubleClassList;)Lcom/cymobile/ymwork/widget/DoubleClassList$OnDoubleItemClickListener;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/DoubleClassList;->onItemClickListener:Lcom/cymobile/ymwork/widget/DoubleClassList$OnDoubleItemClickListener;

    return-object v0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 35
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 36
    const v0, 0x7f08003c

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/widget/DoubleClassList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/DoubleClassList;->list1_new:Landroid/widget/ListView;

    .line 37
    const v0, 0x7f08003d

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/widget/DoubleClassList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/DoubleClassList;->list2_new:Landroid/widget/ListView;

    .line 38
    return-void
.end method

.method public setAdapter(Lcom/cymobile/ymwork/adapter/IFilterAdapter;Lcom/cymobile/ymwork/adapter/IFilterAdapter;)V
    .locals 2
    .parameter "p1"
    .parameter "p2"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/cymobile/ymwork/widget/DoubleClassList;->adapter1:Lcom/cymobile/ymwork/adapter/IFilterAdapter;

    .line 43
    iput-object p2, p0, Lcom/cymobile/ymwork/widget/DoubleClassList;->adapter2:Lcom/cymobile/ymwork/adapter/IFilterAdapter;

    .line 44
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/DoubleClassList;->list1_new:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/cymobile/ymwork/widget/DoubleClassList;->adapter1:Lcom/cymobile/ymwork/adapter/IFilterAdapter;

    check-cast v0, Landroid/widget/ListAdapter;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 45
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/DoubleClassList;->list2_new:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/cymobile/ymwork/widget/DoubleClassList;->adapter2:Lcom/cymobile/ymwork/adapter/IFilterAdapter;

    check-cast v0, Landroid/widget/ListAdapter;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 46
    return-void
.end method

.method public setData(Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<+",
            "Landroid/os/Parcelable;",
            ">;",
            "Ljava/util/HashMap",
            "<+",
            "Landroid/os/Parcelable;",
            "+",
            "Ljava/util/ArrayList",
            "<+",
            "Landroid/os/Parcelable;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, pl:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Landroid/os/Parcelable;>;"
    .local p2, pm:Ljava/util/HashMap;,"Ljava/util/HashMap<+Landroid/os/Parcelable;+Ljava/util/ArrayList<+Landroid/os/Parcelable;>;>;"
    const/4 v0, 0x0

    .line 51
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/cymobile/ymwork/widget/DoubleClassList;->setData(Ljava/util/ArrayList;Ljava/util/HashMap;Landroid/os/Parcelable;Landroid/os/Parcelable;)V

    .line 52
    return-void
.end method

.method public setData(Ljava/util/ArrayList;Ljava/util/HashMap;Landroid/os/Parcelable;Landroid/os/Parcelable;)V
    .locals 2
    .parameter
    .parameter
    .parameter "p1"
    .parameter "p2"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<+",
            "Landroid/os/Parcelable;",
            ">;",
            "Ljava/util/HashMap",
            "<+",
            "Landroid/os/Parcelable;",
            "+",
            "Ljava/util/ArrayList",
            "<+",
            "Landroid/os/Parcelable;",
            ">;>;",
            "Landroid/os/Parcelable;",
            "Landroid/os/Parcelable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, parcelable:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Landroid/os/Parcelable;>;"
    .local p2, ph:Ljava/util/HashMap;,"Ljava/util/HashMap<+Landroid/os/Parcelable;+Ljava/util/ArrayList<+Landroid/os/Parcelable;>;>;"
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/DoubleClassList;->adapter1:Lcom/cymobile/ymwork/adapter/IFilterAdapter;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/DoubleClassList;->adapter1:Lcom/cymobile/ymwork/adapter/IFilterAdapter;

    invoke-interface {v0, p1, p3}, Lcom/cymobile/ymwork/adapter/IFilterAdapter;->setDataSet(Ljava/util/List;Landroid/os/Parcelable;)V

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/DoubleClassList;->adapter2:Lcom/cymobile/ymwork/adapter/IFilterAdapter;

    if-eqz v0, :cond_1

    .line 62
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/DoubleClassList;->adapter2:Lcom/cymobile/ymwork/adapter/IFilterAdapter;

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v1, v0, p4}, Lcom/cymobile/ymwork/adapter/IFilterAdapter;->setDataSet(Ljava/util/List;Landroid/os/Parcelable;)V

    .line 64
    :cond_1
    return-void
.end method

.method public setOnDoubleItemClickListener(Lcom/cymobile/ymwork/widget/DoubleClassList$OnDoubleItemClickListener;)V
    .locals 2
    .parameter "paramOnDoubleItemClickListener"

    .prologue
    const/4 v1, 0x0

    .line 68
    if-nez p1, :cond_0

    .line 69
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/DoubleClassList;->list1_new:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 70
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/DoubleClassList;->list2_new:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 87
    :goto_0
    return-void

    .line 73
    :cond_0
    iput-object p1, p0, Lcom/cymobile/ymwork/widget/DoubleClassList;->onItemClickListener:Lcom/cymobile/ymwork/widget/DoubleClassList$OnDoubleItemClickListener;

    .line 74
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/DoubleClassList;->list1_new:Landroid/widget/ListView;

    new-instance v1, Lcom/cymobile/ymwork/widget/DoubleClassList$1;

    invoke-direct {v1, p0}, Lcom/cymobile/ymwork/widget/DoubleClassList$1;-><init>(Lcom/cymobile/ymwork/widget/DoubleClassList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 80
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/DoubleClassList;->list2_new:Landroid/widget/ListView;

    new-instance v1, Lcom/cymobile/ymwork/widget/DoubleClassList$2;

    invoke-direct {v1, p0}, Lcom/cymobile/ymwork/widget/DoubleClassList$2;-><init>(Lcom/cymobile/ymwork/widget/DoubleClassList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0
.end method
