.class public abstract Lcom/cymobile/ymwork/widget/ShopReportFragment;
.super Lcom/cymobile/ymwork/widget/YMFragment;
.source "ShopReportFragment.java"

# interfaces
.implements Lcom/cymobile/ymwork/adapter/ReportDataSource$OnDataChangeListener;


# static fields
.field public static final DEFAULT_FILTER:Lcom/cymobile/ymwork/types/Pair;

.field public static street_name:Ljava/lang/String;


# instance fields
.field protected animPushTopIn:Landroid/view/animation/Animation;

.field protected animPushTopOut:Landroid/view/animation/Animation;

.field protected btnCategoryFilter:Landroid/widget/Button;

.field private btnMoreFilter:Landroid/widget/Button;

.field private categoryDoubleList:Lcom/cymobile/ymwork/widget/DoubleLevelList;

.field private categoryLayout:Landroid/view/View;

.field private filterArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cymobile/ymwork/types/Pair;",
            ">;"
        }
    .end annotation
.end field

.field private filterLayout:Landroid/view/View;

.field private filterPairAdapter:Lcom/cymobile/ymwork/adapter/SubFilterAdapter;

.field private filterPairListView:Landroid/widget/ListView;

.field protected mNormalArrow:Landroid/graphics/drawable/Drawable;

.field protected mSelectedArrow:Landroid/graphics/drawable/Drawable;

.field private mainCategoryItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cymobile/ymwork/types/Category;",
            ">;"
        }
    .end annotation
.end field

.field private mainFilterAdapter:Lcom/cymobile/ymwork/adapter/MainFilterAdapter;

.field private selectedCategory:Lcom/cymobile/ymwork/types/Category;

.field private selectedFilter:Lcom/cymobile/ymwork/types/Pair;

.field shopListDataSource:Lcom/cymobile/ymwork/adapter/ReportDataSource;

.field private subCategoryMapItems:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/cymobile/ymwork/types/Category;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cymobile/ymwork/types/Category;",
            ">;>;"
        }
    .end annotation
.end field

.field private subFilterAdapter:Lcom/cymobile/ymwork/adapter/SubFilterAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 46
    new-instance v0, Lcom/cymobile/ymwork/types/Pair;

    const-string v1, "1"

    const-string v2, "\u9ed8\u8ba4\u6392\u5e8f"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/cymobile/ymwork/types/Pair;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->DEFAULT_FILTER:Lcom/cymobile/ymwork/types/Pair;

    .line 47
    const/4 v0, 0x0

    sput-object v0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->street_name:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/cymobile/ymwork/widget/YMFragment;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->filterArrayList:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->mainCategoryItems:Ljava/util/ArrayList;

    .line 45
    sget-object v0, Lcom/cymobile/ymwork/adapter/ReportDataSource;->TOP_CATEGORY:Lcom/cymobile/ymwork/types/Category;

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->selectedCategory:Lcom/cymobile/ymwork/types/Category;

    .line 48
    sget-object v0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->DEFAULT_FILTER:Lcom/cymobile/ymwork/types/Pair;

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->selectedFilter:Lcom/cymobile/ymwork/types/Pair;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->subCategoryMapItems:Ljava/util/HashMap;

    .line 29
    return-void
.end method

.method static synthetic access$0(Lcom/cymobile/ymwork/widget/ShopReportFragment;)Lcom/cymobile/ymwork/adapter/MainFilterAdapter;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->mainFilterAdapter:Lcom/cymobile/ymwork/adapter/MainFilterAdapter;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cymobile/ymwork/widget/ShopReportFragment;)Lcom/cymobile/ymwork/adapter/SubFilterAdapter;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->subFilterAdapter:Lcom/cymobile/ymwork/adapter/SubFilterAdapter;

    return-object v0
.end method

