.class public Lcom/cymobile/ymwork/adapter/ReportDataSource;
.super Ljava/lang/Object;
.source "ReportDataSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cymobile/ymwork/adapter/ReportDataSource$OnDataChangeListener;
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

.field public static final TOP_REGION:Lcom/cymobile/ymwork/types/Region;

.field protected static filterCategories:[Lcom/cymobile/ymwork/types/Category;


# instance fields
.field private curCategory:Lcom/cymobile/ymwork/types/Category;

.field private curFilterId:Lcom/cymobile/ymwork/types/Pair;

.field private curRange:Lcom/cymobile/ymwork/types/Pair;

.field private filterIds:[Lcom/cymobile/ymwork/types/Pair;

.field protected filterRanges:[Lcom/cymobile/ymwork/types/Pair;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 82
    new-instance v0, Lcom/cymobile/ymwork/types/Region;

    const-string v1, "\u5168\u90e8"

    invoke-direct {v0, v2, v1, v2}, Lcom/cymobile/ymwork/types/Region;-><init>(ILjava/lang/String;I)V

    sput-object v0, Lcom/cymobile/ymwork/adapter/ReportDataSource;->TOP_REGION:Lcom/cymobile/ymwork/types/Region;

    .line 118
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x1ae19

    const-string v3, "\u5168\u90e8\u5730\u533a"

    const-wide/16 v4, 0x0

    const/16 v7, 0x1f4

    move-object v8, v6

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cymobile/ymwork/adapter/ReportDataSource;->TOP_CATEGORY:Lcom/cymobile/ymwork/types/Category;

    .line 140
    new-instance v0, Lcom/cymobile/ymwork/types/Pair;

    const-string v1, "1"

    const-string v2, "\u9ed8\u8ba4\u6392\u5e8f"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/cymobile/ymwork/types/Pair;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/cymobile/ymwork/adapter/ReportDataSource;->DEFAULT_FILTER:Lcom/cymobile/ymwork/types/Pair;

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Lcom/cymobile/ymwork/types/Pair;

    const-string v1, "3"

    const-string v2, "\u672c\u6708"

    const/16 v3, 0x1e

    invoke-direct {v0, v1, v2, v3}, Lcom/cymobile/ymwork/types/Pair;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/cymobile/ymwork/adapter/ReportDataSource;->curRange:Lcom/cymobile/ymwork/types/Pair;

    .line 122
    sget-object v0, Lcom/cymobile/ymwork/adapter/ReportDataSource;->TOP_CATEGORY:Lcom/cymobile/ymwork/types/Category;

    iput-object v0, p0, Lcom/cymobile/ymwork/adapter/ReportDataSource;->curCategory:Lcom/cymobile/ymwork/types/Category;

    .line 141
    sget-object v0, Lcom/cymobile/ymwork/adapter/ReportDataSource;->DEFAULT_FILTER:Lcom/cymobile/ymwork/types/Pair;

    iput-object v0, p0, Lcom/cymobile/ymwork/adapter/ReportDataSource;->curFilterId:Lcom/cymobile/ymwork/types/Pair;

    .line 23
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/cymobile/ymwork/types/Pair;

    iput-object v0, p0, Lcom/cymobile/ymwork/adapter/ReportDataSource;->filterIds:[Lcom/cymobile/ymwork/types/Pair;

    .line 24
    iget-object v0, p0, Lcom/cymobile/ymwork/adapter/ReportDataSource;->filterIds:[Lcom/cymobile/ymwork/types/Pair;

    new-instance v1, Lcom/cymobile/ymwork/types/Pair;

    const-string v2, "1"

    const-string v3, "\u9ed8\u8ba4\u6392\u5e8f"

    invoke-direct {v1, v2, v3, v4}, Lcom/cymobile/ymwork/types/Pair;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v1, v0, v5

    .line 25
    iget-object v0, p0, Lcom/cymobile/ymwork/adapter/ReportDataSource;->filterIds:[Lcom/cymobile/ymwork/types/Pair;

    new-instance v1, Lcom/cymobile/ymwork/types/Pair;

    const-string v2, "1"

    const-string v3, "\u6848\u4ef6\u6570\u4ece\u5927\u5230\u5c0f"

    invoke-direct {v1, v2, v3, v4}, Lcom/cymobile/ymwork/types/Pair;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v1, v0, v6

    .line 26
    iget-object v0, p0, Lcom/cymobile/ymwork/adapter/ReportDataSource;->filterIds:[Lcom/cymobile/ymwork/types/Pair;

    new-instance v1, Lcom/cymobile/ymwork/types/Pair;

    const-string v2, "2"

    const-string v3, "\u6848\u4ef6\u6570\u4ece\u5c0f\u5230\u5927"

    invoke-direct {v1, v2, v3, v4}, Lcom/cymobile/ymwork/types/Pair;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v1, v0, v4

    .line 28
    invoke-static {}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getSubZone()Lcom/cymobile/ymwork/types/Group;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getSubZone()Lcom/cymobile/ymwork/types/Group;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 29
    invoke-static {}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getSubZone()Lcom/cymobile/ymwork/types/Group;

    move-result-object v0

    invoke-static {v0}, Lcom/cymobile/ymwork/adapter/ReportDataSource;->setCategory(Lcom/cymobile/ymwork/types/Group;)V

    .line 34
    :goto_0
    return-void

    .line 31
    :cond_0
    new-array v0, v6, [Lcom/cymobile/ymwork/types/Category;

    sput-object v0, Lcom/cymobile/ymwork/adapter/ReportDataSource;->filterCategories:[Lcom/cymobile/ymwork/types/Category;

    .line 32
    sget-object v0, Lcom/cymobile/ymwork/adapter/ReportDataSource;->filterCategories:[Lcom/cymobile/ymwork/types/Category;

    sget-object v1, Lcom/cymobile/ymwork/adapter/ReportDataSource;->TOP_CATEGORY:Lcom/cymobile/ymwork/types/Category;

    aput-object v1, v0, v5

    goto :goto_0
.end method

.method public static getOrderDescStr(I)Ljava/lang/String;
    .locals 1
    .parameter "id"

    .prologue
    .line 197
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 198
    const-string v0, "1"

    .line 203
    :goto_0
    return-object v0

    .line 200
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 201
    const-string v0, "2"

    goto :goto_0

    .line 203
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static resetTOPCategory(JLjava/lang/String;)V
    .locals 9
    .parameter "zoneCode"
    .parameter "zoneName"

    .prologue
    const/4 v6, 0x0

    .line 120
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/16 v4, 0x0

    const/16 v7, 0x1f4

    move-wide v1, p0

    move-object v3, p2

    move-object v8, v6

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cymobile/ymwork/adapter/ReportDataSource;->TOP_CATEGORY:Lcom/cymobile/ymwork/types/Category;

    .line 121
    return-void
.end method

.method public static setCategory(Lcom/cymobile/ymwork/types/Group;)V
    .locals 15
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
    .line 36
    .local p0, subzoneStr:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/Zone;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lcom/cymobile/ymwork/types/Category;

    sput-object v0, Lcom/cymobile/ymwork/adapter/ReportDataSource;->filterCategories:[Lcom/cymobile/ymwork/types/Category;

    .line 38
    sget-object v0, Lcom/cymobile/ymwork/adapter/ReportDataSource;->filterCategories:[Lcom/cymobile/ymwork/types/Category;

    const/4 v3, 0x0

    sget-object v4, Lcom/cymobile/ymwork/adapter/ReportDataSource;->TOP_CATEGORY:Lcom/cymobile/ymwork/types/Category;

    aput-object v4, v0, v3

    .line 39
    sget-object v0, Lcom/cymobile/ymwork/adapter/ReportDataSource;->TOP_CATEGORY:Lcom/cymobile/ymwork/types/Category;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/types/Category;->id()J

    move-result-wide v1

    .line 40
    .local v1, topid:J
    sget-object v0, Lcom/cymobile/ymwork/adapter/ReportDataSource;->TOP_CATEGORY:Lcom/cymobile/ymwork/types/Category;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/types/Category;->name()Ljava/lang/String;

    move-result-object v0

    const-string v3, "\u5168\u90e8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    sget-object v9, Lcom/cymobile/ymwork/adapter/ReportDataSource;->filterCategories:[Lcom/cymobile/ymwork/types/Category;

    const/4 v10, 0x0

    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    sget-object v3, Lcom/cymobile/ymwork/adapter/ReportDataSource;->TOP_CATEGORY:Lcom/cymobile/ymwork/types/Category;

    invoke-virtual {v3}, Lcom/cymobile/ymwork/types/Category;->name()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    aput-object v0, v9, v10

    .line 45
    :goto_0
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v0

    if-lt v12, v0, :cond_2

    .line 54
    .end local v1           #topid:J
    .end local v12           #i:I
    :cond_0
    return-void

    .line 43
    .restart local v1       #topid:J
    :cond_1
    sget-object v0, Lcom/cymobile/ymwork/adapter/ReportDataSource;->filterCategories:[Lcom/cymobile/ymwork/types/Category;

    const/4 v14, 0x0

    new-instance v3, Lcom/cymobile/ymwork/types/Category;

    sget-object v4, Lcom/cymobile/ymwork/adapter/ReportDataSource;->TOP_CATEGORY:Lcom/cymobile/ymwork/types/Category;

    invoke-virtual {v4}, Lcom/cymobile/ymwork/types/Category;->id()J

    move-result-wide v4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u5168\u90e8"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/cymobile/ymwork/adapter/ReportDataSource;->TOP_CATEGORY:Lcom/cymobile/ymwork/types/Category;

    invoke-virtual {v7}, Lcom/cymobile/ymwork/types/Category;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1f4

    const/4 v11, 0x0

    invoke-direct/range {v3 .. v11}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    aput-object v3, v0, v14

    goto :goto_0

    .line 46
    .restart local v12       #i:I
    :cond_2
    invoke-virtual {p0, v12}, Lcom/cymobile/ymwork/types/Group;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/cymobile/ymwork/types/Zone;

    .line 47
    .local v13, zone:Lcom/cymobile/ymwork/types/Zone;
    invoke-virtual {v13}, Lcom/cymobile/ymwork/types/Zone;->getZoneid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x9

    if-ne v0, v3, :cond_4

    .line 48
    sget-object v0, Lcom/cymobile/ymwork/adapter/ReportDataSource;->filterCategories:[Lcom/cymobile/ymwork/types/Category;

    add-int/lit8 v14, v12, 0x1

    new-instance v3, Lcom/cymobile/ymwork/types/Category;

    invoke-virtual {v13}, Lcom/cymobile/ymwork/types/Zone;->getZoneid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v13}, Lcom/cymobile/ymwork/types/Zone;->getZoneName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13}, Lcom/cymobile/ymwork/types/Zone;->getZoneid()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x6

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    const/4 v9, 0x0

    const/16 v10, 0x1f4

    const/4 v11, 0x0

    invoke-direct/range {v3 .. v11}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    aput-object v3, v0, v14

    .line 45
    :cond_3
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 49
    :cond_4
    invoke-virtual {v13}, Lcom/cymobile/ymwork/types/Zone;->getZoneid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0xc

    if-ne v0, v3, :cond_3

    .line 50
    sget-object v0, Lcom/cymobile/ymwork/adapter/ReportDataSource;->filterCategories:[Lcom/cymobile/ymwork/types/Category;

    add-int/lit8 v14, v12, 0x1

    new-instance v3, Lcom/cymobile/ymwork/types/Category;

    invoke-virtual {v13}, Lcom/cymobile/ymwork/types/Zone;->getZoneid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v13}, Lcom/cymobile/ymwork/types/Zone;->getZoneName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13}, Lcom/cymobile/ymwork/types/Zone;->getZoneid()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/16 v9, 0x9

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    const/4 v9, 0x0

    const/16 v10, 0x1f4

    const/4 v11, 0x0

    invoke-direct/range {v3 .. v11}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    aput-object v3, v0, v14

    goto :goto_2
.end method

.method public static toDays(I)I
    .locals 6
    .parameter "id"

    .prologue
    const/4 v4, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 161
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 162
    .local v0, calendar:Ljava/util/Calendar;
    if-nez p0, :cond_1

    .line 194
    :cond_0
    :goto_0
    return v2

    .line 165
    :cond_1
    if-ne p0, v3, :cond_2

    move v2, v3

    .line 166
    goto :goto_0

    .line 168
    :cond_2
    const/4 v5, 0x2

    if-ne p0, v5, :cond_3

    move v2, v4

    .line 169
    goto :goto_0

    .line 171
    :cond_3
    const/4 v5, 0x3

    if-ne p0, v5, :cond_4

    .line 172
    const/16 v2, 0x1e

    goto :goto_0

    .line 174
    :cond_4
    const/4 v5, 0x4

    if-ne p0, v5, :cond_5

    .line 175
    const/16 v2, 0x3c

    goto :goto_0

    .line 177
    :cond_5
    const/4 v5, 0x5

    if-ne p0, v5, :cond_6

    .line 178
    const/16 v2, 0x5a

    goto :goto_0

    .line 181
    :cond_6
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 182
    .local v1, year:I
    const/4 v3, 0x6

    if-ne p0, v3, :cond_7

    .line 183
    const/16 v2, 0x16d

    goto :goto_0

    .line 185
    :cond_7
    if-ne p0, v4, :cond_8

    .line 186
    add-int/lit8 v2, v1, -0x1

    goto :goto_0

    .line 188
    :cond_8
    const/16 v3, 0x8

    if-ne p0, v3, :cond_9

    .line 189
    add-int/lit8 v2, v1, -0x2

    goto :goto_0

    .line 191
    :cond_9
    const/16 v3, 0x9

    if-ne p0, v3, :cond_0

    .line 192
    add-int/lit8 v2, v1, -0x3

    goto :goto_0
.end method


# virtual methods
.method public addDataChangeListener(Lcom/cymobile/ymwork/adapter/ReportDataSource$OnDataChangeListener;)V
    .locals 0
    .parameter "dataChangeListener"

    .prologue
    .line 63
    return-void
.end method

.method public curCategory()Lcom/cymobile/ymwork/types/Category;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/cymobile/ymwork/adapter/ReportDataSource;->curCategory:Lcom/cymobile/ymwork/types/Category;

    return-object v0
.end method

.method public curFilterId()Lcom/cymobile/ymwork/types/Pair;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/cymobile/ymwork/adapter/ReportDataSource;->curFilterId:Lcom/cymobile/ymwork/types/Pair;

    return-object v0
.end method

.method public curRange()Lcom/cymobile/ymwork/types/Pair;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/cymobile/ymwork/adapter/ReportDataSource;->curRange:Lcom/cymobile/ymwork/types/Pair;

    return-object v0
.end method

.method public filterCategories()[Lcom/cymobile/ymwork/types/Category;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/cymobile/ymwork/adapter/ReportDataSource;->filterCategories:[Lcom/cymobile/ymwork/types/Category;

    return-object v0
.end method

.method public filterIds()[Lcom/cymobile/ymwork/types/Pair;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/cymobile/ymwork/adapter/ReportDataSource;->filterIds:[Lcom/cymobile/ymwork/types/Pair;

    return-object v0
.end method

.method public filterRanges()[Lcom/cymobile/ymwork/types/Pair;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/cymobile/ymwork/adapter/ReportDataSource;->filterRanges:[Lcom/cymobile/ymwork/types/Pair;

    return-object v0
.end method

.method public reload(Z)V
    .locals 0
    .parameter "bool"

    .prologue
    .line 66
    return-void
.end method

.method public removeDataChangeListener(Lcom/cymobile/ymwork/adapter/ReportDataSource$OnDataChangeListener;)V
    .locals 0
    .parameter "dataChangeListener"

    .prologue
    .line 70
    return-void
.end method

.method public reset(Z)V
    .locals 0
    .parameter "param"

    .prologue
    .line 73
    return-void
.end method

.method public setCurCategory(Lcom/cymobile/ymwork/types/Category;)Z
    .locals 2
    .parameter "c"

    .prologue
    const/4 v0, 0x1

    .line 129
    if-nez p1, :cond_1

    .line 130
    iget-object v1, p0, Lcom/cymobile/ymwork/adapter/ReportDataSource;->curCategory:Lcom/cymobile/ymwork/types/Category;

    if-nez v1, :cond_0

    .line 131
    sget-object v1, Lcom/cymobile/ymwork/adapter/ReportDataSource;->TOP_CATEGORY:Lcom/cymobile/ymwork/types/Category;

    iput-object v1, p0, Lcom/cymobile/ymwork/adapter/ReportDataSource;->curCategory:Lcom/cymobile/ymwork/types/Category;

    .line 137
    :goto_0
    return v0

    .line 134
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 136
    :cond_1
    iput-object p1, p0, Lcom/cymobile/ymwork/adapter/ReportDataSource;->curCategory:Lcom/cymobile/ymwork/types/Category;

    goto :goto_0
.end method

.method public setCurFilterId(Lcom/cymobile/ymwork/types/Pair;)Z
    .locals 2
    .parameter "p"

    .prologue
    const/4 v0, 0x1

    .line 149
    if-nez p1, :cond_1

    .line 150
    iget-object v1, p0, Lcom/cymobile/ymwork/adapter/ReportDataSource;->curFilterId:Lcom/cymobile/ymwork/types/Pair;

    if-eqz v1, :cond_0

    .line 151
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/cymobile/ymwork/adapter/ReportDataSource;->curFilterId:Lcom/cymobile/ymwork/types/Pair;

    .line 157
    :goto_0
    return v0

    .line 154
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 156
    :cond_1
    iput-object p1, p0, Lcom/cymobile/ymwork/adapter/ReportDataSource;->curFilterId:Lcom/cymobile/ymwork/types/Pair;

    goto :goto_0
.end method

.method public setCurRange(Lcom/cymobile/ymwork/types/Pair;)Z
    .locals 2
    .parameter "pair"

    .prologue
    const/4 v0, 0x1

    .line 90
    if-nez p1, :cond_1

    .line 91
    iget-object v1, p0, Lcom/cymobile/ymwork/adapter/ReportDataSource;->curRange:Lcom/cymobile/ymwork/types/Pair;

    if-eqz v1, :cond_0

    .line 92
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/cymobile/ymwork/adapter/ReportDataSource;->curRange:Lcom/cymobile/ymwork/types/Pair;

    .line 98
    :goto_0
    return v0

    .line 95
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 97
    :cond_1
    iput-object p1, p0, Lcom/cymobile/ymwork/adapter/ReportDataSource;->curRange:Lcom/cymobile/ymwork/types/Pair;

    goto :goto_0
.end method

.method public status()I
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method
