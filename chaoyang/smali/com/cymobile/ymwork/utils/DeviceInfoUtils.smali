.class public Lcom/cymobile/ymwork/utils/DeviceInfoUtils;
.super Ljava/lang/Object;
.source "DeviceInfoUtils.java"


# static fields
.field private static mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkNet(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 26
    .line 27
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 26
    check-cast v1, Landroid/net/ConnectivityManager;

    .line 28
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 29
    .local v0, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 30
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "MOBILE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    const-string v3, "cmwap"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 37
    :goto_0
    return v1

    .line 35
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 37
    goto :goto_0
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "context"

    .prologue
    .line 41
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 42
    .local v3, prop:Ljava/util/Properties;
    const/4 v2, 0x0

    .line 44
    .local v2, fis:Ljava/io/FileInputStream;
    :try_start_0
    const-string v4, "settings.properties"

    invoke-virtual {p0, v4}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 45
    invoke-virtual {v3, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 46
    const-string v4, "deviceid"

    invoke-virtual {v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 51
    if-eqz v2, :cond_0

    .line 52
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 57
    :cond_0
    :goto_0
    return-object v4

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 47
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 48
    .local v1, ex:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    if-eqz v2, :cond_1

    .line 52
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 57
    :cond_1
    :goto_1
    const-string v4, ""

    goto :goto_0

    .line 53
    :catch_2
    move-exception v0

    .line 54
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 49
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 51
    if-eqz v2, :cond_2

    .line 52
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 56
    :cond_2
    :goto_2
    throw v4

    .line 53
    :catch_3
    move-exception v0

    .line 54
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public static getIMEI(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 62
    .line 63
    :try_start_0
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 62
    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 63
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 68
    :goto_0
    return-object v1

    .line 64
    :catch_0
    move-exception v0

    .line 66
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 68
    const-string v1, ""

    goto :goto_0
.end method

.method public static getIMSI(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 90
    .line 91
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 90
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 91
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 90
    return-object v0
.end method

.method public static getMobileModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getMobilephoto()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getNetTypeName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 151
    .line 152
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 151
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 153
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    .line 151
    return-object v0
.end method

.method public static getPhoneModel(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 73
    :try_start_0
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 77
    :goto_0
    return-object v1

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 77
    const-string v1, ""

    goto :goto_0
.end method

.method public static getReleaseVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 82
    :try_start_0
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 86
    :goto_0
    return-object v1

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 86
    const-string v1, ""

    goto :goto_0
.end method

.method public static getSDKVersionNumber()I
    .locals 1

    .prologue
    .line 101
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public static getWifiStatus(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 105
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 106
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 105
    return v0
.end method

.method public static isAllowDown(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    .line 110
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 111
    .local v3, prop:Ljava/util/Properties;
    const/4 v2, 0x0

    .line 113
    .local v2, is:Ljava/io/InputStream;
    :try_start_0
    const-string v4, "isdownwifi.properties"

    invoke-virtual {p0, v4}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 114
    invoke-virtual {v3, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 115
    const-string v4, "isdownwifi"

    invoke-virtual {v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 116
    invoke-static {}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->isWifi()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v4

    .line 123
    if-eqz v2, :cond_0

    .line 124
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 129
    :cond_0
    :goto_0
    return v4

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 123
    .end local v0           #e:Ljava/io/IOException;
    :cond_1
    if-eqz v2, :cond_2

    .line 124
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 118
    :cond_2
    :goto_1
    const/4 v4, 0x1

    goto :goto_0

    .line 125
    :catch_1
    move-exception v0

    .line 126
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 119
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 120
    .local v1, ex:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 123
    if-eqz v2, :cond_3

    .line 124
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 129
    :cond_3
    :goto_2
    const/4 v4, 0x0

    goto :goto_0

    .line 125
    :catch_3
    move-exception v0

    .line 126
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 121
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 123
    if-eqz v2, :cond_4

    .line 124
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 128
    :cond_4
    :goto_3
    throw v4

    .line 125
    :catch_4
    move-exception v0

    .line 126
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method public static isWifi()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 133
    sget-object v1, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 134
    sget-object v1, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->mContext:Landroid/content/Context;

    .line 135
    const-string v3, "connectivity"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 134
    check-cast v1, Landroid/net/ConnectivityManager;

    .line 136
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 137
    .local v0, networkinfo:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    .line 143
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 147
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->mContext:Landroid/content/Context;

    .line 148
    return-void
.end method

.method public static setDeviceId(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    .line 157
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .line 158
    .local v4, prop:Ljava/util/Properties;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/cymobile/ymwork/utils/DeviceInfoUtils;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 158
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, deviceid:Ljava/lang/String;
    const-string v5, "deviceid"

    invoke-virtual {v4, v5, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 161
    const/4 v3, 0x0

    .line 163
    .local v3, fos:Ljava/io/FileOutputStream;
    :try_start_0
    const-string v5, "settings.properties"

    const/4 v6, 0x2

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 164
    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 171
    if-eqz v3, :cond_0

    .line 172
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 165
    :catch_0
    move-exception v2

    .line 166
    .local v2, ex:Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 171
    if-eqz v3, :cond_0

    .line 172
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 173
    :catch_1
    move-exception v1

    .line 174
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 167
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #ex:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v2

    .line 168
    .local v2, ex:Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 171
    if-eqz v3, :cond_0

    .line 172
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 173
    :catch_3
    move-exception v1

    .line 174
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 169
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 171
    if-eqz v3, :cond_1

    .line 172
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 176
    :cond_1
    :goto_1
    throw v5

    .line 173
    :catch_4
    move-exception v1

    .line 174
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 173
    .end local v1           #e:Ljava/io/IOException;
    :catch_5
    move-exception v1

    .line 174
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