.method static synthetic access$10(Lcom/cymobile/ymwork/widget/ShopReportFragment;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->categoryLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$11(Lcom/cymobile/ymwork/widget/ShopReportFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/cymobile/ymwork/widget/ShopReportFragment;->showCategory()V

    return-void
.end method

.method static synthetic access$12(Lcom/cymobile/ymwork/widget/ShopReportFragment;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->filterLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$13(Lcom/cymobile/ymwork/widget/ShopReportFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/cymobile/ymwork/widget/ShopReportFragment;->showFilter()V

    return-void
.end method

.method static synthetic access$2(Lcom/cymobile/ymwork/widget/ShopReportFragment;)Ljava/util/HashMap;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->subCategoryMapItems:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$3(Lcom/cymobile/ymwork/widget/ShopReportFragment;Lcom/cymobile/ymwork/types/Category;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->selectedCategory:Lcom/cymobile/ymwork/types/Category;

    return-void
.end method

.method static synthetic access$4(Lcom/cymobile/ymwork/widget/ShopReportFragment;)Lcom/cymobile/ymwork/types/Category;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->selectedCategory:Lcom/cymobile/ymwork/types/Category;

    return-object v0
.end method

.method static synthetic access$5(Lcom/cymobile/ymwork/widget/ShopReportFragment;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/cymobile/ymwork/widget/ShopReportFragment;->dismissCategory(Z)V

    return-void
.end method

.method static synthetic access$6(Lcom/cymobile/ymwork/widget/ShopReportFragment;)Lcom/cymobile/ymwork/adapter/SubFilterAdapter;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->filterPairAdapter:Lcom/cymobile/ymwork/adapter/SubFilterAdapter;

    return-object v0
.end method

.method static synthetic access$7(Lcom/cymobile/ymwork/widget/ShopReportFragment;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->btnMoreFilter:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$8(Lcom/cymobile/ymwork/widget/ShopReportFragment;Lcom/cymobile/ymwork/types/Pair;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->selectedFilter:Lcom/cymobile/ymwork/types/Pair;

    return-void
.end method

.method static synthetic access$9(Lcom/cymobile/ymwork/widget/ShopReportFragment;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/cymobile/ymwork/widget/ShopReportFragment;->dismissFilter(Z)V

    return-void
.end method

.method private checkFilterable(Lcom/cymobile/ymwork/types/Pair;)Z
    .locals 4
    .parameter "paramPair"

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-virtual {p0}, Lcom/cymobile/ymwork/widget/ShopReportFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/cymobile/ymwork/HomeApplication;

    .line 54
    .local v0, homeApplication:Lcom/cymobile/ymwork/HomeApplication;
    if-eqz p1, :cond_0

    .line 55
    invoke-virtual {p1}, Lcom/cymobile/ymwork/types/Pair;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u8ddd\u79bb"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 56
    invoke-virtual {v0}, Lcom/cymobile/ymwork/HomeApplication;->getLocation()Lcom/cymobile/ymwork/server/Server$Location;

    move-result-object v2

    if-nez v2, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/cymobile/ymwork/widget/ShopReportFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "\u6b63\u5728\u5b9a\u4f4d\uff0c\u6b64\u529f\u80fd\u6682\u4e0d\u53ef\u7528"

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 60
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private dismissCategory(Z)V
    .locals 3
    .parameter "paramBoolean"

    .prologue
    const/4 v2, 0x0

    .line 64
    if-eqz p1, :cond_0

    .line 65
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->categoryLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->animPushTopOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->btnCategoryFilter:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 67
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->btnCategoryFilter:Landroid/widget/Button;

    .line 68
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->mNormalArrow:Landroid/graphics/drawable/Drawable;

    .line 67
    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 69
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->categoryLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 70
    return-void
.end method

.method private dismissFilter(Z)V
    .locals 3
    .parameter "paramBoolean"

    .prologue
    const/4 v2, 0x0

    .line 73
    if-eqz p1, :cond_0

    .line 74
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->filterLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->animPushTopOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->btnMoreFilter:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 76
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->btnMoreFilter:Landroid/widget/Button;

    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->mNormalArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 78
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->filterLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 79
    return-void
.end method

.method private declared-synchronized setNavs([Lcom/cymobile/ymwork/types/Category;[Lcom/cymobile/ymwork/types/Pair;Lcom/cymobile/ymwork/types/Category;Lcom/cymobile/ymwork/types/Pair;)V
    .locals 22
    .parameter "allCategory"
    .parameter "allFilters"
    .parameter "currentCategory"
    .parameter "currentFilter"

    .prologue
    .line 83
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->mainCategoryItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 84
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->subCategoryMapItems:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 86
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->selectedCategory:Lcom/cymobile/ymwork/types/Category;

    .line 87
    if-eqz p1, :cond_1

    .line 96
    if-eqz p3, :cond_7

    .line 97
    invoke-virtual/range {p3 .. p3}, Lcom/cymobile/ymwork/types/Category;->id()J

    move-result-wide v12

    .line 98
    .local v12, currentCid:J
    sget-object v3, Lcom/cymobile/ymwork/adapter/ReportDataSource;->TOP_CATEGORY:Lcom/cymobile/ymwork/types/Category;

    invoke-virtual {v3}, Lcom/cymobile/ymwork/types/Category;->id()J

    move-result-wide v20

    .line 100
    .local v20, top:J
    cmp-long v3, v12, v20

    if-nez v3, :cond_0

    .line 101
    sget-object v3, Lcom/cymobile/ymwork/adapter/ReportDataSource;->TOP_CATEGORY:Lcom/cymobile/ymwork/types/Category;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->selectedCategory:Lcom/cymobile/ymwork/types/Category;

    .line 102
    sget-object p3, Lcom/cymobile/ymwork/adapter/ReportDataSource;->TOP_CATEGORY:Lcom/cymobile/ymwork/types/Category;

    .line 108
    .end local v12           #currentCid:J
    .end local v20           #top:J
    :cond_0
    :goto_0
    const/4 v14, 0x0

    .local v14, i:I
    :goto_1
    move-object/from16 v0, p1

    array-length v3, v0

    if-lt v14, v3, :cond_8

    .line 139
    .end local v14           #i:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->selectedCategory:Lcom/cymobile/ymwork/types/Category;

    if-nez v3, :cond_2

    if-eqz p1, :cond_2

    .line 140
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cymobile/ymwork/widget/ShopReportFragment;->selectedCategory:Lcom/cymobile/ymwork/types/Category;

    .line 142
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->selectedCategory:Lcom/cymobile/ymwork/types/Category;

    if-eqz v3, :cond_3

    .line 143
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->btnCategoryFilter:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->selectedCategory:Lcom/cymobile/ymwork/types/Category;

    invoke-virtual {v4}, Lcom/cymobile/ymwork/types/Category;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 144
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->selectedCategory:Lcom/cymobile/ymwork/types/Category;

    invoke-virtual {v3}, Lcom/cymobile/ymwork/types/Category;->name()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/cymobile/ymwork/widget/ShopReportFragment;->street_name:Ljava/lang/String;

    .line 145
    sget-object v3, Lcom/cymobile/ymwork/widget/ShopReportFragment;->street_name:Ljava/lang/String;

    const-string v4, "\u5168\u90e8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 146
    sget-object v3, Lcom/cymobile/ymwork/widget/ShopReportFragment;->street_name:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/cymobile/ymwork/widget/ShopReportFragment;->street_name:Ljava/lang/String;

    .line 150
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->categoryDoubleList:Lcom/cymobile/ymwork/widget/DoubleLevelList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->mainCategoryItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->subCategoryMapItems:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->selectedCategory:Lcom/cymobile/ymwork/types/Category;

    move-object/from16 v0, p3

    invoke-virtual {v3, v4, v5, v0, v6}, Lcom/cymobile/ymwork/widget/DoubleLevelList;->setData(Ljava/util/ArrayList;Ljava/util/HashMap;Landroid/os/Parcelable;Landroid/os/Parcelable;)V

    .line 151
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->filterArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 153
    if-eqz p2, :cond_4

    .line 154
    const/4 v15, 0x0

    .local v15, j:I
    :goto_2
    move-object/from16 v0, p2

    array-length v3, v0

    if-lt v15, v3, :cond_e

    .line 164
    .end local v15           #j:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->selectedFilter:Lcom/cymobile/ymwork/types/Pair;

    if-nez v3, :cond_5

    if-eqz p4, :cond_5

    .line 165
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cymobile/ymwork/widget/ShopReportFragment;->selectedFilter:Lcom/cymobile/ymwork/types/Pair;

    .line 167
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->selectedFilter:Lcom/cymobile/ymwork/types/Pair;

    if-eqz v3, :cond_6

    .line 168
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->btnMoreFilter:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->selectedFilter:Lcom/cymobile/ymwork/types/Pair;

    invoke-virtual {v4}, Lcom/cymobile/ymwork/types/Pair;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 169
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->filterPairAdapter:Lcom/cymobile/ymwork/adapter/SubFilterAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->filterArrayList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->selectedFilter:Lcom/cymobile/ymwork/types/Pair;

    invoke-virtual {v3, v4, v5}, Lcom/cymobile/ymwork/adapter/SubFilterAdapter;->setDataSet(Ljava/util/List;Landroid/os/Parcelable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    monitor-exit p0

    return-void

    .line 105
    :cond_7
    :try_start_1
    sget-object p3, Lcom/cymobile/ymwork/adapter/ReportDataSource;->TOP_CATEGORY:Lcom/cymobile/ymwork/types/Category;

    goto/16 :goto_0

    .line 109
    .restart local v14       #i:I
    :cond_8
    aget-object v16, p1, v14

    .line 110
    .local v16, oneCategory:Lcom/cymobile/ymwork/types/Category;
    invoke-virtual/range {v16 .. v16}, Lcom/cymobile/ymwork/types/Category;->id()J

    move-result-wide v3

    sget-object v5, Lcom/cymobile/ymwork/adapter/ReportDataSource;->TOP_CATEGORY:Lcom/cymobile/ymwork/types/Category;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/Category;->id()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_9

    invoke-virtual/range {v16 .. v16}, Lcom/cymobile/ymwork/types/Category;->parentId()J

    move-result-wide v3

    sget-object v5, Lcom/cymobile/ymwork/adapter/ReportDataSource;->TOP_CATEGORY:Lcom/cymobile/ymwork/types/Category;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/Category;->id()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_a

    .line 112
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->mainCategoryItems:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .local v19, subCatalog:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cymobile/ymwork/types/Category;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->subCategoryMapItems:Ljava/util/HashMap;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    new-instance v2, Lcom/cymobile/ymwork/types/Category;

    invoke-virtual/range {v16 .. v16}, Lcom/cymobile/ymwork/types/Category;->id()J

    move-result-wide v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Lcom/cymobile/ymwork/types/Category;->name()Ljava/lang/String;

    move-result-object v5

    const-string v7, "\u5168\u90e8"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    const-string v5, ""

    :goto_3
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Lcom/cymobile/ymwork/types/Category;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v16 .. v16}, Lcom/cymobile/ymwork/types/Category;->id()J

    move-result-wide v6

    .line 117
    invoke-virtual/range {v16 .. v16}, Lcom/cymobile/ymwork/types/Category;->favicon()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v16 .. v16}, Lcom/cymobile/ymwork/types/Category;->distance()I

    move-result v9

    .line 118
    invoke-virtual/range {v16 .. v16}, Lcom/cymobile/ymwork/types/Category;->searchPara()Ljava/lang/String;

    move-result-object v10

    .line 116
    invoke-direct/range {v2 .. v10}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    .line 119
    .local v2, subCat:Lcom/cymobile/ymwork/types/Category;
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    const/4 v15, 0x0

    .restart local v15       #j:I
    :goto_4
    move-object/from16 v0, p1

    array-length v3, v0

    if-lt v15, v3, :cond_c

    .line 132
    if-eqz p1, :cond_a

    invoke-virtual/range {p3 .. p3}, Lcom/cymobile/ymwork/types/Category;->id()J

    move-result-wide v3

    invoke-virtual/range {v16 .. v16}, Lcom/cymobile/ymwork/types/Category;->id()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_a

    .line 133
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cymobile/ymwork/widget/ShopReportFragment;->selectedCategory:Lcom/cymobile/ymwork/types/Category;

    .line 134
    move-object/from16 p3, v16

    .line 108
    .end local v2           #subCat:Lcom/cymobile/ymwork/types/Category;
    .end local v15           #j:I
    .end local v19           #subCatalog:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cymobile/ymwork/types/Category;>;"
    :cond_a
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 116
    .restart local v19       #subCatalog:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cymobile/ymwork/types/Category;>;"
    :cond_b
    const-string v5, "\u5168\u90e8"

    goto :goto_3

    .line 122
    .restart local v2       #subCat:Lcom/cymobile/ymwork/types/Category;
    .restart local v15       #j:I
    :cond_c
    aget-object v17, p1, v15

    .line 123
    .local v17, oneCategory1:Lcom/cymobile/ymwork/types/Category;
    invoke-virtual/range {v17 .. v17}, Lcom/cymobile/ymwork/types/Category;->parentId()J

    move-result-wide v3

    invoke-virtual/range {v16 .. v16}, Lcom/cymobile/ymwork/types/Category;->id()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_d

    .line 121
    :goto_5
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 127
    :cond_d
    new-instance v3, Lcom/cymobile/ymwork/types/Category;

    invoke-virtual/range {v17 .. v17}, Lcom/cymobile/ymwork/types/Category;->id()J

    move-result-wide v4

    .line 128
    invoke-virtual/range {v17 .. v17}, Lcom/cymobile/ymwork/types/Category;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v17 .. v17}, Lcom/cymobile/ymwork/types/Category;->parentId()J

    move-result-wide v7

    .line 129
    invoke-virtual/range {v17 .. v17}, Lcom/cymobile/ymwork/types/Category;->favicon()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v17 .. v17}, Lcom/cymobile/ymwork/types/Category;->distance()I

    move-result v10

    .line 130
    invoke-virtual/range {v17 .. v17}, Lcom/cymobile/ymwork/types/Category;->searchPara()Ljava/lang/String;

    move-result-object v11

    invoke-direct/range {v3 .. v11}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    .line 127
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    .line 83
    .end local v2           #subCat:Lcom/cymobile/ymwork/types/Category;
    .end local v14           #i:I
    .end local v15           #j:I
    .end local v16           #oneCategory:Lcom/cymobile/ymwork/types/Category;
    .end local v17           #oneCategory1:Lcom/cymobile/ymwork/types/Category;
    .end local v19           #subCatalog:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cymobile/ymwork/types/Category;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 155
    .restart local v15       #j:I
    :cond_e
    :try_start_2
    aget-object v18, p2, v15

    .line 156
    .local v18, pair:Lcom/cymobile/ymwork/types/Pair;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->filterArrayList:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    if-eqz p2, :cond_f

    move-object/from16 v0, p2

    array-length v3, v0

    if-lez v3, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->selectedFilter:Lcom/cymobile/ymwork/types/Pair;

    if-nez v3, :cond_f

    .line 158
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->selectedFilter:Lcom/cymobile/ymwork/types/Pair;

    if-nez v3, :cond_f

    .line 159
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cymobile/ymwork/widget/ShopReportFragment;->selectedFilter:Lcom/cymobile/ymwork/types/Pair;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 154
    :cond_f
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2
.end method

.method private showCategory()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 173
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->categoryLayout:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/widget/ShopReportFragment;->prepareShowLayout(Landroid/view/View;)V

    .line 174
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->btnCategoryFilter:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 175
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->btnCategoryFilter:Landroid/widget/Button;

    .line 176
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->mSelectedArrow:Landroid/graphics/drawable/Drawable;

    .line 175
    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 177
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->categoryLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->categoryLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->animPushTopIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 179
    return-void
.end method

.method private showFilter()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 182
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->filterLayout:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/widget/ShopReportFragment;->prepareShowLayout(Landroid/view/View;)V

    .line 183
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->btnMoreFilter:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 184
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->btnMoreFilter:Landroid/widget/Button;

    .line 185
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->mSelectedArrow:Landroid/graphics/drawable/Drawable;

    .line 184
    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 186
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->filterLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->filterLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->animPushTopIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 188
    return-void
.end method


# virtual methods
.method public getReportDataSource()Lcom/cymobile/ymwork/adapter/ReportDataSource;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->shopListDataSource:Lcom/cymobile/ymwork/adapter/ReportDataSource;

    return-object v0
.end method

.method protected abstract inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .parameter "paramBundle"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 202
    invoke-super {p0, p1}, Lcom/cymobile/ymwork/widget/YMFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 203
    new-instance v0, Lcom/cymobile/ymwork/adapter/MainFilterAdapter;

    invoke-virtual {p0}, Lcom/cymobile/ymwork/widget/ShopReportFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/cymobile/ymwork/adapter/MainFilterAdapter;-><init>(Ljava/util/ArrayList;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->mainFilterAdapter:Lcom/cymobile/ymwork/adapter/MainFilterAdapter;

    .line 204
    new-instance v0, Lcom/cymobile/ymwork/adapter/SubFilterAdapter;

    invoke-virtual {p0}, Lcom/cymobile/ymwork/widget/ShopReportFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/cymobile/ymwork/adapter/SubFilterAdapter;-><init>(Ljava/util/ArrayList;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->subFilterAdapter:Lcom/cymobile/ymwork/adapter/SubFilterAdapter;

    .line 205
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->categoryDoubleList:Lcom/cymobile/ymwork/widget/DoubleLevelList;

    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->mainFilterAdapter:Lcom/cymobile/ymwork/adapter/MainFilterAdapter;

    iget-object v2, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->subFilterAdapter:Lcom/cymobile/ymwork/adapter/SubFilterAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/cymobile/ymwork/widget/DoubleLevelList;->setAdapter(Lcom/cymobile/ymwork/adapter/IFilterAdapter;Lcom/cymobile/ymwork/adapter/IFilterAdapter;)V

    .line 206
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->categoryDoubleList:Lcom/cymobile/ymwork/widget/DoubleLevelList;

    .line 207
    new-instance v1, Lcom/cymobile/ymwork/widget/ShopReportFragment$1;

    invoke-direct {v1, p0}, Lcom/cymobile/ymwork/widget/ShopReportFragment$1;-><init>(Lcom/cymobile/ymwork/widget/ShopReportFragment;)V

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/widget/DoubleLevelList;->setOnDoubleItemClickListener(Lcom/cymobile/ymwork/widget/DoubleLevelList$OnDoubleItemClickListener;)V

    .line 231
    new-instance v0, Lcom/cymobile/ymwork/adapter/SubFilterAdapter;

    invoke-virtual {p0}, Lcom/cymobile/ymwork/widget/ShopReportFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/cymobile/ymwork/adapter/SubFilterAdapter;-><init>(Ljava/util/ArrayList;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->filterPairAdapter:Lcom/cymobile/ymwork/adapter/SubFilterAdapter;

    .line 232
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->filterPairAdapter:Lcom/cymobile/ymwork/adapter/SubFilterAdapter;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/adapter/SubFilterAdapter;->setNormalTextColor(I)V

    .line 233
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->filterPairListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->filterPairAdapter:Lcom/cymobile/ymwork/adapter/SubFilterAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 234
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->filterPairListView:Landroid/widget/ListView;

    new-instance v1, Lcom/cymobile/ymwork/widget/ShopReportFragment$2;

    invoke-direct {v1, p0}, Lcom/cymobile/ymwork/widget/ShopReportFragment$2;-><init>(Lcom/cymobile/ymwork/widget/ShopReportFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 266
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->shopListDataSource:Lcom/cymobile/ymwork/adapter/ReportDataSource;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->shopListDataSource:Lcom/cymobile/ymwork/adapter/ReportDataSource;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/adapter/ReportDataSource;->curCategory()Lcom/cymobile/ymwork/types/Category;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->btnCategoryFilter:Landroid/widget/Button;

    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->shopListDataSource:Lcom/cymobile/ymwork/adapter/ReportDataSource;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/adapter/ReportDataSource;->curCategory()Lcom/cymobile/ymwork/types/Category;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/Category;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->shopListDataSource:Lcom/cymobile/ymwork/adapter/ReportDataSource;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->shopListDataSource:Lcom/cymobile/ymwork/adapter/ReportDataSource;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/adapter/ReportDataSource;->curFilterId()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->btnMoreFilter:Landroid/widget/Button;

    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->shopListDataSource:Lcom/cymobile/ymwork/adapter/ReportDataSource;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/adapter/ReportDataSource;->curFilterId()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/Pair;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 272
    :cond_1
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->shopListDataSource:Lcom/cymobile/ymwork/adapter/ReportDataSource;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/adapter/ReportDataSource;->filterCategories()[Lcom/cymobile/ymwork/types/Category;

    move-result-object v0

    .line 273
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->shopListDataSource:Lcom/cymobile/ymwork/adapter/ReportDataSource;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/adapter/ReportDataSource;->filterIds()[Lcom/cymobile/ymwork/types/Pair;

    move-result-object v1

    .line 274
    iget-object v2, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->shopListDataSource:Lcom/cymobile/ymwork/adapter/ReportDataSource;

    invoke-virtual {v2}, Lcom/cymobile/ymwork/adapter/ReportDataSource;->curCategory()Lcom/cymobile/ymwork/types/Category;

    move-result-object v2

    .line 275
    iget-object v3, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->shopListDataSource:Lcom/cymobile/ymwork/adapter/ReportDataSource;

    invoke-virtual {v3}, Lcom/cymobile/ymwork/adapter/ReportDataSource;->curFilterId()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v3

    .line 272
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/cymobile/ymwork/widget/ShopReportFragment;->setNavs([Lcom/cymobile/ymwork/types/Category;[Lcom/cymobile/ymwork/types/Pair;Lcom/cymobile/ymwork/types/Category;Lcom/cymobile/ymwork/types/Pair;)V

    .line 276
    invoke-virtual {p0}, Lcom/cymobile/ymwork/widget/ShopReportFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f040002

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->animPushTopIn:Landroid/view/animation/Animation;

    .line 277
    invoke-virtual {p0}, Lcom/cymobile/ymwork/widget/ShopReportFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f040003

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->animPushTopOut:Landroid/view/animation/Animation;

    .line 278
    invoke-virtual {p0}, Lcom/cymobile/ymwork/widget/ShopReportFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->mNormalArrow:Landroid/graphics/drawable/Drawable;

    .line 279
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->mNormalArrow:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->mNormalArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->mNormalArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 280
    invoke-virtual {p0}, Lcom/cymobile/ymwork/widget/ShopReportFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->mSelectedArrow:Landroid/graphics/drawable/Drawable;

    .line 281
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->mSelectedArrow:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->mSelectedArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->mSelectedArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 282
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 286
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/widget/ShopReportFragment;->onBackPressed(Z)Z

    move-result v0

    return v0
.end method

.method public onBackPressed(Z)Z
    .locals 3
    .parameter "force"

    .prologue
    .line 290
    iget-object v2, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->categoryLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v0

    .line 291
    .local v0, i:I
    const/4 v1, 0x0

    .line 292
    .local v1, ret:Z
    if-nez v0, :cond_0

    .line 293
    const/4 v1, 0x1

    .line 294
    invoke-direct {p0, p1}, Lcom/cymobile/ymwork/widget/ShopReportFragment;->dismissCategory(Z)V

    .line 296
    :cond_0
    iget-object v2, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->filterLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 297
    const/4 v1, 0x1

    .line 298
    invoke-direct {p0, p1}, Lcom/cymobile/ymwork/widget/ShopReportFragment;->dismissFilter(Z)V

    .line 300
    :cond_1
    return v1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "paramLayoutInflater"
    .parameter "viewGroup"
    .parameter "bundle"

    .prologue
    const v3, 0x7f02001b

    .line 305
    invoke-virtual {p0, p1, p2}, Lcom/cymobile/ymwork/widget/ShopReportFragment;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 306
    .local v0, parentView:Landroid/view/View;
    const v1, 0x7f0800b6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->categoryLayout:Landroid/view/View;

    .line 307
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->categoryLayout:Landroid/view/View;

    new-instance v2, Lcom/cymobile/ymwork/widget/ShopReportFragment$3;

    invoke-direct {v2, p0}, Lcom/cymobile/ymwork/widget/ShopReportFragment$3;-><init>(Lcom/cymobile/ymwork/widget/ShopReportFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    const v1, 0x7f0800bb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->filterLayout:Landroid/view/View;

    .line 313
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->filterLayout:Landroid/view/View;

    new-instance v2, Lcom/cymobile/ymwork/widget/ShopReportFragment$4;

    invoke-direct {v2, p0}, Lcom/cymobile/ymwork/widget/ShopReportFragment$4;-><init>(Lcom/cymobile/ymwork/widget/ShopReportFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    const v1, 0x7f0800b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/widget/DoubleLevelList;

    .line 318
    iput-object v1, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->categoryDoubleList:Lcom/cymobile/ymwork/widget/DoubleLevelList;

    .line 320
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->categoryDoubleList:Lcom/cymobile/ymwork/widget/DoubleLevelList;

    invoke-virtual {v1, v3}, Lcom/cymobile/ymwork/widget/DoubleLevelList;->setBackgroundResource(I)V

    .line 321
    const v1, 0x7f0800bc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->filterPairListView:Landroid/widget/ListView;

    .line 322
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->filterPairListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setBackgroundResource(I)V

    .line 323
    const v1, 0x7f0800b3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->btnCategoryFilter:Landroid/widget/Button;

    .line 324
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->btnCategoryFilter:Landroid/widget/Button;

    new-instance v2, Lcom/cymobile/ymwork/widget/ShopReportFragment$5;

    invoke-direct {v2, p0}, Lcom/cymobile/ymwork/widget/ShopReportFragment$5;-><init>(Lcom/cymobile/ymwork/widget/ShopReportFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    const v1, 0x7f0800b4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->btnMoreFilter:Landroid/widget/Button;

    .line 335
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->btnMoreFilter:Landroid/widget/Button;

    new-instance v2, Lcom/cymobile/ymwork/widget/ShopReportFragment$6;

    invoke-direct {v2, p0}, Lcom/cymobile/ymwork/widget/ShopReportFragment$6;-><init>(Lcom/cymobile/ymwork/widget/ShopReportFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 345
    return-object v0
.end method

.method public onDataChanged(I)V
    .locals 4
    .parameter "data"

    .prologue
    .line 349
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->shopListDataSource:Lcom/cymobile/ymwork/adapter/ReportDataSource;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/adapter/ReportDataSource;->filterCategories()[Lcom/cymobile/ymwork/types/Category;

    move-result-object v0

    .line 350
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->shopListDataSource:Lcom/cymobile/ymwork/adapter/ReportDataSource;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/adapter/ReportDataSource;->filterIds()[Lcom/cymobile/ymwork/types/Pair;

    move-result-object v1

    .line 351
    iget-object v2, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->shopListDataSource:Lcom/cymobile/ymwork/adapter/ReportDataSource;

    invoke-virtual {v2}, Lcom/cymobile/ymwork/adapter/ReportDataSource;->curCategory()Lcom/cymobile/ymwork/types/Category;

    move-result-object v2

    .line 352
    iget-object v3, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->shopListDataSource:Lcom/cymobile/ymwork/adapter/ReportDataSource;

    invoke-virtual {v3}, Lcom/cymobile/ymwork/adapter/ReportDataSource;->curFilterId()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v3

    .line 349
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/cymobile/ymwork/widget/ShopReportFragment;->setNavs([Lcom/cymobile/ymwork/types/Category;[Lcom/cymobile/ymwork/types/Pair;Lcom/cymobile/ymwork/types/Category;Lcom/cymobile/ymwork/types/Pair;)V

    .line 353
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 356
    invoke-super {p0}, Lcom/cymobile/ymwork/widget/YMFragment;->onPause()V

    .line 357
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->shopListDataSource:Lcom/cymobile/ymwork/adapter/ReportDataSource;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->shopListDataSource:Lcom/cymobile/ymwork/adapter/ReportDataSource;

    invoke-virtual {v0, p0}, Lcom/cymobile/ymwork/adapter/ReportDataSource;->removeDataChangeListener(Lcom/cymobile/ymwork/adapter/ReportDataSource$OnDataChangeListener;)V

    .line 359
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 362
    invoke-super {p0}, Lcom/cymobile/ymwork/widget/YMFragment;->onResume()V

    .line 363
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->shopListDataSource:Lcom/cymobile/ymwork/adapter/ReportDataSource;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->shopListDataSource:Lcom/cymobile/ymwork/adapter/ReportDataSource;

    invoke-virtual {v0, p0}, Lcom/cymobile/ymwork/adapter/ReportDataSource;->addDataChangeListener(Lcom/cymobile/ymwork/adapter/ReportDataSource$OnDataChangeListener;)V

    .line 365
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "paramBundle"

    .prologue
    .line 196
    invoke-super {p0, p1}, Lcom/cymobile/ymwork/widget/YMFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 197
    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/widget/ShopReportFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 199
    return-void
.end method

.method protected prepareShowLayout(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    const/4 v1, 0x0

    .line 368
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->categoryLayout:Landroid/view/View;

    if-eq p1, v0, :cond_0

    .line 369
    invoke-direct {p0, v1}, Lcom/cymobile/ymwork/widget/ShopReportFragment;->dismissCategory(Z)V

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->filterLayout:Landroid/view/View;

    if-eq p1, v0, :cond_1

    .line 371
    invoke-direct {p0, v1}, Lcom/cymobile/ymwork/widget/ShopReportFragment;->dismissFilter(Z)V

    .line 372
    :cond_1
    return-void
.end method

.method protected selectionChanged(Z)V
    .locals 3
    .parameter "changed"

    .prologue
    .line 375
    .line 376
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->shopListDataSource:Lcom/cymobile/ymwork/adapter/ReportDataSource;

    iget-object v2, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->selectedCategory:Lcom/cymobile/ymwork/types/Category;

    invoke-virtual {v1, v2}, Lcom/cymobile/ymwork/adapter/ReportDataSource;->setCurCategory(Lcom/cymobile/ymwork/types/Category;)Z

    move-result v1

    or-int v0, p1, v1

    .line 377
    .local v0, bool:Z
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->shopListDataSource:Lcom/cymobile/ymwork/adapter/ReportDataSource;

    iget-object v2, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->selectedFilter:Lcom/cymobile/ymwork/types/Pair;

    invoke-virtual {v1, v2}, Lcom/cymobile/ymwork/adapter/ReportDataSource;->setCurFilterId(Lcom/cymobile/ymwork/types/Pair;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 378
    const/4 v0, 0x1

    .line 379
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->selectedFilter:Lcom/cymobile/ymwork/types/Pair;

    invoke-direct {p0, v1}, Lcom/cymobile/ymwork/widget/ShopReportFragment;->checkFilterable(Lcom/cymobile/ymwork/types/Pair;)Z

    .line 381
    :cond_0
    if-eqz v0, :cond_1

    .line 382
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->shopListDataSource:Lcom/cymobile/ymwork/adapter/ReportDataSource;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/cymobile/ymwork/adapter/ReportDataSource;->reset(Z)V

    .line 383
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->shopListDataSource:Lcom/cymobile/ymwork/adapter/ReportDataSource;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/cymobile/ymwork/adapter/ReportDataSource;->reload(Z)V

    .line 386
    :cond_1
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 389
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->btnCategoryFilter:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 390
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->btnMoreFilter:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 391
    return-void
.end method

.method public setShopListDataSource(Lcom/cymobile/ymwork/adapter/ReportDataSource;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 394
    iput-object p1, p0, Lcom/cymobile/ymwork/widget/ShopReportFragment;->shopListDataSource:Lcom/cymobile/ymwork/adapter/ReportDataSource;

    .line 395
    return-void
.end method
