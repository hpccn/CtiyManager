.class public Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;
.super Lcom/cymobile/ymwork/widget/BaseConstrustionFieldAdapter;
.source "ConstrustionFieldListAdapter.java"

# interfaces
.implements Lcom/cymobile/ymwork/widget/ObservableAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter$RemoteResourceManagerObserver;,
        Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter$ShopCoverFetcher;,
        Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter$ViewHolder;
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

.field private mResourcesObserver:Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter$RemoteResourceManagerObserver;

.field private mRrm:Lcom/cymobile/ymwork/server/RemoteResourceManager;

.field private mUpdatePhotos:Ljava/lang/Runnable;

.field private sampleRate:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/cymobile/ymwork/server/RemoteResourceManager;)V
    .locals 3
    .parameter "context"
    .parameter "rrm"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/cymobile/ymwork/widget/BaseConstrustionFieldAdapter;-><init>(Landroid/content/Context;)V

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;->mHandler:Landroid/os/Handler;

    .line 61
    const/4 v0, 0x4

    iput v0, p0, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;->sampleRate:I

    .line 62
    const/16 v0, 0x4000

    iput v0, p0, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;->inTempStorage:I

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;->ImageFetchFailRecord:Ljava/util/HashMap;

    .line 303
    new-instance v0, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter$1;

    invoke-direct {v0, p0}, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter$1;-><init>(Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;->mUpdatePhotos:Ljava/lang/Runnable;

    .line 45
    iput-object p1, p0, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;->mContext:Landroid/content/Context;

    .line 46
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 47
    iput-object p2, p0, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;->mRrm:Lcom/cymobile/ymwork/server/RemoteResourceManager;

    .line 48
    new-instance v0, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter$RemoteResourceManagerObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter$RemoteResourceManagerObserver;-><init>(Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter$RemoteResourceManagerObserver;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;->mResourcesObserver:Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter$RemoteResourceManagerObserver;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;->mCachedTimestamps:Ljava/util/HashMap;

    .line 51
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;->mRrm:Lcom/cymobile/ymwork/server/RemoteResourceManager;

    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;->mResourcesObserver:Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter$RemoteResourceManagerObserver;

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/server/RemoteResourceManager;->addObserver(Ljava/util/Observer;)V

    .line 52
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;->mContext:Landroid/content/Context;

    const-class v1, Lcom/cymobile/ymwork/SettingBase;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 53
    const/4 v2, 0x2

    .line 52
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;->mPrefs:Landroid/content/SharedPreferences;

    .line 54
    invoke-static {}, Lcom/cymobile/ymwork/utils/UiUtil;->sdkVersion()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;->mIsSdk3:Z

    .line 55
    return-void

    .line 54
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;)I
    .locals 1
    .parameter

    .prologue
    .line 62
    iget v0, p0, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;->inTempStorage:I

    return v0
.end method

.method static synthetic access$1(Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;)I
    .locals 1
    .parameter

    .prologue
    .line 61
    iget v0, p0, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;->sampleRate:I

    return v0
.end method

.method static synthetic access$2(Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;)Lcom/cymobile/ymwork/server/RemoteResourceManager;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;->mRrm:Lcom/cymobile/ymwork/server/RemoteResourceManager;

    return-object v0
.end method

.method static synthetic access$3(Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4(Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 303
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;->mUpdatePhotos:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 25
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 73
    if-nez p2, :cond_7

    .line 74
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v20, v0

    const v21, 0x7f03001a

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 78
    new-instance v12, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter$ViewHolder;

    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-direct {v12, v0}, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter$ViewHolder;-><init>(Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter$ViewHolder;)V

    .line 79
    .local v12, holder:Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter$ViewHolder;
    const v20, 0x7f08005c

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    move-object/from16 v0, v20

    iput-object v0, v12, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter$ViewHolder;->photo:Landroid/widget/ImageView;

    .line 80
    const v20, 0x7f080056

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    iput-object v0, v12, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter$ViewHolder;->firstLine:Landroid/widget/TextView;

    .line 81
    const v20, 0x7f080057

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    iput-object v0, v12, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter$ViewHolder;->secondLine:Landroid/widget/TextView;

    .line 82
    const v20, 0x7f08005e

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    iput-object v0, v12, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter$ViewHolder;->secondLine22:Landroid/widget/TextView;

    .line 83
    const v20, 0x7f080059

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    iput-object v0, v12, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter$ViewHolder;->thirdLine2:Landroid/widget/TextView;

    .line 84
    const v20, 0x7f08005a

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    iput-object v0, v12, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter$ViewHolder;->thirdLine21:Landroid/widget/TextView;

    .line 90
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 97
    :goto_0
    invoke-virtual/range {p0 .. p1}, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/cymobile/ymwork/types/ConstrustionField;

    .line 102
    .local v16, shop:Lcom/cymobile/ymwork/types/ConstrustionField;
    invoke-virtual/range {v16 .. v16}, Lcom/cymobile/ymwork/types/ConstrustionField;->getImgUrl()Ljava/lang/String;

    move-result-object v20

    if-nez v20, :cond_0

    invoke-virtual/range {v16 .. v16}, Lcom/cymobile/ymwork/types/ConstrustionField;->getImgUrl1()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_2

    .line 104
    :cond_0
    const/16 v19, 0x0

    .line 105
    .local v19, uri:Landroid/net/Uri;
    :try_start_0
    invoke-virtual/range {v16 .. v16}, Lcom/cymobile/ymwork/types/ConstrustionField;->getImgUrl()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_8

    .line 106
    invoke-virtual/range {v16 .. v16}, Lcom/cymobile/ymwork/types/ConstrustionField;->getImgUrl()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v19

    .line 115
    :cond_1
    :goto_1
    :try_start_1
    new-instance v15, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v15}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 116
    .local v15, option:Landroid/graphics/BitmapFactory$Options;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;->inTempStorage:I

    move/from16 v20, v0

    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iput-object v0, v15, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 117
    sget-object v20, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v20

    iput-object v0, v15, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 118
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;->sampleRate:I

    move/from16 v20, v0

    move/from16 v0, v20

    iput v0, v15, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 119
    const/16 v20, 0x1

    move/from16 v0, v20

    iput-boolean v0, v15, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 120
    const/16 v20, 0x1

    move/from16 v0, v20

    iput-boolean v0, v15, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;->mRrm:Lcom/cymobile/ymwork/server/RemoteResourceManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/server/RemoteResourceManager;->getInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v15}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 122
    .local v5, bitmap:Landroid/graphics/Bitmap;
    if-nez v5, :cond_9

    .line 123
    new-instance v20, Ljava/lang/Exception;

    const-string v21, "null"

    invoke-direct/range {v20 .. v21}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v20
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 133
    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .end local v15           #option:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v10

    .line 136
    .local v10, e:Ljava/lang/Exception;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;->ImageFetchFailRecord:Ljava/util/HashMap;

    move-object/from16 v20, v0

    invoke-virtual/range {v16 .. v16}, Lcom/cymobile/ymwork/types/ConstrustionField;->getImgUrl()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    if-nez v20, :cond_a

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;->ImageFetchFailRecord:Ljava/util/HashMap;

    move-object/from16 v20, v0

    invoke-virtual/range {v16 .. v16}, Lcom/cymobile/ymwork/types/ConstrustionField;->getImgUrl()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;->ImageFetchFailRecord:Ljava/util/HashMap;

    move-object/from16 v20, v0

    invoke-virtual/range {v16 .. v16}, Lcom/cymobile/ymwork/types/ConstrustionField;->getImgUrl()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_2

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;->mRrm:Lcom/cymobile/ymwork/server/RemoteResourceManager;

    move-object/from16 v20, v0

    new-instance v21, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter$ShopCoverFetcher;

    iget-object v0, v12, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter$ViewHolder;->photo:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter$ShopCoverFetcher;-><init>(Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;Landroid/net/Uri;Landroid/widget/ImageView;)V

    invoke-virtual/range {v20 .. v21}, Lcom/cymobile/ymwork/server/RemoteResourceManager;->addObserver(Ljava/util/Observer;)V

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;->mRrm:Lcom/cymobile/ymwork/server/RemoteResourceManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/server/RemoteResourceManager;->request(Landroid/net/Uri;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 151
    .end local v10           #e:Ljava/lang/Exception;
    .end local v19           #uri:Landroid/net/Uri;
    :cond_2
    :goto_3
    invoke-virtual/range {v16 .. v16}, Lcom/cymobile/ymwork/types/ConstrustionField;->getCommunity()Ljava/lang/String;

    move-result-object v14

    .line 152
    .local v14, line3Sum:Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_c

    .line 153
    const-string v20, "/"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 154
    const-string v20, "/"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v13

    .line 155
    .local v13, i:I
    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f090035

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v21, v13, 0x1

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 163
    .end local v13           #i:I
    :goto_4
    iget-object v0, v12, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter$ViewHolder;->firstLine:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v16 .. v16}, Lcom/cymobile/ymwork/types/ConstrustionField;->getLocation()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;->mPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v20, v0

    invoke-virtual/range {v16 .. v16}, Lcom/cymobile/ymwork/types/ConstrustionField;->getClassids()I

    move-result v21

    invoke-virtual/range {v16 .. v16}, Lcom/cymobile/ymwork/types/ConstrustionField;->getCaseid()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v16 .. v16}, Lcom/cymobile/ymwork/types/ConstrustionField;->getBuildingreplydatetime()J

    move-result-wide v23

    invoke-static/range {v20 .. v24}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->isRead(Landroid/content/SharedPreferences;ILjava/lang/String;J)Z

    move-result v20

    if-eqz v20, :cond_d

    .line 165
    iget-object v0, v12, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter$ViewHolder;->firstLine:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f0a0004

    invoke-virtual/range {v20 .. v22}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 170
    :goto_5
    invoke-virtual/range {v16 .. v16}, Lcom/cymobile/ymwork/types/ConstrustionField;->getCasedetail()Ljava/lang/String;

    move-result-object v4

    .line 171
    .local v4, affected:Ljava/lang/String;
    if-eqz v4, :cond_f

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_f

    .line 172
    const-string v17, "\u5e02\u5bb9\u73af\u5883/\u571f\u65b9\u5de5\u5730/"

    .line 173
    .local v17, str1:Ljava/lang/String;
    const-string v18, "\u5b89\u5168\u751f\u4ea7-\u6d88\u9632\u5b89\u5168/"

    .line 174
    .local v18, str2:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 175
    .local v6, c:C
    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v20

    const-string v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 176
    const/16 v20, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 178
    :cond_3
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_e

    .line 179
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 191
    .end local v6           #c:C
    .end local v17           #str1:Ljava/lang/String;
    .end local v18           #str2:Ljava/lang/String;
    :cond_4
    :goto_6
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_10

    .line 192
    iget-object v0, v12, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter$ViewHolder;->secondLine:Landroid/widget/TextView;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0900b6

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    :goto_7
    iget-object v0, v12, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter$ViewHolder;->secondLine22:Landroid/widget/TextView;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0900ea

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Lcom/cymobile/ymwork/types/ConstrustionField;->getCasestate()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    if-eqz v14, :cond_5

    .line 202
    iget-object v0, v12, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter$ViewHolder;->thirdLine2:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setVisibility(I)V

    .line 203
    iget-object v0, v12, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter$ViewHolder;->thirdLine2:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    :cond_5
    invoke-virtual/range {v16 .. v16}, Lcom/cymobile/ymwork/types/ConstrustionField;->getBuildingreplydatetime()J

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-lez v20, :cond_6

    .line 207
    iget-object v0, v12, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter$ViewHolder;->thirdLine21:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setVisibility(I)V

    .line 208
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    .line 209
    .local v7, currentDate:Ljava/util/Date;
    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    .line 210
    .local v8, currentDateLong:J
    iget-object v0, v12, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter$ViewHolder;->thirdLine21:Landroid/widget/TextView;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0900b5

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v16 .. v16}, Lcom/cymobile/ymwork/types/ConstrustionField;->getBuildingreplydatetime()J

    move-result-wide v23

    invoke-static/range {v22 .. v24}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    .end local v7           #currentDate:Ljava/util/Date;
    .end local v8           #currentDateLong:J
    :cond_6
    return-object p2

    .line 95
    .end local v4           #affected:Ljava/lang/String;
    .end local v12           #holder:Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter$ViewHolder;
    .end local v14           #line3Sum:Ljava/lang/String;
    .end local v16           #shop:Lcom/cymobile/ymwork/types/ConstrustionField;
    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter$ViewHolder;

    .restart local v12       #holder:Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter$ViewHolder;
    goto/16 :goto_0

    .line 108
    .restart local v16       #shop:Lcom/cymobile/ymwork/types/ConstrustionField;
    .restart local v19       #uri:Landroid/net/Uri;
    :cond_8
    :try_start_3
    invoke-virtual/range {v16 .. v16}, Lcom/cymobile/ymwork/types/ConstrustionField;->getImgUrl1()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_1

    .line 109
    invoke-virtual/range {v16 .. v16}, Lcom/cymobile/ymwork/types/ConstrustionField;->getImgUrl1()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v19

    goto/16 :goto_1

    .line 125
    .restart local v5       #bitmap:Landroid/graphics/Bitmap;
    .restart local v15       #option:Landroid/graphics/BitmapFactory$Options;
    :cond_9
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    check-cast v20, Landroid/app/Activity;

    new-instance v21, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter$2;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12, v5}, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter$2;-><init>(Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter$ViewHolder;Landroid/graphics/Bitmap;)V

    invoke-virtual/range {v20 .. v21}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 132
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_3

    .line 139
    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .end local v15           #option:Landroid/graphics/BitmapFactory$Options;
    .restart local v10       #e:Ljava/lang/Exception;
    :cond_a
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;->ImageFetchFailRecord:Ljava/util/HashMap;

    move-object/from16 v21, v0

    invoke-virtual/range {v16 .. v16}, Lcom/cymobile/ymwork/types/ConstrustionField;->getImgUrl()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;->ImageFetchFailRecord:Ljava/util/HashMap;

    move-object/from16 v20, v0

    invoke-virtual/range {v16 .. v16}, Lcom/cymobile/ymwork/types/ConstrustionField;->getImgUrl()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    add-int/lit8 v20, v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_2

    .line 146
    .end local v10           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v11

    .line 147
    .local v11, ee:Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 157
    .end local v11           #ee:Ljava/lang/Exception;
    .end local v19           #uri:Landroid/net/Uri;
    .restart local v14       #line3Sum:Ljava/lang/String;
    :cond_b
    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f090035

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_4

    .line 160
    :cond_c
    const-string v14, ""

    goto/16 :goto_4

    .line 167
    :cond_d
    iget-object v0, v12, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter$ViewHolder;->firstLine:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f0a0005

    invoke-virtual/range {v20 .. v22}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto/16 :goto_5

    .line 180
    .restart local v4       #affected:Ljava/lang/String;
    .restart local v6       #c:C
    .restart local v17       #str1:Ljava/lang/String;
    .restart local v18       #str2:Ljava/lang/String;
    :cond_e
    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 181
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_6

    .line 184
    .end local v6           #c:C
    .end local v17           #str1:Ljava/lang/String;
    .end local v18           #str2:Ljava/lang/String;
    :cond_f
    invoke-virtual/range {v16 .. v16}, Lcom/cymobile/ymwork/types/ConstrustionField;->getCasedescription()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_6

    .line 194
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;->mIsSdk3:Z

    move/from16 v20, v0

    if-nez v20, :cond_11

    .line 195
    iget-object v0, v12, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter$ViewHolder;->secondLine:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7

    .line 197
    :cond_11
    iget-object v0, v12, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter$ViewHolder;->secondLine:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x4

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7
.end method

.method public removeObserver()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;->mUpdatePhotos:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 59
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;->mRrm:Lcom/cymobile/ymwork/server/RemoteResourceManager;

    iget-object v1, p0, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;->mResourcesObserver:Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter$RemoteResourceManagerObserver;

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/server/RemoteResourceManager;->deleteObserver(Ljava/util/Observer;)V

    .line 60
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
            "Lcom/cymobile/ymwork/types/ConstrustionField;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 266
    .local p1, g:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/ConstrustionField;>;"
    invoke-super {p0, p1}, Lcom/cymobile/ymwork/widget/BaseConstrustionFieldAdapter;->setGroup(Lcom/cymobile/ymwork/types/Group;)V

    .line 267
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/ConstrustionFieldListAdapter;->mCachedTimestamps:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 271
    invoke-virtual {p1}, Lcom/cymobile/ymwork/types/Group;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 294
    return-void

    .line 271
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cymobile/ymwork/types/ConstrustionField;

    goto :goto_0
.end method
