.class public final Lcom/cymobile/ymwork/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final DefaultTheme:[I = null

.field public static final DefaultTheme_headsegment:I = 0x1

.field public static final DefaultTheme_themeId:I = 0x0

.field public static final SegmentedButton:[I = null

.field public static final SegmentedButton_SegmentButtonStrokeColor:I = 0x8

.field public static final SegmentedButton_SegmentButtonStrokeWidth:I = 0x9

.field public static final SegmentedButton_btnPaddingBottom:I = 0xd

.field public static final SegmentedButton_btnPaddingLeft:I = 0xe

.field public static final SegmentedButton_btnPaddingRight:I = 0xf

.field public static final SegmentedButton_btnPaddingTop:I = 0xc

.field public static final SegmentedButton_btnText1:I = 0x0

.field public static final SegmentedButton_btnText2:I = 0x1

.field public static final SegmentedButton_cornerRadius:I = 0xa

.field public static final SegmentedButton_gradientColorOffEnd:I = 0x5

.field public static final SegmentedButton_gradientColorOffStart:I = 0x4

.field public static final SegmentedButton_gradientColorOnEnd:I = 0x3

.field public static final SegmentedButton_gradientColorOnStart:I = 0x2

.field public static final SegmentedButton_gradientColorSelectedEnd:I = 0x7

.field public static final SegmentedButton_gradientColorSelectedStart:I = 0x6

.field public static final SegmentedButton_textStyle:I = 0xb


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1368
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/cymobile/ymwork/R$styleable;->DefaultTheme:[I

    .line 1435
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/cymobile/ymwork/R$styleable;->SegmentedButton:[I

    .line 1355
    return-void

    .line 1368
    :array_0
    .array-data 0x4
        0x10t 0x0t 0x1t 0x7ft
        0x11t 0x0t 0x1t 0x7ft
    .end array-data

    .line 1435
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x1t 0x7ft
        0x1t 0x0t 0x1t 0x7ft
        0x2t 0x0t 0x1t 0x7ft
        0x3t 0x0t 0x1t 0x7ft
        0x4t 0x0t 0x1t 0x7ft
        0x5t 0x0t 0x1t 0x7ft
        0x6t 0x0t 0x1t 0x7ft
        0x7t 0x0t 0x1t 0x7ft
        0x8t 0x0t 0x1t 0x7ft
        0x9t 0x0t 0x1t 0x7ft
        0xat 0x0t 0x1t 0x7ft
        0xbt 0x0t 0x1t 0x7ft
        0xct 0x0t 0x1t 0x7ft
        0xdt 0x0t 0x1t 0x7ft
        0xet 0x0t 0x1t 0x7ft
        0xft 0x0t 0x1t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
