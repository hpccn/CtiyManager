.class public Lcom/cymobile/ymwork/widget/SegmentedButton;
.super Landroid/widget/LinearLayout;
.source "SegmentedButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cymobile/ymwork/widget/SegmentedButton$OnClickListenerSegmentedButton;
    }
.end annotation


# instance fields
.field private mBgCenterOff:Landroid/graphics/drawable/StateListDrawable;

.field private mBgCenterOn:Landroid/graphics/drawable/StateListDrawable;

.field private mBgLeftOff:Landroid/graphics/drawable/StateListDrawable;

.field private mBgLeftOn:Landroid/graphics/drawable/StateListDrawable;

.field private mBgRightOff:Landroid/graphics/drawable/StateListDrawable;

.field private mBgRightOn:Landroid/graphics/drawable/StateListDrawable;

.field private mBtnPaddingBottom:I

.field private mBtnPaddingLeft:I

.field private mBtnPaddingRight:I

.field private mBtnPaddingTop:I

.field private mButtonTitles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mColorOffEnd:I

.field private mColorOffStart:I

.field private mColorOnEnd:I

.field private mColorOnStart:I

.field private mColorSelectedEnd:I

.field private mColorSelectedStart:I

.field private mColorStroke:I

.field private mCornerRadius:I

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnClickListenerExternal:Lcom/cymobile/ymwork/widget/SegmentedButton$OnClickListenerSegmentedButton;

.field private mSelectedButtonIndex:I

.field private mStrokeWidth:I

