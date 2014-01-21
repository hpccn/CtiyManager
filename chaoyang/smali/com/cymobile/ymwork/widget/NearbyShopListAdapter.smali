.class public Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;
.super Lcom/cymobile/ymwork/widget/BaseNearbyShopsAdapter;
.source "NearbyShopListAdapter.java"

# interfaces
.implements Lcom/cymobile/ymwork/widget/ObservableAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cymobile/ymwork/widget/NearbyShopListAdapter$RemoteResourceManagerObserver;,
        Lcom/cymobile/ymwork/widget/NearbyShopListAdapter$ShopCoverFetcher;,
        Lcom/cymobile/ymwork/widget/NearbyShopListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field ImageFetchFailRecord:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private inTempStorage:I

.field private mCachedTimestamps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsSdk3:Z

.field mPrefs:Landroid/content/SharedPreferences;

.field private mResourcesObserver:Lcom/cymobile/ymwork/widget/NearbyShopListAdapter$RemoteResourceManagerObserver;

.field private mRrm:Lcom/cymobile/ymwork/server/RemoteResourceManager;

.field private mUpdatePhotos:Ljava/lang/Runnable;

.field private sampleRate:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/cymobile/ymwork/server/RemoteResourceManager;)V
    .locals 3
    .parameter "context"
    .parameter "rrm"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/cymobile/ymwork/widget/BaseNearbyShopsAdapter;-><init>(Landroid/content/Context;)V

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;->mHandler:Landroid/os/Handler;

    .line 64
    const/4 v0, 0x4

    iput v0, p0, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;->sampleRate:I

    .line 65
    const/16 v0, 0x4000

    iput v0, p0, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;->inTempStorage:I

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;->ImageFetchFailRecord:Ljava/util/HashMap;

    .line 295
    new-instance v0, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter$1;

    invoke-direct {v0, p0}, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter$1;-><init>(Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;->mUpdatePhotos:Ljava/lang/Runnable;

    .line 48
    iput-object p1, p0, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;->mContext:Landroid/content/Context;

    .line 49
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 50
    iput-object p2, p0, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;->mRrm:Lcom/cymobile/ymwork/server/RemoteResourceManager;

    .line 51
    new-instance v0, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter$RemoteResourceManagerObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter$RemoteResourceManagerObserver;-><init>(Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;Lcom/cymobile/ymwork/widget/NearbyShopListAdapter$RemoteResourceManagerObserver;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;->mResourcesObserver:Lcom/cymobile/ymwork/widget/NearbyShopListAdapter$RemoteResourceManagerObserver;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;->mCachedTimestamps:Ljava/util/HashMap;

    .line 54
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;->mRrm:Lcom/cymobile/ymwork/server/RemoteResourceManager;

    iget-object v1, p0, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;->mResourcesObserver:Lcom/cymobile/ymwork/widget/NearbyShopListAdapter$RemoteResourceManagerObserver;

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/server/RemoteResourceManager;->addObserver(Ljava/util/Observer;)V

    .line 55
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;->mContext:Landroid/content/Context;

    const-class v1, Lcom/cymobile/ymwork/SettingBase;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 56
    const/4 v2, 0x2

    .line 55
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;->mPrefs:Landroid/content/SharedPreferences;

    .line 57
    invoke-static {}, Lcom/cymobile/ymwork/utils/UiUtil;->sdkVersion()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;->mIsSdk3:Z

    .line 58
    return-void

    .line 57
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;)I
    .locals 1
    .parameter

    .prologue
    .line 65
    iget v0, p0, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;->inTempStorage:I

    return v0
.end method

.method static synthetic access$1(Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;)I
    .locals 1
    .parameter

    .prologue
    .line 64
    iget v0, p0, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;->sampleRate:I

    return v0
.end method

.method static synthetic access$2(Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;)Lcom/cymobile/ymwork/server/RemoteResourceManager;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;->mRrm:Lcom/cymobile/ymwork/server/RemoteResourceManager;

    return-object v0
.end method

.method static synthetic access$3(Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4(Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 295
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;->mUpdatePhotos:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 18
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 76
    if-nez p2, :cond_5

    .line 77
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v14, 0x7f03001a

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 81
    new-instance v8, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter$ViewHolder;

    const/4 v13, 0x0

    invoke-direct {v8, v13}, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter$ViewHolder;-><init>(Lcom/cymobile/ymwork/widget/NearbyShopListAdapter$ViewHolder;)V

    .line 82
    .local v8, holder:Lcom/cymobile/ymwork/widget/NearbyShopListAdapter$ViewHolder;
    const v13, 0x7f08005c

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    iput-object v13, v8, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter$ViewHolder;->photo:Landroid/widget/ImageView;

    .line 83
    const v13, 0x7f080056

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iput-object v13, v8, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter$ViewHolder;->firstLine:Landroid/widget/TextView;

    .line 84
    const v13, 0x7f080057

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iput-object v13, v8, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter$ViewHolder;->secondLine:Landroid/widget/TextView;

    .line 85
    const v13, 0x7f08005e

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iput-object v13, v8, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter$ViewHolder;->secondLine22:Landroid/widget/TextView;

    .line 87
    const v13, 0x7f080059

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iput-object v13, v8, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter$ViewHolder;->thirdLine2:Landroid/widget/TextView;

    .line 88
    const v13, 0x7f08005a

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iput-object v13, v8, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter$ViewHolder;->thirdLine21:Landroid/widget/TextView;

    .line 94
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 101
    :goto_0
    invoke-virtual/range {p0 .. p1}, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/cymobile/ymwork/types/Building;

    .line 106
    .local v11, shop:Lcom/cymobile/ymwork/types/Building;
    invoke-virtual {v11}, Lcom/cymobile/ymwork/types/Building;->getImgUrl()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_0

    invoke-virtual {v11}, Lcom/cymobile/ymwork/types/Building;->getImgUrl1()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_2

    .line 108
    :cond_0
    const/4 v12, 0x0

    .line 109
    .local v12, uri:Landroid/net/Uri;
    :try_start_0
    invoke-virtual {v11}, Lcom/cymobile/ymwork/types/Building;->getImgUrl()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_6

    .line 110
    invoke-virtual {v11}, Lcom/cymobile/ymwork/types/Building;->getImgUrl()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v12

    .line 119
    :cond_1
    :goto_1
    :try_start_1
    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 120
    .local v10, option:Landroid/graphics/BitmapFactory$Options;
    move-object/from16 v0, p0

    iget v13, v0, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;->inTempStorage:I

    new-array v13, v13, [B

    iput-object v13, v10, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 121
    sget-object v13, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v13, v10, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 122
    move-object/from16 v0, p0

    iget v13, v0, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;->sampleRate:I

    iput v13, v10, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 123
    const/4 v13, 0x1

    iput-boolean v13, v10, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 124
    const/4 v13, 0x1

    iput-boolean v13, v10, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 125
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;->mRrm:Lcom/cymobile/ymwork/server/RemoteResourceManager;

    invoke-virtual {v13, v12}, Lcom/cymobile/ymwork/server/RemoteResourceManager;->getInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v13, v14, v10}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 126
    .local v2, bitmap:Landroid/graphics/Bitmap;
    if-nez v2, :cond_7

    .line 127
    new-instance v13, Ljava/lang/Exception;

    const-string v14, "null"

    invoke-direct {v13, v14}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 137
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .end local v10           #option:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v6

    .line 140
    .local v6, e:Ljava/lang/Exception;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;->ImageFetchFailRecord:Ljava/util/HashMap;

    invoke-virtual {v11}, Lcom/cymobile/ymwork/types/Building;->getImgUrl()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_8

    .line 141
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;->ImageFetchFailRecord:Ljava/util/HashMap;

    invoke-virtual {v11}, Lcom/cymobile/ymwork/types/Building;->getImgUrl()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;->ImageFetchFailRecord:Ljava/util/HashMap;

    invoke-virtual {v11}, Lcom/cymobile/ymwork/types/Building;->getImgUrl()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/4 v14, 0x4

    if-ge v13, v14, :cond_2

    .line 146
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;->mRrm:Lcom/cymobile/ymwork/server/RemoteResourceManager;

    new-instance v14, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter$ShopCoverFetcher;

    iget-object v15, v8, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter$ViewHolder;->photo:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v12, v15}, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter$ShopCoverFetcher;-><init>(Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;Landroid/net/Uri;Landroid/widget/ImageView;)V

    invoke-virtual {v13, v14}, Lcom/cymobile/ymwork/server/RemoteResourceManager;->addObserver(Ljava/util/Observer;)V

    .line 147
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;->mRrm:Lcom/cymobile/ymwork/server/RemoteResourceManager;

    invoke-virtual {v13, v12}, Lcom/cymobile/ymwork/server/RemoteResourceManager;->request(Landroid/net/Uri;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 155
    .end local v6           #e:Ljava/lang/Exception;
    .end local v12           #uri:Landroid/net/Uri;
    :cond_2
    :goto_3
    invoke-virtual {v11}, Lcom/cymobile/ymwork/types/Building;->getCaseDescription()Ljava/lang/String;

    move-result-object v9

    .line 158
    .local v9, line3Sum:Ljava/lang/String;
    iget-object v13, v8, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter$ViewHolder;->firstLine:Landroid/widget/TextView;

    invoke-virtual {v11}, Lcom/cymobile/ymwork/types/Building;->getLocation()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;->mPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {v11}, Lcom/cymobile/ymwork/types/Building;->getclassid()I

    move-result v14

    invoke-virtual {v11}, Lcom/cymobile/ymwork/types/Building;->getCaseId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11}, Lcom/cymobile/ymwork/types/Building;->getReportTime()J

    move-result-wide v16

    invoke-static/range {v13 .. v17}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->isRead(Landroid/content/SharedPreferences;ILjava/lang/String;J)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 160
    iget-object v13, v8, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter$ViewHolder;->firstLine:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;->mContext:Landroid/content/Context;

    const v15, 0x7f0a0004

    invoke-virtual {v13, v14, v15}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 165
    :goto_4
    invoke-virtual {v11}, Lcom/cymobile/ymwork/types/Building;->getAffectArea()Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, affected:Ljava/lang/String;
    :try_start_3
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 168
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0900b3

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v1

    .line 171
    :goto_5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_a

    .line 172
    iget-object v13, v8, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter$ViewHolder;->secondLine:Landroid/widget/TextView;

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0900b4

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    :goto_6
    invoke-virtual {v11}, Lcom/cymobile/ymwork/types/Building;->getCaseState()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_c

    .line 182
    iget-object v13, v8, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter$ViewHolder;->secondLine22:Landroid/widget/TextView;

    invoke-virtual {v11}, Lcom/cymobile/ymwork/types/Building;->getCaseState()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    :goto_7
    if-eqz v9, :cond_3

    .line 192
    iget-object v13, v8, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter$ViewHolder;->thirdLine2:Landroid/widget/TextView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 193
    iget-object v13, v8, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter$ViewHolder;->thirdLine2:Landroid/widget/TextView;

    invoke-virtual {v13, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    :cond_3
    invoke-virtual {v11}, Lcom/cymobile/ymwork/types/Building;->getReportTime()J

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-lez v13, :cond_4

    .line 199
    iget-object v13, v8, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter$ViewHolder;->thirdLine21:Landroid/widget/TextView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 200
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 201
    .local v3, currentDate:Ljava/util/Date;
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 202
    .local v4, currentDateLong:J
    iget-object v13, v8, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter$ViewHolder;->thirdLine21:Landroid/widget/TextView;

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0900b5

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Lcom/cymobile/ymwork/types/Building;->getReportTime()J

    move-result-wide v16

    invoke-static/range {v15 .. v17}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    .end local v3           #currentDate:Ljava/util/Date;
    .end local v4           #currentDateLong:J
    :cond_4
    return-object p2

    .line 99
    .end local v1           #affected:Ljava/lang/String;
    .end local v8           #holder:Lcom/cymobile/ymwork/widget/NearbyShopListAdapter$ViewHolder;
    .end local v9           #line3Sum:Ljava/lang/String;
    .end local v11           #shop:Lcom/cymobile/ymwork/types/Building;
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter$ViewHolder;

    .restart local v8       #holder:Lcom/cymobile/ymwork/widget/NearbyShopListAdapter$ViewHolder;
    goto/16 :goto_0

    .line 112
    .restart local v11       #shop:Lcom/cymobile/ymwork/types/Building;
    .restart local v12       #uri:Landroid/net/Uri;
    :cond_6
    :try_start_4
    invoke-virtual {v11}, Lcom/cymobile/ymwork/types/Building;->getImgUrl1()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_1

    .line 113
    invoke-virtual {v11}, Lcom/cymobile/ymwork/types/Building;->getImgUrl1()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v12

    goto/16 :goto_1

    .line 129
    .restart local v2       #bitmap:Landroid/graphics/Bitmap;
    .restart local v10       #option:Landroid/graphics/BitmapFactory$Options;
    :cond_7
    :try_start_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;->mContext:Landroid/content/Context;

    check-cast v13, Lcom/cymobile/ymwork/act/NearbySearchActivity;

    new-instance v14, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v8, v2}, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter$2;-><init>(Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;Lcom/cymobile/ymwork/widget/NearbyShopListAdapter$ViewHolder;Landroid/graphics/Bitmap;)V

    invoke-virtual {v13, v14}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 136
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_3

    .line 143
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .end local v10           #option:Landroid/graphics/BitmapFactory$Options;
    .restart local v6       #e:Ljava/lang/Exception;
    :cond_8
    :try_start_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;->ImageFetchFailRecord:Ljava/util/HashMap;

    invoke-virtual {v11}, Lcom/cymobile/ymwork/types/Building;->getImgUrl()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;->ImageFetchFailRecord:Ljava/util/HashMap;

    invoke-virtual {v11}, Lcom/cymobile/ymwork/types/Building;->getImgUrl()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v14, v15, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_2

    .line 150
    .end local v6           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v7

    .line 151
    .local v7, ee:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 162
    .end local v7           #ee:Ljava/lang/Exception;
    .end local v12           #uri:Landroid/net/Uri;
    .restart local v9       #line3Sum:Ljava/lang/String;
    :cond_9
    iget-object v13, v8, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter$ViewHolder;->firstLine:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;->mContext:Landroid/content/Context;

    const v15, 0x7f0a0005

    invoke-virtual {v13, v14, v15}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto/16 :goto_4

    .line 174
    .restart local v1       #affected:Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;->mIsSdk3:Z

    if-nez v13, :cond_b

    .line 175
    iget-object v13, v8, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter$ViewHolder;->secondLine:Landroid/widget/TextView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 177
    :cond_b
    iget-object v13, v8, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter$ViewHolder;->secondLine:Landroid/widget/TextView;

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 184
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;->mIsSdk3:Z

    if-nez v13, :cond_d

    .line 185
    iget-object v13, v8, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter$ViewHolder;->secondLine22:Landroid/widget/TextView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7

    .line 187
    :cond_d
    iget-object v13, v8, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter$ViewHolder;->secondLine22:Landroid/widget/TextView;

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7

    .line 169
    :catch_2
    move-exception v13

    goto/16 :goto_5
.end method

.method public removeObserver()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;->mUpdatePhotos:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 62
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;->mRrm:Lcom/cymobile/ymwork/server/RemoteResourceManager;

    iget-object v1, p0, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;->mResourcesObserver:Lcom/cymobile/ymwork/widget/NearbyShopListAdapter$RemoteResourceManagerObserver;

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/server/RemoteResourceManager;->deleteObserver(Ljava/util/Observer;)V

    .line 63
    return-void
.end method

.method public setGroup(Lcom/cymobile/ymwork/types/Group;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cymobile/ymwork/types/Group",
            "<",
            "Lcom/cymobile/ymwork/types/Building;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 258
    .local p1, g:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/Building;>;"
    invoke-super {p0, p1}, Lcom/cymobile/ymwork/widget/BaseNearbyShopsAdapter;->setGroup(Lcom/cymobile/ymwork/types/Group;)V

    .line 259
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/NearbyShopListAdapter;->mCachedTimestamps:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 263
    invoke-virtual {p1}, Lcom/cymobile/ymwork/types/Group;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 286
    return-void

    .line 263
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cymobile/ymwork/types/Building;

    goto :goto_0
.end method
