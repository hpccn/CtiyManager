.class public abstract Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;
.super Lcom/cymobile/ymwork/widget/YMFragment;
.source "ShopFilterFragmentPublicReport.java"

# interfaces
.implements Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport$OnDataChangeListener;


# static fields
.field public static final DEFAULT_FILTER:Lcom/cymobile/ymwork/types/Pair;


# instance fields
.field protected animPushTopIn:Landroid/view/animation/Animation;

.field protected animPushTopOut:Landroid/view/animation/Animation;

.field protected btnCategoryFilter:Landroid/widget/Button;

.field private btnMoreFilter:Landroid/widget/Button;

.field private btnNewCategory:Landroid/widget/Button;

.field private categoryClassesDoubleList:Lcom/cymobile/ymwork/widget/DoubleClassList;

.field private categoryClassesLayout:Landroid/view/View;

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

.field private mainCategoryClassesItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cymobile/ymwork/types/Category;",
            ">;"
        }
    .end annotation
.end field

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

.field private mainClassFilterAdapter:Lcom/cymobile/ymwork/adapter/MainClassFilterAdapter;

.field private mainFilterAdapter:Lcom/cymobile/ymwork/adapter/MainFilterAdapter;

.field private selectedCategory:Lcom/cymobile/ymwork/types/Category;

.field private selectedClassesCategory:Lcom/cymobile/ymwork/types/Category;

.field private selectedFilter:Lcom/cymobile/ymwork/types/Pair;

.field shopListDataSource:Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;

.field private subCategoryClassesMapItems:Ljava/util/HashMap;
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

.field private subClassFilterAdapter:Lcom/cymobile/ymwork/adapter/SubClassFilterAdapter;

.field private subFilterAdapter:Lcom/cymobile/ymwork/adapter/SubFilterAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 54
    new-instance v0, Lcom/cymobile/ymwork/types/Pair;

    const-string v1, "1"

    const-string v2, "\u9ed8\u8ba4\u6392\u5e8f"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/cymobile/ymwork/types/Pair;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->DEFAULT_FILTER:Lcom/cymobile/ymwork/types/Pair;

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/cymobile/ymwork/widget/YMFragment;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->filterArrayList:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->mainCategoryItems:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->mainCategoryClassesItems:Ljava/util/ArrayList;

    .line 52
    sget-object v0, Lcom/cymobile/ymwork/adapter/FilterDataSource;->TOP_CATEGORY:Lcom/cymobile/ymwork/types/Category;

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->selectedCategory:Lcom/cymobile/ymwork/types/Category;

    .line 53
    sget-object v0, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->TOP_ClASSES:Lcom/cymobile/ymwork/types/Category;

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->selectedClassesCategory:Lcom/cymobile/ymwork/types/Category;

    .line 56
    sget-object v0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->DEFAULT_FILTER:Lcom/cymobile/ymwork/types/Pair;

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->selectedFilter:Lcom/cymobile/ymwork/types/Pair;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->subCategoryMapItems:Ljava/util/HashMap;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->subCategoryClassesMapItems:Ljava/util/HashMap;

    .line 32
    return-void
.end method

.method static synthetic access$0(Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;)Lcom/cymobile/ymwork/adapter/MainFilterAdapter;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->mainFilterAdapter:Lcom/cymobile/ymwork/adapter/MainFilterAdapter;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;)Lcom/cymobile/ymwork/adapter/SubFilterAdapter;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->subFilterAdapter:Lcom/cymobile/ymwork/adapter/SubFilterAdapter;

    return-object v0
.end method

