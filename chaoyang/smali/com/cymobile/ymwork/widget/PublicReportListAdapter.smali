.class public Lcom/cymobile/ymwork/widget/PublicReportListAdapter;
.super Lcom/cymobile/ymwork/widget/BaseConstrustionFieldAdapter;
.source "PublicReportListAdapter.java"

# interfaces
.implements Lcom/cymobile/ymwork/widget/ObservableAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cymobile/ymwork/widget/PublicReportListAdapter$RemoteResourceManagerObserver;,
        Lcom/cymobile/ymwork/widget/PublicReportListAdapter$ShopCoverFetcher;,
        Lcom/cymobile/ymwork/widget/PublicReportListAdapter$ViewHolder;
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

.field private mResourcesObserver:Lcom/cymobile/ymwork/widget/PublicReportListAdapter$RemoteResourceManagerObserver;

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

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/PublicReportListAdapter;->mHandler:Landroid/os/Handler;

    .line 61
    const/4 v0, 0x4

    iput v0, p0, Lcom/cymobile/ymwork/widget/PublicReportListAdapter;->sampleRate:I

    .line 62
    const/16 v0, 0x4000

    iput v0, p0, Lcom/cymobile/ymwork/widget/PublicReportListAdapter;->inTempStorage:I

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/PublicReportListAdapter;->ImageFetchFailRecord:Ljava/util/HashMap;

    .line 301
    new-instance v0, Lcom/cymobile/ymwork/widget/PublicReportListAdapter$1;

    invoke-direct {v0, p0}, Lcom/cymobile/ymwork/widget/PublicReportListAdapter$1;-><init>(Lcom/cymobile/ymwork/widget/PublicReportListAdapter;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/PublicReportListAdapter;->mUpdatePhotos:Ljava/lang/Runnable;

    .line 45
    iput-object p1, p0, Lcom/cymobile/ymwork/widget/PublicReportListAdapter;->mContext:Landroid/content/Context;

    .line 46
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/PublicReportListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 47
    iput-object p2, p0, Lcom/cymobile/ymwork/widget/PublicReportListAdapter;->mRrm:Lcom/cymobile/ymwork/server/RemoteResourceManager;

    .line 48
    new-instance v0, Lcom/cymobile/ymwork/widget/PublicReportListAdapter$RemoteResourceManagerObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cymobile/ymwork/widget/PublicReportListAdapter$RemoteResourceManagerObserver;-><init>(Lcom/cymobile/ymwork/widget/PublicReportListAdapter;Lcom/cymobile/ymwork/widget/PublicReportListAdapter$RemoteResourceManagerObserver;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/PublicReportListAdapter;->mResourcesObserver:Lcom/cymobile/ymwork/widget/PublicReportListAdapter$RemoteResourceManagerObserver;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/PublicReportListAdapter;->mCachedTimestamps:Ljava/util/HashMap;

    .line 51
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PublicReportListAdapter;->mRrm:Lcom/cymobile/ymwork/server/RemoteResourceManager;

    iget-object v1, p0, Lcom/cymobile/ymwork/widget/PublicReportListAdapter;->mResourcesObserver:Lcom/cymobile/ymwork/widget/PublicReportListAdapter$RemoteResourceManagerObserver;

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/server/RemoteResourceManager;->addObserver(Ljava/util/Observer;)V

    .line 52
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PublicReportListAdapter;->mContext:Landroid/content/Context;

    const-class v1, Lcom/cymobile/ymwork/SettingBase;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 53
    const/4 v2, 0x2

    .line 52
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/PublicReportListAdapter;->mPrefs:Landroid/content/SharedPreferences;

    .line 54
    invoke-static {}, Lcom/cymobile/ymwork/utils/UiUtil;->sdkVersion()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/cymobile/ymwork/widget/PublicReportListAdapter;->mIsSdk3:Z

    .line 55
    return-void

    .line 54
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/cymobile/ymwork/widget/PublicReportListAdapter;)I
    .locals 1
    .parameter

    .prologue
    .line 62
    iget v0, p0, Lcom/cymobile/ymwork/widget/PublicReportListAdapter;->inTempStorage:I

    return v0
.end method

.method static synthetic access$1(Lcom/cymobile/ymwork/widget/PublicReportListAdapter;)I
    .locals 1
    .parameter

    .prologue
    .line 61
    iget v0, p0, Lcom/cymobile/ymwork/widget/PublicReportListAdapter;->sampleRate:I

    return v0
.end method

.method static synthetic access$2(Lcom/cymobile/ymwork/widget/PublicReportListAdapter;)Lcom/cymobile/ymwork/server/RemoteResourceManager;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PublicReportListAdapter;->mRrm:Lcom/cymobile/ymwork/server/RemoteResourceManager;

    return-object v0
.end method

.method static synthetic access$3(Lcom/cymobile/ymwork/widget/PublicReportListAdapter;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PublicReportListAdapter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4(Lcom/cymobile/ymwork/widget/PublicReportListAdapter;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 301
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PublicReportListAdapter;->mUpdatePhotos:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 26
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 73
    if-nez p2, :cond_6

    .line 74
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/widget/PublicReportListAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v21, v0

    const v22, 0x7f03001a

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 78
    new-instance v14, Lcom/cymobile/ymwork/widget/PublicReportListAdapter$ViewHolder;

    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-direct {v14, v0}, Lcom/cymobile/ymwork/widget/PublicReportListAdapter$ViewHolder;-><init>(Lcom/cymobile/ymwork/widget/PublicReportListAdapter$ViewHolder;)V

    .line 79
    .local v14, holder:Lcom/cymobile/ymwork/widget/PublicReportListAdapter$ViewHolder;
    const v21, 0x7f08005c

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/ImageView;

    move-object/from16 v0, v21

    iput-object v0, v14, Lcom/cymobile/ymwork/widget/PublicReportListAdapter$ViewHolder;->photo:Landroid/widget/ImageView;

    .line 80
    const v21, 0x7f080056

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    iput-object v0, v14, Lcom/cymobile/ymwork/widget/PublicReportListAdapter$ViewHolder;->firstLine:Landroid/widget/TextView;

    .line 81
    const v21, 0x7f080057

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    iput-object v0, v14, Lcom/cymobile/ymwork/widget/PublicReportListAdapter$ViewHolder;->secondLine:Landroid/widget/TextView;

    .line 82
    const v21, 0x7f08005e

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    iput-object v0, v14, Lcom/cymobile/ymwork/widget/PublicReportListAdapter$ViewHolder;->secondLine22:Landroid/widget/TextView;

    .line 83
    const v21, 0x7f080059

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    iput-object v0, v14, Lcom/cymobile/ymwork/widget/PublicReportListAdapter$ViewHolder;->thirdLine2:Landroid/widget/TextView;

    .line 84
    const v21, 0x7f08005a

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    iput-object v0, v14, Lcom/cymobile/ymwork/widget/PublicReportListAdapter$ViewHolder;->thirdLine21:Landroid/widget/TextView;

    .line 90
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 97
    :goto_0
    invoke-virtual/range {p0 .. p1}, Lcom/cymobile/ymwork/widget/PublicReportListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/cymobile/ymwork/types/ConstrustionField;

    .line 102
    .local v18, shop:Lcom/cymobile/ymwork/types/ConstrustionField;
    invoke-virtual/range {v18 .. v18}, Lcom/cymobile/ymwork/types/ConstrustionField;->getImgUrl()Ljava/lang/String;

    move-result-object v21

    if-nez v21, :cond_0

    invoke-virtual/range {v18 .. v18}, Lcom/cymobile/ymwork/types/ConstrustionField;->getImgUrl1()Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_2

    .line 104
    :cond_0
    const/16 v20, 0x0

    .line 105
    .local v20, uri:Landroid/net/Uri;
    :try_start_0
    invoke-virtual/range {v18 .. v18}, Lcom/cymobile/ymwork/types/ConstrustionField;->getImgUrl()Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_7

    .line 106
    invoke-virtual/range {v18 .. v18}, Lcom/cymobile/ymwork/types/ConstrustionField;->getImgUrl()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v20

    .line 115
    :cond_1
    :goto_1
    :try_start_1
    new-instance v17, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 116
    .local v17, option:Landroid/graphics/BitmapFactory$Options;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cymobile/ymwork/widget/PublicReportListAdapter;->inTempStorage:I

    move/from16 v21, v0

    move/from16 v0, v21

    new-array v0, v0, [B

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 117
    sget-object v21, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 118
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cymobile/ymwork/widget/PublicReportListAdapter;->sampleRate:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 119
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, v17

    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 120
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, v17

    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/widget/PublicReportListAdapter;->mRrm:Lcom/cymobile/ymwork/server/RemoteResourceManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/server/RemoteResourceManager;->getInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 122
    .local v7, bitmap:Landroid/graphics/Bitmap;
    if-nez v7, :cond_8

    .line 123
    new-instance v21, Ljava/lang/Exception;

    const-string v22, "null"

    invoke-direct/range {v21 .. v22}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v21
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 133
    .end local v7           #bitmap:Landroid/graphics/Bitmap;
    .end local v17           #option:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v12

    .line 136
    .local v12, e:Ljava/lang/Exception;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/widget/PublicReportListAdapter;->ImageFetchFailRecord:Ljava/util/HashMap;

    move-object/from16 v21, v0

    invoke-virtual/range {v18 .. v18}, Lcom/cymobile/ymwork/types/ConstrustionField;->getImgUrl()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    if-nez v21, :cond_9

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/widget/PublicReportListAdapter;->ImageFetchFailRecord:Ljava/util/HashMap;

    move-object/from16 v21, v0

    invoke-virtual/range {v18 .. v18}, Lcom/cymobile/ymwork/types/ConstrustionField;->getImgUrl()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/widget/PublicReportListAdapter;->ImageFetchFailRecord:Ljava/util/HashMap;

    move-object/from16 v21, v0

    invoke-virtual/range {v18 .. v18}, Lcom/cymobile/ymwork/types/ConstrustionField;->getImgUrl()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    const/16 v22, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_2

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/widget/PublicReportListAdapter;->mRrm:Lcom/cymobile/ymwork/server/RemoteResourceManager;

    move-object/from16 v21, v0

    new-instance v22, Lcom/cymobile/ymwork/widget/PublicReportListAdapter$ShopCoverFetcher;

    iget-object v0, v14, Lcom/cymobile/ymwork/widget/PublicReportListAdapter$ViewHolder;->photo:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/cymobile/ymwork/widget/PublicReportListAdapter$ShopCoverFetcher;-><init>(Lcom/cymobile/ymwork/widget/PublicReportListAdapter;Landroid/net/Uri;Landroid/widget/ImageView;)V

    invoke-virtual/range {v21 .. v22}, Lcom/cymobile/ymwork/server/RemoteResourceManager;->addObserver(Ljava/util/Observer;)V

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/widget/PublicReportListAdapter;->mRrm:Lcom/cymobile/ymwork/server/RemoteResourceManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/server/RemoteResourceManager;->request(Landroid/net/Uri;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 151
    .end local v12           #e:Ljava/lang/Exception;
    .end local v20           #uri:Landroid/net/Uri;
    :cond_2
    :goto_3
    invoke-virtual/range {v18 .. v18}, Lcom/cymobile/ymwork/types/ConstrustionField;->getCommunity()Ljava/lang/String;

    move-result-object v16

    .line 152
    .local v16, line3Sum:Ljava/lang/String;
    if-eqz v16, :cond_b

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_b

    .line 153
    const-string v21, "/"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_a

    .line 154
    const-string v21, "/"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v15

    .line 155
    .local v15, i:I
    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/widget/PublicReportListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f090035

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v22, v15, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 163
    .end local v15           #i:I
    :goto_4
    iget-object v0, v14, Lcom/cymobile/ymwork/widget/PublicReportListAdapter$ViewHolder;->firstLine:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v18 .. v18}, Lcom/cymobile/ymwork/types/ConstrustionField;->getLocation()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/widget/PublicReportListAdapter;->mPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v21, v0

    invoke-virtual/range {v18 .. v18}, Lcom/cymobile/ymwork/types/ConstrustionField;->getClassids()I

    move-result v22

    invoke-virtual/range {v18 .. v18}, Lcom/cymobile/ymwork/types/ConstrustionField;->getCaseid()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v18 .. v18}, Lcom/cymobile/ymwork/types/ConstrustionField;->getBuildingreplydatetime()J

    move-result-wide v24

    invoke-static/range {v21 .. v25}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->isRead(Landroid/content/SharedPreferences;ILjava/lang/String;J)Z

    move-result v21

    if-eqz v21, :cond_c

    .line 165
    iget-object v0, v14, Lcom/cymobile/ymwork/widget/PublicReportListAdapter$ViewHolder;->firstLine:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/widget/PublicReportListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const v23, 0x7f0a0004

    invoke-virtual/range {v21 .. v23}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 169
    :goto_5
    const/4 v5, 0x0

    .line 170
    .local v5, affected:Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Lcom/cymobile/ymwork/types/ConstrustionField;->getCaseType()Ljava/lang/String;

    move-result-object v8

    .line 171
    .local v8, caseType:Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Lcom/cymobile/ymwork/types/ConstrustionField;->getBigCategory()Ljava/lang/String;

    move-result-object v6

    .line 172
    .local v6, bigCategory:Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Lcom/cymobile/ymwork/types/ConstrustionField;->getSmallCategory()Ljava/lang/String;

    move-result-object v19

    .line 173
    .local v19, smallCategory:Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Lcom/cymobile/ymwork/types/ConstrustionField;->getCasedetail()Ljava/lang/String;

    move-result-object v4

    .line 174
    .local v4, Casedetail:Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    if-nez v8, :cond_3

    const-string v8, ""

    .end local v8           #caseType:Ljava/lang/String;
    :cond_3
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v6, :cond_d

    const-string v21, ""

    :goto_6
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 175
    if-nez v19, :cond_e

    const-string v21, ""

    :goto_7
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    if-nez v4, :cond_f

    const-string v21, ""

    :goto_8
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 174
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 187
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_10

    .line 188
    iget-object v0, v14, Lcom/cymobile/ymwork/widget/PublicReportListAdapter$ViewHolder;->secondLine:Landroid/widget/TextView;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/widget/PublicReportListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0900b6

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    :goto_9
    iget-object v0, v14, Lcom/cymobile/ymwork/widget/PublicReportListAdapter$ViewHolder;->secondLine22:Landroid/widget/TextView;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/widget/PublicReportListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0900ea

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Lcom/cymobile/ymwork/types/ConstrustionField;->getCasestate()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    if-eqz v16, :cond_4

    .line 198
    iget-object v0, v14, Lcom/cymobile/ymwork/widget/PublicReportListAdapter$ViewHolder;->thirdLine2:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setVisibility(I)V

    .line 199
    iget-object v0, v14, Lcom/cymobile/ymwork/widget/PublicReportListAdapter$ViewHolder;->thirdLine2:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    :cond_4
    invoke-virtual/range {v18 .. v18}, Lcom/cymobile/ymwork/types/ConstrustionField;->getBuildingreplydatetime()J

    move-result-wide v21

    const-wide/16 v23, 0x0

    cmp-long v21, v21, v23

    if-lez v21, :cond_5

    .line 205
    iget-object v0, v14, Lcom/cymobile/ymwork/widget/PublicReportListAdapter$ViewHolder;->thirdLine21:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setVisibility(I)V

    .line 206
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    .line 207
    .local v9, currentDate:Ljava/util/Date;
    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    .line 208
    .local v10, currentDateLong:J
    iget-object v0, v14, Lcom/cymobile/ymwork/widget/PublicReportListAdapter$ViewHolder;->thirdLine21:Landroid/widget/TextView;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/widget/PublicReportListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0900b5

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/widget/PublicReportListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v18 .. v18}, Lcom/cymobile/ymwork/types/ConstrustionField;->getBuildingreplydatetime()J

    move-result-wide v24

    invoke-static/range {v23 .. v25}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    .end local v9           #currentDate:Ljava/util/Date;
    .end local v10           #currentDateLong:J
    :cond_5
    return-object p2

    .line 95
    .end local v4           #Casedetail:Ljava/lang/String;
    .end local v5           #affected:Ljava/lang/String;
    .end local v6           #bigCategory:Ljava/lang/String;
    .end local v14           #holder:Lcom/cymobile/ymwork/widget/PublicReportListAdapter$ViewHolder;
    .end local v16           #line3Sum:Ljava/lang/String;
    .end local v18           #shop:Lcom/cymobile/ymwork/types/ConstrustionField;
    .end local v19           #smallCategory:Ljava/lang/String;
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/cymobile/ymwork/widget/PublicReportListAdapter$ViewHolder;

    .restart local v14       #holder:Lcom/cymobile/ymwork/widget/PublicReportListAdapter$ViewHolder;
    goto/16 :goto_0

    .line 108
    .restart local v18       #shop:Lcom/cymobile/ymwork/types/ConstrustionField;
    .restart local v20       #uri:Landroid/net/Uri;
    :cond_7
    :try_start_3
    invoke-virtual/range {v18 .. v18}, Lcom/cymobile/ymwork/types/ConstrustionField;->getImgUrl1()Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_1

    .line 109
    invoke-virtual/range {v18 .. v18}, Lcom/cymobile/ymwork/types/ConstrustionField;->getImgUrl1()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v20

    goto/16 :goto_1

    .line 125
    .restart local v7       #bitmap:Landroid/graphics/Bitmap;
    .restart local v17       #option:Landroid/graphics/BitmapFactory$Options;
    :cond_8
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/widget/PublicReportListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    check-cast v21, Landroid/app/Activity;

    new-instance v22, Lcom/cymobile/ymwork/widget/PublicReportListAdapter$2;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v14, v7}, Lcom/cymobile/ymwork/widget/PublicReportListAdapter$2;-><init>(Lcom/cymobile/ymwork/widget/PublicReportListAdapter;Lcom/cymobile/ymwork/widget/PublicReportListAdapter$ViewHolder;Landroid/graphics/Bitmap;)V

    invoke-virtual/range {v21 .. v22}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 132
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_3

    .line 139
    .end local v7           #bitmap:Landroid/graphics/Bitmap;
    .end local v17           #option:Landroid/graphics/BitmapFactory$Options;
    .restart local v12       #e:Ljava/lang/Exception;
    :cond_9
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/widget/PublicReportListAdapter;->ImageFetchFailRecord:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-virtual/range {v18 .. v18}, Lcom/cymobile/ymwork/types/ConstrustionField;->getImgUrl()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/widget/PublicReportListAdapter;->ImageFetchFailRecord:Ljava/util/HashMap;

    move-object/from16 v21, v0

    invoke-virtual/range {v18 .. v18}, Lcom/cymobile/ymwork/types/ConstrustionField;->getImgUrl()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    add-int/lit8 v21, v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_2

    .line 146
    .end local v12           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v13

    .line 147
    .local v13, ee:Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 157
    .end local v13           #ee:Ljava/lang/Exception;
    .end local v20           #uri:Landroid/net/Uri;
    .restart local v16       #line3Sum:Ljava/lang/String;
    :cond_a
    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/widget/PublicReportListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f090035

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_4

    .line 160
    :cond_b
    const-string v16, ""

    goto/16 :goto_4

    .line 167
    :cond_c
    iget-object v0, v14, Lcom/cymobile/ymwork/widget/PublicReportListAdapter$ViewHolder;->firstLine:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/widget/PublicReportListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const v23, 0x7f0a0005

    invoke-virtual/range {v21 .. v23}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto/16 :goto_5

    .line 174
    .restart local v4       #Casedetail:Ljava/lang/String;
    .restart local v5       #affected:Ljava/lang/String;
    .restart local v6       #bigCategory:Ljava/lang/String;
    .restart local v19       #smallCategory:Ljava/lang/String;
    :cond_d
    new-instance v21, Ljava/lang/StringBuilder;

    const-string v23, "/"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_6

    .line 175
    :cond_e
    new-instance v21, Ljava/lang/StringBuilder;

    const-string v23, "/"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_7

    :cond_f
    new-instance v21, Ljava/lang/StringBuilder;

    const-string v23, "/"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_8

    .line 190
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/cymobile/ymwork/widget/PublicReportListAdapter;->mIsSdk3:Z

    move/from16 v21, v0

    if-nez v21, :cond_11

    .line 191
    iget-object v0, v14, Lcom/cymobile/ymwork/widget/PublicReportListAdapter$ViewHolder;->secondLine:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_9

    .line 193
    :cond_11
    iget-object v0, v14, Lcom/cymobile/ymwork/widget/PublicReportListAdapter$ViewHolder;->secondLine:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_9
.end method

.method public removeObserver()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PublicReportListAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/cymobile/ymwork/widget/PublicReportListAdapter;->mUpdatePhotos:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 59
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PublicReportListAdapter;->mRrm:Lcom/cymobile/ymwork/server/RemoteResourceManager;

    iget-object v1, p0, Lcom/cymobile/ymwork/widget/PublicReportListAdapter;->mResourcesObserver:Lcom/cymobile/ymwork/widget/PublicReportListAdapter$RemoteResourceManagerObserver;

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
    .line 264
    .local p1, g:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/ConstrustionField;>;"
    invoke-super {p0, p1}, Lcom/cymobile/ymwork/widget/BaseConstrustionFieldAdapter;->setGroup(Lcom/cymobile/ymwork/types/Group;)V

    .line 265
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/PublicReportListAdapter;->mCachedTimestamps:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 269
    invoke-virtual {p1}, Lcom/cymobile/ymwork/types/Group;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 292
    return-void

    .line 269
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cymobile/ymwork/types/ConstrustionField;

    goto :goto_0
.end method
