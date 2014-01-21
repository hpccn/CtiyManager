.class public Lcom/cymobile/ymwork/utils/StringFormatters;
.super Ljava/lang/Object;
.source "StringFormatters.java"


# static fields
.field public static final DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field public static final DATE_FORMAT_OLDER:Ljava/text/SimpleDateFormat;

.field public static final DATE_FORMAT_TODAY:Ljava/text/SimpleDateFormat;

.field public static final DATE_FORMAT_YESTERDAY:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 26
    const-string v1, "EEE, dd MMM yy HH:mm:ss Z"

    .line 25
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/cymobile/ymwork/utils/StringFormatters;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 29
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 30
    const-string v1, "h:mm a"

    .line 29
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/cymobile/ymwork/utils/StringFormatters;->DATE_FORMAT_TODAY:Ljava/text/SimpleDateFormat;

    .line 33
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 34
    const-string v1, "E h:mm a"

    .line 33
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/cymobile/ymwork/utils/StringFormatters;->DATE_FORMAT_YESTERDAY:Ljava/text/SimpleDateFormat;

    .line 37
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 38
    const-string v1, "E MMM d"

    .line 37
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/cymobile/ymwork/utils/StringFormatters;->DATE_FORMAT_OLDER:Ljava/text/SimpleDateFormat;

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDistance(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "meter"

    .prologue
    .line 112
    if-lez p1, :cond_1

    .line 113
    const/16 v1, 0x3e8

    if-le p1, v1, :cond_0

    .line 114
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "####0.0"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    int-to-float v2, p1

    const/high16 v3, 0x447a

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, output:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09007b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 120
    .end local v0           #output:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 117
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09007a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 120
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getOlderTimeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "created"

    .prologue
    .line 90
    :try_start_0
    sget-object v1, Lcom/cymobile/ymwork/utils/StringFormatters;->DATE_FORMAT_OLDER:Ljava/text/SimpleDateFormat;

    sget-object v2, Lcom/cymobile/ymwork/utils/StringFormatters;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 92
    .local v0, e:Ljava/text/ParseException;
    :goto_0
    return-object p0

    .line 91
    .end local v0           #e:Ljava/text/ParseException;
    :catch_0
    move-exception v0

    .line 92
    .restart local v0       #e:Ljava/text/ParseException;
    goto :goto_0
.end method

.method public static getRelativeTimeSpanString(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 8
    .parameter "created"

    .prologue
    .line 54
    :try_start_0
    sget-object v0, Lcom/cymobile/ymwork/utils/StringFormatters;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 55
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    .line 56
    const/high16 v6, 0x4

    .line 54
    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 59
    .local v7, e:Ljava/text/ParseException;
    :goto_0
    return-object p0

    .line 57
    .end local v7           #e:Ljava/text/ParseException;
    :catch_0
    move-exception v7

    .line 58
    .restart local v7       #e:Ljava/text/ParseException;
    invoke-virtual {v7}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getRelativeTimeSpanString(Ljava/util/Date;)Ljava/lang/CharSequence;
    .locals 8
    .parameter "created"

    .prologue
    .line 43
    :try_start_0
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 44
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    .line 45
    const/high16 v6, 0x4

    .line 43
    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 48
    :goto_0
    return-object v0

    .line 46
    :catch_0
    move-exception v7

    .line 47
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 48
    invoke-virtual {p0}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getTodayTimeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "created"

    .prologue
    .line 68
    :try_start_0
    sget-object v1, Lcom/cymobile/ymwork/utils/StringFormatters;->DATE_FORMAT_TODAY:Ljava/text/SimpleDateFormat;

    sget-object v2, Lcom/cymobile/ymwork/utils/StringFormatters;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 70
    .local v0, e:Ljava/text/ParseException;
    :goto_0
    return-object p0

    .line 69
    .end local v0           #e:Ljava/text/ParseException;
    :catch_0
    move-exception v0

    .line 70
    .restart local v0       #e:Ljava/text/ParseException;
    goto :goto_0
.end method

.method public static getYesterdayTimeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "created"

    .prologue
    .line 79
    :try_start_0
    sget-object v1, Lcom/cymobile/ymwork/utils/StringFormatters;->DATE_FORMAT_YESTERDAY:Ljava/text/SimpleDateFormat;

    sget-object v2, Lcom/cymobile/ymwork/utils/StringFormatters;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 81
    .local v0, e:Ljava/text/ParseException;
    :goto_0
    return-object p0

    .line 80
    .end local v0           #e:Ljava/text/ParseException;
    :catch_0
    move-exception v0

    .line 81
    .restart local v0       #e:Ljava/text/ParseException;
    goto :goto_0
.end method

.method public static inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 100
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 101
    .local v1, reader:Ljava/io/BufferedReader;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 103
    .local v0, line:Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 106
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 107
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 104
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