.method static synthetic access$10(Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->dismissClassCategory(Z)V

    return-void
.end method

.method static synthetic access$11(Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;)Lcom/cymobile/ymwork/adapter/MainClassFilterAdapter;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->mainClassFilterAdapter:Lcom/cymobile/ymwork/adapter/MainClassFilterAdapter;

    return-object v0
.end method

.method static synthetic access$12(Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;)Ljava/util/HashMap;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->subCategoryClassesMapItems:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$13(Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;)Lcom/cymobile/ymwork/adapter/SubFilterAdapter;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->filterPairAdapter:Lcom/cymobile/ymwork/adapter/SubFilterAdapter;

    return-object v0
.end method

.method static synthetic access$14(Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->btnMoreFilter:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$15(Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;Lcom/cymobile/ymwork/types/Pair;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->selectedFilter:Lcom/cymobile/ymwork/types/Pair;

    return-void
.end method

.method static synthetic access$16(Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->dismissFilter(Z)V

    return-void
.end method

.method static synthetic access$17(Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->categoryClassesLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$18(Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;)V
    .locals 0
    .parameter

    .prologue
    .line 266
    invoke-direct {p0}, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->showClassesCategory()V

    return-void
.end method

.method static synthetic access$19(Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->categoryLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2(Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;)Ljava/util/HashMap;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->subCategoryMapItems:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$20(Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;)V
    .locals 0
    .parameter

    .prologue
    .line 257
    invoke-direct {p0}, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->showCategory()V

    return-void
.end method

.method static synthetic access$21(Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->filterLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$22(Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;)V
    .locals 0
    .parameter

    .prologue
    .line 275
    invoke-direct {p0}, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->showFilter()V

    return-void
.end method

.method static synthetic access$3(Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;Lcom/cymobile/ymwork/types/Category;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->selectedCategory:Lcom/cymobile/ymwork/types/Category;

    return-void
.end method

.method static synthetic access$4(Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;)Lcom/cymobile/ymwork/types/Category;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->selectedCategory:Lcom/cymobile/ymwork/types/Category;

    return-object v0
.end method

.method static synthetic access$5(Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->dismissCategory(Z)V

    return-void
.end method

.method static synthetic access$6(Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;)Lcom/cymobile/ymwork/adapter/SubClassFilterAdapter;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->subClassFilterAdapter:Lcom/cymobile/ymwork/adapter/SubClassFilterAdapter;

    return-object v0
.end method

.method static synthetic access$7(Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;Lcom/cymobile/ymwork/types/Category;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->selectedClassesCategory:Lcom/cymobile/ymwork/types/Category;

    return-void
.end method

.method static synthetic access$8(Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->btnNewCategory:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$9(Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;)Lcom/cymobile/ymwork/types/Category;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->selectedClassesCategory:Lcom/cymobile/ymwork/types/Category;

    return-object v0
.end method

.method private checkFilterable(Lcom/cymobile/ymwork/types/Pair;)Z
    .locals 4
    .parameter "paramPair"

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-virtual {p0}, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/cymobile/ymwork/HomeApplication;

    .line 64
    .local v0, homeApplication:Lcom/cymobile/ymwork/HomeApplication;
    if-eqz p1, :cond_0

    .line 65
    invoke-virtual {p1}, Lcom/cymobile/ymwork/types/Pair;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u8ddd\u79bb"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    invoke-virtual {v0}, Lcom/cymobile/ymwork/HomeApplication;->getLocation()Lcom/cymobile/ymwork/server/Server$Location;

    move-result-object v2

    if-nez v2, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "\u6b63\u5728\u5b9a\u4f4d\uff0c\u6b64\u529f\u80fd\u6682\u4e0d\u53ef\u7528"

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 70
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

    .line 83
    if-eqz p1, :cond_0

    .line 84
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->categoryLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->animPushTopOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->btnCategoryFilter:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 86
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->btnCategoryFilter:Landroid/widget/Button;

    .line 87
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->mNormalArrow:Landroid/graphics/drawable/Drawable;

    .line 86
    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 88
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->categoryLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 89
    return-void
.end method

.method private dismissClassCategory(Z)V
    .locals 3
    .parameter "paramBoolean"

    .prologue
    const/4 v2, 0x0

    .line 74
    if-eqz p1, :cond_0

    .line 75
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->categoryClassesLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->animPushTopOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->btnNewCategory:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 77
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->btnNewCategory:Landroid/widget/Button;

    .line 78
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->mNormalArrow:Landroid/graphics/drawable/Drawable;

    .line 77
    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 79
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->categoryClassesLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 80
    return-void
.end method

.method private dismissFilter(Z)V
    .locals 3
    .parameter "paramBoolean"

    .prologue
    const/4 v2, 0x0

    .line 92
    if-eqz p1, :cond_0

    .line 93
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->filterLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->animPushTopOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->btnMoreFilter:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 95
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->btnMoreFilter:Landroid/widget/Button;

    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->mNormalArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 97
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->filterLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 98
    return-void
.end method

.method private declared-synchronized setNavs([Lcom/cymobile/ymwork/types/Category;[Lcom/cymobile/ymwork/types/Category;Lcom/cymobile/ymwork/types/Category;[Lcom/cymobile/ymwork/types/Pair;Lcom/cymobile/ymwork/types/Category;Lcom/cymobile/ymwork/types/Pair;)V
    .locals 24
    .parameter "allCategory"
    .parameter "classesCategory"
    .parameter "currentClasses"
    .parameter "allFilters"
    .parameter "currentCategory"
    .parameter "currentFilter"

    .prologue
    .line 102
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->mainCategoryItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 103
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->subCategoryMapItems:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 104
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->mainCategoryClassesItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 105
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->subCategoryClassesMapItems:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 107
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->selectedCategory:Lcom/cymobile/ymwork/types/Category;

    .line 108
    if-eqz p1, :cond_1

    .line 117
    if-eqz p5, :cond_9

    .line 118
    invoke-virtual/range {p5 .. p5}, Lcom/cymobile/ymwork/types/Category;->id()J

    move-result-wide v12

    .line 119
    .local v12, currentCid:J
    sget-object v3, Lcom/cymobile/ymwork/adapter/FilterDataSource;->TOP_CATEGORY:Lcom/cymobile/ymwork/types/Category;

    invoke-virtual {v3}, Lcom/cymobile/ymwork/types/Category;->id()J

    move-result-wide v20

    .line 121
    .local v20, top:J
    cmp-long v3, v12, v20

    if-nez v3, :cond_0

    .line 122
    sget-object v3, Lcom/cymobile/ymwork/adapter/FilterDataSource;->TOP_CATEGORY:Lcom/cymobile/ymwork/types/Category;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->selectedCategory:Lcom/cymobile/ymwork/types/Category;

    .line 123
    sget-object p5, Lcom/cymobile/ymwork/adapter/FilterDataSource;->TOP_CATEGORY:Lcom/cymobile/ymwork/types/Category;

    .line 129
    .end local v12           #currentCid:J
    .end local v20           #top:J
    :cond_0
    :goto_0
    const/4 v14, 0x0

    .local v14, i:I
    :goto_1
    move-object/from16 v0, p1

    array-length v3, v0

    if-lt v14, v3, :cond_a

    .line 169
    .end local v14           #i:I
    :cond_1
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->selectedClassesCategory:Lcom/cymobile/ymwork/types/Category;

    .line 170
    if-eqz p2, :cond_3

    .line 179
    if-eqz p3, :cond_13

    .line 180
    invoke-virtual/range {p3 .. p3}, Lcom/cymobile/ymwork/types/Category;->id()J

    move-result-wide v12

    .line 181
    .restart local v12       #currentCid:J
    sget-object v3, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->TOP_ClASSES:Lcom/cymobile/ymwork/types/Category;

    invoke-virtual {v3}, Lcom/cymobile/ymwork/types/Category;->id()J

    move-result-wide v20

    .line 183
    .restart local v20       #top:J
    cmp-long v3, v12, v20

    if-nez v3, :cond_2

    .line 184
    sget-object v3, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->TOP_ClASSES:Lcom/cymobile/ymwork/types/Category;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->selectedClassesCategory:Lcom/cymobile/ymwork/types/Category;

    .line 185
    sget-object p3, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->TOP_ClASSES:Lcom/cymobile/ymwork/types/Category;

    .line 191
    .end local v12           #currentCid:J
    .end local v20           #top:J
    :cond_2
    :goto_2
    const/4 v14, 0x0

    .restart local v14       #i:I
    :goto_3
    move-object/from16 v0, p2

    array-length v3, v0

    if-lt v14, v3, :cond_14

    .line 226
    .end local v14           #i:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->selectedCategory:Lcom/cymobile/ymwork/types/Category;

    if-nez v3, :cond_4

    if-eqz p1, :cond_4

    .line 227
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->selectedCategory:Lcom/cymobile/ymwork/types/Category;

    .line 229
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->selectedCategory:Lcom/cymobile/ymwork/types/Category;

    if-eqz v3, :cond_5

    .line 230
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->btnCategoryFilter:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->selectedCategory:Lcom/cymobile/ymwork/types/Category;

    invoke-virtual {v4}, Lcom/cymobile/ymwork/types/Category;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 232
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->categoryDoubleList:Lcom/cymobile/ymwork/widget/DoubleLevelList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->mainCategoryItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->subCategoryMapItems:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->selectedCategory:Lcom/cymobile/ymwork/types/Category;

    move-object/from16 v0, p5

    invoke-virtual {v3, v4, v5, v0, v6}, Lcom/cymobile/ymwork/widget/DoubleLevelList;->setData(Ljava/util/ArrayList;Ljava/util/HashMap;Landroid/os/Parcelable;Landroid/os/Parcelable;)V

    .line 233
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->categoryClassesDoubleList:Lcom/cymobile/ymwork/widget/DoubleClassList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->mainCategoryClassesItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->subCategoryClassesMapItems:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->selectedClassesCategory:Lcom/cymobile/ymwork/types/Category;

    move-object/from16 v0, p3

    invoke-virtual {v3, v4, v5, v0, v6}, Lcom/cymobile/ymwork/widget/DoubleClassList;->setData(Ljava/util/ArrayList;Ljava/util/HashMap;Landroid/os/Parcelable;Landroid/os/Parcelable;)V

    .line 235
    const-string v3, "subCategoryClassesMapItems"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->subCategoryClassesMapItems:Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->filterArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 238
    if-eqz p4, :cond_6

    .line 239
    const/4 v15, 0x0

    .local v15, j:I
    :goto_4
    move-object/from16 v0, p4

    array-length v3, v0

    if-lt v15, v3, :cond_1a

    .line 249
    .end local v15           #j:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->selectedFilter:Lcom/cymobile/ymwork/types/Pair;

    if-nez v3, :cond_7

    if-eqz p6, :cond_7

    .line 250
    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->selectedFilter:Lcom/cymobile/ymwork/types/Pair;

    .line 252
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->selectedFilter:Lcom/cymobile/ymwork/types/Pair;

    if-eqz v3, :cond_8

    .line 253
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->btnMoreFilter:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->selectedFilter:Lcom/cymobile/ymwork/types/Pair;

    invoke-virtual {v4}, Lcom/cymobile/ymwork/types/Pair;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 254
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->filterPairAdapter:Lcom/cymobile/ymwork/adapter/SubFilterAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->filterArrayList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->selectedFilter:Lcom/cymobile/ymwork/types/Pair;

    invoke-virtual {v3, v4, v5}, Lcom/cymobile/ymwork/adapter/SubFilterAdapter;->setDataSet(Ljava/util/List;Landroid/os/Parcelable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    monitor-exit p0

    return-void

    .line 126
    :cond_9
    :try_start_1
    sget-object p5, Lcom/cymobile/ymwork/adapter/FilterDataSource;->TOP_CATEGORY:Lcom/cymobile/ymwork/types/Category;

    goto/16 :goto_0

    .line 130
    .restart local v14       #i:I
    :cond_a
    aget-object v16, p1, v14

    .line 132
    .local v16, oneCategory:Lcom/cymobile/ymwork/types/Category;
    invoke-virtual/range {v16 .. v16}, Lcom/cymobile/ymwork/types/Category;->id()J

    move-result-wide v3

    sget-object v5, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->TOP_CATEGORY:Lcom/cymobile/ymwork/types/Category;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/Category;->id()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_b

    invoke-virtual/range {v16 .. v16}, Lcom/cymobile/ymwork/types/Category;->parentId()J

    move-result-wide v3

    sget-object v5, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->TOP_CATEGORY:Lcom/cymobile/ymwork/types/Category;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/Category;->id()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_e

    .line 134
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->mainCategoryItems:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .local v19, subCatalog:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cymobile/ymwork/types/Category;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->subCategoryMapItems:Ljava/util/HashMap;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    new-instance v2, Lcom/cymobile/ymwork/types/Category;

    invoke-virtual/range {v16 .. v16}, Lcom/cymobile/ymwork/types/Category;->id()J

    move-result-wide v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Lcom/cymobile/ymwork/types/Category;->name()Ljava/lang/String;

    move-result-object v5

    const-string v7, "\u5168\u90e8"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    const-string v5, ""

    :goto_5
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

    .line 139
    invoke-virtual/range {v16 .. v16}, Lcom/cymobile/ymwork/types/Category;->favicon()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v16 .. v16}, Lcom/cymobile/ymwork/types/Category;->distance()I

    move-result v9

    .line 140
    invoke-virtual/range {v16 .. v16}, Lcom/cymobile/ymwork/types/Category;->searchPara()Ljava/lang/String;

    move-result-object v10

    .line 138
    invoke-direct/range {v2 .. v10}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    .line 142
    .local v2, subCat:Lcom/cymobile/ymwork/types/Category;
    invoke-virtual/range {v16 .. v16}, Lcom/cymobile/ymwork/types/Category;->id()J

    move-result-wide v3

    const-wide/32 v5, 0x690121f

    cmp-long v3, v3, v5

    if-eqz v3, :cond_c

    invoke-virtual/range {v16 .. v16}, Lcom/cymobile/ymwork/types/Category;->id()J

    move-result-wide v3

    const-wide/32 v5, 0x6901220

    cmp-long v3, v3, v5

    if-eqz v3, :cond_c

    invoke-virtual/range {v16 .. v16}, Lcom/cymobile/ymwork/types/Category;->id()J

    move-result-wide v3

    const-wide/32 v5, 0x6901221

    cmp-long v3, v3, v5

    if-eqz v3, :cond_c

    invoke-virtual/range {v16 .. v16}, Lcom/cymobile/ymwork/types/Category;->id()J

    move-result-wide v3

    const-wide/32 v5, 0x6901222

    cmp-long v3, v3, v5

    if-eqz v3, :cond_c

    invoke-virtual/range {v16 .. v16}, Lcom/cymobile/ymwork/types/Category;->id()J

    move-result-wide v3

    const-wide/32 v5, 0x6901223

    cmp-long v3, v3, v5

    if-eqz v3, :cond_c

    invoke-virtual/range {v16 .. v16}, Lcom/cymobile/ymwork/types/Category;->id()J

    move-result-wide v3

    const-wide/32 v5, 0x6901224

    cmp-long v3, v3, v5

    if-eqz v3, :cond_c

    invoke-virtual/range {v16 .. v16}, Lcom/cymobile/ymwork/types/Category;->id()J

    move-result-wide v3

    const-wide/32 v5, 0x6901225

    cmp-long v3, v3, v5

    if-nez v3, :cond_d

    .line 143
    :cond_c
    new-instance v2, Lcom/cymobile/ymwork/types/Category;

    .end local v2           #subCat:Lcom/cymobile/ymwork/types/Category;
    invoke-virtual/range {v16 .. v16}, Lcom/cymobile/ymwork/types/Category;->id()J

    move-result-wide v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Lcom/cymobile/ymwork/types/Category;->name()Ljava/lang/String;

    move-result-object v5

    const-string v7, "\u5168\u90e8"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    const-string v5, ""

    :goto_6
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Lcom/cymobile/ymwork/types/Category;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\u5206\u7ba1\u804c\u80fd\u5c40"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v16 .. v16}, Lcom/cymobile/ymwork/types/Category;->id()J

    move-result-wide v6

    .line 144
    invoke-virtual/range {v16 .. v16}, Lcom/cymobile/ymwork/types/Category;->favicon()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v16 .. v16}, Lcom/cymobile/ymwork/types/Category;->distance()I

    move-result v9

    .line 145
    invoke-virtual/range {v16 .. v16}, Lcom/cymobile/ymwork/types/Category;->searchPara()Ljava/lang/String;

    move-result-object v10

    .line 143
    invoke-direct/range {v2 .. v10}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    .line 147
    .restart local v2       #subCat:Lcom/cymobile/ymwork/types/Category;
    :cond_d
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    const/4 v15, 0x0

    .restart local v15       #j:I
    :goto_7
    move-object/from16 v0, p1

    array-length v3, v0

    if-lt v15, v3, :cond_11

    .line 160
    if-eqz p1, :cond_e

    invoke-virtual/range {p5 .. p5}, Lcom/cymobile/ymwork/types/Category;->id()J

    move-result-wide v3

    invoke-virtual/range {v16 .. v16}, Lcom/cymobile/ymwork/types/Category;->id()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_e

    .line 161
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->selectedCategory:Lcom/cymobile/ymwork/types/Category;

    .line 162
    move-object/from16 p5, v16

    .line 129
    .end local v2           #subCat:Lcom/cymobile/ymwork/types/Category;
    .end local v15           #j:I
    .end local v19           #subCatalog:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cymobile/ymwork/types/Category;>;"
    :cond_e
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 138
    .restart local v19       #subCatalog:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cymobile/ymwork/types/Category;>;"
    :cond_f
    const-string v5, "\u5168\u90e8"

    goto/16 :goto_5

    .line 143
    :cond_10
    const-string v5, "\u5168\u90e8"

    goto :goto_6

    .line 150
    .restart local v2       #subCat:Lcom/cymobile/ymwork/types/Category;
    .restart local v15       #j:I
    :cond_11
    aget-object v17, p1, v15

    .line 151
    .local v17, oneCategory1:Lcom/cymobile/ymwork/types/Category;
    invoke-virtual/range {v17 .. v17}, Lcom/cymobile/ymwork/types/Category;->parentId()J

    move-result-wide v3

    invoke-virtual/range {v16 .. v16}, Lcom/cymobile/ymwork/types/Category;->id()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_12

    .line 149
    :goto_8
    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    .line 155
    :cond_12
    new-instance v3, Lcom/cymobile/ymwork/types/Category;

    invoke-virtual/range {v17 .. v17}, Lcom/cymobile/ymwork/types/Category;->id()J

    move-result-wide v4

    .line 156
    invoke-virtual/range {v17 .. v17}, Lcom/cymobile/ymwork/types/Category;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v17 .. v17}, Lcom/cymobile/ymwork/types/Category;->parentId()J

    move-result-wide v7

    .line 157
    invoke-virtual/range {v17 .. v17}, Lcom/cymobile/ymwork/types/Category;->favicon()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v17 .. v17}, Lcom/cymobile/ymwork/types/Category;->distance()I

    move-result v10

    .line 158
    invoke-virtual/range {v17 .. v17}, Lcom/cymobile/ymwork/types/Category;->searchPara()Ljava/lang/String;

    move-result-object v11

    invoke-direct/range {v3 .. v11}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    .line 155
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_8

    .line 102
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

    .line 188
    :cond_13
    :try_start_2
    sget-object p3, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->TOP_ClASSES:Lcom/cymobile/ymwork/types/Category;

    goto/16 :goto_2

    .line 193
    .restart local v14       #i:I
    :cond_14
    aget-object v22, p2, v14

    .line 194
    .local v22, twoCategory:Lcom/cymobile/ymwork/types/Category;
    invoke-virtual/range {v22 .. v22}, Lcom/cymobile/ymwork/types/Category;->id()J

    move-result-wide v3

    sget-object v5, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->TOP_ClASSES:Lcom/cymobile/ymwork/types/Category;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/Category;->id()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_15

    invoke-virtual/range {v22 .. v22}, Lcom/cymobile/ymwork/types/Category;->parentId()J

    move-result-wide v3

    sget-object v5, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->TOP_ClASSES:Lcom/cymobile/ymwork/types/Category;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/Category;->id()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_16

    .line 196
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->mainCategoryClassesItems:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    const-string v3, "twoCategory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .restart local v19       #subCatalog:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cymobile/ymwork/types/Category;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->subCategoryClassesMapItems:Ljava/util/HashMap;

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    new-instance v2, Lcom/cymobile/ymwork/types/Category;

    invoke-virtual/range {v22 .. v22}, Lcom/cymobile/ymwork/types/Category;->id()J

    move-result-wide v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual/range {v22 .. v22}, Lcom/cymobile/ymwork/types/Category;->name()Ljava/lang/String;

    move-result-object v5

    const-string v7, "\u5168\u90e8"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_17

    const-string v5, ""

    :goto_9
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Lcom/cymobile/ymwork/types/Category;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\u6848\u4ef6"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v22 .. v22}, Lcom/cymobile/ymwork/types/Category;->id()J

    move-result-wide v6

    .line 202
    invoke-virtual/range {v22 .. v22}, Lcom/cymobile/ymwork/types/Category;->favicon()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v22 .. v22}, Lcom/cymobile/ymwork/types/Category;->distance()I

    move-result v9

    .line 203
    invoke-virtual/range {v22 .. v22}, Lcom/cymobile/ymwork/types/Category;->searchPara()Ljava/lang/String;

    move-result-object v10

    .line 201
    invoke-direct/range {v2 .. v10}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    .line 204
    .restart local v2       #subCat:Lcom/cymobile/ymwork/types/Category;
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    const/4 v15, 0x0

    .restart local v15       #j:I
    :goto_a
    move-object/from16 v0, p2

    array-length v3, v0

    if-lt v15, v3, :cond_18

    .line 217
    if-eqz p2, :cond_16

    invoke-virtual/range {p3 .. p3}, Lcom/cymobile/ymwork/types/Category;->id()J

    move-result-wide v3

    invoke-virtual/range {v22 .. v22}, Lcom/cymobile/ymwork/types/Category;->id()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_16

    .line 218
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->selectedClassesCategory:Lcom/cymobile/ymwork/types/Category;

    .line 219
    move-object/from16 p3, v22

    .line 222
    .end local v2           #subCat:Lcom/cymobile/ymwork/types/Category;
    .end local v15           #j:I
    .end local v19           #subCatalog:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cymobile/ymwork/types/Category;>;"
    :cond_16
    const-string v3, "mainCategoryClassesItems111"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->mainCategoryClassesItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_3

    .line 201
    .restart local v19       #subCatalog:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cymobile/ymwork/types/Category;>;"
    :cond_17
    const-string v5, "\u5168\u90e8"

    goto :goto_9

    .line 207
    .restart local v2       #subCat:Lcom/cymobile/ymwork/types/Category;
    .restart local v15       #j:I
    :cond_18
    aget-object v23, p2, v15

    .line 208
    .local v23, twoCategory1:Lcom/cymobile/ymwork/types/Category;
    invoke-virtual/range {v23 .. v23}, Lcom/cymobile/ymwork/types/Category;->parentId()J

    move-result-wide v3

    invoke-virtual/range {v22 .. v22}, Lcom/cymobile/ymwork/types/Category;->id()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_19

    .line 206
    :goto_b
    add-int/lit8 v15, v15, 0x1

    goto :goto_a

    .line 212
    :cond_19
    new-instance v3, Lcom/cymobile/ymwork/types/Category;

    invoke-virtual/range {v23 .. v23}, Lcom/cymobile/ymwork/types/Category;->id()J

    move-result-wide v4

    .line 213
    invoke-virtual/range {v23 .. v23}, Lcom/cymobile/ymwork/types/Category;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v23 .. v23}, Lcom/cymobile/ymwork/types/Category;->parentId()J

    move-result-wide v7

    .line 214
    invoke-virtual/range {v23 .. v23}, Lcom/cymobile/ymwork/types/Category;->favicon()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v23 .. v23}, Lcom/cymobile/ymwork/types/Category;->distance()I

    move-result v10

    .line 215
    invoke-virtual/range {v23 .. v23}, Lcom/cymobile/ymwork/types/Category;->searchPara()Ljava/lang/String;

    move-result-object v11

    invoke-direct/range {v3 .. v11}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    .line 212
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 240
    .end local v2           #subCat:Lcom/cymobile/ymwork/types/Category;
    .end local v14           #i:I
    .end local v19           #subCatalog:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cymobile/ymwork/types/Category;>;"
    .end local v22           #twoCategory:Lcom/cymobile/ymwork/types/Category;
    .end local v23           #twoCategory1:Lcom/cymobile/ymwork/types/Category;
    :cond_1a
    aget-object v18, p4, v15

    .line 241
    .local v18, pair:Lcom/cymobile/ymwork/types/Pair;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->filterArrayList:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    if-eqz p4, :cond_1b

    move-object/from16 v0, p4

    array-length v3, v0

    if-lez v3, :cond_1b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->selectedFilter:Lcom/cymobile/ymwork/types/Pair;

    if-nez v3, :cond_1b

    .line 243
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->selectedFilter:Lcom/cymobile/ymwork/types/Pair;

    if-nez v3, :cond_1b

    .line 244
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->selectedFilter:Lcom/cymobile/ymwork/types/Pair;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 239
    :cond_1b
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_4
.end method

.method private showCategory()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 258
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->categoryLayout:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->prepareShowLayout(Landroid/view/View;)V

    .line 259
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->btnCategoryFilter:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 260
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->btnCategoryFilter:Landroid/widget/Button;

    .line 261
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->mSelectedArrow:Landroid/graphics/drawable/Drawable;

    .line 260
    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 262
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->categoryLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 263
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->categoryLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->animPushTopIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 264
    return-void
.end method

.method private showClassesCategory()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 267
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->categoryClassesLayout:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->prepareShowLayout(Landroid/view/View;)V

    .line 268
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->btnNewCategory:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 269
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->btnNewCategory:Landroid/widget/Button;

    .line 270
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->mSelectedArrow:Landroid/graphics/drawable/Drawable;

    .line 269
    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 271
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->categoryClassesLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 272
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->categoryClassesLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->animPushTopIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 273
    return-void
.end method

.method private showFilter()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 276
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->filterLayout:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->prepareShowLayout(Landroid/view/View;)V

    .line 277
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->btnMoreFilter:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 278
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->btnMoreFilter:Landroid/widget/Button;

    .line 279
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->mSelectedArrow:Landroid/graphics/drawable/Drawable;

    .line 278
    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 280
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->filterLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 281
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->filterLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->animPushTopIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 282
    return-void
.end method


# virtual methods
.method protected classChanged(Z)V
    .locals 3
    .parameter "changed"

    .prologue
    .line 533
    .line 534
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->shopListDataSource:Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;

    iget-object v2, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->selectedClassesCategory:Lcom/cymobile/ymwork/types/Category;

    invoke-virtual {v1, v2}, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->setCurClass(Lcom/cymobile/ymwork/types/Category;)Z

    move-result v1

    or-int v0, p1, v1

    .line 535
    .local v0, bool:Z
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->shopListDataSource:Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;

    iget-object v2, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->selectedFilter:Lcom/cymobile/ymwork/types/Pair;

    invoke-virtual {v1, v2}, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->setCurFilterId(Lcom/cymobile/ymwork/types/Pair;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 536
    const/4 v0, 0x1

    .line 537
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->selectedFilter:Lcom/cymobile/ymwork/types/Pair;

    invoke-direct {p0, v1}, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->checkFilterable(Lcom/cymobile/ymwork/types/Pair;)Z

    .line 539
    :cond_0
    if-eqz v0, :cond_1

    .line 540
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->shopListDataSource:Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->reset(Z)V

    .line 541
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->shopListDataSource:Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->reload(Z)V

    .line 544
    :cond_1
    return-void
.end method

.method public getFilterDataSource()Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->shopListDataSource:Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;

    return-object v0
.end method

.method protected abstract inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8
    .parameter "paramBundle"

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 288
    invoke-super {p0, p1}, Lcom/cymobile/ymwork/widget/YMFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 289
    new-instance v0, Lcom/cymobile/ymwork/adapter/MainFilterAdapter;

    invoke-virtual {p0}, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/cymobile/ymwork/adapter/MainFilterAdapter;-><init>(Ljava/util/ArrayList;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->mainFilterAdapter:Lcom/cymobile/ymwork/adapter/MainFilterAdapter;

    .line 290
    new-instance v0, Lcom/cymobile/ymwork/adapter/SubFilterAdapter;

    invoke-virtual {p0}, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/cymobile/ymwork/adapter/SubFilterAdapter;-><init>(Ljava/util/ArrayList;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->subFilterAdapter:Lcom/cymobile/ymwork/adapter/SubFilterAdapter;

    .line 291
    new-instance v0, Lcom/cymobile/ymwork/adapter/MainClassFilterAdapter;

    invoke-virtual {p0}, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/cymobile/ymwork/adapter/MainClassFilterAdapter;-><init>(Ljava/util/ArrayList;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->mainClassFilterAdapter:Lcom/cymobile/ymwork/adapter/MainClassFilterAdapter;

    .line 292
    new-instance v0, Lcom/cymobile/ymwork/adapter/SubClassFilterAdapter;

    invoke-virtual {p0}, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/cymobile/ymwork/adapter/SubClassFilterAdapter;-><init>(Ljava/util/ArrayList;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->subClassFilterAdapter:Lcom/cymobile/ymwork/adapter/SubClassFilterAdapter;

    .line 293
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->categoryDoubleList:Lcom/cymobile/ymwork/widget/DoubleLevelList;

    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->mainFilterAdapter:Lcom/cymobile/ymwork/adapter/MainFilterAdapter;

    iget-object v2, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->subFilterAdapter:Lcom/cymobile/ymwork/adapter/SubFilterAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/cymobile/ymwork/widget/DoubleLevelList;->setAdapter(Lcom/cymobile/ymwork/adapter/IFilterAdapter;Lcom/cymobile/ymwork/adapter/IFilterAdapter;)V

    .line 294
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->categoryDoubleList:Lcom/cymobile/ymwork/widget/DoubleLevelList;

    .line 295
    new-instance v1, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport$1;

    invoke-direct {v1, p0}, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport$1;-><init>(Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;)V

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/widget/DoubleLevelList;->setOnDoubleItemClickListener(Lcom/cymobile/ymwork/widget/DoubleLevelList$OnDoubleItemClickListener;)V

    .line 312
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->categoryClassesDoubleList:Lcom/cymobile/ymwork/widget/DoubleClassList;

    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->mainClassFilterAdapter:Lcom/cymobile/ymwork/adapter/MainClassFilterAdapter;

    iget-object v2, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->subClassFilterAdapter:Lcom/cymobile/ymwork/adapter/SubClassFilterAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/cymobile/ymwork/widget/DoubleClassList;->setAdapter(Lcom/cymobile/ymwork/adapter/IFilterAdapter;Lcom/cymobile/ymwork/adapter/IFilterAdapter;)V

    .line 313
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->categoryClassesDoubleList:Lcom/cymobile/ymwork/widget/DoubleClassList;

    new-instance v1, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport$2;

    invoke-direct {v1, p0}, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport$2;-><init>(Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;)V

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/widget/DoubleClassList;->setOnDoubleItemClickListener(Lcom/cymobile/ymwork/widget/DoubleClassList$OnDoubleItemClickListener;)V

    .line 336
    new-instance v0, Lcom/cymobile/ymwork/adapter/SubFilterAdapter;

    invoke-virtual {p0}, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/cymobile/ymwork/adapter/SubFilterAdapter;-><init>(Ljava/util/ArrayList;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->filterPairAdapter:Lcom/cymobile/ymwork/adapter/SubFilterAdapter;

    .line 337
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->filterPairAdapter:Lcom/cymobile/ymwork/adapter/SubFilterAdapter;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/adapter/SubFilterAdapter;->setNormalTextColor(I)V

    .line 338
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->filterPairListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->filterPairAdapter:Lcom/cymobile/ymwork/adapter/SubFilterAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 339
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->filterPairListView:Landroid/widget/ListView;

    new-instance v1, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport$3;

    invoke-direct {v1, p0}, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport$3;-><init>(Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 372
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->shopListDataSource:Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->shopListDataSource:Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->curCategory()Lcom/cymobile/ymwork/types/Category;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->btnCategoryFilter:Landroid/widget/Button;

    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->shopListDataSource:Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->curCategory()Lcom/cymobile/ymwork/types/Category;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/Category;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->shopListDataSource:Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->shopListDataSource:Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->curClasses()Lcom/cymobile/ymwork/types/Category;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 376
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->btnNewCategory:Landroid/widget/Button;

    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->shopListDataSource:Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->curClasses()Lcom/cymobile/ymwork/types/Category;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/Category;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 378
    :cond_1
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->shopListDataSource:Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->shopListDataSource:Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->curFilterId()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 379
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->btnMoreFilter:Landroid/widget/Button;

    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->shopListDataSource:Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->curFilterId()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/Pair;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 381
    :cond_2
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->shopListDataSource:Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->filterCategories()[Lcom/cymobile/ymwork/types/Category;

    move-result-object v1

    .line 382
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->shopListDataSource:Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->filterClassesCategories()[Lcom/cymobile/ymwork/types/Category;

    move-result-object v2

    .line 383
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->shopListDataSource:Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->curClasses()Lcom/cymobile/ymwork/types/Category;

    move-result-object v3

    .line 384
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->shopListDataSource:Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->filterIds()[Lcom/cymobile/ymwork/types/Pair;

    move-result-object v4

    .line 385
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->shopListDataSource:Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->curCategory()Lcom/cymobile/ymwork/types/Category;

    move-result-object v5

    .line 386
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->shopListDataSource:Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->curFilterId()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v6

    move-object v0, p0

    .line 381
    invoke-direct/range {v0 .. v6}, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->setNavs([Lcom/cymobile/ymwork/types/Category;[Lcom/cymobile/ymwork/types/Category;Lcom/cymobile/ymwork/types/Category;[Lcom/cymobile/ymwork/types/Pair;Lcom/cymobile/ymwork/types/Category;Lcom/cymobile/ymwork/types/Pair;)V

    .line 387
    invoke-virtual {p0}, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f040002

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->animPushTopIn:Landroid/view/animation/Animation;

    .line 388
    invoke-virtual {p0}, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f040003

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->animPushTopOut:Landroid/view/animation/Animation;

    .line 389
    invoke-virtual {p0}, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->mNormalArrow:Landroid/graphics/drawable/Drawable;

    .line 390
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->mNormalArrow:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->mNormalArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->mNormalArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v7, v7, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 391
    invoke-virtual {p0}, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->mSelectedArrow:Landroid/graphics/drawable/Drawable;

    .line 392
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->mSelectedArrow:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->mSelectedArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->mSelectedArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v7, v7, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 393
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 397
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->onBackPressed(Z)Z

    move-result v0

    return v0
.end method

.method public onBackPressed(Z)Z
    .locals 3
    .parameter "force"

    .prologue
    .line 401
    iget-object v2, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->categoryLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v0

    .line 402
    .local v0, i:I
    const/4 v1, 0x0

    .line 403
    .local v1, ret:Z
    if-nez v0, :cond_0

    .line 404
    const/4 v1, 0x1

    .line 405
    invoke-direct {p0, p1}, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->dismissCategory(Z)V

    .line 407
    :cond_0
    iget-object v2, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->filterLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 408
    const/4 v1, 0x1

    .line 409
    invoke-direct {p0, p1}, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->dismissFilter(Z)V

    .line 412
    :cond_1
    iget-object v2, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->categoryClassesLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 413
    const/4 v1, 0x1

    .line 414
    invoke-direct {p0, p1}, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->dismissClassCategory(Z)V

    .line 416
    :cond_2
    return v1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "paramLayoutInflater"
    .parameter "viewGroup"
    .parameter "bundle"

    .prologue
    const v3, 0x7f02001b

    .line 422
    invoke-virtual {p0, p1, p2}, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 423
    .local v0, parentView:Landroid/view/View;
    const v1, 0x7f0800b9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->categoryClassesLayout:Landroid/view/View;

    .line 424
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->categoryClassesLayout:Landroid/view/View;

    new-instance v2, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport$4;

    invoke-direct {v2, p0}, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport$4;-><init>(Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 429
    const v1, 0x7f0800b6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->categoryLayout:Landroid/view/View;

    .line 430
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->categoryLayout:Landroid/view/View;

    new-instance v2, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport$5;

    invoke-direct {v2, p0}, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport$5;-><init>(Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 435
    const v1, 0x7f0800bb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->filterLayout:Landroid/view/View;

    .line 436
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->filterLayout:Landroid/view/View;

    new-instance v2, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport$6;

    invoke-direct {v2, p0}, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport$6;-><init>(Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 442
    const v1, 0x7f0800b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/widget/DoubleLevelList;

    .line 441
    iput-object v1, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->categoryDoubleList:Lcom/cymobile/ymwork/widget/DoubleLevelList;

    .line 443
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->categoryDoubleList:Lcom/cymobile/ymwork/widget/DoubleLevelList;

    invoke-virtual {v1, v3}, Lcom/cymobile/ymwork/widget/DoubleLevelList;->setBackgroundResource(I)V

    .line 446
    const v1, 0x7f0800ba

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/widget/DoubleClassList;

    .line 445
    iput-object v1, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->categoryClassesDoubleList:Lcom/cymobile/ymwork/widget/DoubleClassList;

    .line 447
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->categoryDoubleList:Lcom/cymobile/ymwork/widget/DoubleLevelList;

    invoke-virtual {v1, v3}, Lcom/cymobile/ymwork/widget/DoubleLevelList;->setBackgroundResource(I)V

    .line 448
    const v1, 0x7f0800bc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->filterPairListView:Landroid/widget/ListView;

    .line 449
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->filterPairListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setBackgroundResource(I)V

    .line 451
    const v1, 0x7f0800b2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->btnNewCategory:Landroid/widget/Button;

    .line 452
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->btnNewCategory:Landroid/widget/Button;

    const-string v2, "\u5168\u90e8\u5206\u7c7b"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 453
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->btnNewCategory:Landroid/widget/Button;

    new-instance v2, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport$7;

    invoke-direct {v2, p0}, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport$7;-><init>(Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 463
    const v1, 0x7f0800b3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->btnCategoryFilter:Landroid/widget/Button;

    .line 464
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->btnCategoryFilter:Landroid/widget/Button;

    new-instance v2, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport$8;

    invoke-direct {v2, p0}, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport$8;-><init>(Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 474
    const v1, 0x7f0800b4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->btnMoreFilter:Landroid/widget/Button;

    .line 475
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->btnMoreFilter:Landroid/widget/Button;

    new-instance v2, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport$9;

    invoke-direct {v2, p0}, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport$9;-><init>(Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 485
    return-object v0
.end method

.method public onDataChanged(I)V
    .locals 7
    .parameter "data"

    .prologue
    .line 489
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->shopListDataSource:Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->filterCategories()[Lcom/cymobile/ymwork/types/Category;

    move-result-object v1

    .line 490
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->shopListDataSource:Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->filterClassesCategories()[Lcom/cymobile/ymwork/types/Category;

    move-result-object v2

    .line 491
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->shopListDataSource:Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->curClasses()Lcom/cymobile/ymwork/types/Category;

    move-result-object v3

    .line 492
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->shopListDataSource:Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->filterIds()[Lcom/cymobile/ymwork/types/Pair;

    move-result-object v4

    .line 493
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->shopListDataSource:Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->curCategory()Lcom/cymobile/ymwork/types/Category;

    move-result-object v5

    .line 494
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->shopListDataSource:Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->curFilterId()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v6

    move-object v0, p0

    .line 489
    invoke-direct/range {v0 .. v6}, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->setNavs([Lcom/cymobile/ymwork/types/Category;[Lcom/cymobile/ymwork/types/Category;Lcom/cymobile/ymwork/types/Category;[Lcom/cymobile/ymwork/types/Pair;Lcom/cymobile/ymwork/types/Category;Lcom/cymobile/ymwork/types/Pair;)V

    .line 495
    const-string v0, "filterClassesCategories"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->shopListDataSource:Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;

    invoke-virtual {v2}, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->filterClassesCategories()[Lcom/cymobile/ymwork/types/Category;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 499
    invoke-super {p0}, Lcom/cymobile/ymwork/widget/YMFragment;->onPause()V

    .line 500
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->shopListDataSource:Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->shopListDataSource:Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;

    invoke-virtual {v0, p0}, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->removeDataChangeListener(Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport$OnDataChangeListener;)V

    .line 502
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 505
    invoke-super {p0}, Lcom/cymobile/ymwork/widget/YMFragment;->onResume()V

    .line 506
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->shopListDataSource:Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->shopListDataSource:Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;

    invoke-virtual {v0, p0}, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->addDataChangeListener(Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport$OnDataChangeListener;)V

    .line 508
    :cond_0
    return-void
.end method

.method protected prepareShowLayout(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    const/4 v1, 0x0

    .line 511
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->categoryLayout:Landroid/view/View;

    if-eq p1, v0, :cond_0

    .line 512
    invoke-direct {p0, v1}, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->dismissCategory(Z)V

    .line 513
    :cond_0
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->filterLayout:Landroid/view/View;

    if-eq p1, v0, :cond_1

    .line 514
    invoke-direct {p0, v1}, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->dismissFilter(Z)V

    .line 515
    :cond_1
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->categoryClassesLayout:Landroid/view/View;

    if-eq p1, v0, :cond_2

    .line 516
    invoke-direct {p0, v1}, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->dismissClassCategory(Z)V

    .line 517
    :cond_2
    return-void
.end method

.method protected selectionChanged(Z)V
    .locals 3
    .parameter "changed"

    .prologue
    .line 520
    .line 521
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->shopListDataSource:Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;

    iget-object v2, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->selectedCategory:Lcom/cymobile/ymwork/types/Category;

    invoke-virtual {v1, v2}, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->setCurCategory(Lcom/cymobile/ymwork/types/Category;)Z

    move-result v1

    or-int v0, p1, v1

    .line 522
    .local v0, bool:Z
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->shopListDataSource:Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;

    iget-object v2, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->selectedFilter:Lcom/cymobile/ymwork/types/Pair;

    invoke-virtual {v1, v2}, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->setCurFilterId(Lcom/cymobile/ymwork/types/Pair;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 523
    const/4 v0, 0x1

    .line 524
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->selectedFilter:Lcom/cymobile/ymwork/types/Pair;

    invoke-direct {p0, v1}, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->checkFilterable(Lcom/cymobile/ymwork/types/Pair;)Z

    .line 526
    :cond_0
    if-eqz v0, :cond_1

    .line 527
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->shopListDataSource:Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->reset(Z)V

    .line 528
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->shopListDataSource:Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->reload(Z)V

    .line 531
    :cond_1
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 546
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->btnCategoryFilter:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 547
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->btnMoreFilter:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 548
    return-void
.end method

.method public setShopListDataSource(Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;)V
    .locals 0
    .parameter "filterDataSource"

    .prologue
    .line 551
    iput-object p1, p0, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->shopListDataSource:Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;

    .line 552
    return-void
.end method
