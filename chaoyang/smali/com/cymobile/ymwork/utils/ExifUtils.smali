.class public Lcom/cymobile/ymwork/utils/ExifUtils;
.super Ljava/lang/Object;
.source "ExifUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

.method public static getExifRotation(Ljava/lang/String;)I
    .locals 6
    .parameter "imgPath"

    .prologue
    const/4 v4, 0x0

    .line 12
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 13
    .local v1, exif:Landroid/media/ExifInterface;
    const-string v5, "Orientation"

    invoke-virtual {v1, v5}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 14
    .local v2, rotationAmount:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 15
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 16
    .local v3, rotationParam:I
    packed-switch v3, :pswitch_data_0

    .line 32
    .end local v1           #exif:Landroid/media/ExifInterface;
    .end local v2           #rotationAmount:Ljava/lang/String;
    .end local v3           #rotationParam:I
    :cond_0
    :goto_0
    :pswitch_0
    return v4

    .line 20
    .restart local v1       #exif:Landroid/media/ExifInterface;
    .restart local v2       #rotationAmount:Ljava/lang/String;
    .restart local v3       #rotationParam:I
    :pswitch_1
    const/16 v4, 0x5a

    goto :goto_0

    .line 22
    :pswitch_2
    const/16 v4, 0xb4

    goto :goto_0

    .line 24
    :pswitch_3
    const/16 v4, 0x10e

    goto :goto_0

    .line 31
    .end local v1           #exif:Landroid/media/ExifInterface;
    .end local v2           #rotationAmount:Ljava/lang/String;
    .end local v3           #rotationParam:I
    :catch_0
    move-exception v0

    .line 32
    .local v0, ex:Ljava/lang/Exception;
    goto :goto_0

    .line 16
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
