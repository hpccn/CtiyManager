.class public Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;
.super Landroid/app/Activity;
.source "ShopDetailsPublicReportActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity$ShopImageFetcher;,
        Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity$SwipeImageLoader;,
        Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity$TaskShopDetail;
    }
.end annotation


# static fields
.field private static final Dialog_confirm_reply:I = 0xa

.field static final ShopReady:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ShopDetailsPublicReportActivity"


# instance fields
.field busview:Landroid/widget/LinearLayout;

.field private contexts:Landroid/content/Context;

.field imageOnclick:Landroid/view/View$OnClickListener;

.field images:[I

.field private mCaseid:Ljava/lang/String;

.field private mClassid:I

.field mHandler:Landroid/os/Handler;

.field private mHomeApplication:Lcom/cymobile/ymwork/HomeApplication;

.field mIsRunningTask:Z

.field private mLayoutEmpty:Landroid/view/ViewGroup;

.field mPageControl:Luk/co/jasonfry/android/tools/ui/PageControl;

.field mPrefs:Landroid/content/SharedPreferences;

.field mRrm:Lcom/cymobile/ymwork/server/RemoteResourceManager;

.field private mShop:Lcom/cymobile/ymwork/types/ConstrustionField;

.field mSwipeView:Luk/co/jasonfry/android/tools/ui/SwipeView;

.field reporttime:Landroid/widget/LinearLayout;

.field swipe_left:Landroid/widget/ImageButton;

.field swipe_right:Landroid/widget/ImageButton;

.field taskShopDetail:Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity$TaskShopDetail;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 339
    new-instance v0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity$1;

    invoke-direct {v0, p0}, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity$1;-><init>(Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->imageOnclick:Landroid/view/View$OnClickListener;

    .line 561
    new-instance v0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity$2;

    invoke-direct {v0, p0}, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity$2;-><init>(Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->mHandler:Landroid/os/Handler;

    .line 760
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->mIsRunningTask:Z

    .line 56
    return-void
.end method

.method static synthetic access$0(Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;)Lcom/cymobile/ymwork/types/ConstrustionField;
    .locals 1
    .parameter

    .prologue
    .line 539
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->mShop:Lcom/cymobile/ymwork/types/ConstrustionField;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 574
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->loadShop()V

    return-void
.end method

.method static synthetic access$2(Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->mCaseid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 62
    iget v0, p0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->mClassid:I

    return v0
.end method

.method static synthetic access$4(Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 535
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->onLoadTaskStart()V

    return-void
.end method

.method static synthetic access$5(Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;Lcom/cymobile/ymwork/types/ConstrustionField;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 541
    invoke-direct {p0, p1, p2}, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->onTaskComplete(Lcom/cymobile/ymwork/types/ConstrustionField;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$6(Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;)Lcom/cymobile/ymwork/HomeApplication;
    .locals 1
    .parameter

    .prologue
    .line 467
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->mHomeApplication:Lcom/cymobile/ymwork/HomeApplication;

    return-object v0
.end method

.method static synthetic access$7(Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->contexts:Landroid/content/Context;

    return-object v0
.end method

.method private ensureUi()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 371
    const v6, 0x7f08002d

    invoke-virtual {p0, v6}, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    .line 373
    .local v3, leftbtn:Landroid/widget/ImageButton;
    const v6, 0x7f08002f

    invoke-virtual {p0, v6}, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 374
    .local v5, title:Landroid/widget/TextView;
    const v6, 0x7f090021

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 375
    new-instance v6, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity$5;

    invoke-direct {v6, p0}, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity$5;-><init>(Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;)V

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 381
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 382
    .local v2, inflater:Landroid/view/LayoutInflater;
    invoke-static {}, Lcom/cymobile/ymwork/utils/UiUtil;->sdkVersion()I

    move-result v6

    const/4 v7, 0x3

    if-le v6, v7, :cond_0

    .line 384
    const v6, 0x7f03003d

    .line 383
    invoke-virtual {v2, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ScrollView;

    iput-object v6, p0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->mLayoutEmpty:Landroid/view/ViewGroup;

    .line 391
    :goto_0
    iget-object v6, p0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->mLayoutEmpty:Landroid/view/ViewGroup;

    .line 392
    const v7, 0x7f08010f

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 391
    check-cast v0, Landroid/widget/Button;

    .line 393
    .local v0, btnAddFriends:Landroid/widget/Button;
    new-instance v6, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity$6;

    invoke-direct {v6, p0}, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity$6;-><init>(Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 399
    iget-object v6, p0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->mLayoutEmpty:Landroid/view/ViewGroup;

    .line 400
    const v7, 0x7f080110

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 399
    check-cast v1, Landroid/widget/Button;

    .line 401
    .local v1, btnFriendRequests:Landroid/widget/Button;
    new-instance v6, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity$7;

    invoke-direct {v6, p0}, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity$7;-><init>(Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;)V

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 406
    iget-object v6, p0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->mLayoutEmpty:Landroid/view/ViewGroup;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 408
    invoke-direct {v7, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 406
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 410
    const v6, 0x7f080030

    invoke-virtual {p0, v6}, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    .line 411
    .local v4, mapbtn:Landroid/widget/ImageButton;
    new-instance v6, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity$8;

    invoke-direct {v6, p0}, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity$8;-><init>(Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;)V

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 438
    invoke-virtual {p0, p0}, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->startTask(Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;)V

    .line 439
    return-void

    .line 389
    .end local v0           #btnAddFriends:Landroid/widget/Button;
    .end local v1           #btnFriendRequests:Landroid/widget/Button;
    .end local v4           #mapbtn:Landroid/widget/ImageButton;
    :cond_0
    const v6, 0x7f03003e

    .line 388
    invoke-virtual {v2, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ScrollView;

    iput-object v6, p0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->mLayoutEmpty:Landroid/view/ViewGroup;

    goto :goto_0
.end method

.method private loadImages()V
    .locals 20

    .prologue
    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->mShop:Lcom/cymobile/ymwork/types/ConstrustionField;

    move-object/from16 v16, v0

    if-eqz v16, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->mShop:Lcom/cymobile/ymwork/types/ConstrustionField;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/cymobile/ymwork/types/ConstrustionField;->getImgUrl()Ljava/lang/String;

    move-result-object v16

    if-nez v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->mShop:Lcom/cymobile/ymwork/types/ConstrustionField;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/cymobile/ymwork/types/ConstrustionField;->getImgUrl1()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_b

    .line 217
    :cond_0
    const/4 v15, 0x0

    .line 218
    .local v15, size:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->mShop:Lcom/cymobile/ymwork/types/ConstrustionField;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/cymobile/ymwork/types/ConstrustionField;->getImgUrl()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_1

    .line 219
    add-int/lit8 v15, v15, 0x1

    .line 221
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->mShop:Lcom/cymobile/ymwork/types/ConstrustionField;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/cymobile/ymwork/types/ConstrustionField;->getImgUrl1()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_2

    .line 222
    add-int/lit8 v15, v15, 0x1

    .line 224
    :cond_2
    new-array v0, v15, [I

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->images:[I

    .line 225
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->images:[I

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-lt v6, v0, :cond_6

    .line 229
    const/4 v6, 0x0

    :goto_1
    if-lt v6, v15, :cond_7

    .line 234
    new-instance v7, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 235
    .local v7, i0:Landroid/widget/ImageView;
    sget-object v16, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->mSwipeView:Luk/co/jasonfry/android/tools/ui/SwipeView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Luk/co/jasonfry/android/tools/ui/SwipeView;->getChildContainer()Landroid/widget/LinearLayout;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/FrameLayout;

    invoke-virtual/range {v16 .. v16}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->mSwipeView:Luk/co/jasonfry/android/tools/ui/SwipeView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Luk/co/jasonfry/android/tools/ui/SwipeView;->getChildContainer()Landroid/widget/LinearLayout;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/FrameLayout;

    .line 238
    new-instance v17, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v18, -0x1

    const/16 v19, -0x1

    invoke-direct/range {v17 .. v19}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v7, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->mShop:Lcom/cymobile/ymwork/types/ConstrustionField;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/cymobile/ymwork/types/ConstrustionField;->getImgUrl()Ljava/lang/String;

    move-result-object v9

    .line 240
    .local v9, imageUrl:Ljava/lang/String;
    if-nez v9, :cond_3

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->mShop:Lcom/cymobile/ymwork/types/ConstrustionField;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/cymobile/ymwork/types/ConstrustionField;->getImgUrl1()Ljava/lang/String;

    move-result-object v9

    .line 243
    :cond_3
    if-eqz v9, :cond_4

    .line 244
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 246
    .local v14, photoUri:Landroid/net/Uri;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->mRrm:Lcom/cymobile/ymwork/server/RemoteResourceManager;

    move-object/from16 v16, v0

    .line 247
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Lcom/cymobile/ymwork/server/RemoteResourceManager;->getInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v16

    .line 246
    invoke-static/range {v16 .. v16}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 248
    .local v3, bitmap:Landroid/graphics/Bitmap;
    if-nez v3, :cond_8

    .line 249
    new-instance v16, Ljava/lang/Exception;

    const-string v17, "empty i0 1"

    invoke-direct/range {v16 .. v17}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v16
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    .end local v3           #bitmap:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v4

    .line 254
    .local v4, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->images:[I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget v16, v16, v17

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->mRrm:Lcom/cymobile/ymwork/server/RemoteResourceManager;

    move-object/from16 v16, v0

    new-instance v17, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity$ShopImageFetcher;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v14, v7}, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity$ShopImageFetcher;-><init>(Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;Landroid/net/Uri;Landroid/widget/ImageView;)V

    invoke-virtual/range {v16 .. v17}, Lcom/cymobile/ymwork/server/RemoteResourceManager;->addObserver(Ljava/util/Observer;)V

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->mRrm:Lcom/cymobile/ymwork/server/RemoteResourceManager;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Lcom/cymobile/ymwork/server/RemoteResourceManager;->request(Landroid/net/Uri;)V

    .line 260
    .end local v4           #e:Ljava/lang/Exception;
    .end local v14           #photoUri:Landroid/net/Uri;
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->imageOnclick:Landroid/view/View$OnClickListener;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v15, v0, :cond_a

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->swipe_left:Landroid/widget/ImageButton;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->swipe_right:Landroid/widget/ImageButton;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->swipe_left:Landroid/widget/ImageButton;

    move-object/from16 v16, v0

    new-instance v17, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity$3;-><init>(Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;)V

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->swipe_right:Landroid/widget/ImageButton;

    move-object/from16 v16, v0

    new-instance v17, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity$4;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity$4;-><init>(Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;)V

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    new-instance v8, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 285
    .local v8, i1:Landroid/widget/ImageView;
    sget-object v16, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->mShop:Lcom/cymobile/ymwork/types/ConstrustionField;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/cymobile/ymwork/types/ConstrustionField;->getImgUrl1()Ljava/lang/String;

    move-result-object v10

    .line 287
    .local v10, imageUrl1:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->mSwipeView:Luk/co/jasonfry/android/tools/ui/SwipeView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Luk/co/jasonfry/android/tools/ui/SwipeView;->getChildContainer()Landroid/widget/LinearLayout;

    move-result-object v16

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/FrameLayout;

    invoke-virtual/range {v16 .. v16}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->mSwipeView:Luk/co/jasonfry/android/tools/ui/SwipeView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Luk/co/jasonfry/android/tools/ui/SwipeView;->getChildContainer()Landroid/widget/LinearLayout;

    move-result-object v16

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/FrameLayout;

    .line 289
    new-instance v17, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v18, -0x1

    const/16 v19, -0x1

    invoke-direct/range {v17 .. v19}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v8, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 290
    if-eqz v10, :cond_5

    .line 291
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 293
    .restart local v14       #photoUri:Landroid/net/Uri;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->mRrm:Lcom/cymobile/ymwork/server/RemoteResourceManager;

    move-object/from16 v16, v0

    .line 294
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Lcom/cymobile/ymwork/server/RemoteResourceManager;->getInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v16

    .line 293
    invoke-static/range {v16 .. v16}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 295
    .restart local v3       #bitmap:Landroid/graphics/Bitmap;
    if-nez v3, :cond_9

    .line 296
    new-instance v16, Ljava/lang/Exception;

    const-string v17, "empty i1"

    invoke-direct/range {v16 .. v17}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v16
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 300
    .end local v3           #bitmap:Landroid/graphics/Bitmap;
    :catch_1
    move-exception v4

    .line 302
    .restart local v4       #e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->mRrm:Lcom/cymobile/ymwork/server/RemoteResourceManager;

    move-object/from16 v16, v0

    new-instance v17, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity$ShopImageFetcher;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v14, v8}, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity$ShopImageFetcher;-><init>(Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;Landroid/net/Uri;Landroid/widget/ImageView;)V

    invoke-virtual/range {v16 .. v17}, Lcom/cymobile/ymwork/server/RemoteResourceManager;->addObserver(Ljava/util/Observer;)V

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->mRrm:Lcom/cymobile/ymwork/server/RemoteResourceManager;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Lcom/cymobile/ymwork/server/RemoteResourceManager;->request(Landroid/net/Uri;)V

    .line 307
    .end local v4           #e:Ljava/lang/Exception;
    .end local v14           #photoUri:Landroid/net/Uri;
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->imageOnclick:Landroid/view/View$OnClickListener;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    const v16, 0x7f0800e9

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 309
    .local v13, photoType:Landroid/widget/TextView;
    const v16, 0x7f09009e

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(I)V

    .line 310
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 316
    .end local v8           #i1:Landroid/widget/ImageView;
    .end local v10           #imageUrl1:Ljava/lang/String;
    .end local v13           #photoType:Landroid/widget/TextView;
    :goto_4
    new-instance v11, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity$SwipeImageLoader;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v11, v0, v1}, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity$SwipeImageLoader;-><init>(Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity$SwipeImageLoader;)V

    .line 318
    .local v11, mSwipeImageLoader:Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity$SwipeImageLoader;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->mSwipeView:Luk/co/jasonfry/android/tools/ui/SwipeView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Luk/co/jasonfry/android/tools/ui/SwipeView;->setOnPageChangedListener(Luk/co/jasonfry/android/tools/ui/SwipeView$OnPageChangedListener;)V

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->mSwipeView:Luk/co/jasonfry/android/tools/ui/SwipeView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->mPageControl:Luk/co/jasonfry/android/tools/ui/PageControl;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Luk/co/jasonfry/android/tools/ui/SwipeView;->setPageControl(Luk/co/jasonfry/android/tools/ui/PageControl;)V

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->mSwipeView:Luk/co/jasonfry/android/tools/ui/SwipeView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Luk/co/jasonfry/android/tools/ui/SwipeView;->refreshDrawableState()V

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->mSwipeView:Luk/co/jasonfry/android/tools/ui/SwipeView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Luk/co/jasonfry/android/tools/ui/SwipeView;->invalidate()V

    .line 336
    .end local v6           #i:I
    .end local v7           #i0:Landroid/widget/ImageView;
    .end local v9           #imageUrl:Ljava/lang/String;
    .end local v11           #mSwipeImageLoader:Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity$SwipeImageLoader;
    .end local v15           #size:I
    :goto_5
    return-void

    .line 226
    .restart local v6       #i:I
    .restart local v15       #size:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->images:[I

    move-object/from16 v16, v0

    const v17, 0x7f0200e4

    aput v17, v16, v6

    .line 225
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 230
    :cond_7
    new-instance v5, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 232
    .local v5, fl:Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->mSwipeView:Luk/co/jasonfry/android/tools/ui/SwipeView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Luk/co/jasonfry/android/tools/ui/SwipeView;->addView(Landroid/view/View;)V

    .line 229
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 251
    .end local v5           #fl:Landroid/widget/FrameLayout;
    .restart local v3       #bitmap:Landroid/graphics/Bitmap;
    .restart local v7       #i0:Landroid/widget/ImageView;
    .restart local v9       #imageUrl:Ljava/lang/String;
    .restart local v14       #photoUri:Landroid/net/Uri;
    :cond_8
    :try_start_2
    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 252
    invoke-virtual {v7}, Landroid/widget/ImageView;->refreshDrawableState()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 298
    .restart local v8       #i1:Landroid/widget/ImageView;
    .restart local v10       #imageUrl1:Ljava/lang/String;
    :cond_9
    :try_start_3
    invoke-virtual {v8, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 299
    invoke-virtual {v8}, Landroid/widget/ImageView;->refreshDrawableState()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_3

    .line 312
    .end local v3           #bitmap:Landroid/graphics/Bitmap;
    .end local v8           #i1:Landroid/widget/ImageView;
    .end local v10           #imageUrl1:Ljava/lang/String;
    .end local v14           #photoUri:Landroid/net/Uri;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->swipe_left:Landroid/widget/ImageButton;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->swipe_right:Landroid/widget/ImageButton;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_4

    .line 324
    .end local v6           #i:I
    .end local v7           #i0:Landroid/widget/ImageView;
    .end local v9           #imageUrl:Ljava/lang/String;
    .end local v15           #size:I
    :cond_b
    const v16, 0x7f0800e5

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 325
    .local v2, albumfolder:Landroid/widget/LinearLayout;
    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 327
    const v16, 0x7f0800e9

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 328
    .restart local v13       #photoType:Landroid/widget/TextView;
    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 330
    const v16, 0x7f0800ea

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Luk/co/jasonfry/android/tools/ui/PageControl;

    .line 331
    .local v12, page_control:Luk/co/jasonfry/android/tools/ui/PageControl;
    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Luk/co/jasonfry/android/tools/ui/PageControl;->setVisibility(I)V

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->swipe_left:Landroid/widget/ImageButton;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->swipe_right:Landroid/widget/ImageButton;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto/16 :goto_5
.end method

.method private loadShop()V
    .locals 35

    .prologue
    .line 575
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->mShop:Lcom/cymobile/ymwork/types/ConstrustionField;

    if-eqz v2, :cond_2

    .line 576
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->mShop:Lcom/cymobile/ymwork/types/ConstrustionField;

    invoke-virtual {v2}, Lcom/cymobile/ymwork/types/ConstrustionField;->getReporttime()Ljava/lang/String;

    .line 577
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->mPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->mShop:Lcom/cymobile/ymwork/types/ConstrustionField;

    invoke-virtual {v3}, Lcom/cymobile/ymwork/types/ConstrustionField;->getClassids()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->mCaseid:Ljava/lang/String;

    new-instance v5, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->mShop:Lcom/cymobile/ymwork/types/ConstrustionField;

    invoke-virtual {v6}, Lcom/cymobile/ymwork/types/ConstrustionField;->getBuildingreplydatetime()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-static {v5}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->isToday(Ljava/util/Date;)Z

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->mShop:Lcom/cymobile/ymwork/types/ConstrustionField;

    invoke-virtual {v6}, Lcom/cymobile/ymwork/types/ConstrustionField;->getBuildingreplydatetime()J

    move-result-wide v6

    invoke-static/range {v2 .. v7}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->setRead(Landroid/content/SharedPreferences;ILjava/lang/String;ZJ)V

    .line 591
    const v2, 0x7f0800f8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    .line 592
    .local v31, shoptel:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->mShop:Lcom/cymobile/ymwork/types/ConstrustionField;

    invoke-virtual {v2}, Lcom/cymobile/ymwork/types/ConstrustionField;->getCasedescription()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 593
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->mShop:Lcom/cymobile/ymwork/types/ConstrustionField;

    invoke-virtual {v2}, Lcom/cymobile/ymwork/types/ConstrustionField;->getCasedescription()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 606
    :goto_0
    const v2, 0x7f0800f4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/TextView;

    .line 608
    .local v29, shopdetail:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->mShop:Lcom/cymobile/ymwork/types/ConstrustionField;

    invoke-virtual {v2}, Lcom/cymobile/ymwork/types/ConstrustionField;->getIsWange()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 609
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v2, "<p>"

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->mShop:Lcom/cymobile/ymwork/types/ConstrustionField;

    invoke-virtual {v2}, Lcom/cymobile/ymwork/types/ConstrustionField;->getLocation()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    const-string v2, ""

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<br/><br/><font color=\'#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900af

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900ae

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</font></p>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v27

    .line 610
    .local v27, s:Landroid/text/Spanned;
    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 615
    .end local v27           #s:Landroid/text/Spanned;
    :goto_2
    const v2, 0x7f080101

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 616
    .local v9, Reply:Landroid/widget/TextView;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<p><font color=\'#"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900a5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u6279\u793a\u4eba\uff1a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</font>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u533a\u9886\u5bfc"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<br/><br/><font color=\'#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900a5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u6279\u793a\u65f6\u95f4\uff1a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</font>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "2013-08-09"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</p>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v27

    .line 617
    .restart local v27       #s:Landroid/text/Spanned;
    move-object/from16 v0, v27

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 618
    const v2, 0x7f0800fd

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/LinearLayout;

    .line 620
    .local v22, opinionview:Landroid/widget/LinearLayout;
    new-instance v2, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity$9;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity$9;-><init>(Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 651
    const v2, 0x7f0800f1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/LinearLayout;

    .line 653
    .local v30, shopdetailview:Landroid/widget/LinearLayout;
    new-instance v2, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity$10;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity$10;-><init>(Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;)V

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 682
    const v2, 0x7f0800fa

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 683
    .local v10, affact:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->mShop:Lcom/cymobile/ymwork/types/ConstrustionField;

    invoke-virtual {v2}, Lcom/cymobile/ymwork/types/ConstrustionField;->getAffactearea()Ljava/lang/String;

    move-result-object v11

    .line 684
    .local v11, affectedStr:Ljava/lang/String;
    const v2, 0x7f0800f9

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->busview:Landroid/widget/LinearLayout;

    .line 685
    if-eqz v11, :cond_7

    .line 687
    :try_start_0
    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 688
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\u5e73\u7c73"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 695
    :goto_3
    const v2, 0x7f0800ec

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 696
    .local v15, caseNum:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->mShop:Lcom/cymobile/ymwork/types/ConstrustionField;

    invoke-virtual {v2}, Lcom/cymobile/ymwork/types/ConstrustionField;->getCaseid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 697
    const v2, 0x7f0800f0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 698
    .local v17, community:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->mShop:Lcom/cymobile/ymwork/types/ConstrustionField;

    invoke-virtual {v2}, Lcom/cymobile/ymwork/types/ConstrustionField;->getCommunity()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 703
    const v2, 0x7f080105

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    .line 704
    .local v26, reporttimes:Landroid/widget/TextView;
    const v2, 0x7f080104

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->reporttime:Landroid/widget/LinearLayout;

    .line 705
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->mShop:Lcom/cymobile/ymwork/types/ConstrustionField;

    invoke-virtual {v2}, Lcom/cymobile/ymwork/types/ConstrustionField;->getBuildingreplydatetime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    .line 706
    .local v25, report:Ljava/lang/Long;
    new-instance v18, Ljava/util/Date;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object/from16 v0, v18

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 707
    .local v18, date:Ljava/util/Date;
    new-instance v28, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    move-object/from16 v0, v28

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 708
    .local v28, sdf:Ljava/text/SimpleDateFormat;
    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 710
    const v2, 0x7f080107

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 711
    .local v21, municipal_numbers:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->mShop:Lcom/cymobile/ymwork/types/ConstrustionField;

    invoke-virtual {v2}, Lcom/cymobile/ymwork/types/ConstrustionField;->getObject_id()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 712
    const v2, 0x7f080103

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    .line 713
    .local v23, positions:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->mShop:Lcom/cymobile/ymwork/types/ConstrustionField;

    invoke-virtual {v2}, Lcom/cymobile/ymwork/types/ConstrustionField;->getObject_name()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 714
    const v2, 0x7f0800fc

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 715
    .local v12, anjuanStatusView:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->mShop:Lcom/cymobile/ymwork/types/ConstrustionField;

    invoke-virtual {v2}, Lcom/cymobile/ymwork/types/ConstrustionField;->getCasestate()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 716
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->mShop:Lcom/cymobile/ymwork/types/ConstrustionField;

    invoke-virtual {v2}, Lcom/cymobile/ymwork/types/ConstrustionField;->getCasestate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 720
    :goto_4
    const v2, 0x7f0800f5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v34

    check-cast v34, Landroid/widget/TextView;

    .line 721
    .local v34, small_categary:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->mShop:Lcom/cymobile/ymwork/types/ConstrustionField;

    invoke-virtual {v2}, Lcom/cymobile/ymwork/types/ConstrustionField;->getCaseType()Ljava/lang/String;

    move-result-object v16

    .line 722
    .local v16, caseType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->mShop:Lcom/cymobile/ymwork/types/ConstrustionField;

    invoke-virtual {v2}, Lcom/cymobile/ymwork/types/ConstrustionField;->getBigCategory()Ljava/lang/String;

    move-result-object v14

    .line 723
    .local v14, bigCategory:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->mShop:Lcom/cymobile/ymwork/types/ConstrustionField;

    invoke-virtual {v2}, Lcom/cymobile/ymwork/types/ConstrustionField;->getSmallCategory()Ljava/lang/String;

    move-result-object v33

    .line 724
    .local v33, smallCategory:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->mShop:Lcom/cymobile/ymwork/types/ConstrustionField;

    invoke-virtual {v2}, Lcom/cymobile/ymwork/types/ConstrustionField;->getCasedetail()Ljava/lang/String;

    move-result-object v8

    .line 725
    .local v8, Casedetail:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    if-nez v16, :cond_0

    const-string v16, ""

    .end local v16           #caseType:Ljava/lang/String;
    :cond_0
    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v14, :cond_9

    const-string v2, ""

    :goto_5
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 726
    if-nez v33, :cond_a

    const-string v2, ""

    :goto_6
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v8, :cond_b

    const-string v2, ""

    :goto_7
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 725
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 727
    .local v32, sm_categary:Ljava/lang/String;
    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 739
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->mShop:Lcom/cymobile/ymwork/types/ConstrustionField;

    invoke-virtual {v2}, Lcom/cymobile/ymwork/types/ConstrustionField;->getLastReply()Lcom/cymobile/ymwork/types/Reply;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 740
    const v2, 0x7f0800ff

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    .line 741
    .local v13, backuparrow:Landroid/widget/ImageView;
    const/16 v2, 0x8

    invoke-virtual {v13, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 742
    const v2, 0x7f080100

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/LinearLayout;

    .line 743
    .local v24, replydetail:Landroid/widget/LinearLayout;
    const/4 v2, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 744
    const v2, 0x7f0800fe

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 745
    .local v20, lastopinion:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->mShop:Lcom/cymobile/ymwork/types/ConstrustionField;

    invoke-virtual {v2}, Lcom/cymobile/ymwork/types/ConstrustionField;->getLastReply()Lcom/cymobile/ymwork/types/Reply;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cymobile/ymwork/types/Reply;->getQulingdaopishi()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 746
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u6700\u65b0\u6279\u793a\u610f\u89c1: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->mShop:Lcom/cymobile/ymwork/types/ConstrustionField;

    invoke-virtual {v3}, Lcom/cymobile/ymwork/types/ConstrustionField;->getLastReply()Lcom/cymobile/ymwork/types/Reply;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cymobile/ymwork/types/Reply;->getQulingdaopishi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 756
    :cond_1
    :goto_8
    invoke-direct/range {p0 .. p0}, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->loadImages()V

    .line 758
    .end local v8           #Casedetail:Ljava/lang/String;
    .end local v9           #Reply:Landroid/widget/TextView;
    .end local v10           #affact:Landroid/widget/TextView;
    .end local v11           #affectedStr:Ljava/lang/String;
    .end local v12           #anjuanStatusView:Landroid/widget/TextView;
    .end local v13           #backuparrow:Landroid/widget/ImageView;
    .end local v14           #bigCategory:Ljava/lang/String;
    .end local v15           #caseNum:Landroid/widget/TextView;
    .end local v17           #community:Landroid/widget/TextView;
    .end local v18           #date:Ljava/util/Date;
    .end local v20           #lastopinion:Landroid/widget/TextView;
    .end local v21           #municipal_numbers:Landroid/widget/TextView;
    .end local v22           #opinionview:Landroid/widget/LinearLayout;
    .end local v23           #positions:Landroid/widget/TextView;
    .end local v24           #replydetail:Landroid/widget/LinearLayout;
    .end local v25           #report:Ljava/lang/Long;
    .end local v26           #reporttimes:Landroid/widget/TextView;
    .end local v27           #s:Landroid/text/Spanned;
    .end local v28           #sdf:Ljava/text/SimpleDateFormat;
    .end local v29           #shopdetail:Landroid/widget/TextView;
    .end local v30           #shopdetailview:Landroid/widget/LinearLayout;
    .end local v31           #shoptel:Landroid/widget/TextView;
    .end local v32           #sm_categary:Ljava/lang/String;
    .end local v33           #smallCategory:Ljava/lang/String;
    .end local v34           #small_categary:Landroid/widget/TextView;
    :cond_2
    return-void

    .line 604
    .restart local v31       #shoptel:Landroid/widget/TextView;
    :cond_3
    const-string v2, ""

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 609
    .restart local v29       #shopdetail:Landroid/widget/TextView;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->mShop:Lcom/cymobile/ymwork/types/ConstrustionField;

    invoke-virtual {v2}, Lcom/cymobile/ymwork/types/ConstrustionField;->getLocation()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 612
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->mShop:Lcom/cymobile/ymwork/types/ConstrustionField;

    invoke-virtual {v2}, Lcom/cymobile/ymwork/types/ConstrustionField;->getLocation()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    const-string v2, ""

    :goto_9
    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->mShop:Lcom/cymobile/ymwork/types/ConstrustionField;

    invoke-virtual {v2}, Lcom/cymobile/ymwork/types/ConstrustionField;->getLocation()Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    .line 689
    .restart local v9       #Reply:Landroid/widget/TextView;
    .restart local v10       #affact:Landroid/widget/TextView;
    .restart local v11       #affectedStr:Ljava/lang/String;
    .restart local v22       #opinionview:Landroid/widget/LinearLayout;
    .restart local v27       #s:Landroid/text/Spanned;
    .restart local v30       #shopdetailview:Landroid/widget/LinearLayout;
    :catch_0
    move-exception v19

    .line 690
    .local v19, ee:Ljava/lang/Exception;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 693
    .end local v19           #ee:Ljava/lang/Exception;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->busview:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_3

    .line 718
    .restart local v12       #anjuanStatusView:Landroid/widget/TextView;
    .restart local v15       #caseNum:Landroid/widget/TextView;
    .restart local v17       #community:Landroid/widget/TextView;
    .restart local v18       #date:Ljava/util/Date;
    .restart local v21       #municipal_numbers:Landroid/widget/TextView;
    .restart local v23       #positions:Landroid/widget/TextView;
    .restart local v25       #report:Ljava/lang/Long;
    .restart local v26       #reporttimes:Landroid/widget/TextView;
    .restart local v28       #sdf:Ljava/text/SimpleDateFormat;
    :cond_8
    const-string v2, ""

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 725
    .restart local v8       #Casedetail:Ljava/lang/String;
    .restart local v14       #bigCategory:Ljava/lang/String;
    .restart local v33       #smallCategory:Ljava/lang/String;
    .restart local v34       #small_categary:Landroid/widget/TextView;
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_5

    .line 726
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v33

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_6

    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_7

    .line 749
    .restart local v32       #sm_categary:Ljava/lang/String;
    :cond_c
    const v2, 0x7f0800ff

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    .line 750
    .restart local v13       #backuparrow:Landroid/widget/ImageView;
    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 751
    const v2, 0x7f080100

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/LinearLayout;

    .line 752
    .restart local v24       #replydetail:Landroid/widget/LinearLayout;
    const/16 v2, 0x8

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 753
    const v2, 0x7f0800fe

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 754
    .restart local v20       #lastopinion:Landroid/widget/TextView;
    const v2, 0x7f09003d

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_8
.end method

.method private onLoadTaskStart()V
    .locals 0

    .prologue
    .line 536
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->setLoadingView()V

    .line 537
    return-void
.end method

.method private onTaskComplete(Lcom/cymobile/ymwork/types/ConstrustionField;Ljava/lang/Exception;)V
    .locals 4
    .parameter "shop"
    .parameter "ex"

    .prologue
    const/4 v3, 0x0

    .line 542
    iput-boolean v3, p0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->mIsRunningTask:Z

    .line 543
    invoke-virtual {p0, v3}, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 544
    if-eqz p2, :cond_0

    .line 545
    iget-object v2, p0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->mLayoutEmpty:Landroid/view/ViewGroup;

    invoke-virtual {p0, v2}, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->setEmptyView(Landroid/view/View;)V

    .line 558
    :goto_0
    return-void

    .line 547
    :cond_0
    const v2, 0x1020004

    invoke-virtual {p0, v2}, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 548
    .local v1, loadableListHolder:Landroid/widget/LinearLayout;
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 550
    const v2, 0x7f0800e4

    invoke-virtual {p0, v2}, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 551
    .local v0, dataarea:Landroid/widget/LinearLayout;
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 552
    iput-object p1, p0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->mShop:Lcom/cymobile/ymwork/types/ConstrustionField;

    .line 553
    iget-object v2, p0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 71
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->requestWindowFeature(I)Z

    .line 72
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->requestWindowFeature(I)Z

    .line 73
    const v1, 0x7f03003c

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->setContentView(I)V

    .line 74
    iput-object p0, p0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->contexts:Landroid/content/Context;

    .line 75
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/HomeApplication;

    iput-object v1, p0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->mHomeApplication:Lcom/cymobile/ymwork/HomeApplication;

    .line 76
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "caseid"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->mCaseid:Ljava/lang/String;

    .line 80
    :try_start_0
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "classid"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->mClassid:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :cond_0
    :goto_0
    const-class v1, Lcom/cymobile/ymwork/SettingBase;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 86
    const/4 v2, 0x2

    .line 85
    invoke-virtual {p0, v1, v2}, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 87
    const v1, 0x7f0800ea

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Luk/co/jasonfry/android/tools/ui/PageControl;

    iput-object v1, p0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->mPageControl:Luk/co/jasonfry/android/tools/ui/PageControl;

    .line 88
    const v1, 0x7f0800e7

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Luk/co/jasonfry/android/tools/ui/SwipeView;

    iput-object v1, p0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->mSwipeView:Luk/co/jasonfry/android/tools/ui/SwipeView;

    .line 89
    const v1, 0x7f0800e6

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->swipe_left:Landroid/widget/ImageButton;

    .line 90
    const v1, 0x7f0800e8

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->swipe_right:Landroid/widget/ImageButton;

    .line 91
    iget-object v1, p0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->swipe_left:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 92
    iget-object v1, p0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->swipe_right:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 93
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/HomeApplication;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/HomeApplication;->getRemoteResourceManager()Lcom/cymobile/ymwork/server/RemoteResourceManager;

    move-result-object v1

    iput-object v1, p0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->mRrm:Lcom/cymobile/ymwork/server/RemoteResourceManager;

    .line 94
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->ensureUi()V

    .line 96
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, ee:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 800
    const/16 v1, 0xa

    if-ne p1, v1, :cond_0

    .line 801
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 802
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const-string v1, "\u53ea\u6709\u533a\u7ea7\u9886\u5bfc\u624d\u80fd\u6279\u793a\u610f\u89c1\uff0c\u662f\u5426\u7ee7\u7eed\uff1f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 803
    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 804
    const-string v1, "\u786e\u8ba4"

    new-instance v2, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity$11;

    invoke-direct {v2, p0}, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity$11;-><init>(Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 812
    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity$12;

    invoke-direct {v2, p0}, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity$12;-><init>(Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 818
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 820
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    goto :goto_0
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 8
    .parameter "view"

    .prologue
    const v7, 0x1020004

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 443
    invoke-virtual {p0, v7}, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 444
    .local v1, loadableListHolder:Landroid/widget/LinearLayout;
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 446
    const v3, 0x7f0800e4

    invoke-virtual {p0, v3}, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 447
    .local v0, dataarea:Landroid/widget/LinearLayout;
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 449
    invoke-virtual {p0, v7}, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 451
    .local v2, parent:Landroid/widget/LinearLayout;
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 453
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-le v3, v5, :cond_0

    .line 454
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 456
    :cond_0
    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 457
    return-void
.end method

.method public setLoadingView()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 460
    const v1, 0x1020004

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 461
    .local v0, parent:Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-le v1, v3, :cond_0

    .line 462
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 465
    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 466
    return-void
.end method

.method public startTask(Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 764
    iget-boolean v1, p0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->mIsRunningTask:Z

    if-nez v1, :cond_0

    .line 765
    new-instance v0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity$TaskShopDetail;

    invoke-direct {v0, p0, p1}, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity$TaskShopDetail;-><init>(Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;)V

    .line 766
    .local v0, mTaskShopDetail:Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity$TaskShopDetail;
    invoke-static {v0}, Lcom/cymobile/ymwork/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V

    .line 767
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity;->mIsRunningTask:Z

    .line 769
    .end local v0           #mTaskShopDetail:Lcom/cymobile/ymwork/act/ShopDetailsPublicReportActivity$TaskShopDetail;
    :cond_0
    return-void
.end method
