.class public Lcom/cymobile/ymwork/utils/AMapUtil;
.super Ljava/lang/Object;
.source "AMapUtil.java"


# static fields
.field public static final HtmlBlack:Ljava/lang/String; = "#000000"

.field public static final HtmlGray:Ljava/lang/String; = "#808080"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static IsEmptyOrNullString(Ljava/lang/String;)Z
    .locals 1
    .parameter "s"

    .prologue
    .line 87
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static checkReady(Landroid/content/Context;Lcom/amap/api/maps/AMap;)Z
    .locals 2
    .parameter "context"
    .parameter "aMap"

    .prologue
    const/4 v0, 0x1

    .line 28
    if-nez p1, :cond_0

    .line 29
    const v1, 0x7f09003b

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 30
    const/4 v0, 0x0

    .line 32
    :cond_0
    return v0
.end method

.method public static colorFont(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "src"
    .parameter "color"

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 42
    .local v0, strBuf:Ljava/lang/StringBuffer;
    const-string v1, "<font color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 43
    const-string v2, "</font>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static convertToLatLonPoint(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/search/core/LatLonPoint;
    .locals 5
    .parameter "latlon"

    .prologue
    .line 91
    new-instance v0, Lcom/amap/api/search/core/LatLonPoint;

    iget-wide v1, p0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v3, p0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amap/api/search/core/LatLonPoint;-><init>(DD)V

    return-object v0
.end method

.method public static getFriendlyLength(I)Ljava/lang/String;
    .locals 5
    .parameter "lenMeter"

    .prologue
    .line 61
    const/16 v3, 0x2710

    if-le p0, v3, :cond_0

    .line 63
    div-int/lit16 v0, p0, 0x3e8

    .line 64
    .local v0, dis:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\u516c\u91cc"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 84
    .end local v0           #dis:I
    :goto_0
    return-object v3

    .line 67
    :cond_0
    const/16 v3, 0x3e8

    if-le p0, v3, :cond_1

    .line 68
    int-to-float v3, p0

    const/high16 v4, 0x447a

    div-float v0, v3, v4

    .line 69
    .local v0, dis:F
    new-instance v2, Ljava/text/DecimalFormat;

    const-string v3, "##0.0"

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 70
    .local v2, fnum:Ljava/text/DecimalFormat;
    float-to-double v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, dstr:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\u516c\u91cc"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 74
    .end local v0           #dis:F
    .end local v1           #dstr:Ljava/lang/String;
    .end local v2           #fnum:Ljava/text/DecimalFormat;
    :cond_1
    const/16 v3, 0x64

    if-le p0, v3, :cond_2

    .line 75
    div-int/lit8 v3, p0, 0x32

    mul-int/lit8 v0, v3, 0x32

    .line 76
    .local v0, dis:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\u7c73"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 79
    .end local v0           #dis:I
    :cond_2
    div-int/lit8 v3, p0, 0xa

    mul-int/lit8 v0, v3, 0xa

    .line 80
    .restart local v0       #dis:I
    if-nez v0, :cond_3

    .line 81
    const/16 v0, 0xa

    .line 84
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\u7c73"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static makeHtmlNewLine()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    const-string v0, "<br />"

    return-object v0
.end method

.method public static makeHtmlSpace(I)Ljava/lang/String;
    .locals 4
    .parameter "number"

    .prologue
    .line 52
    const-string v2, "&nbsp;"

    .line 53
    .local v2, space:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .local v1, result:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, p0, :cond_0

    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 55
    :cond_0
    const-string v3, "&nbsp;"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static stringToSpan(Ljava/lang/String;)Landroid/text/Spanned;
    .locals 2
    .parameter "src"

    .prologue
    .line 36
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "\n"

    const-string v1, "<br />"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    goto :goto_0
.end method
