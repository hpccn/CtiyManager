.class public Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;
.super Landroid/widget/RadioGroup;
.source "ShopRangeSelGroup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cymobile/ymwork/widget/ShopRangeSelGroup$OnRangeSelChangeListener;
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

.field private mListener:Lcom/cymobile/ymwork/widget/ShopRangeSelGroup$OnRangeSelChangeListener;

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
    .line 41
    invoke-direct {p0, p1}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->mCurRangeType:I

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "paramContext"
    .parameter "paramAttributeSet"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->mCurRangeType:I

    .line 47
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

    .line 50
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 51
    .local v0, calendar:Ljava/util/Calendar;
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 52
    .local v1, year:I
    if-nez p0, :cond_1

    .line 73
    :cond_0
    :goto_0
    return v2

    .line 54
    :cond_1
    if-ne p0, v3, :cond_2

    move v2, v3

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    if-ne p0, v4, :cond_3

    move v2, v4

    .line 57
    goto :goto_0

    .line 58
    :cond_3
    if-ne p0, v5, :cond_4

    move v2, v5

    .line 59
    goto :goto_0

    .line 60
    :cond_4
    if-ne p0, v6, :cond_5

    move v2, v6

    .line 61
    goto :goto_0

    .line 62
    :cond_5
    const/4 v3, 0x5

    if-ne p0, v3, :cond_6

    .line 63
    const/4 v2, 0x5

    goto :goto_0

    .line 64
    :cond_6
    const/4 v3, 0x6

    if-ne p0, v3, :cond_7

    .line 65
    const/4 v2, 0x6

    goto :goto_0

    .line 66
    :cond_7
    const/4 v3, 0x7

    if-ne p0, v3, :cond_8

    .line 67
    const/4 v2, 0x7

    goto :goto_0

    .line 68
    :cond_8
    const/16 v3, 0x8

    if-ne p0, v3, :cond_9

    .line 69
    const/16 v2, 0x8

    goto :goto_0

    .line 70
    :cond_9
    const/16 v3, 0x9

    if-ne p0, v3, :cond_0

    .line 71
    const/16 v2, 0x9

    goto :goto_0
.end method

.method public static rangeTypeToPair(I)Lcom/cymobile/ymwork/types/Pair;
    .locals 9
    .parameter "id"

    .prologue
    const/16 v8, 0x9

    const/16 v7, 0x8

    const/4 v6, 0x7

    const/4 v5, 0x6

    const/4 v3, 0x1

    .line 83
    if-ne p0, v3, :cond_0

    .line 84
    new-instance v2, Lcom/cymobile/ymwork/types/Pair;

    const-string v3, "1"

    const-string v4, "\u5f53\u5929"

    invoke-direct {v2, v3, v4}, Lcom/cymobile/ymwork/types/Pair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :goto_0
    return-object v2

    .line 85
    :cond_0
    const/4 v2, 0x2

    if-ne p0, v2, :cond_1

    .line 86
    new-instance v2, Lcom/cymobile/ymwork/types/Pair;

    const-string v3, "2"

    const-string v4, "\u672c\u5468"

    invoke-direct {v2, v3, v4}, Lcom/cymobile/ymwork/types/Pair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :cond_1
    const/4 v2, 0x3

    if-ne p0, v2, :cond_2

    .line 88
    new-instance v2, Lcom/cymobile/ymwork/types/Pair;

    const-string v3, "3"

    const-string v4, "\u672c\u6708"

    invoke-direct {v2, v3, v4}, Lcom/cymobile/ymwork/types/Pair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :cond_2
    const/4 v2, 0x4

    if-ne p0, v2, :cond_3

    .line 90
    new-instance v2, Lcom/cymobile/ymwork/types/Pair;

    const-string v3, "4"

    const-string v4, "\u672c\u5b63\u5ea6"

    invoke-direct {v2, v3, v4}, Lcom/cymobile/ymwork/types/Pair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_3
    const/4 v2, 0x5

    if-ne p0, v2, :cond_4

    .line 92
    new-instance v2, Lcom/cymobile/ymwork/types/Pair;

    const-string v3, "5"

    const-string v4, "\u672c\u5e74\u5ea6"

    invoke-direct {v2, v3, v4}, Lcom/cymobile/ymwork/types/Pair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :cond_4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 94
    .local v0, calendar:Ljava/util/Calendar;
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 95
    .local v1, year:I
    if-ne p0, v5, :cond_5

    .line 96
    new-instance v2, Lcom/cymobile/ymwork/types/Pair;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\u5e74"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v5, v3}, Lcom/cymobile/ymwork/types/Pair;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 97
    :cond_5
    if-ne p0, v6, :cond_6

    .line 98
    new-instance v2, Lcom/cymobile/ymwork/types/Pair;

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v4, v1, -0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\u5e74"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v6, v3}, Lcom/cymobile/ymwork/types/Pair;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 99
    :cond_6
    if-ne p0, v7, :cond_7

    .line 100
    new-instance v2, Lcom/cymobile/ymwork/types/Pair;

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v4, v1, -0x2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\u5e74"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v7, v3}, Lcom/cymobile/ymwork/types/Pair;-><init>(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 101
    :cond_7
    if-ne p0, v8, :cond_8

    .line 102
    new-instance v2, Lcom/cymobile/ymwork/types/Pair;

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v4, v1, -0x3

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\u5e74"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v8, v3}, Lcom/cymobile/ymwork/types/Pair;-><init>(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 103
    :cond_8
    new-instance v2, Lcom/cymobile/ymwork/types/Pair;

    const-string v3, "0"

    const-string v4, "\u5168\u90e8"

    invoke-direct {v2, v3, v4}, Lcom/cymobile/ymwork/types/Pair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method dip2px(Landroid/content/Context;F)I
    .locals 1
    .parameter "context"
    .parameter "f"

    .prologue
    .line 124
    const/4 v0, 0x5

    return v0
