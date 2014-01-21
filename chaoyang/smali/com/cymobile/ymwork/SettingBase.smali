.class public Lcom/cymobile/ymwork/SettingBase;
.super Ljava/lang/Object;
.source "SettingBase.java"


# static fields
.field public static final KEY_REGION_City:Ljava/lang/String; = "KEY_REGION_City"

.field public static final KEY_REGION_Province:Ljava/lang/String; = "KEY_REGION_Province"

.field public static final KEY_ymServerToken:Ljava/lang/String; = "KEY_ymServerToken"

.field public static final PREFERENCE_GENDER:Ljava/lang/String; = "gender"

.field public static final PREFERENCE_ListNum:Ljava/lang/String; = "pref_listnum"

.field public static final PREFERENCE_NATIVE_IMAGE_VIEWER:Ljava/lang/String; = "native_full_size_image_viewer"

.field public static final PREFERENCE_NotificationMethod:Ljava/lang/String; = "pref_notif"

.field public static final PREFERENCE_ReadClassIds1:Ljava/lang/String; = "pref_readClassIds1"

.field public static final PREFERENCE_ReadClassIds10:Ljava/lang/String; = "pref_readClassIds10"

.field public static final PREFERENCE_ReadClassIds11:Ljava/lang/String; = "pref_readClassIds11"

.field public static final PREFERENCE_ReadClassIds12:Ljava/lang/String; = "pref_readClassIds12"

.field public static final PREFERENCE_ReadClassIds13:Ljava/lang/String; = "pref_readClassIds13"

.field public static final PREFERENCE_ReadClassIds14:Ljava/lang/String; = "pref_readClassIds14"

.field public static final PREFERENCE_ReadClassIds15:Ljava/lang/String; = "pref_readClassIds15"

.field public static final PREFERENCE_ReadClassIds16:Ljava/lang/String; = "pref_readClassIds16"

.field public static final PREFERENCE_ReadClassIds17:Ljava/lang/String; = "pref_readClassIds17"

.field public static final PREFERENCE_ReadClassIds2:Ljava/lang/String; = "pref_readClassIds2"

.field public static final PREFERENCE_ReadClassIds3:Ljava/lang/String; = "pref_readClassIds3"

.field public static final PREFERENCE_ReadClassIds4:Ljava/lang/String; = "pref_readClassIds4"

.field public static final PREFERENCE_ReadClassIds5:Ljava/lang/String; = "pref_readClassIds5"

.field public static final PREFERENCE_ReadClassIds6:Ljava/lang/String; = "pref_readClassIds6"

.field public static final PREFERENCE_ReadClassIds7:Ljava/lang/String; = "pref_readClassIds7"

.field public static final PREFERENCE_ReadClassIds8:Ljava/lang/String; = "pref_readClassIds8"

.field public static final PREFERENCE_ReadClassIds9:Ljava/lang/String; = "pref_readClassIds9"

.field public static final PREFERENCE_ReadDate:Ljava/lang/String; = "pref_readDate"

.field public static final PREFERENCE_ReadNumClass1:Ljava/lang/String; = "pref_readNumClass1"

.field public static final PREFERENCE_ReadNumClass10:Ljava/lang/String; = "pref_readNumClass10"

.field public static final PREFERENCE_ReadNumClass11:Ljava/lang/String; = "pref_readNumClass11"

.field public static final PREFERENCE_ReadNumClass12:Ljava/lang/String; = "pref_readNumClass12"

.field public static final PREFERENCE_ReadNumClass13:Ljava/lang/String; = "pref_readNumClass13"

.field public static final PREFERENCE_ReadNumClass14:Ljava/lang/String; = "pref_readNumClass14"

.field public static final PREFERENCE_ReadNumClass15:Ljava/lang/String; = "pref_readNumClass15"

.field public static final PREFERENCE_ReadNumClass16:Ljava/lang/String; = "pref_readNumClass16"

.field public static final PREFERENCE_ReadNumClass17:Ljava/lang/String; = "pref_readNumClass17"

.field public static final PREFERENCE_ReadNumClass2:Ljava/lang/String; = "pref_readNumClass2"

.field public static final PREFERENCE_ReadNumClass3:Ljava/lang/String; = "pref_readNumClass3"

.field public static final PREFERENCE_ReadNumClass4:Ljava/lang/String; = "pref_readNumClass4"

.field public static final PREFERENCE_ReadNumClass5:Ljava/lang/String; = "pref_readNumClass5"

.field public static final PREFERENCE_ReadNumClass6:Ljava/lang/String; = "pref_readNumClass6"

.field public static final PREFERENCE_ReadNumClass7:Ljava/lang/String; = "pref_readNumClass7"

.field public static final PREFERENCE_ReadNumClass8:Ljava/lang/String; = "pref_readNumClass8"

.field public static final PREFERENCE_ReadNumClass9:Ljava/lang/String; = "pref_readNumClass9"

.field public static final PREFERENCE_STARTUP_TAB:Ljava/lang/String; = "PREFERENCE_STARTUP_TAB"

.field public static final PREFERENCE_Shops_lastUpdate:Ljava/lang/String; = "Shops_lastUpdate"

.field public static final PREFERENCE_SplashScreen:Ljava/lang/String; = "splashscreen"

.field public static final PREFERENCE_SplashVersion:Ljava/lang/String; = "splashversion"

.field public static final Pref_key_GlobalIsAdmin:Ljava/lang/String; = "Pref_key_GlobalIsAdmin"

.field public static final Pref_key_GlobalPost:Ljava/lang/String; = "key_GlobalPost"

.field public static final Pref_key_GlobalUserID:Ljava/lang/String; = "key_GlobalUserID"

.field public static final Pref_key_GlobalUserName:Ljava/lang/String; = "key_GlobalUserName"

.field public static final Pref_key_GlobalUserPasswd:Ljava/lang/String; = "key_GlobalUserPasswd"

.field public static final Pref_key_GlobalUserPhone:Ljava/lang/String; = "key_newGlobalUserPhone"

.field public static final Pref_key_GlobalWorkCompany:Ljava/lang/String; = "key_GlobalWorkCompany"

.field public static final Pref_key_GlobalZoneId:Ljava/lang/String; = "key_GlobalZoneId"

.field public static final Pref_key_GlobalZoneName:Ljava/lang/String; = "key_GlobalZoneName"

.field public static final Pref_key_RememberPass:Ljava/lang/String; = "Pref_key_RememberPass"

.field public static final Pref_key_help_Showed_version:Ljava/lang/String; = "key_help_Showed_version"

.field public static final Pref_key_isLogined:Ljava/lang/String; = "Pref__new_key_isLogined"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getListNum(Landroid/content/SharedPreferences;)I
    .locals 4
    .parameter "prefs"

    .prologue
    const/16 v1, 0x1e

    const/4 v3, 0x3

    .line 45
    const-string v2, "pref_listnum"

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 46
    .local v0, index:I
    if-nez v0, :cond_1

    .line 47
    const/16 v1, 0xa

    .line 60
    :cond_0
    :goto_0
    return v1

    .line 49
    :cond_1
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 50
    const/16 v1, 0x14

    goto :goto_0

    .line 52
    :cond_2
    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 55
    if-ne v0, v3, :cond_3

    .line 56
    const/16 v1, 0x32

    goto :goto_0

    .line 57
    :cond_3
    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 58
    const/4 v1, -0x1

    goto :goto_0
.end method
