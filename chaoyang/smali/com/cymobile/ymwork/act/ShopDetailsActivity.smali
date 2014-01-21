.class public Lcom/cymobile/ymwork/act/ShopDetailsActivity;
.super Landroid/app/Activity;
.source "ShopDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cymobile/ymwork/act/ShopDetailsActivity$ShopImageFetcher;,
        Lcom/cymobile/ymwork/act/ShopDetailsActivity$SwipeImageLoader;,
        Lcom/cymobile/ymwork/act/ShopDetailsActivity$TaskShopDetail;
    }
.end annotation


# static fields
.field private static final Dialog_confirm_reply:I = 0xa

.field public static final Intent_caseId:Ljava/lang/String; = "caseid"

.field public static final Intent_classId:Ljava/lang/String; = "classid"

.field static final ShopReady:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ShopDetailsActivity"


# instance fields
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

.field private mShop:Lcom/cymobile/ymwork/types/Building;

.field mSwipeView:Luk/co/jasonfry/android/tools/ui/SwipeView;

.field swipe_left:Landroid/widget/ImageButton;

.field swipe_right:Landroid/widget/ImageButton;

.field taskShopDetail:Lcom/cymobile/ymwork/act/ShopDetailsActivity$TaskShopDetail;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 342
    new-instance v0, Lcom/cymobile/ymwork/act/ShopDetailsActivity$1;

    invoke-direct {v0, p0}, Lcom/cymobile/ymwork/act/ShopDetailsActivity$1;-><init>(Lcom/cymobile/ymwork/act/ShopDetailsActivity;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->imageOnclick:Landroid/view/View$OnClickListener;

    .line 563
    new-instance v0, Lcom/cymobile/ymwork/act/ShopDetailsActivity$2;

    invoke-direct {v0, p0}, Lcom/cymobile/ymwork/act/ShopDetailsActivity$2;-><init>(Lcom/cymobile/ymwork/act/ShopDetailsActivity;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->mHandler:Landroid/os/Handler;

    .line 732
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->mIsRunningTask:Z

    .line 58
    return-void
.end method

.method static synthetic access$0(Lcom/cymobile/ymwork/act/ShopDetailsActivity;)Lcom/cymobile/ymwork/types/Building;
    .locals 1
    .parameter

    .prologue
    .line 541
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->mShop:Lcom/cymobile/ymwork/types/Building;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cymobile/ymwork/act/ShopDetailsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 576
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->loadShop()V

    return-void
.end method

.method static synthetic access$2(Lcom/cymobile/ymwork/act/ShopDetailsActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->mCaseid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/cymobile/ymwork/act/ShopDetailsActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 64
    iget v0, p0, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->mClassid:I

    return v0
.end method

.method static synthetic access$4(Lcom/cymobile/ymwork/act/ShopDetailsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 537
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->onLoadTaskStart()V

    return-void
.end method

.method static synthetic access$5(Lcom/cymobile/ymwork/act/ShopDetailsActivity;Lcom/cymobile/ymwork/types/Building;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 543
    invoke-direct {p0, p1, p2}, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->onTaskComplete(Lcom/cymobile/ymwork/types/Building;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$6(Lcom/cymobile/ymwork/act/ShopDetailsActivity;)Lcom/cymobile/ymwork/HomeApplication;
    .locals 1
    .parameter

    .prologue
    .line 469
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->mHomeApplication:Lcom/cymobile/ymwork/HomeApplication;

    return-object v0
.end method

.method static synthetic access$7(Lcom/cymobile/ymwork/act/ShopDetailsActivity;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->contexts:Landroid/content/Context;

    return-object v0
.end method

.method private ensureUi()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 374
    const v6, 0x7f08002d

    invoke-virtual {p0, v6}, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    .line 376
    .local v3, leftbtn:Landroid/widget/ImageButton;
    const v6, 0x7f08002f

    invoke-virtual {p0, v6}, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 377
    .local v5, title:Landroid/widget/TextView;
    const v6, 0x7f090021

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 378
    new-instance v6, Lcom/cymobile/ymwork/act/ShopDetailsActivity$5;

    invoke-direct {v6, p0}, Lcom/cymobile/ymwork/act/ShopDetailsActivity$5;-><init>(Lcom/cymobile/ymwork/act/ShopDetailsActivity;)V

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 385
    .local v2, inflater:Landroid/view/LayoutInflater;
    invoke-static {}, Lcom/cymobile/ymwork/utils/UiUtil;->sdkVersion()I

    move-result v6

    const/4 v7, 0x3

    if-le v6, v7, :cond_0

    .line 387
    const v6, 0x7f03003d

    .line 386
    invoke-virtual {v2, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ScrollView;

    iput-object v6, p0, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->mLayoutEmpty:Landroid/view/ViewGroup;

    .line 394
    :goto_0
    iget-object v6, p0, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->mLayoutEmpty:Landroid/view/ViewGroup;

    .line 395
    const v7, 0x7f08010f

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 394
    check-cast v0, Landroid/widget/Button;

    .line 396
    .local v0, btnAddFriends:Landroid/widget/Button;
    new-instance v6, Lcom/cymobile/ymwork/act/ShopDetailsActivity$6;

    invoke-direct {v6, p0}, Lcom/cymobile/ymwork/act/ShopDetailsActivity$6;-><init>(Lcom/cymobile/ymwork/act/ShopDetailsActivity;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    iget-object v6, p0, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->mLayoutEmpty:Landroid/view/ViewGroup;

    .line 403
    const v7, 0x7f080110

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 402
    check-cast v1, Landroid/widget/Button;

    .line 404
    .local v1, btnFriendRequests:Landroid/widget/Button;
    new-instance v6, Lcom/cymobile/ymwork/act/ShopDetailsActivity$7;

    invoke-direct {v6, p0}, Lcom/cymobile/ymwork/act/ShopDetailsActivity$7;-><init>(Lcom/cymobile/ymwork/act/ShopDetailsActivity;)V

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 409
    iget-object v6, p0, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->mLayoutEmpty:Landroid/view/ViewGroup;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 411
    invoke-direct {v7, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 409
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 413
    const v6, 0x7f080030

    invoke-virtual {p0, v6}, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    .line 414
    .local v4, mapbtn:Landroid/widget/ImageButton;
    new-instance v6, Lcom/cymobile/ymwork/act/ShopDetailsActivity$8;

    invoke-direct {v6, p0}, Lcom/cymobile/ymwork/act/ShopDetailsActivity$8;-><init>(Lcom/cymobile/ymwork/act/ShopDetailsActivity;)V

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 440
    invoke-virtual {p0, p0}, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->startTask(Lcom/cymobile/ymwork/act/ShopDetailsActivity;)V

    .line 441
    return-void

    .line 392
    .end local v0           #btnAddFriends:Landroid/widget/Button;
    .end local v1           #btnFriendRequests:Landroid/widget/Button;
    .end local v4           #mapbtn:Landroid/widget/ImageButton;
    :cond_0
    const v6, 0x7f03003e

    .line 391
    invoke-virtual {v2, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ScrollView;

    iput-object v6, p0, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->mLayoutEmpty:Landroid/view/ViewGroup;

    goto :goto_0
.end method

.method private loadImages()V
    .locals 20

    .prologue
    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->mShop:Lcom/cymobile/ymwork/types/Building;

    move-object/from16 v16, v0

    if-eqz v16, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->mShop:Lcom/cymobile/ymwork/types/Building;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/cymobile/ymwork/types/Building;->getImgUrl()Ljava/lang/String;

    move-result-object v16

    if-nez v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->mShop:Lcom/cymobile/ymwork/types/Building;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/cymobile/ymwork/types/Building;->getImgUrl1()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_b

    .line 220
    :cond_0
    const/4 v15, 0x0

    .line 221
    .local v15, size:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->mShop:Lcom/cymobile/ymwork/types/Building;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/cymobile/ymwork/types/Building;->getImgUrl()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_1

    .line 222
    add-int/lit8 v15, v15, 0x1

    .line 224
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->mShop:Lcom/cymobile/ymwork/types/Building;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/cymobile/ymwork/types/Building;->getImgUrl1()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_2

    .line 225
    add-int/lit8 v15, v15, 0x1

    .line 227
    :cond_2
    new-array v0, v15, [I

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->images:[I

    .line 228
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->images:[I

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-lt v6, v0, :cond_6

    .line 232
    const/4 v6, 0x0

    :goto_1
    if-lt v6, v15, :cond_7

    .line 237
    new-instance v7, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 238
    .local v7, i0:Landroid/widget/ImageView;
    sget-object v16, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->mSwipeView:Luk/co/jasonfry/android/tools/ui/SwipeView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Luk/co/jasonfry/android/tools/ui/SwipeView;->getChildContainer()Landroid/widget/LinearLayout;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/FrameLayout;

    invoke-virtual/range {v16 .. v16}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->mSwipeView:Luk/co/jasonfry/android/tools/ui/SwipeView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Luk/co/jasonfry/android/tools/ui/SwipeView;->getChildContainer()Landroid/widget/LinearLayout;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/FrameLayout;

    .line 241
    new-instance v17, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v18, -0x1

    const/16 v19, -0x1

    invoke-direct/range {v17 .. v19}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v7, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->mShop:Lcom/cymobile/ymwork/types/Building;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/cymobile/ymwork/types/Building;->getImgUrl()Ljava/lang/String;

    move-result-object v9

    .line 243
    .local v9, imageUrl:Ljava/lang/String;
    if-nez v9, :cond_3

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->mShop:Lcom/cymobile/ymwork/types/Building;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/cymobile/ymwork/types/Building;->getImgUrl1()Ljava/lang/String;

    move-result-object v9

    .line 246
    :cond_3
    if-eqz v9, :cond_4

    .line 247
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 249
    .local v14, photoUri:Landroid/net/Uri;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->mRrm:Lcom/cymobile/ymwork/server/RemoteResourceManager;

    move-object/from16 v16, v0

    .line 250
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Lcom/cymobile/ymwork/server/RemoteResourceManager;->getInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v16

    .line 249
    invoke-static/range {v16 .. v16}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 251
    .local v3, bitmap:Landroid/graphics/Bitmap;
    if-nez v3, :cond_8

    .line 252
    new-instance v16, Ljava/lang/Exception;

    const-string v17, "empty i0 1"

    invoke-direct/range {v16 .. v17}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v16
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    .end local v3           #bitmap:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v4

    .line 257
    .local v4, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->images:[I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget v16, v16, v17

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->mRrm:Lcom/cymobile/ymwork/server/RemoteResourceManager;

    move-object/from16 v16, v0

    new-instance v17, Lcom/cymobile/ymwork/act/ShopDetailsActivity$ShopImageFetcher;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v14, v7}, Lcom/cymobile/ymwork/act/ShopDetailsActivity$ShopImageFetcher;-><init>(Lcom/cymobile/ymwork/act/ShopDetailsActivity;Landroid/net/Uri;Landroid/widget/ImageView;)V

    invoke-virtual/range {v16 .. v17}, Lcom/cymobile/ymwork/server/RemoteResourceManager;->addObserver(Ljava/util/Observer;)V

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->mRrm:Lcom/cymobile/ymwork/server/RemoteResourceManager;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Lcom/cymobile/ymwork/server/RemoteResourceManager;->request(Landroid/net/Uri;)V

    .line 263
    .end local v4           #e:Ljava/lang/Exception;
    .end local v14           #photoUri:Landroid/net/Uri;
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->imageOnclick:Landroid/view/View$OnClickListener;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v15, v0, :cond_a

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->swipe_left:Landroid/widget/ImageButton;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->swipe_right:Landroid/widget/ImageButton;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->swipe_left:Landroid/widget/ImageButton;

    move-object/from16 v16, v0

    new-instance v17, Lcom/cymobile/ymwork/act/ShopDetailsActivity$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/cymobile/ymwork/act/ShopDetailsActivity$3;-><init>(Lcom/cymobile/ymwork/act/ShopDetailsActivity;)V

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->swipe_right:Landroid/widget/ImageButton;

    move-object/from16 v16, v0

    new-instance v17, Lcom/cymobile/ymwork/act/ShopDetailsActivity$4;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/cymobile/ymwork/act/ShopDetailsActivity$4;-><init>(Lcom/cymobile/ymwork/act/ShopDetailsActivity;)V

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    new-instance v8, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 288
    .local v8, i1:Landroid/widget/ImageView;
    sget-object v16, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->mShop:Lcom/cymobile/ymwork/types/Building;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/cymobile/ymwork/types/Building;->getImgUrl1()Ljava/lang/String;

    move-result-object v10

    .line 290
    .local v10, imageUrl1:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->mSwipeView:Luk/co/jasonfry/android/tools/ui/SwipeView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Luk/co/jasonfry/android/tools/ui/SwipeView;->getChildContainer()Landroid/widget/LinearLayout;

    move-result-object v16

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/FrameLayout;

    invoke-virtual/range {v16 .. v16}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->mSwipeView:Luk/co/jasonfry/android/tools/ui/SwipeView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Luk/co/jasonfry/android/tools/ui/SwipeView;->getChildContainer()Landroid/widget/LinearLayout;

    move-result-object v16

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/FrameLayout;

    .line 292
    new-instance v17, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v18, -0x1

    const/16 v19, -0x1

    invoke-direct/range {v17 .. v19}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v8, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 293
    if-eqz v10, :cond_5

    .line 294
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 296
    .restart local v14       #photoUri:Landroid/net/Uri;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->mRrm:Lcom/cymobile/ymwork/server/RemoteResourceManager;

    move-object/from16 v16, v0

    .line 297
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Lcom/cymobile/ymwork/server/RemoteResourceManager;->getInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v16

    .line 296
    invoke-static/range {v16 .. v16}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 298
    .restart local v3       #bitmap:Landroid/graphics/Bitmap;
    if-nez v3, :cond_9

    .line 299
    new-instance v16, Ljava/lang/Exception;

    const-string v17, "empty i1"

    invoke-direct/range {v16 .. v17}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v16
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 303
    .end local v3           #bitmap:Landroid/graphics/Bitmap;
    :catch_1
    move-exception v4

    .line 305
    .restart local v4       #e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->mRrm:Lcom/cymobile/ymwork/server/RemoteResourceManager;

    move-object/from16 v16, v0

    new-instance v17, Lcom/cymobile/ymwork/act/ShopDetailsActivity$ShopImageFetcher;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v14, v8}, Lcom/cymobile/ymwork/act/ShopDetailsActivity$ShopImageFetcher;-><init>(Lcom/cymobile/ymwork/act/ShopDetailsActivity;Landroid/net/Uri;Landroid/widget/ImageView;)V

    invoke-virtual/range {v16 .. v17}, Lcom/cymobile/ymwork/server/RemoteResourceManager;->addObserver(Ljava/util/Observer;)V

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->mRrm:Lcom/cymobile/ymwork/server/RemoteResourceManager;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Lcom/cymobile/ymwork/server/RemoteResourceManager;->request(Landroid/net/Uri;)V

    .line 310
    .end local v4           #e:Ljava/lang/Exception;
    .end local v14           #photoUri:Landroid/net/Uri;
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->imageOnclick:Landroid/view/View$OnClickListener;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    const v16, 0x7f0800e9

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 312
    .local v13, photoType:Landroid/widget/TextView;
    const v16, 0x7f09009e

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(I)V

    .line 313
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 319
    .end local v8           #i1:Landroid/widget/ImageView;
    .end local v10           #imageUrl1:Ljava/lang/String;
    .end local v13           #photoType:Landroid/widget/TextView;
    :goto_4
    new-instance v11, Lcom/cymobile/ymwork/act/ShopDetailsActivity$SwipeImageLoader;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v11, v0, v1}, Lcom/cymobile/ymwork/act/ShopDetailsActivity$SwipeImageLoader;-><init>(Lcom/cymobile/ymwork/act/ShopDetailsActivity;Lcom/cymobile/ymwork/act/ShopDetailsActivity$SwipeImageLoader;)V

    .line 321
    .local v11, mSwipeImageLoader:Lcom/cymobile/ymwork/act/ShopDetailsActivity$SwipeImageLoader;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->mSwipeView:Luk/co/jasonfry/android/tools/ui/SwipeView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Luk/co/jasonfry/android/tools/ui/SwipeView;->setOnPageChangedListener(Luk/co/jasonfry/android/tools/ui/SwipeView$OnPageChangedListener;)V

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->mSwipeView:Luk/co/jasonfry/android/tools/ui/SwipeView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->mPageControl:Luk/co/jasonfry/android/tools/ui/PageControl;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Luk/co/jasonfry/android/tools/ui/SwipeView;->setPageControl(Luk/co/jasonfry/android/tools/ui/PageControl;)V

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->mSwipeView:Luk/co/jasonfry/android/tools/ui/SwipeView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Luk/co/jasonfry/android/tools/ui/SwipeView;->refreshDrawableState()V

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->mSwipeView:Luk/co/jasonfry/android/tools/ui/SwipeView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Luk/co/jasonfry/android/tools/ui/SwipeView;->invalidate()V

    .line 339
    .end local v6           #i:I
    .end local v7           #i0:Landroid/widget/ImageView;
    .end local v9           #imageUrl:Ljava/lang/String;
    .end local v11           #mSwipeImageLoader:Lcom/cymobile/ymwork/act/ShopDetailsActivity$SwipeImageLoader;
    .end local v15           #size:I
    :goto_5
    return-void

    .line 229
    .restart local v6       #i:I
    .restart local v15       #size:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->images:[I

    move-object/from16 v16, v0

    const v17, 0x7f0200e4

    aput v17, v16, v6

    .line 228
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 233
    :cond_7
    new-instance v5, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 235
    .local v5, fl:Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->mSwipeView:Luk/co/jasonfry/android/tools/ui/SwipeView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Luk/co/jasonfry/android/tools/ui/SwipeView;->addView(Landroid/view/View;)V

    .line 232
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 254
    .end local v5           #fl:Landroid/widget/FrameLayout;
    .restart local v3       #bitmap:Landroid/graphics/Bitmap;
    .restart local v7       #i0:Landroid/widget/ImageView;
    .restart local v9       #imageUrl:Ljava/lang/String;
    .restart local v14       #photoUri:Landroid/net/Uri;
    :cond_8
    :try_start_2
    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 255
    invoke-virtual {v7}, Landroid/widget/ImageView;->refreshDrawableState()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 301
    .restart local v8       #i1:Landroid/widget/ImageView;
    .restart local v10       #imageUrl1:Ljava/lang/String;
    :cond_9
    :try_start_3
    invoke-virtual {v8, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 302
    invoke-virtual {v8}, Landroid/widget/ImageView;->refreshDrawableState()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_3

    .line 315
    .end local v3           #bitmap:Landroid/graphics/Bitmap;
    .end local v8           #i1:Landroid/widget/ImageView;
    .end local v10           #imageUrl1:Ljava/lang/String;
    .end local v14           #photoUri:Landroid/net/Uri;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->swipe_left:Landroid/widget/ImageButton;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->swipe_right:Landroid/widget/ImageButton;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_4

    .line 327
    .end local v6           #i:I
    .end local v7           #i0:Landroid/widget/ImageView;
    .end local v9           #imageUrl:Ljava/lang/String;
    .end local v15           #size:I
    :cond_b
    const v16, 0x7f0800e5

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 328
    .local v2, albumfolder:Landroid/widget/LinearLayout;
    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 330
    const v16, 0x7f0800e9

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 331
    .restart local v13       #photoType:Landroid/widget/TextView;
    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 333
    const v16, 0x7f0800ea

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Luk/co/jasonfry/android/tools/ui/PageControl;

    .line 334
    .local v12, page_control:Luk/co/jasonfry/android/tools/ui/PageControl;
    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Luk/co/jasonfry/android/tools/ui/PageControl;->setVisibility(I)V

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->swipe_left:Landroid/widget/ImageButton;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->swipe_right:Landroid/widget/ImageButton;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto/16 :goto_5
.end method

.method private loadShop()V
    .locals 24

    .prologue
    .line 577
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->mShop:Lcom/cymobile/ymwork/types/Building;

    if-eqz v2, :cond_1

    .line 578
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->mShop:Lcom/cymobile/ymwork/types/Building;

    invoke-virtual {v2}, Lcom/cymobile/ymwork/types/Building;->getReportTime()J

    .line 579
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->mPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->mShop:Lcom/cymobile/ymwork/types/Building;

    invoke-virtual {v3}, Lcom/cymobile/ymwork/types/Building;->getclassid()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->mCaseid:Ljava/lang/String;

    new-instance v5, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->mShop:Lcom/cymobile/ymwork/types/Building;

    invoke-virtual {v6}, Lcom/cymobile/ymwork/types/Building;->getReportTime()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-static {v5}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->isToday(Ljava/util/Date;)Z

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->mShop:Lcom/cymobile/ymwork/types/Building;

    invoke-virtual {v6}, Lcom/cymobile/ymwork/types/Building;->getReportTime()J

    move-result-wide v6

    invoke-static/range {v2 .. v7}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->setRead(Landroid/content/SharedPreferences;ILjava/lang/String;ZJ)V

    .line 593
    const v2, 0x7f0800f8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 594
    .local v22, shoptel:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->mShop:Lcom/cymobile/ymwork/types/Building;

    invoke-virtual {v2}, Lcom/cymobile/ymwork/types/Building;->getCaseDescription()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 595
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->mShop:Lcom/cymobile/ymwork/types/Building;

    invoke-virtual {v2}, Lcom/cymobile/ymwork/types/Building;->getCaseDescription()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 608
    :goto_0
    const v2, 0x7f0800f4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 609
    .local v20, shopdetail:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->mShop:Lcom/cymobile/ymwork/types/Building;

    invoke-virtual {v2}, Lcom/cymobile/ymwork/types/Building;->getLocation()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 610
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->mShop:Lcom/cymobile/ymwork/types/Building;

    invoke-virtual {v2}, Lcom/cymobile/ymwork/types/Building;->getIsWange()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 611
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<p>"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->mShop:Lcom/cymobile/ymwork/types/Building;

    invoke-virtual {v3}, Lcom/cymobile/ymwork/types/Building;->getLocation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<br/><br/><font color=\'#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900af

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->getResources()Landroid/content/res/Resources;

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

    move-result-object v19

    .line 612
    .local v19, s:Landroid/text/Spanned;
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 617
    .end local v19           #s:Landroid/text/Spanned;
    :goto_1
    const v2, 0x7f080101

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 618
    .local v8, Reply:Landroid/widget/TextView;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<p><font color=\'#"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->getResources()Landroid/content/res/Resources;

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

    invoke-virtual/range {p0 .. p0}, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->getResources()Landroid/content/res/Resources;

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

    move-result-object v19

    .line 619
    .restart local v19       #s:Landroid/text/Spanned;
    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 620
    const v2, 0x7f0800fd

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    .line 622
    .local v17, opinionview:Landroid/widget/LinearLayout;
    new-instance v2, Lcom/cymobile/ymwork/act/ShopDetailsActivity$9;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/cymobile/ymwork/act/ShopDetailsActivity$9;-><init>(Lcom/cymobile/ymwork/act/ShopDetailsActivity;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 653
    const v2, 0x7f0800f1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout;

    .line 655
    .local v21, shopdetailview:Landroid/widget/LinearLayout;
    new-instance v2, Lcom/cymobile/ymwork/act/ShopDetailsActivity$10;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/cymobile/ymwork/act/ShopDetailsActivity$10;-><init>(Lcom/cymobile/ymwork/act/ShopDetailsActivity;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 683
    .end local v8           #Reply:Landroid/widget/TextView;
    .end local v17           #opinionview:Landroid/widget/LinearLayout;
    .end local v19           #s:Landroid/text/Spanned;
    .end local v21           #shopdetailview:Landroid/widget/LinearLayout;
    :goto_2
    const v2, 0x7f0800fa

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 684
    .local v9, affact:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->mShop:Lcom/cymobile/ymwork/types/Building;

    invoke-virtual {v2}, Lcom/cymobile/ymwork/types/Building;->getAffectArea()Ljava/lang/String;

    move-result-object v10

    .line 686
    .local v10, affectedStr:Ljava/lang/String;
    :try_start_0
    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 687
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\u5e73\u7c73"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 691
    :goto_3
    const v2, 0x7f0800ec

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 692
    .local v13, caseNum:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->mShop:Lcom/cymobile/ymwork/types/Building;

    invoke-virtual {v2}, Lcom/cymobile/ymwork/types/Building;->getCaseId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 693
    const v2, 0x7f0800f0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 694
    .local v14, community:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->mShop:Lcom/cymobile/ymwork/types/Building;

    invoke-virtual {v2}, Lcom/cymobile/ymwork/types/Building;->getCommunity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 699
    const v2, 0x7f0800fc

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 700
    .local v11, anjuanStatusView:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->mShop:Lcom/cymobile/ymwork/types/Building;

    invoke-virtual {v2}, Lcom/cymobile/ymwork/types/Building;->getCaseState()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 701
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->mShop:Lcom/cymobile/ymwork/types/Building;

    invoke-virtual {v2}, Lcom/cymobile/ymwork/types/Building;->getCaseState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 705
    :goto_4
    const v2, 0x7f0800f5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    .line 706
    .local v23, small_categary:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->mShop:Lcom/cymobile/ymwork/types/Building;

    invoke-virtual {v2}, Lcom/cymobile/ymwork/types/Building;->getCaseDetail()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 707
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->mShop:Lcom/cymobile/ymwork/types/Building;

    invoke-virtual {v2}, Lcom/cymobile/ymwork/types/Building;->getCaseDetail()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 711
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->mShop:Lcom/cymobile/ymwork/types/Building;

    invoke-virtual {v2}, Lcom/cymobile/ymwork/types/Building;->getLastReply()Lcom/cymobile/ymwork/types/Reply;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 712
    const v2, 0x7f0800ff

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 713
    .local v12, backuparrow:Landroid/widget/ImageView;
    const/16 v2, 0x8

    invoke-virtual {v12, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 714
    const v2, 0x7f080100

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout;

    .line 715
    .local v18, replydetail:Landroid/widget/LinearLayout;
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 716
    const v2, 0x7f0800fe

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 717
    .local v16, lastopinion:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->mShop:Lcom/cymobile/ymwork/types/Building;

    invoke-virtual {v2}, Lcom/cymobile/ymwork/types/Building;->getLastReply()Lcom/cymobile/ymwork/types/Reply;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cymobile/ymwork/types/Reply;->getQulingdaopishi()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 718
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u6700\u65b0\u6279\u793a\u610f\u89c1: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->mShop:Lcom/cymobile/ymwork/types/Building;

    invoke-virtual {v3}, Lcom/cymobile/ymwork/types/Building;->getLastReply()Lcom/cymobile/ymwork/types/Reply;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cymobile/ymwork/types/Reply;->getQulingdaopishi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 728
    :cond_0
    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->loadImages()V

    .line 730
    .end local v9           #affact:Landroid/widget/TextView;
    .end local v10           #affectedStr:Ljava/lang/String;
    .end local v11           #anjuanStatusView:Landroid/widget/TextView;
    .end local v12           #backuparrow:Landroid/widget/ImageView;
    .end local v13           #caseNum:Landroid/widget/TextView;
    .end local v14           #community:Landroid/widget/TextView;
    .end local v16           #lastopinion:Landroid/widget/TextView;
    .end local v18           #replydetail:Landroid/widget/LinearLayout;
    .end local v20           #shopdetail:Landroid/widget/TextView;
    .end local v22           #shoptel:Landroid/widget/TextView;
    .end local v23           #small_categary:Landroid/widget/TextView;
    :cond_1
    return-void

    .line 606
    .restart local v22       #shoptel:Landroid/widget/TextView;
    :cond_2
    const-string v2, ""

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 614
    .restart local v20       #shopdetail:Landroid/widget/TextView;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->mShop:Lcom/cymobile/ymwork/types/Building;

    invoke-virtual {v2}, Lcom/cymobile/ymwork/types/Building;->getLocation()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 680
    :cond_4
    const-string v2, ""

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 688
    .restart local v9       #affact:Landroid/widget/TextView;
    .restart local v10       #affectedStr:Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 689
    .local v15, ee:Ljava/lang/Exception;
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 703
    .end local v15           #ee:Ljava/lang/Exception;
    .restart local v11       #anjuanStatusView:Landroid/widget/TextView;
    .restart local v13       #caseNum:Landroid/widget/TextView;
    .restart local v14       #community:Landroid/widget/TextView;
    :cond_5
    const-string v2, ""

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 709
    .restart local v23       #small_categary:Landroid/widget/TextView;
    :cond_6
    const-string v2, ""

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 721
    :cond_7
    const v2, 0x7f0800ff

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 722
    .restart local v12       #backuparrow:Landroid/widget/ImageView;
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 723
    const v2, 0x7f080100

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout;

    .line 724
    .restart local v18       #replydetail:Landroid/widget/LinearLayout;
    const/16 v2, 0x8

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 725
    const v2, 0x7f0800fe

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 726
    .restart local v16       #lastopinion:Landroid/widget/TextView;
    const v2, 0x7f09003d

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_6
.end method

.method private onLoadTaskStart()V
    .locals 0

    .prologue
    .line 538
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->setLoadingView()V

    .line 539
    return-void
.end method

.method private onTaskComplete(Lcom/cymobile/ymwork/types/Building;Ljava/lang/Exception;)V
    .locals 4
    .parameter "shop"
    .parameter "ex"

    .prologue
    const/4 v3, 0x0

    .line 544
    iput-boolean v3, p0, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->mIsRunningTask:Z

    .line 545
    invoke-virtual {p0, v3}, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 546
    if-eqz p2, :cond_0

    .line 547
    iget-object v2, p0, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->mLayoutEmpty:Landroid/view/ViewGroup;

    invoke-virtual {p0, v2}, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->setEmptyView(Landroid/view/View;)V

    .line 560
    :goto_0
    return-void

    .line 549
    :cond_0
    const v2, 0x1020004

    invoke-virtual {p0, v2}, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 550
    .local v1, loadableListHolder:Landroid/widget/LinearLayout;
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 552
    const v2, 0x7f0800e4

    invoke-virtual {p0, v2}, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 553
    .local v0, dataarea:Landroid/widget/LinearLayout;
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 554
    iput-object p1, p0, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->mShop:Lcom/cymobile/ymwork/types/Building;

    .line 555
    iget-object v2, p0, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->mHandler:Landroid/os/Handler;

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

    .line 74
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->requestWindowFeature(I)Z

    .line 75
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->requestWindowFeature(I)Z

    .line 76
    const v1, 0x7f030039

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->setContentView(I)V

    .line 77
    iput-object p0, p0, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->contexts:Landroid/content/Context;

    .line 78
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/HomeApplication;

    iput-object v1, p0, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->mHomeApplication:Lcom/cymobile/ymwork/HomeApplication;

    .line 79
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "caseid"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->mCaseid:Ljava/lang/String;

    .line 83
    :try_start_0
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "classid"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->mClassid:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :cond_0
    :goto_0
    const-class v1, Lcom/cymobile/ymwork/SettingBase;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 89
    const/4 v2, 0x2

    .line 88
    invoke-virtual {p0, v1, v2}, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 90
    const v1, 0x7f0800ea

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Luk/co/jasonfry/android/tools/ui/PageControl;

    iput-object v1, p0, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->mPageControl:Luk/co/jasonfry/android/tools/ui/PageControl;

    .line 91
    const v1, 0x7f0800e7

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Luk/co/jasonfry/android/tools/ui/SwipeView;

    iput-object v1, p0, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->mSwipeView:Luk/co/jasonfry/android/tools/ui/SwipeView;

    .line 92
    const v1, 0x7f0800e6

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->swipe_left:Landroid/widget/ImageButton;

    .line 93
    const v1, 0x7f0800e8

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->swipe_right:Landroid/widget/ImageButton;

    .line 94
    iget-object v1, p0, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->swipe_left:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 95
    iget-object v1, p0, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->swipe_right:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 96
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/HomeApplication;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/HomeApplication;->getRemoteResourceManager()Lcom/cymobile/ymwork/server/RemoteResourceManager;

    move-result-object v1

    iput-object v1, p0, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->mRrm:Lcom/cymobile/ymwork/server/RemoteResourceManager;

    .line 97
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->ensureUi()V

    .line 99
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, ee:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 772
    const/16 v1, 0xa

    if-ne p1, v1, :cond_0

    .line 773
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 774
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const-string v1, "\u53ea\u6709\u533a\u7ea7\u9886\u5bfc\u624d\u80fd\u6279\u793a\u610f\u89c1\uff0c\u662f\u5426\u7ee7\u7eed\uff1f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 775
    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 776
    const-string v1, "\u786e\u8ba4"

    new-instance v2, Lcom/cymobile/ymwork/act/ShopDetailsActivity$11;

    invoke-direct {v2, p0}, Lcom/cymobile/ymwork/act/ShopDetailsActivity$11;-><init>(Lcom/cymobile/ymwork/act/ShopDetailsActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 784
    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lcom/cymobile/ymwork/act/ShopDetailsActivity$12;

    invoke-direct {v2, p0}, Lcom/cymobile/ymwork/act/ShopDetailsActivity$12;-><init>(Lcom/cymobile/ymwork/act/ShopDetailsActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 790
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 792
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

    .line 445
    invoke-virtual {p0, v7}, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 446
    .local v1, loadableListHolder:Landroid/widget/LinearLayout;
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 448
    const v3, 0x7f0800e4

    invoke-virtual {p0, v3}, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 449
    .local v0, dataarea:Landroid/widget/LinearLayout;
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 451
    invoke-virtual {p0, v7}, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 453
    .local v2, parent:Landroid/widget/LinearLayout;
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 455
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-le v3, v5, :cond_0

    .line 456
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 458
    :cond_0
    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 459
    return-void
.end method

.method public setLoadingView()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 462
    const v1, 0x1020004

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 463
    .local v0, parent:Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-le v1, v3, :cond_0

    .line 464
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 467
    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 468
    return-void
.end method

.method public startTask(Lcom/cymobile/ymwork/act/ShopDetailsActivity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 736
    iget-boolean v1, p0, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->mIsRunningTask:Z

    if-nez v1, :cond_0

    .line 737
    new-instance v0, Lcom/cymobile/ymwork/act/ShopDetailsActivity$TaskShopDetail;

    invoke-direct {v0, p0, p1}, Lcom/cymobile/ymwork/act/ShopDetailsActivity$TaskShopDetail;-><init>(Lcom/cymobile/ymwork/act/ShopDetailsActivity;Lcom/cymobile/ymwork/act/ShopDetailsActivity;)V

    .line 738
    .local v0, mTaskShopDetail:Lcom/cymobile/ymwork/act/ShopDetailsActivity$TaskShopDetail;
    invoke-static {v0}, Lcom/cymobile/ymwork/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V

    .line 739
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/cymobile/ymwork/act/ShopDetailsActivity;->mIsRunningTask:Z

    .line 741
    .end local v0           #mTaskShopDetail:Lcom/cymobile/ymwork/act/ShopDetailsActivity$TaskShopDetail;
    :cond_0
    return-void
.end method