.end method

.method public disableAllCity()V
    .locals 0

    .prologue
    .line 108
    return-void
.end method

.method public getRangeType()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->mCurRangeType:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "paramView"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->range1:Landroid/widget/RadioButton;

    if-ne p1, v0, :cond_2

    .line 129
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->setRangeType(I)V

    .line 149
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->mListener:Lcom/cymobile/ymwork/widget/ShopRangeSelGroup$OnRangeSelChangeListener;

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->mListener:Lcom/cymobile/ymwork/widget/ShopRangeSelGroup$OnRangeSelChangeListener;

    iget v1, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->mCurRangeType:I

    invoke-interface {v0, v1}, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup$OnRangeSelChangeListener;->onRangeSelChanged(I)V

    .line 152
    :cond_1
    return-void

    .line 130
    :cond_2
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->range2:Landroid/widget/RadioButton;

    if-ne p1, v0, :cond_3

    .line 131
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->setRangeType(I)V

    goto :goto_0

    .line 132
    :cond_3
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->range3:Landroid/widget/RadioButton;

    if-ne p1, v0, :cond_4

    .line 133
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->setRangeType(I)V

    goto :goto_0

    .line 134
    :cond_4
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->range4:Landroid/widget/RadioButton;

    if-ne p1, v0, :cond_5

    .line 135
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->setRangeType(I)V

    goto :goto_0

    .line 136
    :cond_5
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->range5:Landroid/widget/RadioButton;

    if-ne p1, v0, :cond_6

    .line 137
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->setRangeType(I)V

    goto :goto_0

    .line 138
    :cond_6
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->range6:Landroid/widget/RadioButton;

    if-ne p1, v0, :cond_7

    .line 139
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->setRangeType(I)V

    goto :goto_0

    .line 140
    :cond_7
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->range7:Landroid/widget/RadioButton;

    if-ne p1, v0, :cond_8

    .line 141
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->setRangeType(I)V

    goto :goto_0

    .line 142
    :cond_8
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->range8:Landroid/widget/RadioButton;

    if-ne p1, v0, :cond_9

    .line 143
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->setRangeType(I)V

    goto :goto_0

    .line 144
    :cond_9
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->range9:Landroid/widget/RadioButton;

    if-ne p1, v0, :cond_a

    .line 145
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->setRangeType(I)V

    goto :goto_0

    .line 146
    :cond_a
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->range10:Landroid/widget/RadioButton;

    if-ne p1, v0, :cond_0

    .line 147
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->setRangeType(I)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 155
    invoke-super {p0}, Landroid/widget/RadioGroup;->onFinishInflate()V

    .line 156
    const v2, 0x7f0800d9

    invoke-virtual {p0, v2}, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->range1:Landroid/widget/RadioButton;

    .line 157
    iget-object v2, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->range1:Landroid/widget/RadioButton;

    invoke-virtual {v2, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    const v2, 0x7f0800da

    invoke-virtual {p0, v2}, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->range2:Landroid/widget/RadioButton;

    .line 159
    iget-object v2, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->range2:Landroid/widget/RadioButton;

    invoke-virtual {v2, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    const v2, 0x7f0800db

    invoke-virtual {p0, v2}, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->range3:Landroid/widget/RadioButton;

    .line 161
    iget-object v2, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->range3:Landroid/widget/RadioButton;

    invoke-virtual {v2, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    const v2, 0x7f0800dc

    invoke-virtual {p0, v2}, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->range4:Landroid/widget/RadioButton;

    .line 163
    iget-object v2, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->range4:Landroid/widget/RadioButton;

    invoke-virtual {v2, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    const v2, 0x7f0800dd

    invoke-virtual {p0, v2}, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->range5:Landroid/widget/RadioButton;

    .line 165
    iget-object v2, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->range5:Landroid/widget/RadioButton;

    invoke-virtual {v2, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    const v2, 0x7f0800de

    invoke-virtual {p0, v2}, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->range6:Landroid/widget/RadioButton;

    .line 167
    iget-object v2, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->range6:Landroid/widget/RadioButton;

    invoke-virtual {v2, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 169
    .local v0, calendar:Ljava/util/Calendar;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 170
    .local v1, year:I
    iget-object v2, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->range6:Landroid/widget/RadioButton;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\u5e74"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 171
    const v2, 0x7f0800df

    invoke-virtual {p0, v2}, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->range7:Landroid/widget/RadioButton;

    .line 172
    iget-object v2, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->range7:Landroid/widget/RadioButton;

    invoke-virtual {v2, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object v2, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->range7:Landroid/widget/RadioButton;

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v4, v1, -0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\u5e74"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 174
    const v2, 0x7f0800e0

    invoke-virtual {p0, v2}, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->range8:Landroid/widget/RadioButton;

    .line 175
    iget-object v2, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->range8:Landroid/widget/RadioButton;

    invoke-virtual {v2, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object v2, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->range8:Landroid/widget/RadioButton;

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v4, v1, -0x2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\u5e74"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 177
    const v2, 0x7f0800e1

    invoke-virtual {p0, v2}, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->range9:Landroid/widget/RadioButton;

    .line 178
    iget-object v2, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->range9:Landroid/widget/RadioButton;

    invoke-virtual {v2, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v2, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->range9:Landroid/widget/RadioButton;

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v4, v1, -0x3

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\u5e74"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 180
    const v2, 0x7f0800e3

    invoke-virtual {p0, v2}, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->range10:Landroid/widget/RadioButton;

    .line 181
    iget-object v2, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->range10:Landroid/widget/RadioButton;

    invoke-virtual {v2, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    const v2, 0x7f0800e2

    invoke-virtual {p0, v2}, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->lastDivider:Landroid/view/View;

    .line 183
    invoke-virtual {p0}, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 184
    const v3, 0x7f02010a

    .line 183
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->mNormal:Landroid/graphics/drawable/Drawable;

    .line 185
    iget-object v2, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->mNormal:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->mNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget-object v4, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->mNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 186
    invoke-virtual {p0}, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02010b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->mSelected:Landroid/graphics/drawable/Drawable;

    .line 187
    iget-object v2, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->mSelected:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->mSelected:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget-object v4, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->mSelected:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 188
    iget v2, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->mCurRangeType:I

    invoke-virtual {p0, v2}, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->setRangeType(I)V

    .line 189
    return-void
.end method

.method public setOnRangeSelChangeListener(Lcom/cymobile/ymwork/widget/ShopRangeSelGroup$OnRangeSelChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 193
    iput-object p1, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->mListener:Lcom/cymobile/ymwork/widget/ShopRangeSelGroup$OnRangeSelChangeListener;

    .line 194
    return-void
.end method

.method public setRangeType(I)V
    .locals 4
    .parameter "rt"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 197
    iput p1, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->mCurRangeType:I

    .line 198
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->mLastSel:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->mLastSel:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->mNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/RadioButton;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 201
    :cond_0
    iget v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->mCurRangeType:I

    if-nez v0, :cond_3

    .line 202
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->range10:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 203
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->range10:Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->mLastSel:Landroid/widget/RadioButton;

    .line 232
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->mLastSel:Landroid/widget/RadioButton;

    if-eqz v0, :cond_2

    .line 233
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->mLastSel:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->mSelected:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/RadioButton;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 235
    :cond_2
    return-void

    .line 204
    :cond_3
    iget v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->mCurRangeType:I

    if-ne v0, v2, :cond_4

    .line 205
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->range1:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 206
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->range1:Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->mLastSel:Landroid/widget/RadioButton;

    goto :goto_0

    .line 207
    :cond_4
    iget v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->mCurRangeType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 208
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->range2:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 209
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->range2:Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->mLastSel:Landroid/widget/RadioButton;

    goto :goto_0

    .line 210
    :cond_5
    iget v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->mCurRangeType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    .line 211
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->range3:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 212
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->range3:Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->mLastSel:Landroid/widget/RadioButton;

    goto :goto_0

    .line 213
    :cond_6
    iget v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->mCurRangeType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    .line 214
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->range4:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 215
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->range4:Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->mLastSel:Landroid/widget/RadioButton;

    goto :goto_0

    .line 216
    :cond_7
    iget v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->mCurRangeType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_8

    .line 217
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->range5:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 218
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->range5:Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->mLastSel:Landroid/widget/RadioButton;

    goto :goto_0

    .line 219
    :cond_8
    iget v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->mCurRangeType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_9

    .line 220
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->range6:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 221
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->range6:Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->mLastSel:Landroid/widget/RadioButton;

    goto :goto_0

    .line 222
    :cond_9
    iget v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->mCurRangeType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_a

    .line 223
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->range7:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 224
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->range7:Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->mLastSel:Landroid/widget/RadioButton;

    goto :goto_0

    .line 225
    :cond_a
    iget v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->mCurRangeType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_b

    .line 226
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->range8:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 227
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->range8:Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->mLastSel:Landroid/widget/RadioButton;

    goto/16 :goto_0

    .line 228
    :cond_b
    iget v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->mCurRangeType:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    .line 229
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->range9:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 230
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->range9:Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/ShopRangeSelGroup;->mLastSel:Landroid/widget/RadioButton;

    goto/16 :goto_0
.end method
