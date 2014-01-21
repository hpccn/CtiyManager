.class public Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;
.super Ljava/lang/Object;
.source "FilterDataSourcePublicReport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport$OnDataChangeListener;
    }
.end annotation


# static fields
.field public static final DATATYPE_STATUS:I = 0x1

.field public static final DEFAULT_FILTER:Lcom/cymobile/ymwork/types/Pair; = null

.field public static final Filter_Default:I = 0x1

.field public static final Filter_Distance:I = 0x4

.field public static final Filter_Recent:I = 0x1

.field public static final Filter_RecentDesc:I = 0x2

.field public static final Filter_area:I = 0x3

.field public static final STATUS_FAILED:I = 0x3

.field public static final STATUS_LOADING:I = 0x1

.field public static final STATUS_NONE:I = 0x0

.field public static final STATUS_SUCCESS:I = 0x2

.field public static TOP_CATEGORY:Lcom/cymobile/ymwork/types/Category;

.field public static TOP_ClASSES:Lcom/cymobile/ymwork/types/Category;

.field public static final TOP_REGION:Lcom/cymobile/ymwork/types/Region;

.field public static a:[Ljava/lang/String;

.field protected static filterCategories:[Lcom/cymobile/ymwork/types/Category;

.field protected static filterClassesCategories:[Lcom/cymobile/ymwork/types/Category;


# instance fields
.field private curCategory:Lcom/cymobile/ymwork/types/Category;

.field private curClasses:Lcom/cymobile/ymwork/types/Category;

.field private curFilterId:Lcom/cymobile/ymwork/types/Pair;

.field private curRange:Lcom/cymobile/ymwork/types/Pair;

.field private filterIds:[Lcom/cymobile/ymwork/types/Pair;

.field protected filterRanges:[Lcom/cymobile/ymwork/types/Pair;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const-wide/16 v4, 0x0

    const/16 v7, 0x1f4

    const/4 v9, 0x2

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 24
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u566a\u58f0\u6270\u6c11"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "\u4e71\u6536\u8d39"

    aput-object v2, v0, v1

    const-string v1, "\u52b3\u52a8\u7ea0\u7eb7"

    aput-object v1, v0, v9

    const/4 v1, 0x3

    const-string v2, "\u5b63\u8282\u6027\u95ee\u9898"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u62c6\u8fc1\u95ee\u9898"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u505c\u6c34\u95ee\u9898"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u6709\u9650"

    aput-object v2, v0, v1

    sput-object v0, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->a:[Ljava/lang/String;

    .line 821
    new-instance v0, Lcom/cymobile/ymwork/types/Region;

    const-string v1, "\u5168\u90e8"

    invoke-direct {v0, v3, v1, v3}, Lcom/cymobile/ymwork/types/Region;-><init>(ILjava/lang/String;I)V

    sput-object v0, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->TOP_REGION:Lcom/cymobile/ymwork/types/Region;

    .line 863
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x1ae19

    const-string v3, "\u5168\u90e8"

    move-object v8, v6

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->TOP_CATEGORY:Lcom/cymobile/ymwork/types/Category;

    .line 885
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/16 v1, 0x1

    const-string v3, "\u5168\u90e8"

    move-object v8, v6

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->TOP_ClASSES:Lcom/cymobile/ymwork/types/Category;

    .line 907
    new-instance v0, Lcom/cymobile/ymwork/types/Pair;

    const-string v1, "1"

    const-string v2, "\u9ed8\u8ba4\u6392\u5e8f"

    invoke-direct {v0, v1, v2, v9}, Lcom/cymobile/ymwork/types/Pair;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->DEFAULT_FILTER:Lcom/cymobile/ymwork/types/Pair;

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 823
    new-instance v0, Lcom/cymobile/ymwork/types/Pair;

    const-string v1, "1"

    const-string v2, "\u5f53\u5929"

    invoke-direct {v0, v1, v2, v4}, Lcom/cymobile/ymwork/types/Pair;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->curRange:Lcom/cymobile/ymwork/types/Pair;

    .line 867
    sget-object v0, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->TOP_CATEGORY:Lcom/cymobile/ymwork/types/Category;

    iput-object v0, p0, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->curCategory:Lcom/cymobile/ymwork/types/Category;

    .line 889
    sget-object v0, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->TOP_ClASSES:Lcom/cymobile/ymwork/types/Category;

    iput-object v0, p0, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->curClasses:Lcom/cymobile/ymwork/types/Category;

    .line 908
    sget-object v0, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->DEFAULT_FILTER:Lcom/cymobile/ymwork/types/Pair;

    iput-object v0, p0, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->curFilterId:Lcom/cymobile/ymwork/types/Pair;

    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/cymobile/ymwork/types/Pair;

    iput-object v0, p0, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->filterIds:[Lcom/cymobile/ymwork/types/Pair;

    .line 27
    iget-object v0, p0, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->filterIds:[Lcom/cymobile/ymwork/types/Pair;

    new-instance v1, Lcom/cymobile/ymwork/types/Pair;

    const-string v2, "1"

    const-string v3, "\u9ed8\u8ba4\u6392\u5e8f"

    invoke-direct {v1, v2, v3, v5}, Lcom/cymobile/ymwork/types/Pair;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v1, v0, v4

    .line 28
    iget-object v0, p0, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->filterIds:[Lcom/cymobile/ymwork/types/Pair;

    new-instance v1, Lcom/cymobile/ymwork/types/Pair;

    const-string v2, "1"

    const-string v3, "\u4e0a\u62a5\u65f6\u95f4\u4ece\u65b0\u5230\u65e7"

    invoke-direct {v1, v2, v3, v5}, Lcom/cymobile/ymwork/types/Pair;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v1, v0, v6

    .line 29
    iget-object v0, p0, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->filterIds:[Lcom/cymobile/ymwork/types/Pair;

    new-instance v1, Lcom/cymobile/ymwork/types/Pair;

    const-string v2, "2"

    const-string v3, "\u4e0a\u62a5\u65f6\u95f4\u4ece\u65e7\u5230\u65b0"

    invoke-direct {v1, v2, v3, v5}, Lcom/cymobile/ymwork/types/Pair;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v1, v0, v5

    .line 32
    const-string v0, "PreferencesUtils.getSubClasses()"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getSubZone()Lcom/cymobile/ymwork/types/Group;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-static {}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getSubZone()Lcom/cymobile/ymwork/types/Group;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getSubZone()Lcom/cymobile/ymwork/types/Group;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 34
    invoke-static {}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getSubZone()Lcom/cymobile/ymwork/types/Group;

    move-result-object v0

    invoke-static {v0}, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->setCategory(Lcom/cymobile/ymwork/types/Group;)V

    .line 35
    invoke-static {}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getSubClasses()Lcom/cymobile/ymwork/types/Group;

    move-result-object v0

    invoke-static {v0}, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->setCategoryClass(Lcom/cymobile/ymwork/types/Group;)V

    .line 48
    :goto_0
    return-void

    .line 37
    :cond_0
    new-array v0, v6, [Lcom/cymobile/ymwork/types/Category;

    sput-object v0, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->filterCategories:[Lcom/cymobile/ymwork/types/Category;

    .line 38
    sget-object v0, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->filterCategories:[Lcom/cymobile/ymwork/types/Category;

    sget-object v1, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->TOP_CATEGORY:Lcom/cymobile/ymwork/types/Category;

    aput-object v1, v0, v4

    .line 40
    new-array v0, v6, [Lcom/cymobile/ymwork/types/Category;

    sput-object v0, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->filterClassesCategories:[Lcom/cymobile/ymwork/types/Category;

    .line 41
    sget-object v0, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->filterClassesCategories:[Lcom/cymobile/ymwork/types/Category;

    sget-object v1, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->TOP_ClASSES:Lcom/cymobile/ymwork/types/Category;

    aput-object v1, v0, v4

    goto :goto_0
.end method

.method public static getOrderDescStr(I)Ljava/lang/String;
    .locals 1
    .parameter "id"

    .prologue
    .line 980
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 981
    const-string v0, "timedown"

    .line 992
    :goto_0
    return-object v0

    .line 983
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 984
    const-string v0, "timeup"

    goto :goto_0

    .line 986
    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    .line 987
    const-string v0, "mianjidesc"

    goto :goto_0

    .line 989
    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    .line 990
    const-string v0, "distance"

    goto :goto_0

    .line 992
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static resetTOPCategory(JLjava/lang/String;)V
    .locals 9
    .parameter "zoneCode"
    .parameter "zoneName"

    .prologue
    const/4 v6, 0x0

    .line 865
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/16 v4, 0x0

    const/16 v7, 0x1f4

    move-wide v1, p0

    move-object v3, p2

    move-object v8, v6

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->TOP_CATEGORY:Lcom/cymobile/ymwork/types/Category;

    .line 866
    return-void
.end method

.method public static resetTOPClass(JLjava/lang/String;)V
    .locals 9
    .parameter "zoneCode"
    .parameter "zoneName"

    .prologue
    const/4 v6, 0x0

    .line 887
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/16 v4, 0x0

    const/16 v7, 0x1f4

    move-wide v1, p0

    move-object v3, p2

    move-object v8, v6

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->TOP_CATEGORY:Lcom/cymobile/ymwork/types/Category;

    .line 888
    return-void
.end method

.method public static setCategory(Lcom/cymobile/ymwork/types/Group;)V
    .locals 17
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cymobile/ymwork/types/Group",
            "<",
            "Lcom/cymobile/ymwork/types/Zone;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 656
    .local p0, subzoneStr:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/Zone;>;"
    const/4 v15, 0x1

    .line 657
    .local v15, startIndex:I
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 658
    .local v14, retZones:Ljava/util/List;,"Ljava/util/List<Lcom/cymobile/ymwork/types/Category;>;"
    if-eqz p0, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 659
    sget-object v1, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->TOP_CATEGORY:Lcom/cymobile/ymwork/types/Category;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/Category;->id()J

    move-result-wide v4

    const-wide/32 v6, 0x1ae19

    cmp-long v1, v4, v6

    if-nez v1, :cond_0

    .line 660
    const/16 v15, 0x5d

    .line 667
    :cond_0
    sget-object v1, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->TOP_CATEGORY:Lcom/cymobile/ymwork/types/Category;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/Category;->id()J

    move-result-wide v2

    .line 668
    .local v2, topid:J
    sget-object v1, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->TOP_CATEGORY:Lcom/cymobile/ymwork/types/Category;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/Category;->name()Ljava/lang/String;

    move-result-object v1

    const-string v4, "\u5168\u90e8"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 669
    new-instance v1, Lcom/cymobile/ymwork/types/Category;

    sget-object v4, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->TOP_CATEGORY:Lcom/cymobile/ymwork/types/Category;

    invoke-virtual {v4}, Lcom/cymobile/ymwork/types/Category;->name()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1f4

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 673
    :goto_0
    const/4 v1, 0x1

    if-eq v15, v1, :cond_1

    .line 674
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v5, 0x690121f

    const-string v7, "\u7518\u9756\u4e2d\u5e38\u52a1\u526f\u533a\u957f"

    const-wide/32 v8, 0x1ae19

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 675
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide v5, 0x19a2c6c919L

    const-string v7, "\u533a\u56fd\u8d44\u59d4\u53ca\u5176\u76d1\u7ba1\u4f01\u4e1a"

    const-wide/32 v8, 0x690121f

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 676
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide v5, 0x19a2c6c91aL

    const-string v7, "\u533a\u91d1\u878d\u529e"

    const-wide/32 v8, 0x690121f

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 677
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide v5, 0x19a2c6c91bL

    const-string v7, "\u533a\u4f4f\u623f\u57ce\u4e61\u5efa\u8bbe\u4f1a"

    const-wide/32 v8, 0x690121f

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 678
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide v5, 0x19a2c6c91cL

    const-string v7, "\u533a\u623f\u7ba1\u5c40(\u533a\u4f4f\u623f\u4fdd\u969c\u548c\u6539\u9769\u529e)"

    const-wide/32 v8, 0x690121f

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 679
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide v5, 0x19a2c6c91dL

    const-string v7, "\u5e02\u89c4\u5212\u59d4\u671d\u9633\u5206\u5c40"

    const-wide/32 v8, 0x690121f

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 680
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide v5, 0x19a2c6c91eL

    const-string v7, "\u5e02\u56fd\u571f\u5c40\u671d\u9633\u5206\u5c40"

    const-wide/32 v8, 0x690121f

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 681
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide v5, 0x19a2c6c91fL

    const-string v7, "\u5317\u4eac\u5546\u52a1\u4e2d\u5fc3\u533a\u7ba1\u59d4\u4f1a"

    const-wide/32 v8, 0x690121f

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 682
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide v5, 0x19a2c6c920L

    const-string v7, "\u91d1\u76cf\u91d1\u878d\u670d\u52a1\u56ed\u533a\u7ba1\u59d4\u4f1a"

    const-wide/32 v8, 0x690121f

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 683
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide v5, 0x19a2c6c921L

    const-string v7, "\u5e02\u571f\u5730\u6574\u7406\u50a8\u5907\u4e2d\u5fc3\u671d\u9633\u5206\u4e2d\u5fc3"

    const-wide/32 v8, 0x690121f

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 684
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v5, 0x6901220

    const-string v7, "\u9648\u6d9b\u526f\u533a\u957f"

    const-wide/32 v8, 0x1ae19

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 685
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide v5, 0x19a2c6cd01L

    const-string v7, "\u533a\u519c\u59d4(\u533a\u52a8\u7269\u536b\u751f\u76d1\u7763\u7ba1\u7406\u5c40)"

    const-wide/32 v8, 0x6901220

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 686
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide v5, 0x19a2c6cd02L

    const-string v7, "\u5404\u5730\u533a\u529e\u4e8b\u5904(\u4e61\u653f\u5e9c)"

    const-wide/32 v8, 0x6901220

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 687
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide v5, 0x19a2c6cd03L

    const-string v7, "\u533a\u519c\u6751\u96c6\u4f53\u7ecf\u6d4e\u529e\u516c\u5ba4"

    const-wide/32 v8, 0x6901220

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 688
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide v5, 0x19a2c6cd04L

    const-string v7, "\u533a\u79cd\u690d\u4e1a\u517b\u6b96\u4e1a\u670d\u52a1\u4e2d\u5fc3"

    const-wide/32 v8, 0x6901220

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 689
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide v5, 0x19a2c6cd05L

    const-string v7, "\u533a\u519c\u4e1a\u7efc\u5408\u6267\u6cd5\u5927\u961f"

    const-wide/32 v8, 0x6901220

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 690
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide v5, 0x19a2c6cd06L

    const-string v7, "\u533a\u519c\u6751\u4eba\u624d\u57f9\u8bad\u4e2d\u5fc3"

    const-wide/32 v8, 0x6901220

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 691
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide v5, 0x19a2c6cd07L

    const-string v7, "\u533a\u4eba\u529b\u793e\u4fdd\u5c40"

    const-wide/32 v8, 0x6901220

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 692
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide v5, 0x19a2c6cd08L

    const-string v7, "\u533a\u4fe1\u8bbf\u529e(\u533a\u793e\u4f1a\u77db\u76fe\u8c03\u5904\u4e2d\u5fc3)"

    const-wide/32 v8, 0x6901220

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 693
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide v5, 0x19a2c6cd09L

    const-string v7, "\u533a\u7eff\u6307\u529e"

    const-wide/32 v8, 0x6901220

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 694
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide v5, 0x19a2c6cd0aL

    const-string v7, "\u6e29\u6986\u6cb3\u751f\u6001\u8d70\u5eca\u7ba1\u59d4\u4f1a"

    const-wide/32 v8, 0x6901220

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 695
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide v5, 0x19a2c6cd0bL

    const-string v7, "\u4e1c\u575d\u56fd\u9645\u5546\u8d38\u4e2d\u5fc3\u533a\u7ba1\u59d4\u4f1a"

    const-wide/32 v8, 0x6901220

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 696
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide v5, 0x19a2c6cd0cL

    const-string v7, "\u7530\u534e\u96c6\u56e2\u516c\u53f8"

    const-wide/32 v8, 0x6901220

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 697
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v5, 0x6901221

    const-string v7, "\u738b\u6625\u526f\u533a\u957f"

    const-wide/32 v8, 0x1ae19

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 698
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide v5, 0x19a2c6d0e9L

    const-string v7, "\u533a\u5e02\u653f\u5e02\u5bb9\u59d4(\u533a\u57ce\u4e61\u73af\u5883\u5efa\u8bbe\u529e\u3001\u533a\u4ea4\u901a\u59d4)"

    const-wide/32 v8, 0x6901221

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 699
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide v5, 0x19a2c6d0eaL

    const-string v7, "\u533a\u57ce\u7ba1\u76d1\u7763\u4e2d\u5fc3"

    const-wide/32 v8, 0x6901221

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 700
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide v5, 0x19a2c6d0ebL

    const-string v7, "\u533a\u57ce\u7ba1\u76d1\u5bdf\u5927\u961f"

    const-wide/32 v8, 0x6901221

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 701
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide v5, 0x19a2c6d0ecL

    const-string v7, "\u533a\u56ed\u6797\u7eff\u5316\u5c40(\u533a\u7eff\u5316\u59d4\u529e\u516c\u5ba4)"

    const-wide/32 v8, 0x6901221

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 702
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide v5, 0x19a2c6d0edL

    const-string v7, "\u533a\u73af\u4fdd\u5c40"

    const-wide/32 v8, 0x6901221

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 703
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide v5, 0x19a2c6d0eeL

    const-string v7, "\u533a\u6c34\u52a1\u5c40"

    const-wide/32 v8, 0x6901221

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 704
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide v5, 0x19a2c6d0efL

    const-string v7, "\u533a\u6c11\u9632\u5c40"

    const-wide/32 v8, 0x6901221

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 705
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide v5, 0x19a2c6d0f0L

    const-string v7, "\u533a\u5730\u9707\u5c40"

    const-wide/32 v8, 0x6901221

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 706
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide v5, 0x19a2c6d0f1L

    const-string v7, "\u533a\u73af\u536b\u670d\u52a1\u4e2d\u5fc3"

    const-wide/32 v8, 0x6901221

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 707
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide v5, 0x19a2c6d0f2L

    const-string v7, "\u533a\u5faa\u73af\u7ecf\u6d4e\u4ea7\u4e1a\u56ed\u7ba1\u7406\u4e2d\u5fc3"

    const-wide/32 v8, 0x6901221

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 708
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide v5, 0x19a2c6d0f3L

    const-string v7, "\u533a\u7efc\u6cbb\u529e"

    const-wide/32 v8, 0x6901221

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 709
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide v5, 0x19a2c6d0f4L

    const-string v7, "\u533a\u6d41\u7ba1\u529e"

    const-wide/32 v8, 0x6901221

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 710
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide v5, 0x19a2c6d0f5L

    const-string v7, "\u533a\u653f\u5e9c\u9632\u8303\u548c\u5904\u7406\u90aa\u6559\u95ee\u9898\u529e\u516c\u5ba4"

    const-wide/32 v8, 0x6901221

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 711
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide v5, 0x19a2c6d0f6L

    const-string v7, "\u516c\u5b89\u671d\u9633\u5206\u5c40"

    const-wide/32 v8, 0x6901221

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 712
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide v5, 0x19a2c6d0f7L

    const-string v7, "\u56fd\u5bb6\u5b89\u5168\u671d\u9633\u5206\u5c40"

    const-wide/32 v8, 0x6901221

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 713
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide v5, 0x19a2c6d0f8L

    const-string v7, "\u533a\u53f8\u6cd5\u5c40"

    const-wide/32 v8, 0x6901221

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 714
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide v5, 0x19a2c6d0f9L

    const-string v7, "\u533a\u6cd5\u5236\u529e"

    const-wide/32 v8, 0x6901221

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 715
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide v5, 0x19a2c6d0faL

    const-string v7, "\u671d\u9633\u4ea4\u901a\u652f\u961f"

    const-wide/32 v8, 0x6901221

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 716
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide v5, 0x19a2c6d0fbL

    const-string v7, "\u671d\u9633\u6d88\u9632\u652f\u961f"

    const-wide/32 v8, 0x6901221

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 717
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide v5, 0x19a2c6d0fcL

    const-string v7, "\u5965\u6797\u5339\u514b\u516c\u56ed\u7ba1\u59d4\u4f1a"

    const-wide/32 v8, 0x6901221

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 718
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v5, 0x6901222

    const-string v7, "\u5f20\u7acb\u65b0\u526f\u533a\u957f"

    const-wide/32 v8, 0x1ae19

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 719
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide v5, 0x19a2c6d4d1L

    const-string v7, "\u533a\u6559\u59d4"

    const-wide/32 v8, 0x6901222

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 720
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide v5, 0x19a2c6d4d2L

    const-string v7, "\u533a\u653f\u5e9c\u6559\u80b2\u7763\u5bfc\u5ba4"

    const-wide/32 v8, 0x6901222

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 721
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide v5, 0x19a2c6d4d3L

    const-string v7, "\u533a\u6587\u5316\u59d4"

    const-wide/32 v8, 0x6901222

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 722
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide v5, 0x19a2c6d4d4L

    const-string v7, "\u533a\u536b\u751f\u5c40"

    const-wide/32 v8, 0x6901222

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 723
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide v5, 0x19a2c6d4d5L

    const-string v7, "\u5e02\u836f\u54c1\u76d1\u7763\u5c40\u671d\u9633\u5206\u5c40"

    const-wide/32 v8, 0x6901222

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 724
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide v5, 0x19a2c6d4d6L

    const-string v7, "\u533a\u6587\u660e\u529e"

    const-wide/32 v8, 0x6901222

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 725
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide v5, 0x19a2c6d4d7L

    const-string v7, "\u533a\u5916\u529e"

    const-wide/32 v8, 0x6901222

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 726
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide v5, 0x19a2c6d4d8L

    const-string v7, "\u533a\u4f53\u80b2\u5c40"

    const-wide/32 v8, 0x6901222

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 727
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide v5, 0x19a2c6d4d9L

    const-string v7, "\u533a\u4eba\u53e3\u8ba1\u751f\u59d4"

    const-wide/32 v8, 0x6901222

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 728
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide v5, 0x19a2c6d4daL

    const-string v7, "\u533a\u6c11\u653f\u5c40"

    const-wide/32 v8, 0x6901222

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 729
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide v5, 0x19a2c6d4dbL

    const-string v7, "\u533a\u8001\u9f84\u529e"

    const-wide/32 v8, 0x6901222

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 730
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide v5, 0x19a2c6d4dcL

    const-string v7, "\u533a\u5e7f\u64ad\u7535\u89c6\u65b0\u95fb\u4e2d\u5fc3"

    const-wide/32 v8, 0x6901222

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 731
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide v5, 0x19a2c6d4ddL

    const-string v7, "\u793e\u533a\u5b66\u9662"

    const-wide/32 v8, 0x6901222

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 732
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide v5, 0x19a2c6d4deL

    const-string v7, "\u6f58\u5bb6\u56ed\u6587\u5316\u4ea7\u4e1a\u53d1\u5c55\u4e2d\u5fc3"

    const-wide/32 v8, 0x6901222

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 733
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide v5, 0x19a2c6d4dfL

    const-string v7, "\u5b9a\u798f\u5e84\u4f20\u5a92\u6587\u5316\u4ea7\u4e1a\u533a\u7ba1\u59d4\u4f1a"

    const-wide/32 v8, 0x6901222

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 734
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v5, 0x6901223

    const-string v7, "\u82d1\u6587\u65b0\u526f\u533a\u957f"

    const-wide/32 v8, 0x1ae19

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 735
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide v5, 0x19a2c6d8b9L

    const-string v7, "\u533a\u793e\u4f1a\u529e"

    const-wide/32 v8, 0x6901223

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 736
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide v5, 0x19a2c6d8baL

    const-string v7, "\u5404\u8857\u9053\u529e\u4e8b\u5904"

    const-wide/32 v8, 0x6901223

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 737
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide v5, 0x19a2c6d8bbL

    const-string v7, "\u5de5\u5546\u671d\u9633\u5206\u5c40(\u533a\u98df\u54c1\u5b89\u5168\u529e)"

    const-wide/32 v8, 0x6901223

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 738
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide v5, 0x19a2c6d8bcL

    const-string v7, "\u533a\u6295\u8d44\u4fc3\u8fdb\u5c40"

    const-wide/32 v8, 0x6901223

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 739
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide v5, 0x19a2c6d8bdL

    const-string v7, "\u533a\u8d28\u76d1\u5c40"

    const-wide/32 v8, 0x6901223

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 740
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide v5, 0x19a2c6d8beL

    const-string v7, "\u533a\u6c11\u5b97\u529e"

    const-wide/32 v8, 0x6901223

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 741
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide v5, 0x19a2c6d8bfL

    const-string v7, "\u533a\u53f0\u529e"

    const-wide/32 v8, 0x6901223

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 742
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide v5, 0x19a2c6d8c0L

    const-string v7, "\u533a\u4fa8\u529e"

    const-wide/32 v8, 0x6901223

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 743
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide v5, 0x19a2c6d8c1L

    const-string v7, "\u533a\u6863\u6848\u5c40"

    const-wide/32 v8, 0x6901223

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 744
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide v5, 0x19a2c6d8c2L

    const-string v7, "\u533a\u5fd7\u529e"

    const-wide/32 v8, 0x6901223

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 745
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide v5, 0x19a2c6d8c3L

    const-string v7, "\u533a\u4fdd\u5bc6\u5c40"

    const-wide/32 v8, 0x6901223

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 746
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide v5, 0x19a2c6d8c4L

    const-string v7, "\u533a\u673a\u5173\u540e\u52e4\u670d\u52a1\u4e2d\u5fc3"

    const-wide/32 v8, 0x6901223

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 747
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide v5, 0x19a2c6d8c5L

    const-string v7, "\u57a1\u5934\u6587\u5316\u4f11\u95f2\u4ea7\u4e1a\u533a\u7ba1\u59d4\u4f1a"

    const-wide/32 v8, 0x6901223

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 748
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v5, 0x6901224

    const-string v7, "\u6c6a\u6d0b\u526f\u533a\u957f"

    const-wide/32 v8, 0x1ae19

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 749
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide v5, 0x19a2c6dca1L

    const-string v7, "\u533a\u5b89\u5168\u76d1\u7763\u5c40(\u533a\u5b89\u5168\u751f\u4ea7\u59d4\u5458\u4f1a\u529e\u516c\u5ba4)"

    const-wide/32 v8, 0x6901224

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 750
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide v5, 0x19a2c6dca2L

    const-string v7, "\u533a\u79d1\u59d4(\u533a\u77e5\u8bc6\u4ea7\u6743\u5c40)"

    const-wide/32 v8, 0x6901224

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 751
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide v5, 0x19a2c6dca3L

    const-string v7, "\u533a\u4fe1\u606f\u529e"

    const-wide/32 v8, 0x6901224

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 752
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide v5, 0x19a2c6dca4L

    const-string v7, "\u4e2d\u5173\u6751\u79d1\u6280\u56ed\u533a\u7535\u5b50\u57ce\u79d1\u6280\u56ed\u7ba1\u59d4\u4f1a"

    const-wide/32 v8, 0x6901224

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 753
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide v5, 0x19a2c6dca5L

    const-string v7, "798\u827a\u672f\u533a\u7ba1\u59d4\u4f1a"

    const-wide/32 v8, 0x6901224

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 754
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide v5, 0x19a2c6dca6L

    const-string v7, "\u671b\u4eac\u7efc\u5408\u5f00\u53d1\u516c\u53f8"

    const-wide/32 v8, 0x6901224

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 755
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide v5, 0x19a2c6dca7L

    const-string v7, "\u4e2d\u5173\u6751\u7535\u5b50\u57ce\u5efa\u8bbe\u6709\u9650\u516c\u53f8"

    const-wide/32 v8, 0x6901224

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 756
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v5, 0x6901225

    const-string v7, "\u5f20\u7ef4\u521a\u526f\u533a\u957f"

    const-wide/32 v8, 0x1ae19

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 757
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide v5, 0x19a2c6e089L

    const-string v7, "\u533a\u53d1\u5c55\u6539\u9769\u59d4"

    const-wide/32 v8, 0x6901225

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 758
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide v5, 0x19a2c6e08aL

    const-string v7, "\u533a\u56fd\u7a0e\u5c40"

    const-wide/32 v8, 0x6901225

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 759
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide v5, 0x19a2c6e08bL

    const-string v7, "\u533a\u5730\u7a0e\u5c40"

    const-wide/32 v8, 0x6901225

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 760
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide v5, 0x19a2c6e08cL

    const-string v7, "\u533a\u7edf\u8ba1\u5c40"

    const-wide/32 v8, 0x6901225

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 761
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide v5, 0x19a2c6e08dL

    const-string v7, "\u533a\u5546\u52a1\u59d4"

    const-wide/32 v8, 0x6901225

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 762
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide v5, 0x19a2c6e08eL

    const-string v7, "\u533a\u65c5\u6e38\u59d4"

    const-wide/32 v8, 0x6901225

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 763
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide v5, 0x19a2c6e08fL

    const-string v7, "\u533a\u5e94\u6025\u529e"

    const-wide/32 v8, 0x6901225

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 764
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v5, 0xa801c5

    const-string v7, "\u57ce\u533a"

    const-wide/32 v8, 0x1ae19

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 765
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v5, 0xa801c6

    const-string v7, "\u519c\u6751\u5730\u533a"

    const-wide/32 v8, 0x1ae19

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 768
    :cond_1
    const/4 v13, 0x0

    .local v13, i:I
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v1

    if-lt v13, v1, :cond_4

    .line 786
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 787
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/cymobile/ymwork/types/Category;

    sput-object v1, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->filterCategories:[Lcom/cymobile/ymwork/types/Category;

    .line 788
    const/4 v13, 0x0

    :goto_2
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    if-lt v13, v1, :cond_8

    .line 793
    .end local v2           #topid:J
    .end local v13           #i:I
    :cond_2
    return-void

    .line 671
    .restart local v2       #topid:J
    :cond_3
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    sget-object v1, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->TOP_CATEGORY:Lcom/cymobile/ymwork/types/Category;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/Category;->id()J

    move-result-wide v5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "\u5168\u90e8"

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->TOP_CATEGORY:Lcom/cymobile/ymwork/types/Category;

    invoke-virtual {v7}, Lcom/cymobile/ymwork/types/Category;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 769
    .restart local v13       #i:I
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/cymobile/ymwork/types/Group;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/cymobile/ymwork/types/Zone;

    .line 770
    .local v16, zone:Lcom/cymobile/ymwork/types/Zone;
    invoke-virtual/range {v16 .. v16}, Lcom/cymobile/ymwork/types/Zone;->getZoneid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v4, 0x9

    if-ne v1, v4, :cond_7

    .line 771
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    invoke-virtual/range {v16 .. v16}, Lcom/cymobile/ymwork/types/Zone;->getZoneid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual/range {v16 .. v16}, Lcom/cymobile/ymwork/types/Zone;->getZoneName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v16 .. v16}, Lcom/cymobile/ymwork/types/Zone;->getZoneid()Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x0

    const/4 v9, 0x6

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 772
    invoke-virtual/range {v16 .. v16}, Lcom/cymobile/ymwork/types/Zone;->getCityOrSuburb()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_6

    .line 773
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    invoke-virtual/range {v16 .. v16}, Lcom/cymobile/ymwork/types/Zone;->getZoneid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual/range {v16 .. v16}, Lcom/cymobile/ymwork/types/Zone;->getZoneName()Ljava/lang/String;

    move-result-object v7

    const-wide/32 v8, 0xa801c5

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 768
    :cond_5
    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 774
    :cond_6
    invoke-virtual/range {v16 .. v16}, Lcom/cymobile/ymwork/types/Zone;->getCityOrSuburb()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_5

    .line 775
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    invoke-virtual/range {v16 .. v16}, Lcom/cymobile/ymwork/types/Zone;->getZoneid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual/range {v16 .. v16}, Lcom/cymobile/ymwork/types/Zone;->getZoneName()Ljava/lang/String;

    move-result-object v7

    const-wide/32 v8, 0xa801c6

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 782
    :cond_7
    invoke-virtual/range {v16 .. v16}, Lcom/cymobile/ymwork/types/Zone;->getZoneid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v4, 0xc

    if-ne v1, v4, :cond_5

    .line 783
    new-instance v4, Lcom/cymobile/ymwork/types/Category;

    invoke-virtual/range {v16 .. v16}, Lcom/cymobile/ymwork/types/Zone;->getZoneid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual/range {v16 .. v16}, Lcom/cymobile/ymwork/types/Zone;->getZoneName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v16 .. v16}, Lcom/cymobile/ymwork/types/Zone;->getZoneid()Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x0

    const/16 v9, 0x9

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 789
    .end local v16           #zone:Lcom/cymobile/ymwork/types/Zone;
    :cond_8
    sget-object v4, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->filterCategories:[Lcom/cymobile/ymwork/types/Category;

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/types/Category;

    aput-object v1, v4, v13

    .line 788
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2
.end method

.method public static setCategoryClass(Lcom/cymobile/ymwork/types/Group;)V
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cymobile/ymwork/types/Group",
            "<",
            "Lcom/cymobile/ymwork/types/Classes;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, subclassesStr:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/Classes;>;"
    const/16 v0, 0x28

    new-array v0, v0, [Lcom/cymobile/ymwork/types/Category;

    sput-object v0, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->filterClassesCategories:[Lcom/cymobile/ymwork/types/Category;

    .line 54
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .local v9, allCatas:Ljava/util/List;,"Ljava/util/List<Lcom/cymobile/ymwork/types/Category;>;"
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/16 v1, 0x1

    const-string v3, "\u5168\u90e8"

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/16 v1, 0x3e9

    const-string v3, "\u90e8\u4ef6-\u516c\u5171\u8bbe\u65bd"

    const-wide/16 v4, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x18705

    const-string v3, "\u4e0a\u6c34\u4e95\u76d6"

    const-wide/16 v4, 0x3e9

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x18706

    const-string v3, "\u6c61\u6c34\u4e95\u76d6"

    const-wide/16 v4, 0x3e9

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x18707

    const-string v3, "\u96e8\u6c34\u4e95\u76d6"

    const-wide/16 v4, 0x3e9

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x18708

    const-string v3, "\u96e8\u6c34\u7b85\u5b50"

    const-wide/16 v4, 0x3e9

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x18709

    const-string v3, "\u7535\u529b\u4e95\u76d6"

    const-wide/16 v4, 0x3e9

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x1870a

    const-string v3, "\u8def\u706f\u4e95\u76d6"

    const-wide/16 v4, 0x3e9

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x1870b

    const-string v3, "\u7535\u4fe1\u4e95\u76d6"

    const-wide/16 v4, 0x3e9

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x1870c

    const-string v3, "\u6709\u7ebf\u7535\u89c6\u4e95\u76d6"

    const-wide/16 v4, 0x3e9

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x1870d

    const-string v3, "\u7f51\u7edc\u4e95\u76d6"

    const-wide/16 v4, 0x3e9

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x1870e

    const-string v3, "\u70ed\u529b\u4e95\u76d6"

    const-wide/16 v4, 0x3e9

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x1870f

    const-string v3, "\u71c3\u6c14\u4e95\u76d6"

    const-wide/16 v4, 0x3e9

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x18710

    const-string v3, "\u516c\u5b89\u4e95\u76d6"

    const-wide/16 v4, 0x3e9

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x18711

    const-string v3, "\u6d88\u9632\u8bbe\u65bd"

    const-wide/16 v4, 0x3e9

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x18712

    const-string v3, "\u4e0d\u660e\u4e95\u76d6"

    const-wide/16 v4, 0x3e9

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x18713

    const-string v3, "\u7535\u4fe1\u4ea4\u63a5\u7bb1"

    const-wide/16 v4, 0x3e9

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x18714

    const-string v3, "\u7535\u529b\u8bbe\u65bd"

    const-wide/16 v4, 0x3e9

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x18715

    const-string v3, "\u7535\u6746"

    const-wide/16 v4, 0x3e9

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x18716

    const-string v3, "\u8def\u706f"

    const-wide/16 v4, 0x3e9

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x18717

    const-string v3, "\u5730\u706f"

    const-wide/16 v4, 0x3e9

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x18718

    const-string v3, "\u5c04\u706f"

    const-wide/16 v4, 0x3e9

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x18719

    const-string v3, "\u62a5\u520a\u4ead"

    const-wide/16 v4, 0x3e9

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x1871a

    const-string v3, "\u7535\u8bdd\u4ead"

    const-wide/16 v4, 0x3e9

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x1871b

    const-string v3, "\u90ae\u7b52"

    const-wide/16 v4, 0x3e9

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x1871c

    const-string v3, "\u4fe1\u606f\u4ead"

    const-wide/16 v4, 0x3e9

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x1871d

    const-string v3, "\u81ea\u52a8\u552e\u8d27\u4ead"

    const-wide/16 v4, 0x3e9

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x1871e

    const-string v3, "\u5065\u8eab\u8bbe\u65bd"

    const-wide/16 v4, 0x3e9

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x1871f

    const-string v3, "\u4e2d\u6c34\u4e95\u76d6"

    const-wide/16 v4, 0x3e9

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x18720

    const-string v3, "\u8f93\u6cb9\uff08\u6c14\uff09\u4e95\u76d6"

    const-wide/16 v4, 0x3e9

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x18721

    const-string v3, "\u56ed\u6797\u4e95\u76d6"

    const-wide/16 v4, 0x3e9

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x18722

    const-string v3, "\u73af\u536b\u8bbe\u65bd\u4e95\u76d6"

    const-wide/16 v4, 0x3e9

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x18723

    const-string v3, "\u70e9\u6c9f\u69fd\u5395\u6240\u76d6\u677f"

    const-wide/16 v4, 0x3e9

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x18724

    const-string v3, "\u7a7a\u6c14\u8d28\u91cf\u548c\u566a\u58f0\u663e\u793a\u5c4f"

    const-wide/16 v4, 0x3e9

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x18725

    const-string v3, "\u71c3\u6c14\u8c03\u538b\u7ad9\uff08\u7bb1\uff09"

    const-wide/16 v4, 0x3e9

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x18726

    const-string v3, "\u7535\u89c6\u7bb1\u4f53"

    const-wide/16 v4, 0x3e9

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x18727

    const-string v3, "\u71c3\u6c14\u8c03\u538b\u7ad9\uff08\u7bb1\uff09"

    const-wide/16 v4, 0x3e9

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x18728

    const-string v3, "\u4f9b\u6c34\u5668"

    const-wide/16 v4, 0x3e9

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x18729

    const-string v3, "\u8f93\u6cb9\uff08\u6c14\uff09\u6807\u5fd7\u6869"

    const-wide/16 v4, 0x3e9

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x1872a

    const-string v3, "\u6807\u77f3"

    const-wide/16 v4, 0x3e9

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x1872b

    const-string v3, "\u94c1\u5854"

    const-wide/16 v4, 0x3e9

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x1872c

    const-string v3, "\u65e0\u8f68\u7535\u8f66\u4e95\u76d6"

    const-wide/16 v4, 0x3e9

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x1872d

    const-string v3, "\u8def\u706f\uff08\u5e26\u7f16\u7801\uff09"

    const-wide/16 v4, 0x271b

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x1872f

    const-string v3, "\u7535\u8bdd\u4ead\uff08\u8054\u901a\uff09"

    const-wide/16 v4, 0x3e9

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x18730

    const-string v3, "\u7535\u6746\uff08\u5e26\u7f16\u53f7\uff09"

    const-wide/16 v4, 0x3e9

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x18763

    const-string v3, "\u6551\u52a9\u5f15\u5bfc\u724c"

    const-wide/16 v4, 0x3e9

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x18766

    const-string v3, "\u6c9f\u69fd\u5395\u6240\u76d6\u677f"

    const-wide/16 v4, 0x3e9

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/16 v1, 0x3ea

    const-string v3, "\u90e8\u4ef6-\u9053\u8def\u4ea4\u901a"

    const-wide/16 v4, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x18769

    const-string v3, "\u505c\u8f66\u573a"

    const-wide/16 v4, 0x3ea

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x1876a

    const-string v3, "\u505c\u8f66\u54aa\u8868"

    const-wide/16 v4, 0x3ea

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x1876b

    const-string v3, "\u516c\u4ea4\u7ad9\u4ead"

    const-wide/16 v4, 0x3ea

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x1876c

    const-string v3, "\u51fa\u79df\u8f66\u7ad9\u724c"

    const-wide/16 v4, 0x3ea

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x1876d

    const-string v3, "\u8fc7\u8857\u5929\u6865"

    const-wide/16 v4, 0x3ea

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x1876e

    const-string v3, "\u5730\u4e0b\u901a\u9053"

    const-wide/16 v4, 0x3ea

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x1876f

    const-string v3, "\u9ad8\u67b6\u7acb\u4ea4\u6865"

    const-wide/16 v4, 0x3ea

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x18770

    const-string v3, "\u8de8\u6cb3\u6865"

    const-wide/16 v4, 0x3ea

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x18771

    const-string v3, "\u4ea4\u901a\u6807\u5fd7\u724c"

    const-wide/16 v4, 0x3ea

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x18772

    const-string v3, "\u4ea4\u901a\u63a7\u5236\u7bb1"

    const-wide/16 v4, 0x3ea

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x18773

    const-string v3, "\u4ea4\u901a\u62a4\u680f"

    const-wide/16 v4, 0x3ea

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x18774

    const-string v3, "\u5b58\u8f66\u652f\u67b6"

    const-wide/16 v4, 0x3ea

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x18775

    const-string v3, "\u8def\u540d\u724c"

    const-wide/16 v4, 0x3ea

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x18776

    const-string v3, "\u4ea4\u901a\u4fe1\u53f7\u706f"

    const-wide/16 v4, 0x3ea

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x18777

    const-string v3, "\u8def\u8fb9\u505c\u8f66\u573a"

    const-wide/16 v4, 0x3ea

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x18778

    const-string v3, "\u4ea4\u901a\u6db5\u6d1e"

    const-wide/16 v4, 0x3ea

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x18779

    const-string v3, "\u9053\u8def\u4fe1\u606f\u663e\u793a\u5c4f"

    const-wide/16 v4, 0x3ea

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x1877a

    const-string v3, "\u9053\u8def\u9694\u97f3\u5c4f"

    const-wide/16 v4, 0x3ea

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x1877b

    const-string v3, "\u4ea4\u901a\u5c97\u4ead"

    const-wide/16 v4, 0x3ea

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x187c4

    const-string v3, "\u6d88\u80fd\u6876"

    const-wide/16 v4, 0x3ea

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x187c5

    const-string v3, "\u5b89\u5168\u5c9b"

    const-wide/16 v4, 0x3ea

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x187c6

    const-string v3, "\u4eba\u884c\u6a2a\u9053\u6869"

    const-wide/16 v4, 0x3ea

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x187c7

    const-string v3, "\u4fbf\u9053\u6869"

    const-wide/16 v4, 0x3ea

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x187c8

    const-string v3, "\u67d4\u6027\u9694\u79bb\u4f53"

    const-wide/16 v4, 0x3ea

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x187c9

    const-string v3, "\u4fe1\u53f7\u706f\u7535\u6e90\u4e95\u76d6"

    const-wide/16 v4, 0x3ea

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x187ca

    const-string v3, "\u5176\u5b83"

    const-wide/16 v4, 0x3ea

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/16 v1, 0x3eb

    const-string v3, "\u90e8\u4ef6-\u5e02\u5bb9\u73af\u5883"

    const-wide/16 v4, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x187cd

    const-string v3, "\u516c\u5171\u5395\u6240"

    const-wide/16 v4, 0x3eb

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x187ce

    const-string v3, "\u516c\u5395\u5316\u7caa\u6c60"

    const-wide/16 v4, 0x3eb

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x187cf

    const-string v3, "\u516c\u5395\u6307\u793a\u724c"

    const-wide/16 v4, 0x3eb

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x187d0

    const-string v3, "\u5783\u573e\u95f4"

    const-wide/16 v4, 0x3eb

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x187d1

    const-string v3, "\u5783\u573e\u7bb1"

    const-wide/16 v4, 0x3eb

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x187d2

    const-string v3, "\u706f\u7bb1\u9713\u8679\u706f"

    const-wide/16 v4, 0x3eb

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x187d3

    const-string v3, "\u5e7f\u544a\u724c\u533e"

    const-wide/16 v4, 0x3eb

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x187d4

    const-string v3, "\u73af\u5883\u76d1\u6d4b\u5854"

    const-wide/16 v4, 0x3eb

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x187d5

    const-string v3, "\u878d\u96ea\u5242\u6eb6\u89e3\u6c60"

    const-wide/16 v4, 0x3eb

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x187d6

    const-string v3, "\u878d\u96ea\u5242\u81ea\u52a8\u55b7\u6d12\u7cfb\u7edf"

    const-wide/16 v4, 0x3eb

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x187d7

    const-string v3, "\u73af\u536b\u7ba1\u7406\u7528\u623f\uff08\u5de5\u5177\u95f4\uff09"

    const-wide/16 v4, 0x3eb

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x187d8

    const-string v3, "\u9910\u53a8\u5783\u573e\u5904\u7406\u673a"

    const-wide/16 v4, 0x3eb

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x187d9

    const-string v3, "\u6cd4\u6c34\u5904\u7406\u7ad9"

    const-wide/16 v4, 0x3eb

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x187da

    const-string v3, "\u8d44\u6e90\u56de\u6536\u5904\u7406\u7ad9\uff08\u5e9f\u5851\u6599\u3001\u5e9f\u7eb8\uff09"

    const-wide/16 v4, 0x3eb

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    .line 191
    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    .line 190
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x187db

    const-string v3, "\u5783\u573e\u6876\uff08\u7bb1\u3001\u53f0\u3001\u7ad9\uff09"

    const-wide/16 v4, 0x3eb

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x187dc

    const-string v3, "\u5783\u573e\u3001\u7caa\u4fbf\u5904\u7406\u8bbe\u65bd"

    const-wide/16 v4, 0x3eb

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x187dd

    const-string v3, "\u79fb\u52a8\u5395\u6240"

    const-wide/16 v4, 0x3eb

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/16 v1, 0x3ec

    const-string v3, "\u90e8\u4ef6-\u56ed\u6797\u7eff\u5316"

    const-wide/16 v4, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x18831

    const-string v3, "\u53e4\u6811\u540d\u6728"

    const-wide/16 v4, 0x3ec

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x18832

    const-string v3, "\u884c\u9053\u6811"

    const-wide/16 v4, 0x3ec

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x18833

    const-string v3, "\u6811\u6c60\u7b85\u5b50"

    const-wide/16 v4, 0x3ec

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x18834

    const-string v3, "\u82b1\u67b6\u82b1\u94b5"

    const-wide/16 v4, 0x3ec

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x18835

    const-string v3, "\u7eff\u5730"

    const-wide/16 v4, 0x3ec

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x18836

    const-string v3, "\u96d5\u5851"

    const-wide/16 v4, 0x3ec

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x18837

    const-string v3, "\u8857\u5934\u5ea7\u6905"

    const-wide/16 v4, 0x3ec

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x18839

    const-string v3, "\u7eff\u5730\u7ef4\u62a4\u8bbe\u65bd"

    const-wide/16 v4, 0x3ec

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x18892

    const-string v3, "\u751f\u6001\u6797"

    const-wide/16 v4, 0x3ec

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/16 v1, 0x3ed

    const-string v3, "\u90e8\u4ef6-\u623f\u5c4b\u571f\u5730"

    const-wide/16 v4, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x18895

    const-string v3, "\u5ba3\u4f20\u680f"

    const-wide/16 v4, 0x3ed

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x18896

    const-string v3, "\u4eba\u9632\u5de5\u4e8b"

    const-wide/16 v4, 0x3ed

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x18897

    const-string v3, "\u516c\u623f\u5730\u4e0b\u5ba4"

    const-wide/16 v4, 0x3ed

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/16 v1, 0x7d1

    const-string v3, "\u4e8b\u4ef6-\u5e02\u5bb9\u73af\u5883"

    const-wide/16 v4, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x30da5

    const-string v3, "\u65b0\u589e\u5efa\u7b51"

    const-wide/16 v4, 0x7d1

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x30da6

    const-string v3, "\u66b4\u9732\u5783\u573e"

    const-wide/16 v4, 0x7d1

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x30da7

    const-string v3, "\u79ef\u5b58\u5783\u573e\u6e23\u571f"

    const-wide/16 v4, 0x7d1

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x30da8

    const-string v3, "\u9053\u8def\u4fdd\u6d01"

    const-wide/16 v4, 0x7d1

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x30da9

    const-string v3, "\u6cb3\u9053\u4fdd\u6d01"

    const-wide/16 v4, 0x7d1

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x30daa

    const-string v3, "\u7eff\u5730\u4fdd\u6d01"

    const-wide/16 v4, 0x7d1

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x30dab

    const-string v3, "\u5e9f\u5f03\u8f66\u8f86"

    const-wide/16 v4, 0x7d1

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x30dac

    const-string v3, "\u5e9f\u5f03\u5bb6\u5177\u8bbe\u5907"

    const-wide/16 v4, 0x7d1

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x30dad

    const-string v3, "\u975e\u88c5\u9970\u6027\u6811\u6302"

    const-wide/16 v4, 0x7d1

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x30dae

    const-string v3, "\u6e05\u626b\u4f5c\u4e1a\u4e8c\u6b21\u6c61\u67d3"

    const-wide/16 v4, 0x7d1

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x30daf

    const-string v3, "\u9053\u8def\u79ef\u6c34"

    const-wide/16 v4, 0x7d1

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x30db0

    const-string v3, "\u9664\u96ea\u540e\u79ef\u96ea\u3001\u7ed3\u51b0"

    const-wide/16 v4, 0x7d1

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x30db1

    const-string v3, "\u868a\u8747\u8d85\u6807"

    const-wide/16 v4, 0x7d1

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x30db2

    const-string v3, "\u6709\u660e\u663e\u81ed\u5473"

    const-wide/16 v4, 0x7d1

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x30db3

    const-string v3, "\u4e71\u5012\u4e71\u6392\u6c61\u6c34\u3001\u5e9f\u6c34"

    const-wide/16 v4, 0x7d1

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x30db4

    const-string v3, "\u533b\u7597\u5e9f\u7269\u6d41\u5931"

    const-wide/16 v4, 0x7d1

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x30db5

    const-string v3, "\u8f66\u8f86\u5916\u89c2\u4e0d\u6d01"

    const-wide/16 v4, 0x7d1

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x30db6

    const-string v3, "\u975e\u6cd5\u8bbe\u7f6e\u79fb\u52a8\u5395\u6240"

    const-wide/16 v4, 0x7d1

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x30db7

    const-string v3, "\u5395\u6240\u4e71\u6536\u8d39"

    const-wide/16 v4, 0x7d1

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x30db8

    const-string v3, "\u65bd\u5de5\u5de5\u5730\u8f66\u8f6e\u5e26\u6ce5"

    const-wide/16 v4, 0x7d1

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x30db9

    const-string v3, "\u65bd\u5de5\u5de5\u5730\u9053\u8def\u672a\u786c\u5316\uff08\u8fdb\u51fa\u53e3\uff09"

    const-wide/16 v4, 0x7d1

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    .line 234
    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    .line 233
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x30dba

    const-string v3, "\u6e23\u571f\u8fd0\u8f93\u8f66\u8f86\u672a\u5b89\u88c5\u5bc6\u95ed\u88c5\u7f6e\uff08\u4e94\u73af\u5185\uff09"

    const-wide/16 v4, 0x7d1

    const/4 v6, 0x0

    .line 236
    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    .line 235
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x30dbb

    const-string v3, "\u5783\u573e\u3001\u6e23\u571f\u4e71\u5012\u4e71\u5378"

    const-wide/16 v4, 0x7d1

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x30dbc

    const-string v3, "\u751f\u6d3b\u5783\u573e\u3001\u88c5\u4fee\u5783\u573e\u6df7\u88c5"

    const-wide/16 v4, 0x7d1

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x30dbd

    const-string v3, "\u975e\u6cd5\u6e05\u8fd0\u751f\u6d3b\u5783\u573e"

    const-wide/16 v4, 0x7d1

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x30dbe

    const-string v3, "\u73af\u536b\u4f5c\u4e1a\u4eba\u5458\u7740\u88c5\u4e0d\u89c4\u8303"

    const-wide/16 v4, 0x7d1

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x30dbf

    const-string v3, "\u711a\u70e7\u5783\u573e\u3001\u6811\u53f6"

    const-wide/16 v4, 0x7d1

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x30dc0

    const-string v3, "\u6cd4\u6c34\u975e\u6cd5\u6536\u96c6\u3001\u6e05\u8fd0\u3001\u5904\u7406"

    const-wide/16 v4, 0x7d1

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x30dc1

    const-string v3, "\u975e\u6cd5\u8bbe\u7f6e\u6e23\u571f\u6d88\u7eb3\u5382"

    const-wide/16 v4, 0x7d1

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x30dc2

    const-string v3, "\u7a81\u53d1\u707e\u5bb3\u6027\u5929\u6c14\u53d8\u5316"

    const-wide/16 v4, 0x7d1

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x30dc3

    const-string v3, "\u5efa\u7b51\u7269\u5916\u7acb\u9762\u4e0d\u6d01\uff08\u7c89\u9970\u3001\u6e05\u6d17\uff09"

    const-wide/16 v4, 0x7d1

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    .line 246
    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    .line 245
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x30dc4

    const-string v3, "\u70df\u56f1\u5192\u9ed1\u70df"

    const-wide/16 v4, 0x7d1

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x30dc5

    const-string v3, "\u5728\u516c\u5171\u6c34\u57df\u5185\u6bd2\u9c7c\u3001\u70b8\u9c7c\u3001\u7535\u9c7c\u53ca\u5728\u975e\u6307\u5b9a\u6c34\u57df\u9493\u9c7c"

    const-wide/16 v4, 0x7d1

    .line 249
    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    .line 248
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x30dc6

    const-string v3, "\u5728\u516c\u5171\u6c34\u57df\u9732\u8425\u3001\u91ce\u708a\u7b49\u6c61\u67d3\u6c34\u8d28\u7684\u65c5\u6e38\u6d3b\u52a8"

    const-wide/16 v4, 0x7d1

    const/4 v6, 0x0

    .line 251
    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    .line 250
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x30dc7

    const-string v3, "\u5728\u516c\u5171\u6c34\u57df\u6c34\u9762\u6e38\u6cf3\u53ca\u5176\u5b83\u6c34\u4e0a\u4f53\u80b2\u5a31\u4e50\u6d3b\u52a8"

    const-wide/16 v4, 0x7d1

    const/4 v6, 0x0

    .line 253
    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    .line 252
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x30dc8

    const-string v3, "\u6813\u9489\u523b\u5212"

    const-wide/16 v4, 0x7d1

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x30dc9

    const-string v3, "\u4e25\u91cd\u7684\u66b4\u9732\u5783\u573e"

    const-wide/16 v4, 0x7d1

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x30dca

    const-string v3, "\u4e25\u91cd\u7684\u4fdd\u6d01\u4e0d\u5230\u4f4d"

    const-wide/16 v4, 0x7d1

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x30dcb

    const-string v3, "\u4e25\u91cd\u7684\u5c0f\u5e7f\u544a"

    const-wide/16 v4, 0x7d1

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x30dcc

    const-string v3, "\u64c5\u81ea\u9972\u517b\u5bb6\u79bd\u5bb6\u755c"

    const-wide/16 v4, 0x7d1

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x30dcd

    const-string v3, "\u6cb9\u70df\u6c61\u67d3"

    const-wide/16 v4, 0x7d1

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x30dce

    const-string v3, "\u9053\u8def\u7834\u635f\uff08\u5e02\u5c5e\uff09"

    const-wide/16 v4, 0x7d1

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x30e00

    const-string v3, "\u68c0\u67e5\u4e95\u6ea2\u6c34"

    const-wide/16 v4, 0x7d1

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/16 v1, 0x7d2

    const-string v3, "\u4e8b\u4ef6-\u5ba3\u4f20\u5e7f\u544a"

    const-wide/16 v4, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x30e09

    const-string v3, "\u975e\u6cd5\u5f20\u8d34\u5c0f\u5e7f\u544a"

    const-wide/16 v4, 0x7d2

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x30e0a

    const-string v3, "\u8fdd\u7ae0\u5f20\u8d34\u60ac\u6302\u5e7f\u544a\u724c\u533e"

    const-wide/16 v4, 0x7d2

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x30e0b

    const-string v3, "\u5360\u9053\u5e7f\u544a\u724c"

    const-wide/16 v4, 0x7d2

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x30e0c

    const-string v3, "\u8857\u5934\u6563\u53d1\u5c0f\u5e7f\u544a"

    const-wide/16 v4, 0x7d2

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x30e0d

    const-string v3, "\u4e34\u65f6\u6027\u6807\u8bed\u5ba3\u4f20\u54c1\u635f\u6bc1"

    const-wide/16 v4, 0x7d2

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/16 v1, 0x7d3

    const-string v3, "\u4e8b\u4ef6-\u65bd\u5de5\u7ba1\u7406"

    const-wide/16 v4, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x30e6d

    const-string v3, "\u65bd\u5de5\u6270\u6c11"

    const-wide/16 v4, 0x7d3

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x30e6e

    const-string v3, "\u5de5\u5730\u626c\u5c18"

    const-wide/16 v4, 0x7d3

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x30e6f

    const-string v3, "\u65e0\u8bc1\u6d88\u7eb3\u6e23\u571f"

    const-wide/16 v4, 0x7d3

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x30e70

    const-string v3, "\u9053\u8def\u9057\u6492"

    const-wide/16 v4, 0x7d3

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x30e71

    const-string v3, "\u65bd\u5de5\u5e9f\u5f03\u6599"

    const-wide/16 v4, 0x7d3

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x30e72

    const-string v3, "\u9053\u8def\u7834\u635f"

    const-wide/16 v4, 0x7d3

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x30e73

    const-string v3, "\u65bd\u5de5\u5de5\u5730\u672a\u56f4\u6321"

    const-wide/16 v4, 0x7d3

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x30e74

    const-string v3, "\u65bd\u5de5\u5de5\u5730\u5185\u5395\u6240\u670d\u52a1\u4fdd\u6d01"

    const-wide/16 v4, 0x7d3

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x30e75

    const-string v3, "\u65bd\u5de5\u5b8c\u6210\u540e\u573a\u5149\u5730\u51c0"

    const-wide/16 v4, 0x7d3

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x30e77

    const-string v3, "\u5de5\u5730\u95e8\u524d\u9053\u8def\u9057\u6492"

    const-wide/16 v4, 0x7d3

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x30e78

    const-string v3, "\u6e23\u571f\u8fd0\u8f93\u8f66\u8f86\u672a\u5bc6\u95ed"

    const-wide/16 v4, 0x7d3

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x30e79

    const-string v3, "\u8f66\u8f6e\u5e26\u6ce5"

    const-wide/16 v4, 0x7d3

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x30ece

    const-string v3, "\u6e23\u571f\u8fd0\u8f93\u8f66\u8f86\u672a\u5b89\u88c5\u5bc6\u95ed\u88c5\u7f6e"

    const-wide/16 v4, 0x7d3

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    .line 284
    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    .line 283
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/16 v1, 0x7d4

    const-string v3, "\u4e8b\u4ef6-\u7a81\u53d1\u4e8b\u4ef6"

    const-wide/16 v4, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x30ed1

    const-string v3, "\u8def\u9762\u584c\u9677\uff08\u533a\u7ba1\uff09"

    const-wide/16 v4, 0x7d4

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x30ed2

    const-string v3, "\u81ea\u6765\u6c34\u7ba1\u7834\u88c2\uff08\u9053\u8def\uff09"

    const-wide/16 v4, 0x7d4

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x30ed3

    const-string v3, "\u71c3\u6c14\u7ba1\u9053\u7834\u88c2"

    const-wide/16 v4, 0x7d4

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x30ed4

    const-string v3, "\u4e0b\u6c34\u9053\u5835\u585e\uff08\u5927\u8857\uff09"

    const-wide/16 v4, 0x7d4

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x30ed5

    const-string v3, "\u8def\u9762\u584c\u9677\uff08\u5e02\u7ba1\uff09"

    const-wide/16 v4, 0x7d4

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x30ed6

    const-string v3, "\u67b6\u7a7a\u7ebf\u7f06\u4e0d\u89c4\u8303"

    const-wide/16 v4, 0x7d4

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x30ed7

    const-string v3, "\u96c6\u4f53\u6027\u4e8b\u4ef6\uff08\u5982\u4e0a\u8bbf\u3001\u975e\u6cd5\u96c6\u4f1a\u7b49\uff09"

    const-wide/16 v4, 0x7d4

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    .line 294
    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    .line 293
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x30ed8

    const-string v3, "\u55b7\u704c\u8dd1\u3001\u5192\u3001\u6ef4\u3001\u6f0f"

    const-wide/16 v4, 0x7d4

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x30ed9

    const-string v3, "\u75c5\u866b\u5bb3"

    const-wide/16 v4, 0x7d4

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x30eda

    const-string v3, "\u4f10\u6811\u4e3e\u62a5"

    const-wide/16 v4, 0x7d4

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x30edb

    const-string v3, "\u706b\u707e"

    const-wide/16 v4, 0x7d4

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x30edc

    const-string v3, "\u90aa\u6559\u96c6\u4f1a"

    const-wide/16 v4, 0x7d4

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x30edd

    const-string v3, "\u90aa\u6559\u5ba3\u4f20"

    const-wide/16 v4, 0x7d4

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x30f32

    const-string v3, "\u975e\u6cd5\u4f10\u6811"

    const-wide/16 v4, 0x7d4

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/16 v1, 0x7d5

    const-string v3, "\u4e8b\u4ef6-\u8857\u9762\u79e9\u5e8f"

    const-wide/16 v4, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x30f35

    const-string v3, "\u65e0\u7167\u7ecf\u8425\u6e38\u5546"

    const-wide/16 v4, 0x7d5

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x30f36

    const-string v3, "\u6d41\u6d6a\u4e5e\u8ba8"

    const-wide/16 v4, 0x7d5

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x30f37

    const-string v3, "\u5360\u9053\u5e9f\u54c1\u6536\u8d2d\uff08\u7ecf\u8425\uff09"

    const-wide/16 v4, 0x7d5

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x30f38

    const-string v3, "\u5e97\u5916\u7ecf\u8425"

    const-wide/16 v4, 0x7d5

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x30f39

    const-string v3, "\u673a\u52a8\u8f66\u4e71\u505c\u653e"

    const-wide/16 v4, 0x7d5

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x30f3a

    const-string v3, "\u975e\u673a\u52a8\u8f66\u4e71\u505c\u653e"

    const-wide/16 v4, 0x7d5

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x30f3b

    const-string v3, "\u4e71\u5806\u7269\u5806\u6599"

    const-wide/16 v4, 0x7d5

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x30f3c

    const-string v3, "\u5546\u4e1a\u566a\u97f3"

    const-wide/16 v4, 0x7d5

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x30f3d

    const-string v3, "\u9ed1\u8f66\u62c9\u5ba2"

    const-wide/16 v4, 0x7d5

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x30f3e

    const-string v3, "\u9732\u5929\u70e7\u70e4"

    const-wide/16 v4, 0x7d5

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x30f40

    const-string v3, "\u975e\u6cd5\u51fa\u7248\u7269\u9500\u552e"

    const-wide/16 v4, 0x7d5

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x30f96

    const-string v3, "\u5360\u538b\u76f2\u9053"

    const-wide/16 v4, 0x7d5

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x30f97

    const-string v3, "\u5176\u5b83\u8857\u9762\u79e9\u5e8f\u95ee\u9898"

    const-wide/16 v4, 0x7d5

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/16 v1, 0x7d7

    const-string v3, "\u4e8b\u4ef6-\u671d\u9633\u7279\u6b8a\u4e8b\u4ef6"

    const-wide/16 v4, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x30ffd

    const-string v3, "\u5e7f\u544a\u724c\u533e"

    const-wide/16 v4, 0x7d7

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x30ffe

    const-string v3, "\u536b\u751f\u6b7b\u89d2"

    const-wide/16 v4, 0x7d7

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x30fff

    const-string v3, "\u5783\u573e\u9500\u7eb3\u573a\u3001\u5806\u653e\u70b9"

    const-wide/16 v4, 0x7d7

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x31000

    const-string v3, "\u53cd\u590d\u51fa\u73b0\u7684\u66b4\u9732\u5783\u573e"

    const-wide/16 v4, 0x7d7

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x31001

    const-string v3, "\u53cd\u590d\u51fa\u73b0\u7684\u4fdd\u6d01\u4e0d\u5230\u4f4d\u533a\u57df"

    const-wide/16 v4, 0x7d7

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x31002

    const-string v3, "\u644a\u7fa4\u4e71\u70b9"

    const-wide/16 v4, 0x7d7

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x31003

    const-string v3, "\u8fdd\u89c4\u5f20\u8d34\u6807\u8bed\u516c\u544a"

    const-wide/16 v4, 0x7d7

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x31004

    const-string v3, "\u5927\u9762\u79ef\u5c0f\u5e7f\u544a"

    const-wide/16 v4, 0x7d7

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x31005

    const-string v3, "\u5f00\u5899\u6253\u6d1e"

    const-wide/16 v4, 0x7d7

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x31007

    const-string v3, "\u6570\u636e\u666e\u67e5"

    const-wide/16 v4, 0x7d7

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x31008

    const-string v3, "\u65e0\u7167\u7ecf\u8425\u6e38\u5546"

    const-wide/16 v4, 0x7d7

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x31009

    const-string v3, "\u975e\u6b63\u89c4\u5783\u573e\u586b\u57cb\u573a"

    const-wide/16 v4, 0x7d7

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x3100a

    const-string v3, "\u8fdd\u6cd5\u71c3\u653e\u70df\u82b1\u7206\u7af9"

    const-wide/16 v4, 0x7d7

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x3100c

    const-string v3, "\u65e0\u969c\u788d\u8bbe\u65bd"

    const-wide/16 v4, 0x7d7

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x3100d

    const-string v3, "\u6cb9\u70df\u6270\u6c11"

    const-wide/16 v4, 0x7d7

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x3100e

    const-string v3, "\u591c\u5e02\u6392\u6863"

    const-wide/16 v4, 0x7d7

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x3100f

    const-string v3, "\u975e\u6cd5\u884c\u533b"

    const-wide/16 v4, 0x7d7

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x31010

    const-string v3, "\u516c\u5171\u5395\u6240"

    const-wide/16 v4, 0x7d7

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x31012

    const-string v3, "\u95e8\u7981"

    const-wide/16 v4, 0x7d7

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x31013

    const-string v3, "\u9500\u552e\u4e0d\u5408\u683c\u7164\u7089"

    const-wide/16 v4, 0x7d7

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x31014

    const-string v3, "\u975e\u6cd5\u7ecf\u8425\u673a\u52a8\u8f66\u505c\u8f66\u573a"

    const-wide/16 v4, 0x7d7

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x31015

    const-string v3, "\u673a\u52a8\u8f66\u505c\u8f66\u573a\u7684\u89c4\u8303\u5316\u7ba1\u7406"

    const-wide/16 v4, 0x7d7

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x31016

    const-string v3, "\u6587\u660e\u57ce\u533a\u521b\u5efa(\u89c6\u9891)"

    const-wide/16 v4, 0x7d7

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x31017

    const-string v3, "\u6821\u56ed\u5468\u8fb9\u73af\u5883"

    const-wide/16 v4, 0x7d7

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x31018

    const-string v3, "\u65e0\u969c\u788d\u8bbe\u65bd"

    const-wide/16 v4, 0x7d7

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x31019

    const-string v3, "\u9713\u8679\u706f\u95ee\u9898"

    const-wide/16 v4, 0x7d7

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x3101a

    const-string v3, "\u4fef\u77b0\u73af\u5883\u95ee\u9898"

    const-wide/16 v4, 0x7d7

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 346
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x3101b

    const-string v3, "\u5783\u573e\u7b52\u3001\u5783\u573e\u7bb1\u7ba1\u7406"

    const-wide/16 v4, 0x7d7

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x3101c

    const-string v3, "\u4e25\u91cd\u7684\u66b4\u9732\u5783\u573e"

    const-wide/16 v4, 0x7d7

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x3101d

    const-string v3, "\u4e25\u91cd\u7684\u4fdd\u6d01\u4e0d\u5230\u4f4d"

    const-wide/16 v4, 0x7d7

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x3101e

    const-string v3, "\u4e25\u91cd\u7684\u5c0f\u5e7f\u544a"

    const-wide/16 v4, 0x7d7

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x3101f

    const-string v3, "\u6d88\u9632\u5b89\u5168"

    const-wide/16 v4, 0x7d7

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x31020

    const-string v3, "\u706b\u707e\u6848\u4ef6"

    const-wide/16 v4, 0x7d7

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x31021

    const-string v3, "\u70df\u82b1\u7206\u7af9\u9500\u552e\u70b9"

    const-wide/16 v4, 0x7d7

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x31022

    const-string v3, "\u79e9\u5e8f"

    const-wide/16 v4, 0x7d7

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x31023

    const-string v3, "\u5c0f\u5e7f\u544a\uff08\u82b1\u74dc\uff09\u95ee\u9898"

    const-wide/16 v4, 0x7d7

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x31024

    const-string v3, "\u534f\u7ba1\u5458\u4e0d\u4f5c\u4e3a"

    const-wide/16 v4, 0x7d7

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x31025

    const-string v3, "\u6316\u6398\u5de5\u7a0b\u672a\u5b8c\u6210\u5730\u4e0b\u7ba1\u7ebf\u5b89\u5168\u9632\u62a4"

    const-wide/16 v4, 0x7d7

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    .line 357
    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    .line 356
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x31026

    const-string v3, "\u8d29\u5356\u975e\u6cd5\u51fa\u7248\u7269\u3001\u5149\u76d8"

    const-wide/16 v4, 0x7d7

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 359
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x31027

    const-string v3, "\u4e0d\u89c4\u8303\u9053\u8def\u6307\u793a\u724c"

    const-wide/16 v4, 0x7d7

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 360
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x31028

    const-string v3, "\u4e25\u91cd\u7684\u9ed1\u8f66\u62c9\u5ba2"

    const-wide/16 v4, 0x7d7

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x31029

    const-string v3, "\u4e25\u91cd\u7684\u5e97\u5916\u7ecf\u8425"

    const-wide/16 v4, 0x7d7

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x3105e

    const-string v3, "\u5176\u4ed6\u4e8b\u4ef6"

    const-wide/16 v4, 0x7d7

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/16 v1, 0x2329

    const-string v3, "\u767e\u59d3\u751f\u6d3b-\u566a\u58f0\u6270\u6c11"

    const-wide/16 v4, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0xdbc05

    const-string v3, "\u751f\u6d3b\u566a\u58f0\u6270\u6c11"

    const-wide/16 v4, 0x2329

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0xdbc06

    const-string v3, "\u4ea4\u901a\u566a\u58f0\u6270\u6c11"

    const-wide/16 v4, 0x2329

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0xdbc07

    const-string v3, "\u516c\u5171\u533a\u57df\u566a\u58f0\u6270\u6c11"

    const-wide/16 v4, 0x2329

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0xdbc08

    const-string v3, "\u5546\u4e1a\u566a\u58f0\u6270\u6c11"

    const-wide/16 v4, 0x2329

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0xdbc09

    const-string v3, "\u5176\u4ed6"

    const-wide/16 v4, 0x2329

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/16 v1, 0x232a

    const-string v3, "\u767e\u59d3\u751f\u6d3b-\u4e71\u6536\u8d39"

    const-wide/16 v4, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0xdbc69

    const-string v3, "\u505c\u8f66\u4e71\u6536\u8d39"

    const-wide/16 v4, 0x232a

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0xdbc6a

    const-string v3, "\u7269\u4e1a\u4e71\u6536\u8d39(\u7ecf\u6d4e\u9002\u7528\u623f\u3001\u666e\u901a\u4f4f\u623f)"

    const-wide/16 v4, 0x232a

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0xdbc6b

    const-string v3, "\u7269\u4e1a\u8d39\u7ea0\u7eb7(\u5546\u54c1\u623f)"

    const-wide/16 v4, 0x232a

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0xdbc6c

    const-string v3, "\u6559\u80b2\u4e71\u6536\u8d39"

    const-wide/16 v4, 0x232a

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0xdbc6d

    const-string v3, "\u519c\u6751\u6536\u8d39"

    const-wide/16 v4, 0x232a

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0xdbc6e

    const-string v3, "\u5c0f\u533a\u6539\u9020\u6536\u8d39"

    const-wide/16 v4, 0x232a

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 389
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/16 v1, 0x232b

    const-string v3, "\u767e\u59d3\u751f\u6d3b-\u52b3\u52a8\u7ea0\u7eb7"

    const-wide/16 v4, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0xdbccd

    const-string v3, "\u62d6\u6b20\u5de5\u8d44"

    const-wide/16 v4, 0x232b

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0xdbcce

    const-string v3, "\u52b3\u52a8\u5408\u540c"

    const-wide/16 v4, 0x232b

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0xdbccf

    const-string v3, "\u4e94\u9669\u4e00\u91d1"

    const-wide/16 v4, 0x232b

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 393
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0xdbcd0

    const-string v3, "\u52a0\u73ed\u8d39"

    const-wide/16 v4, 0x232b

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0xdbcd1

    const-string v3, "\u5176\u4ed6"

    const-wide/16 v4, 0x232b

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/16 v1, 0x232c

    const-string v3, "\u767e\u59d3\u751f\u6d3b-\u5b63\u8282\u6027\u95ee\u9898"

    const-wide/16 v4, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 403
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0xdbd31

    const-string v3, "\u4f9b\u6696\u95ee\u9898"

    const-wide/16 v4, 0x232c

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 404
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0xdbd32

    const-string v3, "\u623f\u5c4b\u6f0f\u96e8"

    const-wide/16 v4, 0x232c

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/16 v1, 0x232d

    const-string v3, "\u767e\u59d3\u751f\u6d3b-\u62c6\u8fc1\u95ee\u9898"

    const-wide/16 v4, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0xdbd95

    const-string v3, "\u672a\u53d6\u5f97\u623f\u5c4b\u62c6\u8fc1\u8bb8\u53ef\u8bc1\u64c5\u81ea\u5b9e\u65bd\u62c6\u8fc1"

    const-wide/16 v4, 0x232d

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0xdbd96

    const-string v3, "\u4e0d\u5177\u6709\u62c6\u8fc1\u8d44\u683c\u7684\u5355\u4f4d\u5b9e\u65bd\u62c6\u8fc1"

    const-wide/16 v4, 0x232d

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0xdbd97

    const-string v3, "\u54a8\u8be2\u62c6\u8fc1\u76f8\u5173\u653f\u7b56"

    const-wide/16 v4, 0x232d

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0xdbd98

    const-string v3, "\u91c7\u7528\u4e0d\u6b63\u5f53\u624b\u6bb5\u5f3a\u8feb\u88ab\u62c6\u8fc1\u4eba\u642c\u8fc1"

    const-wide/16 v4, 0x232d

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 414
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0xdbd99

    const-string v3, "\u5f3a\u884c\u62c6\u8fc1"

    const-wide/16 v4, 0x232d

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 423
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/16 v1, 0x232e

    const-string v3, "\u767e\u59d3\u751f\u6d3b-\u505c\u6c34\u95ee\u9898"

    const-wide/16 v4, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 424
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0xdbdf9

    const-string v3, "\u672a\u516c\u793a\u64c5\u81ea\u505c\u6b62\u4f9b\u6c34\u7684"

    const-wide/16 v4, 0x232e

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 425
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0xdbdfa

    const-string v3, "\u65bd\u5de5\u5bfc\u81f4\u505c\u6c34\u7684"

    const-wide/16 v4, 0x232e

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 426
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0xdbdfb

    const-string v3, "\u81ea\u5907\u4e95\u505c\u6c34"

    const-wide/16 v4, 0x232e

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/16 v1, 0x232f

    const-string v3, "\u767e\u59d3\u751f\u6d3b-\u6709\u7ebf\u7535\u89c6"

    const-wide/16 v4, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 433
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0xdbe5d

    const-string v3, "\u6709\u7ebf\u7535\u89c6"

    const-wide/16 v4, 0x232f

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 437
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/16 v1, 0x2330

    const-string v3, "\u767e\u59d3\u751f\u6d3b-\u4e0d\u7a33\u5b9a\u4e8b\u4ef6"

    const-wide/16 v4, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 438
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0xdbec1

    const-string v3, "\u7fa4\u4f53\u4e0d\u7a33\u5b9a\u4e8b\u4ef6"

    const-wide/16 v4, 0x2330

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 439
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0xdbec2

    const-string v3, "\u4e2a\u4f53\u4e0d\u7a33\u5b9a\u4e8b\u4ef6"

    const-wide/16 v4, 0x2330

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 444
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/16 v1, 0x2331

    const-string v3, "\u767e\u59d3\u751f\u6d3b-\u673a\u52a8\u8f66\u505c\u8f66\u573a\u7684\u89c4\u8303\u5316\u7ba1\u7406"

    const-wide/16 v4, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 445
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0xdbf25

    const-string v3, "\u8d85\u8303\u56f4\u7ecf\u8425"

    const-wide/16 v4, 0x2331

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 446
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0xdbf26

    const-string v3, "\u672a\u8bbe\u7acb\u6b63\u89c4\u505c\u8f66\u6807\u8bc6"

    const-wide/16 v4, 0x2331

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 447
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0xdbf27

    const-string v3, "\u505c\u8f66\u79e9\u5e8f\u6df7\u4e71"

    const-wide/16 v4, 0x2331

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 448
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0xdbf28

    const-string v3, "\u505c\u8f66\u573a\u73af\u5883\u810f\u4e71"

    const-wide/16 v4, 0x2331

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0xdbf29

    const-string v3, "\u5de5\u4f5c\u4eba\u5458\u7740\u88c5\u4e0d\u89c4\u8303"

    const-wide/16 v4, 0x2331

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 457
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/16 v1, 0x2332

    const-string v3, "\u767e\u59d3\u751f\u6d3b-\u975e\u6cd5\u7ecf\u8425\u673a\u52a8\u8f66\u505c\u8f66\u573a\u5408"

    const-wide/16 v4, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 458
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0xdbf89

    const-string v3, "\u672a\u8bbe\u7f6e\u505c\u8f66\u7ebf\u7684\u975e\u6cd5\u505c\u8f66\u573a"

    const-wide/16 v4, 0x2332

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 459
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0xdbf8a

    const-string v3, "\u5df2\u8bbe\u7f6e\u505c\u8f66\u7ebf\u7684\u975e\u6cd5\u505c\u8f66\u7ebf"

    const-wide/16 v4, 0x2332

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0xdc245

    const-string v3, "\u767e\u59d3\u751f\u6d3b-\u767e\u59d3\u4e3e\u62a5-\u7269\u4e1a\u7ba1\u7406"

    const-wide/16 v4, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x55fe2f5

    const-string v3, "\u4fdd\u5b89\u672a\u6301\u8bc1\u4e0a\u5c97"

    const-wide/32 v4, 0xdc245

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 466
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x55fe2f6

    const-string v3, "\u4e1a\u4e3b\u6216\u7269\u4e1a\u4f7f\u7528\u4eba\u88c5\u9970\u88c5\u4fee\u95ee\u9898"

    const-wide/32 v4, 0xdc245

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x55fe2f8

    const-string v3, "\u5c45\u6c11\u533a\u5f00\u4f01\u4e1a\u95ee\u9898\u624b\u7eed\u4e0d\u5168"

    const-wide/32 v4, 0xdc245

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 468
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x55fe2f9

    const-string v3, "\u7269\u4e1a\u670d\u52a1\u8d28\u91cf"

    const-wide/32 v4, 0xdc245

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 475
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/16 v1, 0x2334

    const-string v3, "\u767e\u59d3\u751f\u6d3b-\u751f\u6d3b\u56f0\u96be"

    const-wide/16 v4, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 476
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0xdc051

    const-string v3, "\u4f4e\u4fdd"

    const-wide/16 v4, 0x2334

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 477
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0xdc052

    const-string v3, "\u4e34\u65f6\u6551\u52a9"

    const-wide/16 v4, 0x2334

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 483
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/16 v1, 0x2335

    const-string v3, "\u767e\u59d3\u751f\u6d3b-\u6c34\u8d28\u95ee\u9898"

    const-wide/16 v4, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 484
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0xdc0b5

    const-string v3, "\u996e\u7528\u6c34\u4e2d\u6df7\u6709\u5f02\u7269"

    const-wide/16 v4, 0x2335

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 485
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0xdc0b6

    const-string v3, "\u996e\u7528\u6c34\u6c34\u8d28\u5f02\u8272"

    const-wide/16 v4, 0x2335

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 486
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0xdc0b7

    const-string v3, "\u996e\u7528\u6c34\u6c34\u8d28\u4e0d\u8fbe\u6807"

    const-wide/16 v4, 0x2335

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 492
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/16 v1, 0x2336

    const-string v3, "\u767e\u59d3\u751f\u6d3b-\u6587\u5316\u6559\u80b2"

    const-wide/16 v4, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0xdc11a

    const-string v3, "\u6559\u80b2\u8d28\u91cf"

    const-wide/16 v4, 0x2336

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 494
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0xdc119

    const-string v3, "\u5c31\u8fd1\u5165\u5b66"

    const-wide/16 v4, 0x2336

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 503
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/16 v1, 0x2337

    const-string v3, "\u767e\u59d3\u751f\u6d3b-\u7535\u68af\u505c\u8fd0"

    const-wide/16 v4, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 504
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0xdc17d

    const-string v3, "\u7269\u4e1a\u7ea0\u7eb7"

    const-wide/16 v4, 0x2337

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 505
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0xdc17e

    const-string v3, "\u8d28\u91cf\u5e74\u68c0"

    const-wide/16 v4, 0x2337

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 506
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0xdc17f

    const-string v3, "\u7535\u68af\u635f\u574f"

    const-wide/16 v4, 0x2337

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 512
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/16 v1, 0x2338

    const-string v3, "\u767e\u59d3\u751f\u6d3b-\u9632\u76d7\u95e8\uff08\u95e8\u7981\uff09"

    const-wide/16 v4, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 513
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0xdc1e1

    const-string v3, "\u95e8\u7981\u7834\u635f"

    const-wide/16 v4, 0x2338

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 514
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0xdc1e2

    const-string v3, "\u672a\u6309\u65f6\u6295\u5165\u4f7f\u7528"

    const-wide/16 v4, 0x2338

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 519
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0xdc246

    const-string v3, "\u767e\u59d3\u751f\u6d3b-\u767e\u59d3\u4e3e\u62a5-\u5ba0\u7269\u95ee\u9898"

    const-wide/16 v4, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 520
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x55fe359

    const-string v3, "\u905b\u72d7\u95ee\u9898"

    const-wide/32 v4, 0xdc246

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 521
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x55fe35a

    const-string v3, "\u9972\u517b\u5927\u578b\u72ac"

    const-wide/32 v4, 0xdc246

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 522
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x55fe35b

    const-string v3, "\u9972\u517b\u5bb6\u79bd"

    const-wide/32 v4, 0xdc246

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 523
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x55fe35c

    const-string v3, "\u8fdd\u89c4\u529e\u7406\u72d7\u8bc1\u95ee\u9898"

    const-wide/32 v4, 0xdc246

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 530
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0xdc247

    const-string v3, "\u767e\u59d3\u751f\u6d3b-\u767e\u59d3\u4e3e\u62a5-\u7535\u95ee\u9898"

    const-wide/16 v4, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 531
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x55fe3bd

    const-string v3, "\u62c6\u8fc1\u5bfc\u81f4\u505c\u7535"

    const-wide/32 v4, 0xdc247

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 532
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x55fe3be

    const-string v3, "\u8d85\u8d1f\u8377\u7528\u7535\u5bfc\u81f4\u505c\u7535"

    const-wide/32 v4, 0xdc247

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 533
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x55fe3bf

    const-string v3, "\u7535\u8d39\u7ea0\u7eb7\u5bfc\u81f4\u505c\u7535"

    const-wide/32 v4, 0xdc247

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 534
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x55fe3c0

    const-string v3, "\u7535\u538b\u4e0d\u7a33\u5bfc\u81f4\u505c\u7535"

    const-wide/32 v4, 0xdc247

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 535
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x55fe3c1

    const-string v3, "\u516c\u5171\u7528\u7535\u88ab\u505c"

    const-wide/32 v4, 0xdc247

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 536
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x55fe3c4

    const-string v3, "\u5929\u6c14\u539f\u56e0\u5bfc\u81f4\u505c\u7535"

    const-wide/32 v4, 0xdc247

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 537
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x55fe3c5

    const-string v3, "\u672a\u516c\u793a\u64c5\u81ea\u505c\u7535"

    const-wide/32 v4, 0xdc247

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 538
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x55fe3c6

    const-string v3, "\u7269\u4e1a\u7ea0\u7eb7\u5bfc\u81f4\u505c\u7535"

    const-wide/32 v4, 0xdc247

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 539
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x55fe3c7

    const-string v3, "\u7ebf\u8def\u6545\u969c\u5bfc\u81f4\u505c\u7535"

    const-wide/32 v4, 0xdc247

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 552
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0xdc249

    const-string v3, "\u767e\u59d3\u751f\u6d3b-\u767e\u59d3\u4e3e\u62a5-\u519c\u6751\u95ee\u9898"

    const-wide/16 v4, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 553
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x55fe485

    const-string v3, "\u798f\u5229\u95ee\u9898"

    const-wide/32 v4, 0xdc249

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 559
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0xdc24b

    const-string v3, "\u767e\u59d3\u751f\u6d3b-\u767e\u59d3\u4e3e\u62a5-\u751f\u6d3b\u73af\u5883"

    const-wide/16 v4, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 560
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x55fe54d

    const-string v3, "\u57fa\u7ad9\u8f90\u5c04\u5f3a"

    const-wide/32 v4, 0xdc24b

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 565
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0xdc24c

    const-string v3, "\u767e\u59d3\u751f\u6d3b-\u767e\u59d3\u4e3e\u62a5-\u52b3\u52a8\u95ee\u9898"

    const-wide/16 v4, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 566
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x55fe5b1

    const-string v3, "\u4fdd\u9669\u3001\u533b\u4fdd\u62a5\u9500\u672a\u53d1\u653e\u975e\u519c"

    const-wide/32 v4, 0xdc24c

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 567
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x55fe5b2

    const-string v3, "\u8ba1\u7b97\u52a0\u73ed\u8d39"

    const-wide/32 v4, 0xdc24c

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 568
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x55fe5b4

    const-string v3, "\u65e0\u6cd5\u8f6c\u79fb\u6863\u6848\u6863\u6848\u8fc1\u51fa\u95ee\u9898"

    const-wide/32 v4, 0xdc24c

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 575
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0xdc24f

    const-string v3, "\u767e\u59d3\u751f\u6d3b-\u767e\u59d3\u4e3e\u62a5-\u4f01\u4e1a\u7ecf\u8425"

    const-wide/16 v4, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 576
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x55fe6dd

    const-string v3, "\u4f01\u4e1a\u975e\u6cd5\u7ecf\u8425"

    const-wide/32 v4, 0xdc24f

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 581
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0xdc250

    const-string v3, "\u767e\u59d3\u751f\u6d3b-\u767e\u59d3\u4e3e\u62a5-\u4eba\u53e3\u8ba1\u751f"

    const-wide/16 v4, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 582
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x55fe741

    const-string v3, "\u6237\u53e3\u6ce8\u9500"

    const-wide/32 v4, 0xdc250

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 583
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x55fe742

    const-string v3, "\u672a\u5a5a\u751f\u80b2\u529e\u7406\u624b\u7eed"

    const-wide/32 v4, 0xdc250

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 589
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0xdc252

    const-string v3, "\u767e\u59d3\u751f\u6d3b-\u767e\u59d3\u4e3e\u62a5-\u79c1\u5b89\u5730\u9501"

    const-wide/16 v4, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 590
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x55fe80a

    const-string v3, "\u5f71\u54cd\u51fa\u884c"

    const-wide/32 v4, 0xdc252

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 595
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0xdc253

    const-string v3, "\u767e\u59d3\u751f\u6d3b-\u767e\u59d3\u4e3e\u62a5-\u9000\u4f0d\u5b89\u7f6e"

    const-wide/16 v4, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 596
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x55fe86d

    const-string v3, "\u9000\u4f0d\u519b\u4eba\u5b89\u7f6e"

    const-wide/32 v4, 0xdc253

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 597
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x55fe86e

    const-string v3, "\u9000\u4f0d\u519b\u4eba\u8865\u507f"

    const-wide/32 v4, 0xdc253

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 603
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0xdc254

    const-string v3, "\u767e\u59d3\u751f\u6d3b-\u767e\u59d3\u4e3e\u62a5-\u6587\u5316\u6559\u80b2"

    const-wide/16 v4, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 604
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x55fe8d1

    const-string v3, "\u6691\u671f\u8865\u8bfe\u95ee\u9898"

    const-wide/32 v4, 0xdc254

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 605
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x55fe8d2

    const-string v3, "\u5b66\u6821\u7ba1\u7406\u5236\u5ea6"

    const-wide/32 v4, 0xdc254

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 611
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0xdc255

    const-string v3, "\u767e\u59d3\u751f\u6d3b-\u767e\u59d3\u4e3e\u62a5-\u6587\u5316\u6267\u6cd5"

    const-wide/16 v4, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 612
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x55fe935

    const-string v3, "\u7f51\u5427\u5141\u8bb8\u672a\u6210\u5e74\u4eba\u8fdb\u5165\u95ee\u9898"

    const-wide/32 v4, 0xdc255

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 617
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0xdc257

    const-string v3, "\u767e\u59d3\u751f\u6d3b-\u767e\u59d3\u4e3e\u62a5-\u4f4f\u623f\u95ee\u9898"

    const-wide/16 v4, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 618
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x55fe9fd

    const-string v3, "\u5ec9\u79df\u623f\u672a\u7533\u8bf7\u4e0b\u6765\u7533\u8bf7\u65f6\u95f4\u8fc7\u957f"

    const-wide/32 v4, 0xdc257

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 619
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x55fe9fe

    const-string v3, "\u7533\u8bf7\u65f6\u95f4\u8fc7\u957f"

    const-wide/32 v4, 0xdc257

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 620
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x55fe9ff

    const-string v3, "\u5ec9\u79df\u623f\u672a\u7533\u8bf7\u4e0b\u6765\u7533\u8bf7\u6761\u4ef6\u4e0d\u5408\u683c"

    const-wide/32 v4, 0xdc257

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 627
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 628
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/cymobile/ymwork/types/Category;

    sput-object v0, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->filterClassesCategories:[Lcom/cymobile/ymwork/types/Category;

    .line 629
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-lt v10, v0, :cond_1

    .line 654
    .end local v10           #i:I
    :cond_0
    return-void

    .line 630
    .restart local v10       #i:I
    :cond_1
    sget-object v1, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->filterClassesCategories:[Lcom/cymobile/ymwork/types/Category;

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cymobile/ymwork/types/Category;

    aput-object v0, v1, v10

    .line 629
    add-int/lit8 v10, v10, 0x1

    goto :goto_0
.end method

.method public static toDays(I)I
    .locals 5
    .parameter "id"

    .prologue
    const/4 v3, 0x7

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 928
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 929
    .local v0, calendar:Ljava/util/Calendar;
    if-nez p0, :cond_1

    move v1, v2

    .line 977
    :cond_0
    :goto_0
    return v1

    .line 932
    :cond_1
    if-eq p0, v1, :cond_0

    .line 935
    const/4 v4, 0x2

    if-ne p0, v4, :cond_2

    move v1, v3

    .line 938
    goto :goto_0

    .line 940
    :cond_2
    const/4 v4, 0x3

    if-ne p0, v4, :cond_3

    .line 943
    const/16 v1, 0x1e

    goto :goto_0

    .line 945
    :cond_3
    const/4 v4, 0x4

    if-ne p0, v4, :cond_4

    .line 946
    const/16 v1, 0x5a

    goto :goto_0

    .line 958
    :cond_4
    const/4 v4, 0x5

    if-ne p0, v4, :cond_5

    .line 959
    const/16 v1, 0x16d

    goto :goto_0

    .line 964
    :cond_5
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 965
    .local v1, year:I
    const/4 v4, 0x6

    if-eq p0, v4, :cond_0

    .line 968
    if-ne p0, v3, :cond_6

    .line 969
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 971
    :cond_6
    const/16 v3, 0x8

    if-ne p0, v3, :cond_7

    .line 972
    add-int/lit8 v1, v1, -0x2

    goto :goto_0

    .line 974
    :cond_7
    const/16 v3, 0x9

    if-ne p0, v3, :cond_8

    .line 975
    add-int/lit8 v1, v1, -0x3

    goto :goto_0

    :cond_8
    move v1, v2

    .line 977
    goto :goto_0
.end method


# virtual methods
.method public addDataChangeListener(Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport$OnDataChangeListener;)V
    .locals 0
    .parameter "dataChangeListener"

    .prologue
    .line 802
    return-void
.end method

.method public curCategory()Lcom/cymobile/ymwork/types/Category;
    .locals 1

    .prologue
    .line 870
    iget-object v0, p0, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->curCategory:Lcom/cymobile/ymwork/types/Category;

    return-object v0
.end method

.method public curClasses()Lcom/cymobile/ymwork/types/Category;
    .locals 1

    .prologue
    .line 892
    iget-object v0, p0, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->curClasses:Lcom/cymobile/ymwork/types/Category;

    return-object v0
.end method

.method public curFilterId()Lcom/cymobile/ymwork/types/Pair;
    .locals 1

    .prologue
    .line 912
    iget-object v0, p0, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->curFilterId:Lcom/cymobile/ymwork/types/Pair;

    return-object v0
.end method

.method public curRange()Lcom/cymobile/ymwork/types/Pair;
    .locals 1

    .prologue
    .line 825
    iget-object v0, p0, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->curRange:Lcom/cymobile/ymwork/types/Pair;

    return-object v0
.end method

.method public filterCategories()[Lcom/cymobile/ymwork/types/Category;
    .locals 1

    .prologue
    .line 843
    sget-object v0, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->filterCategories:[Lcom/cymobile/ymwork/types/Category;

    return-object v0
.end method

.method public filterClassesCategories()[Lcom/cymobile/ymwork/types/Category;
    .locals 1

    .prologue
    .line 849
    sget-object v0, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->filterClassesCategories:[Lcom/cymobile/ymwork/types/Category;

    return-object v0
.end method

.method public filterIds()[Lcom/cymobile/ymwork/types/Pair;
    .locals 1

    .prologue
    .line 856
    iget-object v0, p0, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->filterIds:[Lcom/cymobile/ymwork/types/Pair;

    return-object v0
.end method

.method public filterRanges()[Lcom/cymobile/ymwork/types/Pair;
    .locals 1

    .prologue
    .line 860
    iget-object v0, p0, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->filterRanges:[Lcom/cymobile/ymwork/types/Pair;

    return-object v0
.end method

.method public reload(Z)V
    .locals 0
    .parameter "bool"

    .prologue
    .line 805
    return-void
.end method

.method public removeDataChangeListener(Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport$OnDataChangeListener;)V
    .locals 0
    .parameter "dataChangeListener"

    .prologue
    .line 809
    return-void
.end method

.method public reset(Z)V
    .locals 0
    .parameter "param"

    .prologue
    .line 812
    return-void
.end method

.method public setCurCategory(Lcom/cymobile/ymwork/types/Category;)Z
    .locals 2
    .parameter "c"

    .prologue
    const/4 v0, 0x1

    .line 874
    if-nez p1, :cond_1

    .line 875
    iget-object v1, p0, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->curCategory:Lcom/cymobile/ymwork/types/Category;

    if-nez v1, :cond_0

    .line 876
    sget-object v1, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->TOP_CATEGORY:Lcom/cymobile/ymwork/types/Category;

    iput-object v1, p0, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->curCategory:Lcom/cymobile/ymwork/types/Category;

    .line 882
    :goto_0
    return v0

    .line 879
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 881
    :cond_1
    iput-object p1, p0, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->curCategory:Lcom/cymobile/ymwork/types/Category;

    goto :goto_0
.end method

.method public setCurClass(Lcom/cymobile/ymwork/types/Category;)Z
    .locals 2
    .parameter "c"

    .prologue
    const/4 v0, 0x1

    .line 896
    if-nez p1, :cond_1

    .line 897
    iget-object v1, p0, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->curClasses:Lcom/cymobile/ymwork/types/Category;

    if-nez v1, :cond_0

    .line 898
    sget-object v1, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->TOP_ClASSES:Lcom/cymobile/ymwork/types/Category;

    iput-object v1, p0, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->curClasses:Lcom/cymobile/ymwork/types/Category;

    .line 904
    :goto_0
    return v0

    .line 901
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 903
    :cond_1
    iput-object p1, p0, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->curClasses:Lcom/cymobile/ymwork/types/Category;

    goto :goto_0
.end method

.method public setCurFilterId(Lcom/cymobile/ymwork/types/Pair;)Z
    .locals 2
    .parameter "p"

    .prologue
    const/4 v0, 0x1

    .line 916
    if-nez p1, :cond_1

    .line 917
    iget-object v1, p0, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->curFilterId:Lcom/cymobile/ymwork/types/Pair;

    if-eqz v1, :cond_0

    .line 918
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->curFilterId:Lcom/cymobile/ymwork/types/Pair;

    .line 924
    :goto_0
    return v0

    .line 921
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 923
    :cond_1
    iput-object p1, p0, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->curFilterId:Lcom/cymobile/ymwork/types/Pair;

    goto :goto_0
.end method

.method public setCurRange(Lcom/cymobile/ymwork/types/Pair;)Z
    .locals 2
    .parameter "pair"

    .prologue
    const/4 v0, 0x1

    .line 829
    if-nez p1, :cond_1

    .line 830
    iget-object v1, p0, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->curRange:Lcom/cymobile/ymwork/types/Pair;

    if-eqz v1, :cond_0

    .line 831
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->curRange:Lcom/cymobile/ymwork/types/Pair;

    .line 837
    :goto_0
    return v0

    .line 834
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 836
    :cond_1
    iput-object p1, p0, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->curRange:Lcom/cymobile/ymwork/types/Pair;

    goto :goto_0
.end method

.method public status()I
    .locals 1

    .prologue
    .line 815
    const/4 v0, 0x0

    return v0
.end method