.field private mTextStyle:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/cymobile/ymwork/widget/SegmentedButton;->mSelectedButtonIndex:I

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/SegmentedButton;->mButtonTitles:Ljava/util/List;

    .line 272
    new-instance v0, Lcom/cymobile/ymwork/widget/SegmentedButton$1;

    invoke-direct {v0, p0}, Lcom/cymobile/ymwork/widget/SegmentedButton$1;-><init>(Lcom/cymobile/ymwork/widget/SegmentedButton;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/SegmentedButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 13
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/cymobile/ymwork/widget/SegmentedButton;->mSelectedButtonIndex:I

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/SegmentedButton;->mButtonTitles:Ljava/util/List;

    .line 272
    new-instance v0, Lcom/cymobile/ymwork/widget/SegmentedButton$1;

    invoke-direct {v0, p0}, Lcom/cymobile/ymwork/widget/SegmentedButton$1;-><init>(Lcom/cymobile/ymwork/widget/SegmentedButton;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/SegmentedButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 61
    sget-object v0, Lcom/cymobile/ymwork/R$styleable;->SegmentedButton:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v10

    .line 63
    .local v10, a:Landroid/content/res/TypedArray;
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 64
    .local v11, btnText1:Ljava/lang/CharSequence;
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 65
    .local v12, btnText2:Ljava/lang/CharSequence;
    if-eqz v11, :cond_0

    .line 66
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/SegmentedButton;->mButtonTitles:Ljava/util/List;

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_0
    if-eqz v12, :cond_1

    .line 69
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/SegmentedButton;->mButtonTitles:Ljava/util/List;

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_1
    const/4 v0, 0x4

    const/high16 v1, 0xff

    invoke-virtual {v10, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/cymobile/ymwork/widget/SegmentedButton;->mColorOnStart:I

    .line 75
    const/4 v0, 0x5

    const/high16 v1, 0xff

    invoke-virtual {v10, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/cymobile/ymwork/widget/SegmentedButton;->mColorOnEnd:I

    .line 76
    const/4 v0, 0x4

    const/high16 v1, 0xff

    invoke-virtual {v10, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/cymobile/ymwork/widget/SegmentedButton;->mColorOffStart:I

    .line 77
    const/4 v0, 0x5

    const/high16 v1, 0xff

    invoke-virtual {v10, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/cymobile/ymwork/widget/SegmentedButton;->mColorOffEnd:I

    .line 78
    const/16 v0, 0x8

    const/high16 v1, 0xff

    invoke-virtual {v10, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/cymobile/ymwork/widget/SegmentedButton;->mColorStroke:I

    .line 79
    const/4 v0, 0x7

    const/high16 v1, 0xff

    invoke-virtual {v10, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/cymobile/ymwork/widget/SegmentedButton;->mColorSelectedEnd:I

    .line 80
    const/4 v0, 0x6

    const/high16 v1, 0xff

    invoke-virtual {v10, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/cymobile/ymwork/widget/SegmentedButton;->mColorSelectedStart:I

    .line 81
    const/16 v0, 0x9

    const/4 v1, 0x1

    invoke-virtual {v10, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/cymobile/ymwork/widget/SegmentedButton;->mStrokeWidth:I

    .line 82
    const/16 v0, 0xa

    const/4 v1, 0x4

    invoke-virtual {v10, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/cymobile/ymwork/widget/SegmentedButton;->mCornerRadius:I

    .line 83
    const/16 v0, 0xb

    const/4 v1, -0x1

    invoke-virtual {v10, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/cymobile/ymwork/widget/SegmentedButton;->mTextStyle:I

    .line 84
    const/16 v0, 0xc

    const/4 v1, 0x0

    invoke-virtual {v10, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/cymobile/ymwork/widget/SegmentedButton;->mBtnPaddingTop:I

    .line 85
    const/16 v0, 0xd

    const/4 v1, 0x0

    invoke-virtual {v10, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/cymobile/ymwork/widget/SegmentedButton;->mBtnPaddingBottom:I

    .line 86
    const/16 v0, 0xe

    const/4 v1, 0x0

    invoke-virtual {v10, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/cymobile/ymwork/widget/SegmentedButton;->mBtnPaddingLeft:I

    .line 87
    const/16 v0, 0xf

    const/4 v1, 0x0

    invoke-virtual {v10, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/cymobile/ymwork/widget/SegmentedButton;->mBtnPaddingRight:I

    .line 90
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 92
    iget v1, p0, Lcom/cymobile/ymwork/widget/SegmentedButton;->mColorOnStart:I

    iget v2, p0, Lcom/cymobile/ymwork/widget/SegmentedButton;->mColorOnEnd:I

    iget v3, p0, Lcom/cymobile/ymwork/widget/SegmentedButton;->mColorOffStart:I

    iget v4, p0, Lcom/cymobile/ymwork/widget/SegmentedButton;->mColorOffEnd:I

    .line 93
    iget v5, p0, Lcom/cymobile/ymwork/widget/SegmentedButton;->mColorSelectedStart:I

    iget v6, p0, Lcom/cymobile/ymwork/widget/SegmentedButton;->mColorSelectedEnd:I

    iget v0, p0, Lcom/cymobile/ymwork/widget/SegmentedButton;->mCornerRadius:I

    int-to-float v7, v0

    iget v8, p0, Lcom/cymobile/ymwork/widget/SegmentedButton;->mColorStroke:I

    .line 94
    iget v9, p0, Lcom/cymobile/ymwork/widget/SegmentedButton;->mStrokeWidth:I

    move-object v0, p0

    .line 92
    invoke-direct/range {v0 .. v9}, Lcom/cymobile/ymwork/widget/SegmentedButton;->buildDrawables(IIIIIIFII)V

    .line 96
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/SegmentedButton;->mButtonTitles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 97
    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/cymobile/ymwork/widget/SegmentedButton;->mButtonTitles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/cymobile/ymwork/widget/SegmentedButton;->_addButtons(ZZ[Ljava/lang/String;)V

    .line 99
    :cond_2
    return-void
.end method

.method private _addButtons(ZZ[Ljava/lang/String;)V
    .locals 11
    .parameter "isBack"
    .parameter "isHeader"
    .parameter "titles"

    .prologue
    const/4 v10, 0x0

    const/4 v9, -0x2

    const/4 v8, 0x1

    .line 111
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, p3

    if-lt v1, v4, :cond_1

    .line 162
    :cond_0
    return-void

    .line 113
    :cond_1
    if-eqz p2, :cond_4

    if-ne v1, v8, :cond_4

    .line 114
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/cymobile/ymwork/widget/SegmentedButton;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 118
    .local v0, button:Landroid/widget/TextView;
    :goto_1
    const/16 v4, 0x11

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 119
    aget-object v4, p3, v1

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 121
    iget-object v4, p0, Lcom/cymobile/ymwork/widget/SegmentedButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget v4, p0, Lcom/cymobile/ymwork/widget/SegmentedButton;->mTextStyle:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 123
    invoke-virtual {p0}, Lcom/cymobile/ymwork/widget/SegmentedButton;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/cymobile/ymwork/widget/SegmentedButton;->mTextStyle:I

    invoke-virtual {v0, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 126
    :cond_2
    array-length v4, p3

    if-eq v4, v8, :cond_0

    .line 129
    array-length v4, p3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_7

    .line 130
    if-nez v1, :cond_5

    .line 131
    iget-object v4, p0, Lcom/cymobile/ymwork/widget/SegmentedButton;->mBgLeftOff:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 151
    :cond_3
    :goto_2
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 154
    const/high16 v4, 0x3f80

    .line 151
    invoke-direct {v2, v9, v9, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 155
    .local v2, llp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/cymobile/ymwork/widget/SegmentedButton;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f07

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 156
    .local v3, margin:F
    float-to-int v4, v3

    float-to-int v5, v3

    invoke-virtual {v2, v4, v10, v5, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 158
    invoke-virtual {p0, v0, v2}, Lcom/cymobile/ymwork/widget/SegmentedButton;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    iget v4, p0, Lcom/cymobile/ymwork/widget/SegmentedButton;->mBtnPaddingLeft:I

    iget v5, p0, Lcom/cymobile/ymwork/widget/SegmentedButton;->mBtnPaddingTop:I

    iget v6, p0, Lcom/cymobile/ymwork/widget/SegmentedButton;->mBtnPaddingRight:I

    iget v7, p0, Lcom/cymobile/ymwork/widget/SegmentedButton;->mBtnPaddingBottom:I

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 111
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    .end local v0           #button:Landroid/widget/TextView;
    .end local v2           #llp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v3           #margin:F
    :cond_4
    new-instance v0, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/cymobile/ymwork/widget/SegmentedButton;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .restart local v0       #button:Landroid/widget/TextView;
    goto :goto_1

    .line 133
    :cond_5
    if-eqz p2, :cond_6

    if-eq v1, v8, :cond_3

    .line 135
    :cond_6
    iget-object v4, p0, Lcom/cymobile/ymwork/widget/SegmentedButton;->mBgRightOn:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 139
    :cond_7
    if-nez v1, :cond_8

    .line 140
    iget-object v4, p0, Lcom/cymobile/ymwork/widget/SegmentedButton;->mBgLeftOff:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 141
    :cond_8
    if-eqz p2, :cond_9

    if-eq v1, v8, :cond_3

    .line 143
    :cond_9
    array-length v4, p3

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_a

    .line 144
    iget-object v4, p0, Lcom/cymobile/ymwork/widget/SegmentedButton;->mBgRightOn:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 146
    :cond_a
    iget-object v4, p0, Lcom/cymobile/ymwork/widget/SegmentedButton;->mBgCenterOn:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method

.method static synthetic access$0(Lcom/cymobile/ymwork/widget/SegmentedButton;)I
    .locals 1
    .parameter

    .prologue
    .line 34
    iget v0, p0, Lcom/cymobile/ymwork/widget/SegmentedButton;->mSelectedButtonIndex:I

    return v0
.end method

.method static synthetic access$1(Lcom/cymobile/ymwork/widget/SegmentedButton;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 288
    invoke-direct {p0, p1, p2}, Lcom/cymobile/ymwork/widget/SegmentedButton;->handleStateChange(II)V

    return-void
.end method

.method static synthetic access$2(Lcom/cymobile/ymwork/widget/SegmentedButton;)Lcom/cymobile/ymwork/widget/SegmentedButton$OnClickListenerSegmentedButton;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/SegmentedButton;->mOnClickListenerExternal:Lcom/cymobile/ymwork/widget/SegmentedButton$OnClickListenerSegmentedButton;

    return-object v0
.end method

.method private buildDrawables(IIIIIIFII)V
    .locals 22
    .parameter "colorOnStart"
    .parameter "colorOnEnd"
    .parameter "colorOffStart"
    .parameter "colorOffEnd"
    .parameter "colorSelectedStart"
    .parameter "colorSelectedEnd"
    .parameter "crad"
    .parameter "strokeColor"
    .parameter "strokeWidth"

    .prologue
    .line 185
    const/16 v20, 0x8

    move/from16 v0, v20

    new-array v15, v0, [F

    const/16 v20, 0x0

    .line 186
    aput p7, v15, v20

    const/16 v20, 0x1

    aput p7, v15, v20

    const/16 v20, 0x2

    aput p7, v15, v20

    const/16 v20, 0x3

    aput p7, v15, v20

    const/16 v20, 0x4

    aput p7, v15, v20

    const/16 v20, 0x5

    aput p7, v15, v20

    const/16 v20, 0x6

    aput p7, v15, v20

    const/16 v20, 0x7

    aput p7, v15, v20

    .line 188
    .local v15, radiiLeft:[F
    const/16 v20, 0x8

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v20, 0x0

    .line 189
    aput p7, v16, v20

    const/16 v20, 0x1

    aput p7, v16, v20

    const/16 v20, 0x2

    aput p7, v16, v20

    const/16 v20, 0x3

    aput p7, v16, v20

    const/16 v20, 0x4

    aput p7, v16, v20

    const/16 v20, 0x5

    aput p7, v16, v20

    const/16 v20, 0x6

    aput p7, v16, v20

    const/16 v20, 0x7

    aput p7, v16, v20

    .line 191
    .local v16, radiiRight:[F
    const/16 v20, 0x8

    move/from16 v0, v20

    new-array v14, v0, [F

    const/16 v20, 0x0

    .line 192
    aput p7, v14, v20

    const/16 v20, 0x1

    aput p7, v14, v20

    const/16 v20, 0x2

    aput p7, v14, v20

    const/16 v20, 0x3

    aput p7, v14, v20

    const/16 v20, 0x4

    aput p7, v14, v20

    const/16 v20, 0x5

    aput p7, v14, v20

    const/16 v20, 0x6

    aput p7, v14, v20

    const/16 v20, 0x7

    aput p7, v14, v20

    .line 195
    .local v14, radiiCenter:[F
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p9

    move/from16 v4, p8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/cymobile/ymwork/widget/SegmentedButton;->buildGradientDrawable(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v10

    .line 196
    .local v10, leftOn:Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v10, v15}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 197
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p9

    move/from16 v4, p8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/cymobile/ymwork/widget/SegmentedButton;->buildGradientDrawable(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v9

    .line 198
    .local v9, leftOff:Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v9, v15}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 199
    move-object/from16 v0, p0

    move/from16 v1, p5

    move/from16 v2, p6

    move/from16 v3, p9

    move/from16 v4, p8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/cymobile/ymwork/widget/SegmentedButton;->buildGradientDrawable(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v11

    .line 200
    .local v11, leftSelected:Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v11, v15}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 202
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p9

    move/from16 v4, p8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/cymobile/ymwork/widget/SegmentedButton;->buildGradientDrawable(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v18

    .line 203
    .local v18, rightOn:Landroid/graphics/drawable/GradientDrawable;
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 204
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p9

    move/from16 v4, p8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/cymobile/ymwork/widget/SegmentedButton;->buildGradientDrawable(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v17

    .line 205
    .local v17, rightOff:Landroid/graphics/drawable/GradientDrawable;
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 206
    move-object/from16 v0, p0

    move/from16 v1, p5

    move/from16 v2, p6

    move/from16 v3, p9

    move/from16 v4, p8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/cymobile/ymwork/widget/SegmentedButton;->buildGradientDrawable(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v19

    .line 207
    .local v19, rightSelected:Landroid/graphics/drawable/GradientDrawable;
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 209
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p9

    move/from16 v4, p8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/cymobile/ymwork/widget/SegmentedButton;->buildGradientDrawable(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v6

    .line 210
    .local v6, centerOn:Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v6, v14}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 211
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p9

    move/from16 v4, p8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/cymobile/ymwork/widget/SegmentedButton;->buildGradientDrawable(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v5

    .line 212
    .local v5, centerOff:Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v5, v14}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 213
    move-object/from16 v0, p0

    move/from16 v1, p5

    move/from16 v2, p6

    move/from16 v3, p9

    move/from16 v4, p8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/cymobile/ymwork/widget/SegmentedButton;->buildGradientDrawable(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v7

    .line 214
    .local v7, centerSelected:Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v7, v14}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 216
    invoke-direct/range {p0 .. p0}, Lcom/cymobile/ymwork/widget/SegmentedButton;->buildOnStates()Ljava/util/List;

    move-result-object v13

    .line 217
    .local v13, onStates:Ljava/util/List;,"Ljava/util/List<[I>;"
    invoke-direct/range {p0 .. p0}, Lcom/cymobile/ymwork/widget/SegmentedButton;->buildOffStates()Ljava/util/List;

    move-result-object v12

    .line 219
    .local v12, offStates:Ljava/util/List;,"Ljava/util/List<[I>;"
    new-instance v20, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cymobile/ymwork/widget/SegmentedButton;->mBgLeftOn:Landroid/graphics/drawable/StateListDrawable;

    .line 220
    new-instance v20, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cymobile/ymwork/widget/SegmentedButton;->mBgRightOn:Landroid/graphics/drawable/StateListDrawable;

    .line 221
    new-instance v20, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cymobile/ymwork/widget/SegmentedButton;->mBgCenterOn:Landroid/graphics/drawable/StateListDrawable;

    .line 222
    new-instance v20, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cymobile/ymwork/widget/SegmentedButton;->mBgLeftOff:Landroid/graphics/drawable/StateListDrawable;

    .line 223
    new-instance v20, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cymobile/ymwork/widget/SegmentedButton;->mBgRightOff:Landroid/graphics/drawable/StateListDrawable;

    .line 224
    new-instance v20, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cymobile/ymwork/widget/SegmentedButton;->mBgCenterOff:Landroid/graphics/drawable/StateListDrawable;

    .line 225
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-nez v21, :cond_0

    .line 233
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-nez v21, :cond_1

    .line 241
    return-void

    .line 225
    :cond_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    .line 226
    .local v8, it:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/widget/SegmentedButton;->mBgLeftOn:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8, v11}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/widget/SegmentedButton;->mBgRightOn:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v8, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/widget/SegmentedButton;->mBgCenterOn:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8, v7}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/widget/SegmentedButton;->mBgLeftOff:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8, v11}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/widget/SegmentedButton;->mBgRightOff:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v8, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/widget/SegmentedButton;->mBgCenterOff:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8, v7}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 233
    .end local v8           #it:[I
    :cond_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    .line 234
    .restart local v8       #it:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/widget/SegmentedButton;->mBgLeftOn:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8, v10}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/widget/SegmentedButton;->mBgRightOn:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/widget/SegmentedButton;->mBgCenterOn:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8, v6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/widget/SegmentedButton;->mBgLeftOff:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8, v9}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/widget/SegmentedButton;->mBgRightOff:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v8, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/widget/SegmentedButton;->mBgCenterOff:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1
.end method

.method private buildGradientDrawable(IIII)Landroid/graphics/drawable/GradientDrawable;
    .locals 5
    .parameter "colorStart"
    .parameter "colorEnd"
    .parameter "strokeWidth"
    .parameter "strokeColor"

    .prologue
    const/4 v4, 0x0

    .line 264
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    .line 265
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 266
    const/4 v2, 0x2

    new-array v2, v2, [I

    aput p1, v2, v4

    const/4 v3, 0x1

    aput p2, v2, v3

    .line 264
    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 267
    .local v0, gd:Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 268
    invoke-virtual {v0, p3, p4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 269
    return-object v0
.end method

.method private buildOffStates()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<[I>;"
        }
    .end annotation

    .prologue
    .line 255
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 256
    .local v0, res:Ljava/util/List;,"Ljava/util/List<[I>;"
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 257
    const v3, 0x101009e

    aput v3, v1, v2

    .line 256
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    return-object v0

    .line 258
    nop

    :array_0
    .array-data 0x4
        0xa1t 0x0t 0x1t 0x1t
        0x9et 0x0t 0x1t 0x1t
    .end array-data
.end method

.method private buildOnStates()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<[I>;"
        }
    .end annotation

    .prologue
    .line 244
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 245
    .local v0, res:Ljava/util/List;,"Ljava/util/List<[I>;"
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 250
    const v3, 0x10100a7

    aput v3, v1, v2

    .line 249
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    return-object v0

    .line 245
    :array_0
    .array-data 0x4
        0x9ct 0x0t 0x1t 0x1t
        0x9et 0x0t 0x1t 0x1t
    .end array-data

    .line 247
    :array_1
    .array-data 0x4
        0x9ct 0x0t 0x1t 0x1t
        0xa1t 0x0t 0x1t 0x1t
        0x9et 0x0t 0x1t 0x1t
    .end array-data
.end method

.method private handleStateChange(II)V
    .locals 7
    .parameter "btnLastIndex"
    .parameter "btnNextIndex"

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/cymobile/ymwork/widget/SegmentedButton;->getChildCount()I

    move-result v2

    .line 290
    .local v2, count:I
    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/widget/SegmentedButton;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 291
    .local v0, btnLast:Landroid/widget/Button;
    invoke-virtual {p0, p2}, Lcom/cymobile/ymwork/widget/SegmentedButton;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 293
    .local v1, btnNext:Landroid/widget/Button;
    const/4 v3, 0x3

    if-ge v2, v3, :cond_2

    .line 294
    if-nez p1, :cond_0

    .line 295
    iget-object v3, p0, Lcom/cymobile/ymwork/widget/SegmentedButton;->mBgLeftOn:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 299
    :goto_0
    if-nez p2, :cond_1

    .line 300
    iget-object v3, p0, Lcom/cymobile/ymwork/widget/SegmentedButton;->mBgLeftOff:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 322
    :goto_1
    iget v3, p0, Lcom/cymobile/ymwork/widget/SegmentedButton;->mBtnPaddingLeft:I

    iget v4, p0, Lcom/cymobile/ymwork/widget/SegmentedButton;->mBtnPaddingTop:I

    iget v5, p0, Lcom/cymobile/ymwork/widget/SegmentedButton;->mBtnPaddingRight:I

    iget v6, p0, Lcom/cymobile/ymwork/widget/SegmentedButton;->mBtnPaddingBottom:I

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/widget/Button;->setPadding(IIII)V

    .line 323
    iget v3, p0, Lcom/cymobile/ymwork/widget/SegmentedButton;->mBtnPaddingLeft:I

    iget v4, p0, Lcom/cymobile/ymwork/widget/SegmentedButton;->mBtnPaddingTop:I

    iget v5, p0, Lcom/cymobile/ymwork/widget/SegmentedButton;->mBtnPaddingRight:I

    iget v6, p0, Lcom/cymobile/ymwork/widget/SegmentedButton;->mBtnPaddingBottom:I

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/widget/Button;->setPadding(IIII)V

    .line 325
    iput p2, p0, Lcom/cymobile/ymwork/widget/SegmentedButton;->mSelectedButtonIndex:I

    .line 326
    return-void

    .line 297
    :cond_0
    iget-object v3, p0, Lcom/cymobile/ymwork/widget/SegmentedButton;->mBgRightOn:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 302
    :cond_1
    iget-object v3, p0, Lcom/cymobile/ymwork/widget/SegmentedButton;->mBgRightOff:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 305
    :cond_2
    if-nez p1, :cond_3

    .line 306
    iget-object v3, p0, Lcom/cymobile/ymwork/widget/SegmentedButton;->mBgLeftOn:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 313
    :goto_2
    if-nez p2, :cond_5

    .line 314
    iget-object v3, p0, Lcom/cymobile/ymwork/widget/SegmentedButton;->mBgLeftOff:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 307
    :cond_3
    add-int/lit8 v3, v2, -0x1

    if-ne p1, v3, :cond_4

    .line 308
    iget-object v3, p0, Lcom/cymobile/ymwork/widget/SegmentedButton;->mBgRightOn:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 310
    :cond_4
    iget-object v3, p0, Lcom/cymobile/ymwork/widget/SegmentedButton;->mBgCenterOn:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 315
    :cond_5
    add-int/lit8 v3, v2, -0x1

    if-ne p2, v3, :cond_6

    .line 316
    iget-object v3, p0, Lcom/cymobile/ymwork/widget/SegmentedButton;->mBgRightOff:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 318
    :cond_6
    iget-object v3, p0, Lcom/cymobile/ymwork/widget/SegmentedButton;->mBgCenterOff:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method


# virtual methods
.method public varargs addButtons(ZZ[Ljava/lang/String;)V
    .locals 0
    .parameter "isBack"
    .parameter "isHeader"
    .parameter "titles"

    .prologue
    .line 107
    invoke-direct {p0, p1, p2, p3}, Lcom/cymobile/ymwork/widget/SegmentedButton;->_addButtons(ZZ[Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public clearButtons()V
    .locals 0

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/cymobile/ymwork/widget/SegmentedButton;->removeAllViews()V

    .line 103
    invoke-virtual {p0}, Lcom/cymobile/ymwork/widget/SegmentedButton;->forceLayout()V

    .line 104
    return-void
.end method

.method public getSelectedButtonIndex()I
    .locals 1

    .prologue
    .line 329
    iget v0, p0, Lcom/cymobile/ymwork/widget/SegmentedButton;->mSelectedButtonIndex:I

    return v0
.end method

.method public setOnClickListener(Lcom/cymobile/ymwork/widget/SegmentedButton$OnClickListenerSegmentedButton;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 337
    iput-object p1, p0, Lcom/cymobile/ymwork/widget/SegmentedButton;->mOnClickListenerExternal:Lcom/cymobile/ymwork/widget/SegmentedButton$OnClickListenerSegmentedButton;

    .line 338
    return-void
.end method

.method public setPushedButtonIndex(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 333
    iget v0, p0, Lcom/cymobile/ymwork/widget/SegmentedButton;->mSelectedButtonIndex:I

    invoke-direct {p0, v0, p1}, Lcom/cymobile/ymwork/widget/SegmentedButton;->handleStateChange(II)V

    .line 334
    return-void
.end method
