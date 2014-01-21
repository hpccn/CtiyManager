.class public Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;
.super Landroid/widget/RadioGroup;
.source "ShopRangeReportGroup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cymobile/ymwork/widget/ShopRangeReportGroup$OnRangeReportChangeListener;
    }
.end annotation


# static fields
.field public static final RANGE1K:I = 0x2

.field public static final RANGE2K:I = 0x3

.field public static final RANGE500:I = 0x1

.field public static final RANGE5K:I = 0x4

.field public static final RANGEALL:I = 0x5


# instance fields
.field private lastDivider:Landroid/view/View;

.field private mCurRangeType:I

.field private mLastSel:Landroid/widget/RadioButton;

.field private mListener:Lcom/cymobile/ymwork/widget/ShopRangeReportGroup$OnRangeReportChangeListener;

.field private mNormal:Landroid/graphics/drawable/Drawable;

.field private mSelected:Landroid/graphics/drawable/Drawable;

.field private range1:Landroid/widget/RadioButton;

.field private range10:Landroid/widget/RadioButton;

.field private range2:Landroid/widget/RadioButton;

.field private range3:Landroid/widget/RadioButton;

.field private range4:Landroid/widget/RadioButton;

.field private range5:Landroid/widget/RadioButton;

.field private range6:Landroid/widget/RadioButton;

.field private range7:Landroid/widget/RadioButton;

.field private range8:Landroid/widget/RadioButton;

.field private range9:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "paramContext"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->mCurRangeType:I

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "paramContext"
    .parameter "paramAttributeSet"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->mCurRangeType:I

    .line 48
    return-void
.end method

.method public static pairToRangeType(I)I
    .locals 7
    .parameter "range"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 51
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 52
    .local v0, calendar:Ljava/util/Calendar;
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 53
    .local v1, year:I
    if-nez p0, :cond_1

    .line 74
    :cond_0
    :goto_0
    return v2

    .line 55
    :cond_1
    if-ne p0, v3, :cond_2

    move v2, v3

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    if-ne p0, v4, :cond_3

    move v2, v4

    .line 58
    goto :goto_0

    .line 59
    :cond_3
    if-ne p0, v5, :cond_4

    move v2, v5

    .line 60
    goto :goto_0

    .line 61
    :cond_4
    if-ne p0, v6, :cond_5

    move v2, v6

    .line 62
    goto :goto_0

    .line 63
    :cond_5
    const/4 v3, 0x5

    if-ne p0, v3, :cond_6

    .line 64
    const/4 v2, 0x5

    goto :goto_0

    .line 65
    :cond_6
    const/4 v3, 0x6

    if-ne p0, v3, :cond_7

    .line 66
    const/4 v2, 0x6

    goto :goto_0

    .line 67
    :cond_7
    const/4 v3, 0x7

    if-ne p0, v3, :cond_8

    .line 68
    const/4 v2, 0x7

    goto :goto_0

    .line 69
    :cond_8
    const/16 v3, 0x8

    if-ne p0, v3, :cond_9

    .line 70
    const/16 v2, 0x8

    goto :goto_0

    .line 71
    :cond_9
    const/16 v3, 0x9

    if-ne p0, v3, :cond_0

    .line 72
    const/16 v2, 0x9

    goto :goto_0
.end method

