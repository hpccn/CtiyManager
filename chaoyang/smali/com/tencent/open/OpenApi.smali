.class public Lcom/tencent/open/OpenApi;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static b:Ljava/util/Random;


# instance fields
.field private a:Lcom/tencent/open/TContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/tencent/open/OpenApi;->b:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/open/TContext;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/tencent/open/OpenApi;->a:Lcom/tencent/open/TContext;

    .line 80
    return-void
.end method

.method private static a(Ljava/io/IOException;)I
    .locals 1
    .parameter

    .prologue
    .line 402
    instance-of v0, p0, Ljava/io/CharConversionException;

    if-eqz v0, :cond_0

    .line 403
    const/16 v0, -0x14

    .line 479
    :goto_0
    return v0

    .line 404
    :cond_0
    instance-of v0, p0, Ljava/nio/charset/MalformedInputException;

    if-eqz v0, :cond_1

    .line 405
    const/16 v0, -0x15

    goto :goto_0

    .line 406
    :cond_1
    instance-of v0, p0, Ljava/nio/charset/UnmappableCharacterException;

    if-eqz v0, :cond_2

    .line 407
    const/16 v0, -0x16

    goto :goto_0

    .line 408
    :cond_2
    instance-of v0, p0, Lorg/apache/http/client/HttpResponseException;

    if-eqz v0, :cond_3

    .line 409
    const/16 v0, -0x17

    goto :goto_0

    .line 410
    :cond_3
    instance-of v0, p0, Ljava/nio/channels/ClosedChannelException;

    if-eqz v0, :cond_4

    .line 411
    const/16 v0, -0x18

    goto :goto_0

    .line 412
    :cond_4
    instance-of v0, p0, Lorg/apache/http/ConnectionClosedException;

    if-eqz v0, :cond_5

    .line 413
    const/16 v0, -0x19

    goto :goto_0

    .line 414
    :cond_5
    instance-of v0, p0, Ljava/io/EOFException;

    if-eqz v0, :cond_6

    .line 415
    const/16 v0, -0x1a

    goto :goto_0

    .line 416
    :cond_6
    instance-of v0, p0, Ljava/nio/channels/FileLockInterruptionException;

    if-eqz v0, :cond_7

    .line 417
    const/16 v0, -0x1b

    goto :goto_0

    .line 418
    :cond_7
    instance-of v0, p0, Ljava/io/FileNotFoundException;

    if-eqz v0, :cond_8

    .line 419
    const/16 v0, -0x1c

    goto :goto_0

    .line 420
    :cond_8
    instance-of v0, p0, Ljava/net/HttpRetryException;

    if-eqz v0, :cond_9

    .line 421
    const/16 v0, -0x1d

    goto :goto_0

    .line 422
    :cond_9
    instance-of v0, p0, Lorg/apache/http/conn/ConnectTimeoutException;

    if-eqz v0, :cond_a

    .line 423
    const/4 v0, -0x7

    goto :goto_0

    .line 424
    :cond_a
    instance-of v0, p0, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_b

    .line 425
    const/4 v0, -0x8

    goto :goto_0

    .line 426
    :cond_b
    instance-of v0, p0, Ljava/util/InvalidPropertiesFormatException;

    if-eqz v0, :cond_c

    .line 427
    const/16 v0, -0x1e

    goto :goto_0

    .line 428
    :cond_c
    instance-of v0, p0, Lorg/apache/http/MalformedChunkCodingException;

    if-eqz v0, :cond_d

    .line 429
    const/16 v0, -0x1f

    goto :goto_0

    .line 430
    :cond_d
    instance-of v0, p0, Ljava/net/MalformedURLException;

    if-eqz v0, :cond_e

    .line 431
    const/4 v0, -0x3

    goto :goto_0

    .line 432
    :cond_e
    instance-of v0, p0, Lorg/apache/http/NoHttpResponseException;

    if-eqz v0, :cond_f

    .line 433
    const/16 v0, -0x20

    goto :goto_0

    .line 434
    :cond_f
    instance-of v0, p0, Ljava/io/InvalidClassException;

    if-eqz v0, :cond_10

    .line 435
    const/16 v0, -0x21

    goto :goto_0

    .line 436
    :cond_10
    instance-of v0, p0, Ljava/io/InvalidObjectException;

    if-eqz v0, :cond_11

    .line 437
    const/16 v0, -0x22

    goto :goto_0

    .line 438
    :cond_11
    instance-of v0, p0, Ljava/io/NotActiveException;

    if-eqz v0, :cond_12

    .line 439
    const/16 v0, -0x23

    goto :goto_0

    .line 440
    :cond_12
    instance-of v0, p0, Ljava/io/NotSerializableException;

    if-eqz v0, :cond_13

    .line 441
    const/16 v0, -0x24

    goto/16 :goto_0

    .line 442
    :cond_13
    instance-of v0, p0, Ljava/io/OptionalDataException;

    if-eqz v0, :cond_14

    .line 443
    const/16 v0, -0x25

    goto/16 :goto_0

    .line 444
    :cond_14
    instance-of v0, p0, Ljava/io/StreamCorruptedException;

    if-eqz v0, :cond_15

    .line 445
    const/16 v0, -0x26

    goto/16 :goto_0

    .line 446
    :cond_15
    instance-of v0, p0, Ljava/io/WriteAbortedException;

    if-eqz v0, :cond_16

    .line 447
    const/16 v0, -0x27

    goto/16 :goto_0

    .line 448
    :cond_16
    instance-of v0, p0, Ljava/net/ProtocolException;

    if-eqz v0, :cond_17

    .line 449
    const/16 v0, -0x28

    goto/16 :goto_0

    .line 450
    :cond_17
    instance-of v0, p0, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v0, :cond_18

    .line 451
    const/16 v0, -0x29

    goto/16 :goto_0

    .line 452
    :cond_18
    instance-of v0, p0, Ljavax/net/ssl/SSLKeyException;

    if-eqz v0, :cond_19

    .line 453
    const/16 v0, -0x2a

    goto/16 :goto_0

    .line 454
    :cond_19
    instance-of v0, p0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz v0, :cond_1a

    .line 455
    const/16 v0, -0x2b

    goto/16 :goto_0

    .line 456
    :cond_1a
    instance-of v0, p0, Ljavax/net/ssl/SSLProtocolException;

    if-eqz v0, :cond_1b

    .line 457
    const/16 v0, -0x2c

    goto/16 :goto_0

    .line 458
    :cond_1b
    instance-of v0, p0, Ljava/net/BindException;

    if-eqz v0, :cond_1c

    .line 459
    const/16 v0, -0x2d

    goto/16 :goto_0

    .line 460
    :cond_1c
    instance-of v0, p0, Ljava/net/ConnectException;

    if-eqz v0, :cond_1d

    .line 461
    const/16 v0, -0x2e

    goto/16 :goto_0

    .line 462
    :cond_1d
    instance-of v0, p0, Ljava/net/NoRouteToHostException;

    if-eqz v0, :cond_1e

    .line 463
    const/16 v0, -0x2f

    goto/16 :goto_0

    .line 464
    :cond_1e
    instance-of v0, p0, Ljava/net/PortUnreachableException;

    if-eqz v0, :cond_1f

    .line 465
    const/16 v0, -0x30

    goto/16 :goto_0

    .line 466
    :cond_1f
    instance-of v0, p0, Ljava/io/SyncFailedException;

    if-eqz v0, :cond_20

    .line 467
    const/16 v0, -0x31

    goto/16 :goto_0

    .line 468
    :cond_20
    instance-of v0, p0, Ljava/io/UTFDataFormatException;

    if-eqz v0, :cond_21

    .line 469
    const/16 v0, -0x32

    goto/16 :goto_0

    .line 470
    :cond_21
    instance-of v0, p0, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_22

    .line 471
    const/16 v0, -0x33

    goto/16 :goto_0

    .line 472
    :cond_22
    instance-of v0, p0, Ljava/net/UnknownServiceException;

    if-eqz v0, :cond_23

    .line 473
    const/16 v0, -0x34

    goto/16 :goto_0

    .line 474
    :cond_23
    instance-of v0, p0, Ljava/io/UnsupportedEncodingException;

    if-eqz v0, :cond_24

    .line 475
    const/16 v0, -0x35

    goto/16 :goto_0

    .line 476
    :cond_24
    instance-of v0, p0, Ljava/util/zip/ZipException;

    if-eqz v0, :cond_25

    .line 477
    const/16 v0, -0x36

    goto/16 :goto_0

    .line 479
    :cond_25
    const/4 v0, -0x2

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 242
    if-nez p2, :cond_0

    .line 243
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 244
    :cond_0
    const-string v0, "format"

    const-string v1, "json"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v0, "status_os"

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string v0, "status_machine"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string v0, "status_version"

    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string v0, "sdkv"

    const-string v1, "1.5"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string v0, "sdkp"

    const-string v1, "a"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-direct {p0}, Lcom/tencent/open/OpenApi;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 253
    const-string v0, "access_token"

    invoke-direct {p0}, Lcom/tencent/open/OpenApi;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    :cond_1
    const-string v0, "oauth2.0/m_me"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 256
    iget-object v0, p0, Lcom/tencent/open/OpenApi;->a:Lcom/tencent/open/TContext;

    if-eqz v0, :cond_2

    .line 257
    const-string v0, "oauth_consumer_key"

    iget-object v1, p0, Lcom/tencent/open/OpenApi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v1}, Lcom/tencent/open/TContext;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/tencent/open/OpenApi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v0}, Lcom/tencent/open/TContext;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 260
    const-string v0, "openid"

    iget-object v1, p0, Lcom/tencent/open/OpenApi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v1}, Lcom/tencent/open/TContext;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    :cond_2
    const-string v0, "appid_for_getting_config"

    iget-object v1, p0, Lcom/tencent/open/OpenApi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v1}, Lcom/tencent/open/TContext;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :try_start_0
    iget-object v0, p0, Lcom/tencent/open/OpenApi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v0}, Lcom/tencent/open/TContext;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pfStore"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 273
    const-string v1, "pf"

    const-string v2, "openmobile_android"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 274
    const-string v1, "pf"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    :goto_0
    return-object p2

    .line 275
    :catch_0
    move-exception v0

    .line 276
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 277
    const-string v0, "pf"

    const-string v1, "openmobile_android"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 333
    const-string v0, "Android_SDK_1.5"

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 378
    const-string v0, "add_share"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v1, :cond_0

    const-string v0, "upload_pic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v1, :cond_0

    const-string v0, "add_topic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v1, :cond_0

    const-string v0, "set_user_face"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v1, :cond_0

    const-string v0, "add_t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v1, :cond_0

    const-string v0, "add_pic_t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v1, :cond_0

    const-string v0, "add_pic_url"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v1, :cond_0

    const-string v0, "add_video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v1, :cond_1

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/tencent/open/OpenApi;->a:Lcom/tencent/open/TContext;

    const-string v1, "requireApi"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/open/TencentStat;->a(Lcom/tencent/open/TContext;Ljava/lang/String;[Ljava/lang/String;)V

    .line 388
    :cond_1
    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/tencent/open/OpenApi;->a:Lcom/tencent/open/TContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/open/OpenApi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v0}, Lcom/tencent/open/TContext;->b()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()Z
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/tencent/open/OpenApi;->a:Lcom/tencent/open/TContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/open/OpenApi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v0}, Lcom/tencent/open/TContext;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 19
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 106
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/tencent/open/OpenApi;->a(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v16

    .line 110
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "http"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 114
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/open/ServerSetting;->getInstance()Lcom/tencent/open/ServerSetting;

    move-result-object v4

    const/4 v5, 0x6

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Lcom/tencent/open/ServerSetting;->getSettingUrl(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 116
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/open/ServerSetting;->getInstance()Lcom/tencent/open/ServerSetting;

    move-result-object v5

    const/4 v6, 0x6

    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v6}, Lcom/tencent/open/ServerSetting;->getSettingUrl(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 120
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/tencent/open/OpenApi;->a(Ljava/lang/String;)V

    .line 121
    const/4 v9, 0x0

    .line 122
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 127
    const/4 v8, 0x0

    .line 128
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/open/OpenApi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v4}, Lcom/tencent/open/TContext;->d()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/tencent/open/OpenConfig;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/open/OpenConfig;

    move-result-object v4

    const-string v10, "Common_HttpRetryCount"

    invoke-virtual {v4, v10}, Lcom/tencent/open/OpenConfig;->a(Ljava/lang/String;)I

    move-result v4

    .line 130
    const-string v10, "OpenConfig_test"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "config 1:Common_HttpRetryCount            config_value:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "   appid:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/open/OpenApi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v12}, Lcom/tencent/open/TContext;->d()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "     url:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    if-nez v4, :cond_0

    const/4 v4, 0x3

    .line 134
    :cond_0
    const-string v10, "OpenConfig_test"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "config 1:Common_HttpRetryCount            result_value:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "   appid:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/open/OpenApi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v12}, Lcom/tencent/open/TContext;->d()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "     url:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :goto_1
    add-int/lit8 v13, v8, 0x1

    .line 142
    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, v16

    invoke-static {v0, v3, v1, v2}, Lcom/tencent/open/Util;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/tencent/open/Util$Statistic;

    move-result-object v10

    .line 144
    iget-object v8, v10, Lcom/tencent/open/Util$Statistic;->a:Ljava/lang/String;

    .line 145
    invoke-static {v8}, Lcom/tencent/open/Util;->d(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Lcom/tencent/open/HttpStatusException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/tencent/open/NetworkUnavailableException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_8

    move-result-object v14

    .line 146
    :try_start_1
    const-string v8, "oauth2.0/m_me"

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    if-eqz v14, :cond_1

    .line 147
    const-string v8, "openid"

    invoke-virtual {v14, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 148
    if-eqz v8, :cond_1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tencent/open/OpenApi;->a:Lcom/tencent/open/TContext;

    if-eqz v9, :cond_1

    .line 149
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tencent/open/OpenApi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v9, v8}, Lcom/tencent/open/TContext;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/tencent/open/HttpStatusException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/tencent/open/NetworkUnavailableException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_8

    .line 153
    :cond_1
    :try_start_2
    const-string v8, "ret"

    invoke-virtual {v14, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/tencent/open/HttpStatusException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/tencent/open/NetworkUnavailableException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    move-result v12

    .line 158
    :goto_2
    :try_start_3
    iget-wide v8, v10, Lcom/tencent/open/Util$Statistic;->b:J

    .line 159
    iget-wide v10, v10, Lcom/tencent/open/Util$Statistic;->c:J
    :try_end_3
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/tencent/open/HttpStatusException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/tencent/open/NetworkUnavailableException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_8

    .line 237
    :goto_3
    invoke-static {}, Lcom/tencent/open/cgireport/ReportManager;->a()Lcom/tencent/open/cgireport/ReportManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/open/OpenApi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v4}, Lcom/tencent/open/TContext;->d()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v13}, Lcom/tencent/open/cgireport/ReportManager;->a(Landroid/content/Context;Ljava/lang/String;JJJILjava/lang/String;)V

    .line 238
    return-object v14

    .line 154
    :catch_0
    move-exception v8

    .line 156
    const/4 v12, -0x4

    goto :goto_2

    .line 162
    :catch_1
    move-exception v8

    move-object v15, v14

    move-object v14, v8

    .line 163
    :goto_4
    invoke-virtual {v14}, Lorg/apache/http/conn/ConnectTimeoutException;->printStackTrace()V

    .line 164
    const/4 v12, -0x7

    .line 165
    const-wide/16 v8, 0x0

    .line 166
    const-wide/16 v10, 0x0

    .line 167
    if-ge v13, v4, :cond_2

    move-wide/from16 v17, v8

    move-object v8, v15

    move-wide/from16 v14, v17

    .line 236
    :goto_5
    if-lt v13, v4, :cond_4

    move-wide/from16 v17, v14

    move-object v14, v8

    move-wide/from16 v8, v17

    goto :goto_3

    .line 170
    :cond_2
    invoke-static {}, Lcom/tencent/open/cgireport/ReportManager;->a()Lcom/tencent/open/cgireport/ReportManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/open/OpenApi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v4}, Lcom/tencent/open/TContext;->d()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v13}, Lcom/tencent/open/cgireport/ReportManager;->a(Landroid/content/Context;Ljava/lang/String;JJJILjava/lang/String;)V

    .line 172
    throw v14

    .line 174
    :catch_2
    move-exception v8

    move-object v15, v14

    move-object v14, v8

    .line 175
    :goto_6
    invoke-virtual {v14}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    .line 176
    const/4 v12, -0x8

    .line 177
    const-wide/16 v8, 0x0

    .line 178
    const-wide/16 v10, 0x0

    .line 180
    if-ge v13, v4, :cond_3

    move-wide/from16 v17, v8

    move-object v8, v15

    move-wide/from16 v14, v17

    .line 181
    goto :goto_5

    .line 183
    :cond_3
    invoke-static {}, Lcom/tencent/open/cgireport/ReportManager;->a()Lcom/tencent/open/cgireport/ReportManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/open/OpenApi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v4}, Lcom/tencent/open/TContext;->d()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v13}, Lcom/tencent/open/cgireport/ReportManager;->a(Landroid/content/Context;Ljava/lang/String;JJJILjava/lang/String;)V

    .line 185
    throw v14

    .line 189
    :catch_3
    move-exception v3

    move-object v14, v3

    .line 190
    invoke-virtual {v14}, Lcom/tencent/open/HttpStatusException;->printStackTrace()V

    .line 191
    invoke-virtual {v14}, Lcom/tencent/open/HttpStatusException;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 194
    :try_start_4
    const-string v4, "http status code error:"

    const-string v8, ""

    invoke-virtual {v3, v4, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 196
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result v12

    .line 202
    :goto_7
    const-wide/16 v8, 0x0

    .line 203
    const-wide/16 v10, 0x0

    .line 204
    invoke-static {}, Lcom/tencent/open/cgireport/ReportManager;->a()Lcom/tencent/open/cgireport/ReportManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/open/OpenApi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v4}, Lcom/tencent/open/TContext;->d()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v13}, Lcom/tencent/open/cgireport/ReportManager;->a(Landroid/content/Context;Ljava/lang/String;JJJILjava/lang/String;)V

    .line 206
    throw v14

    .line 197
    :catch_4
    move-exception v3

    .line 198
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 200
    const/16 v12, -0x9

    goto :goto_7

    .line 207
    :catch_5
    move-exception v3

    .line 208
    invoke-virtual {v3}, Lcom/tencent/open/NetworkUnavailableException;->printStackTrace()V

    .line 209
    throw v3

    .line 210
    :catch_6
    move-exception v3

    move-object v14, v3

    .line 211
    invoke-virtual {v14}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 212
    const/4 v12, -0x3

    .line 213
    const-wide/16 v8, 0x0

    .line 214
    const-wide/16 v10, 0x0

    .line 215
    invoke-static {}, Lcom/tencent/open/cgireport/ReportManager;->a()Lcom/tencent/open/cgireport/ReportManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/open/OpenApi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v4}, Lcom/tencent/open/TContext;->d()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v13}, Lcom/tencent/open/cgireport/ReportManager;->a(Landroid/content/Context;Ljava/lang/String;JJJILjava/lang/String;)V

    .line 217
    throw v14

    .line 218
    :catch_7
    move-exception v3

    move-object v14, v3

    .line 219
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    .line 221
    invoke-static {v14}, Lcom/tencent/open/OpenApi;->a(Ljava/io/IOException;)I

    move-result v12

    .line 222
    const-wide/16 v8, 0x0

    .line 223
    const-wide/16 v10, 0x0

    .line 224
    invoke-static {}, Lcom/tencent/open/cgireport/ReportManager;->a()Lcom/tencent/open/cgireport/ReportManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/open/OpenApi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v4}, Lcom/tencent/open/TContext;->d()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v13}, Lcom/tencent/open/cgireport/ReportManager;->a(Landroid/content/Context;Ljava/lang/String;JJJILjava/lang/String;)V

    .line 226
    throw v14

    .line 227
    :catch_8
    move-exception v3

    move-object v14, v3

    .line 228
    invoke-virtual {v14}, Lorg/json/JSONException;->printStackTrace()V

    .line 229
    const/4 v12, -0x4

    .line 230
    const-wide/16 v8, 0x0

    .line 231
    const-wide/16 v10, 0x0

    .line 232
    invoke-static {}, Lcom/tencent/open/cgireport/ReportManager;->a()Lcom/tencent/open/cgireport/ReportManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/open/OpenApi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v4}, Lcom/tencent/open/TContext;->d()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v13}, Lcom/tencent/open/cgireport/ReportManager;->a(Landroid/content/Context;Ljava/lang/String;JJJILjava/lang/String;)V

    .line 234
    throw v14

    .line 174
    :catch_9
    move-exception v8

    move-object v14, v8

    move-object v15, v9

    goto/16 :goto_6

    .line 162
    :catch_a
    move-exception v8

    move-object v14, v8

    move-object v15, v9

    goto/16 :goto_4

    :cond_4
    move-object v9, v8

    move v8, v13

    goto/16 :goto_1

    :cond_5
    move-object/from16 v5, p2

    move-object/from16 v3, p2

    goto/16 :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IRequestListener;Ljava/lang/Object;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 287
    new-instance v0, Lcom/tencent/open/h;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/tencent/open/h;-><init>(Lcom/tencent/open/OpenApi;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IRequestListener;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/tencent/open/h;->start()V

    .line 322
    return-void
.end method

.method public a(Lcom/tencent/tauth/IRequestListener;)V
    .locals 7
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 397
    iget-object v0, p0, Lcom/tencent/open/OpenApi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v0}, Lcom/tencent/open/TContext;->f()Landroid/content/Context;

    move-result-object v1

    const-string v2, "user/get_app_friends"

    const-string v4, "GET"

    move-object v0, p0

    move-object v5, p1

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/open/OpenApi;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IRequestListener;Ljava/lang/Object;)V

    .line 399
    return-void
.end method
