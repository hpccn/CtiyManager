.class public Lcom/cymobile/ymwork/preference/PreferencesUtils;
.super Ljava/lang/Object;
.source "PreferencesUtils.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "Preferences"

.field static streetZone:Lcom/cymobile/ymwork/types/Group;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cymobile/ymwork/types/Group",
            "<",
            "Lcom/cymobile/ymwork/types/Zone;",
            ">;"
        }
    .end annotation
.end field

.field static subClasses:Lcom/cymobile/ymwork/types/Group;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cymobile/ymwork/types/Group",
            "<",
            "Lcom/cymobile/ymwork/types/Classes;",
            ">;"
        }
    .end annotation
.end field

.field static subZone:Lcom/cymobile/ymwork/types/Group;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cymobile/ymwork/types/Group",
            "<",
            "Lcom/cymobile/ymwork/types/Zone;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static auotLoginSuper(Landroid/content/SharedPreferences;)Z
    .locals 1
    .parameter "pref"

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public static auotLoginSuper(Landroid/content/SharedPreferences;Z)Z
    .locals 6
    .parameter "pref"
    .parameter "force"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 107
    const-string v4, "key_GlobalUserID"

    invoke-interface {p0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 108
    const-string v4, "key_newGlobalUserPhone"

    invoke-interface {p0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 109
    const-string v4, "key_GlobalUserPasswd"

    invoke-interface {p0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 110
    const-string v4, "key_GlobalZoneId"

    invoke-interface {p0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 111
    const-string v4, "key_GlobalZoneName"

    invoke-interface {p0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 112
    const-string v4, "Pref__new_key_isLogined"

    invoke-interface {p0, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz p1, :cond_1

    .line 114
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 115
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v1, Lcom/cymobile/ymwork/types/User;

    invoke-direct {v1}, Lcom/cymobile/ymwork/types/User;-><init>()V

    .line 116
    .local v1, user:Lcom/cymobile/ymwork/types/User;
    const-string v4, "45"

    invoke-virtual {v1, v4}, Lcom/cymobile/ymwork/types/User;->setId(Ljava/lang/String;)V

    .line 117
    const-string v4, "13901234567"

    invoke-virtual {v1, v4}, Lcom/cymobile/ymwork/types/User;->setMobile(Ljava/lang/String;)V

    .line 118
    const-string v4, "123456"

    invoke-virtual {v1, v4}, Lcom/cymobile/ymwork/types/User;->setPassword(Ljava/lang/String;)V

    .line 119
    const-string v4, "110105"

    invoke-virtual {v1, v4}, Lcom/cymobile/ymwork/types/User;->setZoneid(Ljava/lang/String;)V

    .line 120
    const-string v4, "\u671d\u9633\u533a"

    invoke-virtual {v1, v4}, Lcom/cymobile/ymwork/types/User;->setZoneName(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v1, v2}, Lcom/cymobile/ymwork/types/User;->setAdmin(Z)V

    .line 122
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/User;->getMobile()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 123
    const-string v3, "key_GlobalUserID"

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/User;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 124
    const-string v3, "key_newGlobalUserPhone"

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/User;->getMobile()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 125
    const-string v3, "key_GlobalUserPasswd"

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/User;->getPassword()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 126
    const-string v3, "key_GlobalZoneId"

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/User;->getZoneid()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 127
    const-string v3, "key_GlobalZoneName"

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/User;->getZoneName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 128
    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/User;->getZoneid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/User;->getZoneName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/cymobile/ymwork/adapter/FilterDataSource;->resetTOPCategory(JLjava/lang/String;)V

    .line 129
    const-string v3, "Pref_key_GlobalIsAdmin"

    invoke-virtual {v1}, Lcom/cymobile/ymwork/types/User;->isAdmin()Z

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 130
    const-string v3, "Pref__new_key_isLogined"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 131
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 135
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #user:Lcom/cymobile/ymwork/types/User;
    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method public static emptyStreetZone()V
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x0

    sput-object v0, Lcom/cymobile/ymwork/preference/PreferencesUtils;->streetZone:Lcom/cymobile/ymwork/types/Group;

    .line 179
    return-void
.end method

.method public static emptySubClasses()V
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    sput-object v0, Lcom/cymobile/ymwork/preference/PreferencesUtils;->subClasses:Lcom/cymobile/ymwork/types/Group;

    .line 153
    return-void
.end method

.method public static emptySubZone()V
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    sput-object v0, Lcom/cymobile/ymwork/preference/PreferencesUtils;->subZone:Lcom/cymobile/ymwork/types/Group;

    .line 166
    return-void
.end method

.method private static final ensureReadDate(Landroid/content/SharedPreferences;)V
    .locals 8
    .parameter "prefs"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 227
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 228
    .local v3, now:Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd"

    invoke-direct {v1, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 229
    .local v1, dateFmt:Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, cdate:Ljava/lang/String;
    const-string v5, "pref_readDate"

    invoke-interface {p0, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 231
    .local v4, storedDate:Ljava/lang/String;
    if-nez v4, :cond_1

    .line 232
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 233
    .local v2, edit:Landroid/content/SharedPreferences$Editor;
    const-string v5, "pref_readDate"

    invoke-interface {v2, v5, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 234
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 277
    .end local v2           #edit:Landroid/content/SharedPreferences$Editor;
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 237
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 238
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 239
    .restart local v2       #edit:Landroid/content/SharedPreferences$Editor;
    const-string v5, "pref_readDate"

    invoke-interface {v2, v5, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 240
    const-string v5, "pref_readClassIds1"

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 241
    const-string v5, "pref_readClassIds2"

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 242
    const-string v5, "pref_readClassIds3"

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 243
    const-string v5, "pref_readClassIds4"

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 244
    const-string v5, "pref_readClassIds5"

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 245
    const-string v5, "pref_readClassIds6"

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 246
    const-string v5, "pref_readClassIds7"

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 247
    const-string v5, "pref_readClassIds8"

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 248
    const-string v5, "pref_readClassIds8"

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 249
    const-string v5, "pref_readClassIds9"

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 250
    const-string v5, "pref_readClassIds10"

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 251
    const-string v5, "pref_readClassIds11"

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 252
    const-string v5, "pref_readClassIds12"

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 253
    const-string v5, "pref_readClassIds13"

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 254
    const-string v5, "pref_readClassIds14"

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 255
    const-string v5, "pref_readClassIds15"

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 256
    const-string v5, "pref_readClassIds16"

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 257
    const-string v5, "pref_readClassIds17"

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 258
    const-string v5, "pref_readNumClass1"

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 259
    const-string v5, "pref_readNumClass2"

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 260
    const-string v5, "pref_readNumClass3"

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 261
    const-string v5, "pref_readNumClass4"

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 262
    const-string v5, "pref_readNumClass5"

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 263
    const-string v5, "pref_readNumClass6"

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 264
    const-string v5, "pref_readNumClass7"

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 265
    const-string v5, "pref_readNumClass8"

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 266
    const-string v5, "pref_readNumClass9"

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 267
    const-string v5, "pref_readNumClass10"

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 268
    const-string v5, "pref_readNumClass11"

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 269
    const-string v5, "pref_readNumClass12"

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 270
    const-string v5, "pref_readNumClass13"

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 271
    const-string v5, "pref_readNumClass14"

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 272
    const-string v5, "pref_readNumClass15"

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 273
    const-string v5, "pref_readNumClass16"

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 274
    const-string v5, "pref_readNumClass17"

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 275
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0
.end method

.method public static final getReadNumber(Landroid/content/SharedPreferences;I)I
    .locals 4
    .parameter "prefs"
    .parameter "classid"

    .prologue
    const/4 v1, 0x0

    .line 185
    const-string v2, "pref_readDate"

    const/4 v3, 0x0

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, readDate:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 224
    :cond_0
    :goto_0
    return v1

    .line 189
    :cond_1
    if-nez p1, :cond_2

    .line 190
    const-string v2, "pref_readNumClass1"

    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    .line 191
    :cond_2
    const/4 v2, 0x1

    if-ne p1, v2, :cond_3

    .line 192
    const-string v2, "pref_readNumClass2"

    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    .line 193
    :cond_3
    const/4 v2, 0x2

    if-ne p1, v2, :cond_4

    .line 194
    const-string v2, "pref_readNumClass3"

    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    .line 195
    :cond_4
    const/4 v2, 0x3

    if-ne p1, v2, :cond_5

    .line 196
    const-string v2, "pref_readNumClass4"

    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    .line 197
    :cond_5
    const/4 v2, 0x4

    if-ne p1, v2, :cond_6

    .line 198
    const-string v2, "pref_readNumClass5"

    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    .line 199
    :cond_6
    const/4 v2, 0x5

    if-ne p1, v2, :cond_7

    .line 200
    const-string v2, "pref_readNumClass6"

    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    .line 201
    :cond_7
    const/4 v2, 0x6

    if-ne p1, v2, :cond_8

    .line 202
    const-string v2, "pref_readNumClass7"

    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    .line 203
    :cond_8
    const/4 v2, 0x7

    if-ne p1, v2, :cond_9

    .line 204
    const-string v2, "pref_readNumClass8"

    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    .line 205
    :cond_9
    const/16 v2, 0x8

    if-ne p1, v2, :cond_a

    .line 206
    const-string v2, "pref_readNumClass9"

    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    .line 207
    :cond_a
    const/16 v2, 0x9

    if-ne p1, v2, :cond_b

    .line 208
    const-string v2, "pref_readNumClass10"

    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    .line 209
    :cond_b
    const/16 v2, 0xa

    if-ne p1, v2, :cond_c

    .line 210
    const-string v2, "pref_readNumClass11"

    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    .line 211
    :cond_c
    const/16 v2, 0xb

    if-ne p1, v2, :cond_d

    .line 212
    const-string v2, "pref_readNumClass12"

    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    .line 213
    :cond_d
    const/16 v2, 0xc

    if-ne p1, v2, :cond_e

    .line 214
    const-string v2, "pref_readNumClass13"

    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto/16 :goto_0

    .line 215
    :cond_e
    const/16 v2, 0xd

    if-ne p1, v2, :cond_f

    .line 216
    const-string v2, "pref_readNumClass14"

    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto/16 :goto_0

    .line 217
    :cond_f
    const/16 v2, 0xe

    if-ne p1, v2, :cond_10

    .line 218
    const-string v2, "pref_readNumClass15"

    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto/16 :goto_0

    .line 219
    :cond_10
    const/16 v2, 0xf

    if-ne p1, v2, :cond_11

    .line 220
    const-string v2, "pref_readNumClass16"

    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto/16 :goto_0

    .line 221
    :cond_11
    const/16 v2, 0x10

    if-ne p1, v2, :cond_0

    .line 222
    const-string v2, "pref_readNumClass17"

    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto/16 :goto_0
.end method

.method public static getStreetZone()Lcom/cymobile/ymwork/types/Group;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cymobile/ymwork/types/Group",
            "<",
            "Lcom/cymobile/ymwork/types/Zone;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    sget-object v0, Lcom/cymobile/ymwork/preference/PreferencesUtils;->streetZone:Lcom/cymobile/ymwork/types/Group;

    return-object v0
.end method

.method public static getSubClasses()Lcom/cymobile/ymwork/types/Group;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cymobile/ymwork/types/Group",
            "<",
            "Lcom/cymobile/ymwork/types/Classes;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    sget-object v0, Lcom/cymobile/ymwork/preference/PreferencesUtils;->subClasses:Lcom/cymobile/ymwork/types/Group;

    return-object v0
.end method

.method public static getSubZone()Lcom/cymobile/ymwork/types/Group;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cymobile/ymwork/types/Group",
            "<",
            "Lcom/cymobile/ymwork/types/Zone;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    sget-object v0, Lcom/cymobile/ymwork/preference/PreferencesUtils;->subZone:Lcom/cymobile/ymwork/types/Group;

    return-object v0
.end method

.method public static getUseNativeImageViewerForFullScreenImages(Landroid/content/SharedPreferences;)Z
    .locals 2
    .parameter "prefs"

    .prologue
    .line 53
    const-string v0, "native_full_size_image_viewer"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getUserId(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 2
    .parameter "prefs"

    .prologue
    .line 35
    const-string v0, "key_GlobalUserID"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserName(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 2
    .parameter "prefs"

    .prologue
    .line 39
    const-string v0, "key_GlobalUserName"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isRead(Landroid/content/SharedPreferences;ILjava/lang/String;J)Z
    .locals 5
    .parameter "prefs"
    .parameter "classid"
    .parameter "caseId"
    .parameter "reportTime"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 279
    invoke-static {p0}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->ensureReadDate(Landroid/content/SharedPreferences;)V

    .line 280
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, p3, p4}, Ljava/util/Date;-><init>(J)V

    invoke-static {v3}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->isToday(Ljava/util/Date;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 324
    :cond_0
    :goto_0
    return v1

    .line 283
    :cond_1
    const-string v3, "pref_readClassIds1"

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, readIds:Ljava/lang/String;
    if-ne p1, v1, :cond_3

    .line 285
    const-string v3, "pref_readClassIds2"

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 317
    :cond_2
    :goto_1
    if-nez v0, :cond_12

    move v1, v2

    .line 318
    goto :goto_0

    .line 286
    :cond_3
    const/4 v3, 0x2

    if-ne p1, v3, :cond_4

    .line 287
    const-string v3, "pref_readClassIds3"

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 288
    :cond_4
    const/4 v3, 0x3

    if-ne p1, v3, :cond_5

    .line 289
    const-string v3, "pref_readClassIds4"

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 290
    :cond_5
    const/4 v3, 0x4

    if-ne p1, v3, :cond_6

    .line 291
    const-string v3, "pref_readClassIds5"

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 292
    :cond_6
    const/4 v3, 0x5

    if-ne p1, v3, :cond_7

    .line 293
    const-string v3, "pref_readClassIds6"

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 294
    :cond_7
    const/4 v3, 0x6

    if-ne p1, v3, :cond_8

    .line 295
    const-string v3, "pref_readClassIds7"

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 296
    :cond_8
    const/4 v3, 0x7

    if-ne p1, v3, :cond_9

    .line 297
    const-string v3, "pref_readClassIds8"

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 298
    :cond_9
    const/16 v3, 0x8

    if-ne p1, v3, :cond_a

    .line 299
    const-string v3, "pref_readClassIds9"

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 300
    :cond_a
    const/16 v3, 0x9

    if-ne p1, v3, :cond_b

    .line 301
    const-string v3, "pref_readClassIds10"

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 302
    :cond_b
    const/16 v3, 0xa

    if-ne p1, v3, :cond_c

    .line 303
    const-string v3, "pref_readClassIds11"

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 304
    :cond_c
    const/16 v3, 0xb

    if-ne p1, v3, :cond_d

    .line 305
    const-string v3, "pref_readClassIds12"

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 306
    :cond_d
    const/16 v3, 0xc

    if-ne p1, v3, :cond_e

    .line 307
    const-string v3, "pref_readClassIds13"

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 308
    :cond_e
    const/16 v3, 0xd

    if-ne p1, v3, :cond_f

    .line 309
    const-string v3, "pref_readClassIds14"

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 310
    :cond_f
    const/16 v3, 0xe

    if-ne p1, v3, :cond_10

    .line 311
    const-string v3, "pref_readClassIds15"

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 312
    :cond_10
    const/16 v3, 0xf

    if-ne p1, v3, :cond_11

    .line 313
    const-string v3, "pref_readClassIds16"

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 314
    :cond_11
    const/16 v3, 0x10

    if-ne p1, v3, :cond_2

    .line 315
    const-string v3, "pref_readClassIds17"

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 320
    :cond_12
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_0

    move v1, v2

    .line 324
    goto/16 :goto_0
.end method

.method public static isToday(Ljava/util/Date;)Z
    .locals 3
    .parameter "day"

    .prologue
    .line 448
    if-nez p0, :cond_0

    .line 449
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The dates must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 451
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 452
    .local v0, now:Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v1

    invoke-virtual {p0}, Ljava/util/Date;->getYear()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 453
    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v1

    invoke-virtual {p0}, Ljava/util/Date;->getMonth()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 454
    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result v1

    invoke-virtual {p0}, Ljava/util/Date;->getDate()I

    move-result v2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    .line 452
    goto :goto_0
.end method

.method public static loginUser(Landroid/content/Context;Lcom/cymobile/ymwork/server/Server;Ljava/lang/String;Ljava/lang/String;Lcom/cymobile/ymwork/server/Server$Location;Landroid/content/SharedPreferences$Editor;)Z
    .locals 4
    .parameter "contexts"
    .parameter "server"
    .parameter "moe"
    .parameter "password"
    .parameter "location"
    .parameter "editor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cymobile/ymwork/server/error/ServerCredentialsException;,
            Lcom/cymobile/ymwork/server/error/ServerParseException;,
            Lcom/cymobile/ymwork/server/error/ServerException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-virtual {p1, p0, p2, p3, p4}, Lcom/cymobile/ymwork/server/Server;->loginUser(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/cymobile/ymwork/server/Server$Location;)Lcom/cymobile/ymwork/types/User;

    move-result-object v0

    .line 57
    .local v0, user:Lcom/cymobile/ymwork/types/User;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cymobile/ymwork/types/User;->getMobile()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 58
    const-string v1, "key_GlobalUserID"

    invoke-virtual {v0}, Lcom/cymobile/ymwork/types/User;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p5, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 59
    const-string v1, "key_newGlobalUserPhone"

    invoke-interface {p5, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 60
    const-string v1, "key_GlobalUserPasswd"

    invoke-interface {p5, v1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 61
    const-string v1, "key_GlobalZoneId"

    invoke-virtual {v0}, Lcom/cymobile/ymwork/types/User;->getZoneid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p5, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 62
    const-string v1, "key_GlobalZoneName"

    invoke-virtual {v0}, Lcom/cymobile/ymwork/types/User;->getZoneName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p5, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 63
    invoke-virtual {v0}, Lcom/cymobile/ymwork/types/User;->getZoneid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/cymobile/ymwork/types/User;->getZoneName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/cymobile/ymwork/adapter/FilterDataSource;->resetTOPCategory(JLjava/lang/String;)V

    .line 64
    const-string v1, "Pref_key_GlobalIsAdmin"

    invoke-virtual {v0}, Lcom/cymobile/ymwork/types/User;->isAdmin()Z

    move-result v2

    invoke-interface {p5, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 65
    invoke-interface {p5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 66
    const/4 v1, 0x1

    .line 68
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final logoutUser(Lcom/cymobile/ymwork/server/Server;Landroid/content/SharedPreferences$Editor;)Z
    .locals 1
    .parameter "server"
    .parameter "editor"

    .prologue
    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method public static register(Landroid/content/Context;Lcom/cymobile/ymwork/server/Server;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cymobile/ymwork/server/Server$Location;Landroid/content/SharedPreferences$Editor;)Z
    .locals 12
    .parameter "contexts"
    .parameter "server"
    .parameter "phoneNumber"
    .parameter "userName"
    .parameter "workcompany"
    .parameter "post"
    .parameter "zoneid"
    .parameter "zonename"
    .parameter "location"
    .parameter "editor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cymobile/ymwork/server/error/ServerCredentialsException;,
            Lcom/cymobile/ymwork/server/error/ServerParseException;,
            Lcom/cymobile/ymwork/server/error/ServerException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    move-object v2, p1

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-virtual/range {v2 .. v10}, Lcom/cymobile/ymwork/server/Server;->register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cymobile/ymwork/server/Server$Location;)Lcom/cymobile/ymwork/types/User;

    move-result-object v11

    .line 88
    .local v11, user:Lcom/cymobile/ymwork/types/User;
    if-eqz v11, :cond_0

    .line 89
    const-string v2, "key_GlobalUserID"

    invoke-virtual {v11}, Lcom/cymobile/ymwork/types/User;->getId()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p9

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 90
    const-string v2, "key_newGlobalUserPhone"

    move-object/from16 v0, p9

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 91
    const-string v2, "key_GlobalUserName"

    move-object/from16 v0, p9

    invoke-interface {v0, v2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 92
    const-string v2, "key_GlobalWorkCompany"

    move-object/from16 v0, p9

    move-object/from16 v1, p4

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 93
    const-string v2, "key_GlobalPost"

    move-object/from16 v0, p9

    move-object/from16 v1, p5

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 94
    const-string v2, "key_GlobalZoneId"

    invoke-virtual {v11}, Lcom/cymobile/ymwork/types/User;->getZoneid()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p9

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 95
    const-string v2, "key_GlobalZoneName"

    invoke-virtual {v11}, Lcom/cymobile/ymwork/types/User;->getZoneName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p9

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 96
    invoke-interface/range {p9 .. p9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 97
    const/4 v2, 0x1

    .line 99
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static registerUser(Landroid/content/Context;Lcom/cymobile/ymwork/server/Server;Ljava/lang/String;Ljava/lang/String;Lcom/cymobile/ymwork/server/Server$Location;Landroid/content/SharedPreferences$Editor;)Z
    .locals 4
    .parameter "contexts"
    .parameter "server"
    .parameter "moe"
    .parameter "password"
    .parameter "location"
    .parameter "editor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cymobile/ymwork/server/error/ServerCredentialsException;,
            Lcom/cymobile/ymwork/server/error/ServerParseException;,
            Lcom/cymobile/ymwork/server/error/ServerException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-virtual {p1, p0, p2, p3, p4}, Lcom/cymobile/ymwork/server/Server;->loginUser(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/cymobile/ymwork/server/Server$Location;)Lcom/cymobile/ymwork/types/User;

    move-result-object v0

    .line 73
    .local v0, user:Lcom/cymobile/ymwork/types/User;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cymobile/ymwork/types/User;->getMobile()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 74
    const-string v1, "key_GlobalUserID"

    invoke-virtual {v0}, Lcom/cymobile/ymwork/types/User;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p5, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 75
    const-string v1, "key_newGlobalUserPhone"

    invoke-interface {p5, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 76
    const-string v1, "key_GlobalUserPasswd"

    invoke-interface {p5, v1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 77
    const-string v1, "key_GlobalZoneId"

    invoke-virtual {v0}, Lcom/cymobile/ymwork/types/User;->getZoneid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p5, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 78
    const-string v1, "key_GlobalZoneName"

    invoke-virtual {v0}, Lcom/cymobile/ymwork/types/User;->getZoneName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p5, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 79
    invoke-virtual {v0}, Lcom/cymobile/ymwork/types/User;->getZoneid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/cymobile/ymwork/types/User;->getZoneName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/cymobile/ymwork/adapter/FilterDataSource;->resetTOPCategory(JLjava/lang/String;)V

    .line 80
    const-string v1, "Pref_key_GlobalIsAdmin"

    invoke-virtual {v0}, Lcom/cymobile/ymwork/types/User;->isAdmin()Z

    move-result v2

    invoke-interface {p5, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 81
    invoke-interface {p5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 82
    const/4 v1, 0x1

    .line 84
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final setRead(Landroid/content/SharedPreferences;ILjava/lang/String;ZJ)V
    .locals 9
    .parameter "prefs"
    .parameter "classid"
    .parameter "caseId"
    .parameter "today"
    .parameter "reportTime"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 327
    invoke-static {p0, p1, p2, p4, p5}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->isRead(Landroid/content/SharedPreferences;ILjava/lang/String;J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 445
    :goto_0
    return-void

    .line 330
    :cond_0
    const-string v3, "pref_readClassIds1"

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 331
    .local v1, readIds:Ljava/lang/String;
    if-ne p1, v7, :cond_3

    .line 332
    const-string v3, "pref_readClassIds2"

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 364
    :cond_1
    :goto_1
    if-nez v1, :cond_12

    .line 365
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 369
    :goto_2
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 370
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    if-nez p1, :cond_13

    .line 371
    const-string v3, "pref_readClassIds1"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 372
    const-string v3, "pref_readNumClass1"

    invoke-interface {p0, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 373
    .local v2, readNumber:I
    const-string v3, "pref_readNumClass1"

    add-int/lit8 v4, v2, 0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 443
    .end local v2           #readNumber:I
    :cond_2
    :goto_3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 333
    .end local v0           #edit:Landroid/content/SharedPreferences$Editor;
    :cond_3
    if-ne p1, v6, :cond_4

    .line 334
    const-string v3, "pref_readClassIds3"

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 335
    :cond_4
    if-ne p1, v8, :cond_5

    .line 336
    const-string v3, "pref_readClassIds4"

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 337
    :cond_5
    const/4 v3, 0x4

    if-ne p1, v3, :cond_6

    .line 338
    const-string v3, "pref_readClassIds5"

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 339
    :cond_6
    const/4 v3, 0x5

    if-ne p1, v3, :cond_7

    .line 340
    const-string v3, "pref_readClassIds6"

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 341
    :cond_7
    const/4 v3, 0x6

    if-ne p1, v3, :cond_8

    .line 342
    const-string v3, "pref_readClassIds7"

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 343
    :cond_8
    const/4 v3, 0x7

    if-ne p1, v3, :cond_9

    .line 344
    const-string v3, "pref_readClassIds8"

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 345
    :cond_9
    const/16 v3, 0x8

    if-ne p1, v3, :cond_a

    .line 346
    const-string v3, "pref_readClassIds9"

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 347
    :cond_a
    const/16 v3, 0x9

    if-ne p1, v3, :cond_b

    .line 348
    const-string v3, "pref_readClassIds10"

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 349
    :cond_b
    const/16 v3, 0xa

    if-ne p1, v3, :cond_c

    .line 350
    const-string v3, "pref_readClassIds11"

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 351
    :cond_c
    const/16 v3, 0xb

    if-ne p1, v3, :cond_d

    .line 352
    const-string v3, "pref_readClassIds12"

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 353
    :cond_d
    const/16 v3, 0xc

    if-ne p1, v3, :cond_e

    .line 354
    const-string v3, "pref_readClassIds13"

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 355
    :cond_e
    const/16 v3, 0xd

    if-ne p1, v3, :cond_f

    .line 356
    const-string v3, "pref_readClassIds14"

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 357
    :cond_f
    const/16 v3, 0xe

    if-ne p1, v3, :cond_10

    .line 358
    const-string v3, "pref_readClassIds15"

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 359
    :cond_10
    const/16 v3, 0xf

    if-ne p1, v3, :cond_11

    .line 360
    const-string v3, "pref_readClassIds16"

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 361
    :cond_11
    const/16 v3, 0x10

    if-ne p1, v3, :cond_1

    .line 362
    const-string v3, "pref_readClassIds17"

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 367
    :cond_12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 374
    .restart local v0       #edit:Landroid/content/SharedPreferences$Editor;
    :cond_13
    if-ne p1, v7, :cond_14

    .line 375
    const-string v3, "pref_readClassIds2"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 376
    const-string v3, "pref_readNumClass2"

    invoke-interface {p0, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 377
    .restart local v2       #readNumber:I
    const-string v3, "pref_readNumClass2"

    add-int/lit8 v4, v2, 0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_3

    .line 378
    .end local v2           #readNumber:I
    :cond_14
    if-ne p1, v6, :cond_15

    .line 379
    const-string v3, "pref_readClassIds3"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 380
    const-string v3, "pref_readNumClass3"

    invoke-interface {p0, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 381
    .restart local v2       #readNumber:I
    const-string v3, "pref_readNumClass3"

    add-int/lit8 v4, v2, 0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_3

    .line 382
    .end local v2           #readNumber:I
    :cond_15
    if-ne p1, v6, :cond_16

    .line 383
    const-string v3, "pref_readClassIds3"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 384
    const-string v3, "pref_readNumClass3"

    invoke-interface {p0, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 385
    .restart local v2       #readNumber:I
    const-string v3, "pref_readNumClass3"

    add-int/lit8 v4, v2, 0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_3

    .line 386
    .end local v2           #readNumber:I
    :cond_16
    if-ne p1, v8, :cond_17

    .line 387
    const-string v3, "pref_readClassIds4"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 388
    const-string v3, "pref_readNumClass4"

    invoke-interface {p0, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 389
    .restart local v2       #readNumber:I
    const-string v3, "pref_readNumClass4"

    add-int/lit8 v4, v2, 0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_3

    .line 390
    .end local v2           #readNumber:I
    :cond_17
    const/4 v3, 0x4

    if-ne p1, v3, :cond_18

    .line 391
    const-string v3, "pref_readClassIds5"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 392
    const-string v3, "pref_readNumClass5"

    invoke-interface {p0, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 393
    .restart local v2       #readNumber:I
    const-string v3, "pref_readNumClass5"

    add-int/lit8 v4, v2, 0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_3

    .line 394
    .end local v2           #readNumber:I
    :cond_18
    const/4 v3, 0x5

    if-ne p1, v3, :cond_19

    .line 395
    const-string v3, "pref_readClassIds6"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 396
    const-string v3, "pref_readNumClass6"

    invoke-interface {p0, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 397
    .restart local v2       #readNumber:I
    const-string v3, "pref_readNumClass6"

    add-int/lit8 v4, v2, 0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_3

    .line 398
    .end local v2           #readNumber:I
    :cond_19
    const/4 v3, 0x6

    if-ne p1, v3, :cond_1a

    .line 399
    const-string v3, "pref_readClassIds7"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 400
    const-string v3, "pref_readNumClass7"

    invoke-interface {p0, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 401
    .restart local v2       #readNumber:I
    const-string v3, "pref_readNumClass7"

    add-int/lit8 v4, v2, 0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_3

    .line 402
    .end local v2           #readNumber:I
    :cond_1a
    const/4 v3, 0x7

    if-ne p1, v3, :cond_1b

    .line 403
    const-string v3, "pref_readClassIds8"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 404
    const-string v3, "pref_readNumClass8"

    invoke-interface {p0, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 405
    .restart local v2       #readNumber:I
    const-string v3, "pref_readNumClass8"

    add-int/lit8 v4, v2, 0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_3

    .line 406
    .end local v2           #readNumber:I
    :cond_1b
    const/16 v3, 0x8

    if-ne p1, v3, :cond_1c

    .line 407
    const-string v3, "pref_readClassIds9"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 408
    const-string v3, "pref_readNumClass9"

    invoke-interface {p0, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 409
    .restart local v2       #readNumber:I
    const-string v3, "pref_readNumClass9"

    add-int/lit8 v4, v2, 0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_3

    .line 410
    .end local v2           #readNumber:I
    :cond_1c
    const/16 v3, 0x9

    if-ne p1, v3, :cond_1d

    .line 411
    const-string v3, "pref_readClassIds10"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 412
    const-string v3, "pref_readNumClass10"

    invoke-interface {p0, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 413
    .restart local v2       #readNumber:I
    const-string v3, "pref_readNumClass10"

    add-int/lit8 v4, v2, 0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_3

    .line 414
    .end local v2           #readNumber:I
    :cond_1d
    const/16 v3, 0xa

    if-ne p1, v3, :cond_1e

    .line 415
    const-string v3, "pref_readClassIds11"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 416
    const-string v3, "pref_readNumClass11"

    invoke-interface {p0, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 417
    .restart local v2       #readNumber:I
    const-string v3, "pref_readNumClass11"

    add-int/lit8 v4, v2, 0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_3

    .line 418
    .end local v2           #readNumber:I
    :cond_1e
    const/16 v3, 0xb

    if-ne p1, v3, :cond_1f

    .line 419
    const-string v3, "pref_readClassIds12"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 420
    const-string v3, "pref_readNumClass12"

    invoke-interface {p0, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 421
    .restart local v2       #readNumber:I
    const-string v3, "pref_readNumClass12"

    add-int/lit8 v4, v2, 0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_3

    .line 422
    .end local v2           #readNumber:I
    :cond_1f
    const/16 v3, 0xc

    if-ne p1, v3, :cond_20

    .line 423
    const-string v3, "pref_readClassIds13"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 424
    const-string v3, "pref_readNumClass13"

    invoke-interface {p0, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 425
    .restart local v2       #readNumber:I
    const-string v3, "pref_readNumClass13"

    add-int/lit8 v4, v2, 0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_3

    .line 426
    .end local v2           #readNumber:I
    :cond_20
    const/16 v3, 0xd

    if-ne p1, v3, :cond_21

    .line 427
    const-string v3, "pref_readClassIds14"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 428
    const-string v3, "pref_readNumClass14"

    invoke-interface {p0, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 429
    .restart local v2       #readNumber:I
    const-string v3, "pref_readNumClass14"

    add-int/lit8 v4, v2, 0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_3

    .line 430
    .end local v2           #readNumber:I
    :cond_21
    const/16 v3, 0xe

    if-ne p1, v3, :cond_22

    .line 431
    const-string v3, "pref_readClassIds15"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 432
    const-string v3, "pref_readNumClass15"

    invoke-interface {p0, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 433
    .restart local v2       #readNumber:I
    const-string v3, "pref_readNumClass15"

    add-int/lit8 v4, v2, 0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_3

    .line 434
    .end local v2           #readNumber:I
    :cond_22
    const/16 v3, 0xf

    if-ne p1, v3, :cond_23

    .line 435
    const-string v3, "pref_readClassIds16"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 436
    const-string v3, "pref_readNumClass16"

    invoke-interface {p0, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 437
    .restart local v2       #readNumber:I
    const-string v3, "pref_readNumClass16"

    add-int/lit8 v4, v2, 0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_3

    .line 438
    .end local v2           #readNumber:I
    :cond_23
    const/16 v3, 0x10

    if-ne p1, v3, :cond_2

    .line 439
    const-string v3, "pref_readClassIds17"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 440
    const-string v3, "pref_readNumClass17"

    invoke-interface {p0, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 441
    .restart local v2       #readNumber:I
    const-string v3, "pref_readNumClass17"

    add-int/lit8 v4, v2, 0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_3
.end method

.method public static setStreetZone(Lcom/cymobile/ymwork/types/Group;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cymobile/ymwork/types/Group",
            "<",
            "Lcom/cymobile/ymwork/types/Zone;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p0, subzoneStr:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/Zone;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 174
    sput-object p0, Lcom/cymobile/ymwork/preference/PreferencesUtils;->streetZone:Lcom/cymobile/ymwork/types/Group;

    .line 176
    :cond_0
    return-void
.end method

.method public static setSubClasses(Lcom/cymobile/ymwork/types/Group;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cymobile/ymwork/types/Group",
            "<",
            "Lcom/cymobile/ymwork/types/Classes;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 145
    .local p0, subClassesStr:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/Classes;>;"
    sget-object v0, Lcom/cymobile/ymwork/preference/PreferencesUtils;->subClasses:Lcom/cymobile/ymwork/types/Group;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/cymobile/ymwork/preference/PreferencesUtils;->subClasses:Lcom/cymobile/ymwork/types/Group;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 146
    sput-object p0, Lcom/cymobile/ymwork/preference/PreferencesUtils;->subClasses:Lcom/cymobile/ymwork/types/Group;

    .line 148
    :cond_0
    return-void
.end method

.method public static setSubZone(Lcom/cymobile/ymwork/types/Group;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cymobile/ymwork/types/Group",
            "<",
            "Lcom/cymobile/ymwork/types/Zone;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 160
    .local p0, subzoneStr:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/Zone;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 161
    sput-object p0, Lcom/cymobile/ymwork/preference/PreferencesUtils;->subZone:Lcom/cymobile/ymwork/types/Group;

    .line 163
    :cond_0
    return-void
.end method

.method public static setupDefaults(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)V
    .locals 0
    .parameter "preferences"
    .parameter "resources"

    .prologue
    .line 32
    return-void
.end method

.method public static storeUser(Landroid/content/SharedPreferences$Editor;Lcom/cymobile/ymwork/types/User;)V
    .locals 2
    .parameter "editor"
    .parameter "user"

    .prologue
    .line 42
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/cymobile/ymwork/types/User;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    const-string v0, "key_GlobalUserID"

    invoke-virtual {p1}, Lcom/cymobile/ymwork/types/User;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 44
    const-string v0, "key_GlobalUserName"

    invoke-virtual {p1}, Lcom/cymobile/ymwork/types/User;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 46
    const-string v0, "gender"

    invoke-virtual {p1}, Lcom/cymobile/ymwork/types/User;->getGender()Z

    move-result v1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 47
    const-string v0, "Preferences"

    const-string v1, "Setting user info"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :goto_0
    return-void

    .line 49
    :cond_0
    const-string v0, "Preferences"

    const-string v1, "Unable to lookup user."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