.method public static rangeTypeToPair(I)Lcom/cymobile/ymwork/types/Pair;
    .locals 11
    .parameter "id"

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x7

    const/4 v8, 0x6

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 84
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 85
    .local v0, calendar:Ljava/util/Calendar;
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 86
    .local v3, year:I
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 87
    .local v1, month:I
    const/4 v2, 0x0

    .line 88
    .local v2, months:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 89
    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v5, v3, -0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\u5e7412\u6708"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 93
    :goto_0
    if-ne p0, v6, :cond_1

    .line 94
    new-instance v4, Lcom/cymobile/ymwork/types/Pair;

    const-string v5, "1"

    const-string v6, "\u5f53\u5929"

    invoke-direct {v4, v5, v6}, Lcom/cymobile/ymwork/types/Pair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :goto_1
    return-object v4

    .line 91
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\u6708"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 95
    :cond_1
    if-ne p0, v7, :cond_2

    .line 96
    new-instance v4, Lcom/cymobile/ymwork/types/Pair;

    const-string v5, "2"

    const-string v6, "\u672c\u5468"

    invoke-direct {v4, v5, v6}, Lcom/cymobile/ymwork/types/Pair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 97
    :cond_2
    const/4 v4, 0x3

    if-ne p0, v4, :cond_3

    .line 98
    new-instance v4, Lcom/cymobile/ymwork/types/Pair;

    const-string v5, "3"

    const-string v6, "\u672c\u6708"

    invoke-direct {v4, v5, v6}, Lcom/cymobile/ymwork/types/Pair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 99
    :cond_3
    const/4 v4, 0x4

    if-ne p0, v4, :cond_4

    .line 100
    new-instance v4, Lcom/cymobile/ymwork/types/Pair;

    const-string v5, "4"

    invoke-direct {v4, v5, v2}, Lcom/cymobile/ymwork/types/Pair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 101
    :cond_4
    const/4 v4, 0x5

    if-ne p0, v4, :cond_5

    .line 102
    new-instance v4, Lcom/cymobile/ymwork/types/Pair;

    const-string v5, "5"

    const-string v6, "\u672c\u5b63\u5ea6"

    invoke-direct {v4, v5, v6}, Lcom/cymobile/ymwork/types/Pair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 103
    :cond_5
    if-ne p0, v8, :cond_6

    .line 104
    new-instance v4, Lcom/cymobile/ymwork/types/Pair;

    const-string v5, "\u672c\u5e74\u5ea6"

    invoke-direct {v4, v8, v5}, Lcom/cymobile/ymwork/types/Pair;-><init>(ILjava/lang/String;)V

    goto :goto_1

    .line 105
    :cond_6
    if-ne p0, v9, :cond_7

    .line 106
    new-instance v4, Lcom/cymobile/ymwork/types/Pair;

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v6, v3, -0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "\u5e74"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v9, v5}, Lcom/cymobile/ymwork/types/Pair;-><init>(ILjava/lang/String;)V

    goto :goto_1

    .line 107
    :cond_7
    if-ne p0, v10, :cond_8

    .line 108
    new-instance v4, Lcom/cymobile/ymwork/types/Pair;

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v6, v3, -0x2

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "\u5e74"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v10, v5}, Lcom/cymobile/ymwork/types/Pair;-><init>(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 109
    :cond_8
    const/16 v4, 0x9

    if-ne p0, v4, :cond_9

    .line 110
    new-instance v4, Lcom/cymobile/ymwork/types/Pair;

    const/16 v5, 0x9

    new-instance v6, Ljava/lang/StringBuilder;

    add-int/lit8 v7, v3, -0x3

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\u5e74"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/cymobile/ymwork/types/Pair;-><init>(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 111
    :cond_9
    new-instance v4, Lcom/cymobile/ymwork/types/Pair;

    const-string v5, "0"

    const-string v6, "\u5168\u90e8"

    invoke-direct {v4, v5, v6}, Lcom/cymobile/ymwork/types/Pair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method


# virtual methods
.method dip2px(Landroid/content/Context;F)I
    .locals 1
    .parameter "context"
    .parameter "f"

    .prologue
    .line 132
    const/4 v0, 0x5

    return v0
.end method

.method public disableAllCity()V
    .locals 0

    .prologue
    .line 116
    return-void
.end method

.method public getRangeType()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->mCurRangeType:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "paramView"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->range1:Landroid/widget/RadioButton;

    if-ne p1, v0, :cond_2

    .line 137
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->setRangeType(I)V

    .line 157
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->mListener:Lcom/cymobile/ymwork/widget/ShopRangeReportGroup$OnRangeReportChangeListener;

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->mListener:Lcom/cymobile/ymwork/widget/ShopRangeReportGroup$OnRangeReportChangeListener;

    iget v1, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->mCurRangeType:I

    invoke-interface {v0, v1}, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup$OnRangeReportChangeListener;->onRangeReportChanged(I)V

    .line 160
    :cond_1
    return-void

    .line 138
    :cond_2
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->range2:Landroid/widget/RadioButton;

    if-ne p1, v0, :cond_3

    .line 139
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->setRangeType(I)V

    goto :goto_0

    .line 140
    :cond_3
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->range3:Landroid/widget/RadioButton;

    if-ne p1, v0, :cond_4

    .line 141
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->setRangeType(I)V

    goto :goto_0

    .line 142
    :cond_4
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->range4:Landroid/widget/RadioButton;

    if-ne p1, v0, :cond_5

    .line 143
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->setRangeType(I)V

    goto :goto_0

    .line 144
    :cond_5
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->range5:Landroid/widget/RadioButton;

    if-ne p1, v0, :cond_6

    .line 145
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->setRangeType(I)V

    goto :goto_0

    .line 146
    :cond_6
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->range6:Landroid/widget/RadioButton;

    if-ne p1, v0, :cond_7

    .line 147
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->setRangeType(I)V

    goto :goto_0

    .line 148
    :cond_7
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->range7:Landroid/widget/RadioButton;

    if-ne p1, v0, :cond_8

    .line 149
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->setRangeType(I)V

    goto :goto_0

    .line 150
    :cond_8
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->range8:Landroid/widget/RadioButton;

    if-ne p1, v0, :cond_9

    .line 151
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->setRangeType(I)V

    goto :goto_0

    .line 152
    :cond_9
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->range9:Landroid/widget/RadioButton;

    if-ne p1, v0, :cond_a

    .line 153
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->setRangeType(I)V

    goto :goto_0

    .line 154
    :cond_a
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->range10:Landroid/widget/RadioButton;

    if-ne p1, v0, :cond_0

    .line 155
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->setRangeType(I)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 163
    invoke-super {p0}, Landroid/widget/RadioGroup;->onFinishInflate()V

    .line 164
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 165
    .local v0, calendar:Ljava/util/Calendar;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 166
    .local v3, year:I
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 167
    .local v1, month:I
    const/4 v2, 0x0

    .line 168
    .local v2, months:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 169
    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v5, v3, -0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\u5e7412\u6708"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 173
    :goto_0
    const v4, 0x7f0800d9

    invoke-virtual {p0, v4}, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    iput-object v4, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->range1:Landroid/widget/RadioButton;

    .line 174
    iget-object v4, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->range1:Landroid/widget/RadioButton;

    invoke-virtual {v4, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    const v4, 0x7f0800da

    invoke-virtual {p0, v4}, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    iput-object v4, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->range2:Landroid/widget/RadioButton;

    .line 176
    iget-object v4, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->range2:Landroid/widget/RadioButton;

    invoke-virtual {v4, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    const v4, 0x7f0800db

    invoke-virtual {p0, v4}, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    iput-object v4, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->range3:Landroid/widget/RadioButton;

    .line 178
    iget-object v4, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->range3:Landroid/widget/RadioButton;

    invoke-virtual {v4, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    const v4, 0x7f0800dc

    invoke-virtual {p0, v4}, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    iput-object v4, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->range4:Landroid/widget/RadioButton;

    .line 180
    iget-object v4, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->range4:Landroid/widget/RadioButton;

    invoke-virtual {v4, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object v4, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->range4:Landroid/widget/RadioButton;

    invoke-virtual {v4, v2}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 182
    const v4, 0x7f0800dd

    invoke-virtual {p0, v4}, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    iput-object v4, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->range5:Landroid/widget/RadioButton;

    .line 183
    iget-object v4, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->range5:Landroid/widget/RadioButton;

    invoke-virtual {v4, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    const v4, 0x7f0800de

    invoke-virtual {p0, v4}, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    iput-object v4, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->range6:Landroid/widget/RadioButton;

    .line 185
    iget-object v4, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->range6:Landroid/widget/RadioButton;

    invoke-virtual {v4, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-object v4, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->range6:Landroid/widget/RadioButton;

    const-string v5, "\u672c\u5e74\u5ea6"

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 187
    const v4, 0x7f0800df

    invoke-virtual {p0, v4}, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    iput-object v4, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->range7:Landroid/widget/RadioButton;

    .line 188
    iget-object v4, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->range7:Landroid/widget/RadioButton;

    invoke-virtual {v4, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object v4, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->range7:Landroid/widget/RadioButton;

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v6, v3, -0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "\u5e74"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 190
    const v4, 0x7f0800e0

    invoke-virtual {p0, v4}, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    iput-object v4, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->range8:Landroid/widget/RadioButton;

    .line 191
    iget-object v4, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->range8:Landroid/widget/RadioButton;

    invoke-virtual {v4, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iget-object v4, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->range8:Landroid/widget/RadioButton;

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v6, v3, -0x2

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "\u5e74"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 193
    const v4, 0x7f0800e1

    invoke-virtual {p0, v4}, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    iput-object v4, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->range9:Landroid/widget/RadioButton;

    .line 194
    iget-object v4, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->range9:Landroid/widget/RadioButton;

    invoke-virtual {v4, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iget-object v4, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->range9:Landroid/widget/RadioButton;

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v6, v3, -0x3

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "\u5e74"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 196
    const v4, 0x7f0800e3

    invoke-virtual {p0, v4}, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    iput-object v4, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->range10:Landroid/widget/RadioButton;

    .line 197
    iget-object v4, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->range10:Landroid/widget/RadioButton;

    invoke-virtual {v4, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    const v4, 0x7f0800e2

    invoke-virtual {p0, v4}, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->lastDivider:Landroid/view/View;

    .line 199
    invoke-virtual {p0}, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 200
    const v5, 0x7f02010a

    .line 199
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->mNormal:Landroid/graphics/drawable/Drawable;

    .line 201
    iget-object v4, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->mNormal:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->mNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    iget-object v6, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->mNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {v4, v7, v7, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 202
    invoke-virtual {p0}, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02010b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->mSelected:Landroid/graphics/drawable/Drawable;

    .line 203
    iget-object v4, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->mSelected:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->mSelected:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    iget-object v6, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->mSelected:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {v4, v7, v7, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 204
    iget v4, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->mCurRangeType:I

    invoke-virtual {p0, v4}, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->setRangeType(I)V

    .line 205
    return-void

    .line 171
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\u6708"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0
.end method

.method public setOnRangeReportChangeListener(Lcom/cymobile/ymwork/widget/ShopRangeReportGroup$OnRangeReportChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 209
    iput-object p1, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->mListener:Lcom/cymobile/ymwork/widget/ShopRangeReportGroup$OnRangeReportChangeListener;

    .line 210
    return-void
.end method

.method public setRangeType(I)V
    .locals 4
    .parameter "rt"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 213
    iput p1, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->mCurRangeType:I

    .line 214
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->mLastSel:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->mLastSel:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->mNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/RadioButton;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 217
    :cond_0
    iget v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->mCurRangeType:I

    if-nez v0, :cond_3

    .line 218
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->range10:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 219
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->range10:Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->mLastSel:Landroid/widget/RadioButton;

    .line 248
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->mLastSel:Landroid/widget/RadioButton;

    if-eqz v0, :cond_2

    .line 249
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->mLastSel:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->mSelected:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/RadioButton;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 251
    :cond_2
    return-void

    .line 220
    :cond_3
    iget v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->mCurRangeType:I

    if-ne v0, v2, :cond_4

    .line 221
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->range1:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 222
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->range1:Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->mLastSel:Landroid/widget/RadioButton;

    goto :goto_0

    .line 223
    :cond_4
    iget v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->mCurRangeType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 224
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->range2:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 225
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->range2:Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->mLastSel:Landroid/widget/RadioButton;

    goto :goto_0

    .line 226
    :cond_5
    iget v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->mCurRangeType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    .line 227
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->range3:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 228
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->range3:Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->mLastSel:Landroid/widget/RadioButton;

    goto :goto_0

    .line 229
    :cond_6
    iget v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->mCurRangeType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    .line 230
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->range4:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 231
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->range4:Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->mLastSel:Landroid/widget/RadioButton;

    goto :goto_0

    .line 232
    :cond_7
    iget v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->mCurRangeType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_8

    .line 233
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->range5:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 234
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->range5:Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->mLastSel:Landroid/widget/RadioButton;

    goto :goto_0

    .line 235
    :cond_8
    iget v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->mCurRangeType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_9

    .line 236
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->range6:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 237
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->range6:Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->mLastSel:Landroid/widget/RadioButton;

    goto :goto_0

    .line 238
    :cond_9
    iget v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->mCurRangeType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_a

    .line 239
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->range7:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 240
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->range7:Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->mLastSel:Landroid/widget/RadioButton;

    goto :goto_0

    .line 241
    :cond_a
    iget v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->mCurRangeType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_b

    .line 242
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->range8:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 243
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->range8:Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->mLastSel:Landroid/widget/RadioButton;

    goto/16 :goto_0

    .line 244
    :cond_b
    iget v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->mCurRangeType:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    .line 245
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->range9:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 246
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->range9:Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeReportGroup;->mLastSel:Landroid/widget/RadioButton;

    goto/16 :goto_0
.end method
