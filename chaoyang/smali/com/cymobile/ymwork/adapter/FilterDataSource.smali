.class public Lcom/cymobile/ymwork/adapter/FilterDataSource;
.super Ljava/lang/Object;
.source "FilterDataSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cymobile/ymwork/adapter/FilterDataSource$OnDataChangeListener;
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

    .line 113
    new-instance v0, Lcom/cymobile/ymwork/types/Region;

    const-string v1, "\u5168\u90e8"

    invoke-direct {v0, v2, v1, v2}, Lcom/cymobile/ymwork/types/Region;-><init>(ILjava/lang/String;I)V

    sput-object v0, Lcom/cymobile/ymwork/adapter/FilterDataSource;->TOP_REGION:Lcom/cymobile/ymwork/types/Region;

    .line 149
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/32 v1, 0x1ae19

    const-string v3, "\u5168\u90e8"

    const-wide/16 v4, 0x0

    const/16 v7, 0x1f4

    move-object v8, v6

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cymobile/ymwork/adapter/FilterDataSource;->TOP_CATEGORY:Lcom/cymobile/ymwork/types/Category;

    .line 171
    new-instance v0, Lcom/cymobile/ymwork/types/Pair;

    const-string v1, "1"

    const-string v2, "\u9ed8\u8ba4\u6392\u5e8f"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/cymobile/ymwork/types/Pair;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/cymobile/ymwork/adapter/FilterDataSource;->DEFAULT_FILTER:Lcom/cymobile/ymwork/types/Pair;

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

    .line 115
    new-instance v0, Lcom/cymobile/ymwork/types/Pair;

    const-string v1, "1"

    const-string v2, "\u5f53\u5929"

    invoke-direct {v0, v1, v2, v5}, Lcom/cymobile/ymwork/types/Pair;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/cymobile/ymwork/adapter/FilterDataSource;->curRange:Lcom/cymobile/ymwork/types/Pair;

    .line 153
    sget-object v0, Lcom/cymobile/ymwork/adapter/FilterDataSource;->TOP_CATEGORY:Lcom/cymobile/ymwork/types/Category;

    iput-object v0, p0, Lcom/cymobile/ymwork/adapter/FilterDataSource;->curCategory:Lcom/cymobile/ymwork/types/Category;

    .line 172
    sget-object v0, Lcom/cymobile/ymwork/adapter/FilterDataSource;->DEFAULT_FILTER:Lcom/cymobile/ymwork/types/Pair;

    iput-object v0, p0, Lcom/cymobile/ymwork/adapter/FilterDataSource;->curFilterId:Lcom/cymobile/ymwork/types/Pair;

    .line 23
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/cymobile/ymwork/types/Pair;

    iput-object v0, p0, Lcom/cymobile/ymwork/adapter/FilterDataSource;->filterIds:[Lcom/cymobile/ymwork/types/Pair;

    .line 24
    iget-object v0, p0, Lcom/cymobile/ymwork/adapter/FilterDataSource;->filterIds:[Lcom/cymobile/ymwork/types/Pair;

    new-instance v1, Lcom/cymobile/ymwork/types/Pair;

    const-string v2, "1"

    const-string v3, "\u9ed8\u8ba4\u6392\u5e8f"

    invoke-direct {v1, v2, v3, v4}, Lcom/cymobile/ymwork/types/Pair;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v1, v0, v5

    .line 25
    iget-object v0, p0, Lcom/cymobile/ymwork/adapter/FilterDataSource;->filterIds:[Lcom/cymobile/ymwork/types/Pair;

    new-instance v1, Lcom/cymobile/ymwork/types/Pair;

    const-string v2, "1"

    const-string v3, "\u4e0a\u62a5\u65f6\u95f4\u4ece\u65b0\u5230\u65e7"

    invoke-direct {v1, v2, v3, v4}, Lcom/cymobile/ymwork/types/Pair;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v1, v0, v6

    .line 26
    iget-object v0, p0, Lcom/cymobile/ymwork/adapter/FilterDataSource;->filterIds:[Lcom/cymobile/ymwork/types/Pair;

    new-instance v1, Lcom/cymobile/ymwork/types/Pair;

    const-string v2, "2"

    const-string v3, "\u4e0a\u62a5\u65f6\u95f4\u4ece\u65e7\u5230\u65b0"

    invoke-direct {v1, v2, v3, v4}, Lcom/cymobile/ymwork/types/Pair;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v1, v0, v4

    .line 30
    invoke-static {}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getSubZone()Lcom/cymobile/ymwork/types/Group;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getSubZone()Lcom/cymobile/ymwork/types/Group;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 31
    invoke-static {}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->getSubZone()Lcom/cymobile/ymwork/types/Group;

    move-result-object v0

    invoke-static {v0}, Lcom/cymobile/ymwork/adapter/FilterDataSource;->setCategory(Lcom/cymobile/ymwork/types/Group;)V

    .line 65
    :goto_0
    return-void

    .line 33
    :cond_0
    new-array v0, v6, [Lcom/cymobile/ymwork/types/Category;

    sput-object v0, Lcom/cymobile/ymwork/adapter/FilterDataSource;->filterCategories:[Lcom/cymobile/ymwork/types/Category;

    .line 34
    sget-object v0, Lcom/cymobile/ymwork/adapter/FilterDataSource;->filterCategories:[Lcom/cymobile/ymwork/types/Category;

    sget-object v1, Lcom/cymobile/ymwork/adapter/FilterDataSource;->TOP_CATEGORY:Lcom/cymobile/ymwork/types/Category;

    aput-object v1, v0, v5

    goto :goto_0
.end method

.method public static getOrderDescStr(I)Ljava/lang/String;
    .locals 1
    .parameter "id"

    .prologue
    .line 244
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 245
    const-string v0, "timedown"

    .line 256
    :goto_0
    return-object v0

    .line 247
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 248
    const-string v0, "timeup"

    goto :goto_0

    .line 250
    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    .line 251
    const-string v0, "mianjidesc"

    goto :goto_0

    .line 253
    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    .line 254
    const-string v0, "distance"

    goto :goto_0

    .line 256
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

    .line 151
    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    const-wide/16 v4, 0x0

    const/16 v7, 0x1f4

    move-wide v1, p0

    move-object v3, p2

    move-object v8, v6

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cymobile/ymwork/adapter/FilterDataSource;->TOP_CATEGORY:Lcom/cymobile/ymwork/types/Category;

    .line 152
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
    .line 67
    .local p0, subzoneStr:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/Zone;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lcom/cymobile/ymwork/types/Category;

    sput-object v0, Lcom/cymobile/ymwork/adapter/FilterDataSource;->filterCategories:[Lcom/cymobile/ymwork/types/Category;

    .line 69
    sget-object v0, Lcom/cymobile/ymwork/adapter/FilterDataSource;->filterCategories:[Lcom/cymobile/ymwork/types/Category;

    const/4 v3, 0x0

    sget-object v4, Lcom/cymobile/ymwork/adapter/FilterDataSource;->TOP_CATEGORY:Lcom/cymobile/ymwork/types/Category;

    aput-object v4, v0, v3

    .line 70
    sget-object v0, Lcom/cymobile/ymwork/adapter/FilterDataSource;->TOP_CATEGORY:Lcom/cymobile/ymwork/types/Category;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/types/Category;->id()J

    move-result-wide v1

    .line 71
    .local v1, topid:J
    sget-object v0, Lcom/cymobile/ymwork/adapter/FilterDataSource;->TOP_CATEGORY:Lcom/cymobile/ymwork/types/Category;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/types/Category;->name()Ljava/lang/String;

    move-result-object v0

    const-string v3, "\u5168\u90e8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    sget-object v9, Lcom/cymobile/ymwork/adapter/FilterDataSource;->filterCategories:[Lcom/cymobile/ymwork/types/Category;

    const/4 v10, 0x0

    new-instance v0, Lcom/cymobile/ymwork/types/Category;

    sget-object v3, Lcom/cymobile/ymwork/adapter/FilterDataSource;->TOP_CATEGORY:Lcom/cymobile/ymwork/types/Category;

    invoke-virtual {v3}, Lcom/cymobile/ymwork/types/Category;->name()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/cymobile/ymwork/types/Category;-><init>(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    aput-object v0, v9, v10

    .line 76
    :goto_0
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v0

    if-lt v12, v0, :cond_2

    .line 85
    .end local v1           #topid:J
    .end local v12           #i:I
    :cond_0
    return-void

    .line 74
    .restart local v1       #topid:J
    :cond_1
    sget-object v0, Lcom/cymobile/ymwork/adapter/FilterDataSource;->filterCategories:[Lcom/cymobile/ymwork/types/Category;

    const/4 v14, 0x0

    new-instance v3, Lcom/cymobile/ymwork/types/Category;

    sget-object v4, Lcom/cymobile/ymwork/adapter/FilterDataSource;->TOP_CATEGORY:Lcom/cymobile/ymwork/types/Category;

    invoke-virtual {v4}, Lcom/cymobile/ymwork/types/Category;->id()J

    move-result-wide v4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u5168\u90e8"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/cymobile/ymwork/adapter/FilterDataSource;->TOP_CATEGORY:Lcom/cymobile/ymwork/types/Category;

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

    .line 77
    .restart local v12       #i:I
    :cond_2
    invoke-virtual {p0, v12}, Lcom/cymobile/ymwork/types/Group;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/cymobile/ymwork/types/Zone;

    .line 78
    .local v13, zone:Lcom/cymobile/ymwork/types/Zone;
    invoke-virtual {v13}, Lcom/cymobile/ymwork/types/Zone;->getZoneid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x9

    if-ne v0, v3, :cond_4

    .line 79
    sget-object v0, Lcom/cymobile/ymwork/adapter/FilterDataSource;->filterCategories:[Lcom/cymobile/ymwork/types/Category;

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

    .line 76
    :cond_3
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 80
    :cond_4
    invoke-virtual {v13}, Lcom/cymobile/ymwork/types/Zone;->getZoneid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0xc

    if-ne v0, v3, :cond_3

    .line 81
    sget-object v0, Lcom/cymobile/ymwork/adapter/FilterDataSource;->filterCategories:[Lcom/cymobile/ymwork/types/Category;

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
    .locals 5
    .parameter "id"

    .prologue
    const/4 v3, 0x7

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 192
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 193
    .local v0, calendar:Ljava/util/Calendar;
    if-nez p0, :cond_1

    move v1, v2

    .line 241
    :cond_0
    :goto_0
    return v1

    .line 196
    :cond_1
    if-eq p0, v1, :cond_0

    .line 199
    const/4 v4, 0x2

    if-ne p0, v4, :cond_2

    move v1, v3

    .line 202
    goto :goto_0

    .line 204
    :cond_2
    const/4 v4, 0x3

    if-ne p0, v4, :cond_3

    .line 207
    const/16 v1, 0x1e

    goto :goto_0

    .line 209
    :cond_3
    const/4 v4, 0x4

    if-ne p0, v4, :cond_4

    .line 210
    const/16 v1, 0x5a

    goto :goto_0

    .line 222
    :cond_4
    const/4 v4, 0x5

    if-ne p0, v4, :cond_5

    .line 223
    const/16 v1, 0x16d

    goto :goto_0

    .line 228
    :cond_5
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 229
    .local v1, year:I
    const/4 v4, 0x6

    if-eq p0, v4, :cond_0

    .line 232
    if-ne p0, v3, :cond_6

    .line 233
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 235
    :cond_6
    const/16 v3, 0x8

    if-ne p0, v3, :cond_7

    .line 236
    add-int/lit8 v1, v1, -0x2

    goto :goto_0

    .line 238
    :cond_7
    const/16 v3, 0x9

    if-ne p0, v3, :cond_8

    .line 239
    add-int/lit8 v1, v1, -0x3

    goto :goto_0

    :cond_8
    move v1, v2

    .line 241
    goto :goto_0
.end method


# virtual methods
.method public addDataChangeListener(Lcom/cymobile/ymwork/adapter/FilterDataSource$OnDataChangeListener;)V
    .locals 0
    .parameter "dataChangeListener"

    .prologue
    .line 94
    return-void
.end method

.method public curCategory()Lcom/cymobile/ymwork/types/Category;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/cymobile/ymwork/adapter/FilterDataSource;->curCategory:Lcom/cymobile/ymwork/types/Category;

    return-object v0
.end method

.method public curFilterId()Lcom/cymobile/ymwork/types/Pair;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/cymobile/ymwork/adapter/FilterDataSource;->curFilterId:Lcom/cymobile/ymwork/types/Pair;

    return-object v0
.end method

.method public curRange()Lcom/cymobile/ymwork/types/Pair;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/cymobile/ymwork/adapter/FilterDataSource;->curRange:Lcom/cymobile/ymwork/types/Pair;

    return-object v0
.end method

.method public filterCategories()[Lcom/cymobile/ymwork/types/Category;
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/cymobile/ymwork/adapter/FilterDataSource;->filterCategories:[Lcom/cymobile/ymwork/types/Category;

    return-object v0
.end method

.method public filterIds()[Lcom/cymobile/ymwork/types/Pair;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/cymobile/ymwork/adapter/FilterDataSource;->filterIds:[Lcom/cymobile/ymwork/types/Pair;

    return-object v0
.end method

.method public filterRanges()[Lcom/cymobile/ymwork/types/Pair;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/cymobile/ymwork/adapter/FilterDataSource;->filterRanges:[Lcom/cymobile/ymwork/types/Pair;

    return-object v0
.end method

.method public reload(Z)V
    .locals 0
    .parameter "bool"

    .prologue
    .line 97
    return-void
.end method

.method public removeDataChangeListener(Lcom/cymobile/ymwork/adapter/FilterDataSource$OnDataChangeListener;)V
    .locals 0
    .parameter "dataChangeListener"

    .prologue
    .line 101
    return-void
.end method

.method public reset(Z)V
    .locals 0
    .parameter "param"

    .prologue
    .line 104
    return-void
.end method

.method public setCurCategory(Lcom/cymobile/ymwork/types/Category;)Z
    .locals 2
    .parameter "c"

    .prologue
    const/4 v0, 0x1

    .line 160
    if-nez p1, :cond_1

    .line 161
    iget-object v1, p0, Lcom/cymobile/ymwork/adapter/FilterDataSource;->curCategory:Lcom/cymobile/ymwork/types/Category;

    if-nez v1, :cond_0

    .line 162
    sget-object v1, Lcom/cymobile/ymwork/adapter/FilterDataSource;->TOP_CATEGORY:Lcom/cymobile/ymwork/types/Category;

    iput-object v1, p0, Lcom/cymobile/ymwork/adapter/FilterDataSource;->curCategory:Lcom/cymobile/ymwork/types/Category;

    .line 168
    :goto_0
    return v0

    .line 165
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 167
    :cond_1
    iput-object p1, p0, Lcom/cymobile/ymwork/adapter/FilterDataSource;->curCategory:Lcom/cymobile/ymwork/types/Category;

    goto :goto_0
.end method

.method public setCurFilterId(Lcom/cymobile/ymwork/types/Pair;)Z
    .locals 2
    .parameter "p"

    .prologue
    const/4 v0, 0x1

    .line 180
    if-nez p1, :cond_1

    .line 181
    iget-object v1, p0, Lcom/cymobile/ymwork/adapter/FilterDataSource;->curFilterId:Lcom/cymobile/ymwork/types/Pair;

    if-eqz v1, :cond_0

    .line 182
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/cymobile/ymwork/adapter/FilterDataSource;->curFilterId:Lcom/cymobile/ymwork/types/Pair;

    .line 188
    :goto_0
    return v0

    .line 185
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 187
    :cond_1
    iput-object p1, p0, Lcom/cymobile/ymwork/adapter/FilterDataSource;->curFilterId:Lcom/cymobile/ymwork/types/Pair;

    goto :goto_0
.end method

.method public setCurRange(Lcom/cymobile/ymwork/types/Pair;)Z
    .locals 2
    .parameter "pair"

    .prologue
    const/4 v0, 0x1

    .line 121
    if-nez p1, :cond_1

    .line 122
    iget-object v1, p0, Lcom/cymobile/ymwork/adapter/FilterDataSource;->curRange:Lcom/cymobile/ymwork/types/Pair;

    if-eqz v1, :cond_0

    .line 123
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/cymobile/ymwork/adapter/FilterDataSource;->curRange:Lcom/cymobile/ymwork/types/Pair;

    .line 129
    :goto_0
    return v0

    .line 126
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 128
    :cond_1
    iput-object p1, p0, Lcom/cymobile/ymwork/adapter/FilterDataSource;->curRange:Lcom/cymobile/ymwork/types/Pair;

    goto :goto_0
.end method

.method public status()I
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method
