.class Lcom/cymobile/ymwork/act/MapDetailFragment$CustomInfoWindowAdapter;
.super Ljava/lang/Object;
.source "MapDetailFragment.java"

# interfaces
.implements Lcom/amap/api/maps/AMap$InfoWindowAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/act/MapDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CustomInfoWindowAdapter"
.end annotation


# instance fields
.field private final mContents:Landroid/view/View;

.field private final mWindow:Landroid/view/View;

.field final synthetic this$0:Lcom/cymobile/ymwork/act/MapDetailFragment;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/MapDetailFragment;Landroid/support/v4/app/Fragment;)V
    .locals 3
    .parameter
    .parameter "fm"

    .prologue
    const/4 v2, 0x0

    .line 95
    iput-object p1, p0, Lcom/cymobile/ymwork/act/MapDetailFragment$CustomInfoWindowAdapter;->this$0:Lcom/cymobile/ymwork/act/MapDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 97
    const v1, 0x7f03000d

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 96
    iput-object v0, p0, Lcom/cymobile/ymwork/act/MapDetailFragment$CustomInfoWindowAdapter;->mWindow:Landroid/view/View;

    .line 98
    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 99
    const v1, 0x7f03000c

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 98
    iput-object v0, p0, Lcom/cymobile/ymwork/act/MapDetailFragment$CustomInfoWindowAdapter;->mContents:Landroid/view/View;

    .line 101
    return-void
.end method

.method private render(Lcom/amap/api/maps/model/Marker;Landroid/view/View;)V
    .locals 16
    .parameter "marker"
    .parameter "view"

    .prologue
    .line 118
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cymobile/ymwork/act/MapDetailFragment$CustomInfoWindowAdapter;->this$0:Lcom/cymobile/ymwork/act/MapDetailFragment;

    #getter for: Lcom/cymobile/ymwork/act/MapDetailFragment;->markShops:Ljava/util/HashMap;
    invoke-static {v12}, Lcom/cymobile/ymwork/act/MapDetailFragment;->access$0(Lcom/cymobile/ymwork/act/MapDetailFragment;)Ljava/util/HashMap;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cymobile/ymwork/types/Building;

    .line 119
    .local v5, shop:Lcom/cymobile/ymwork/types/Building;
    if-eqz v5, :cond_0

    .line 120
    const v12, 0x7f080038

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 121
    .local v3, imageView:Landroid/widget/ImageView;
    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/Building;->getImgUrl()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_2

    .line 122
    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/Building;->getImgUrl()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 125
    .local v4, photoUri:Landroid/net/Uri;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cymobile/ymwork/act/MapDetailFragment$CustomInfoWindowAdapter;->this$0:Lcom/cymobile/ymwork/act/MapDetailFragment;

    iget-object v12, v12, Lcom/cymobile/ymwork/act/MapDetailFragment;->mRrm:Lcom/cymobile/ymwork/server/RemoteResourceManager;

    .line 126
    invoke-virtual {v12, v4}, Lcom/cymobile/ymwork/server/RemoteResourceManager;->getInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v12

    .line 125
    invoke-static {v12}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 127
    .local v1, bitmap:Landroid/graphics/Bitmap;
    if-nez v1, :cond_1

    .line 128
    new-instance v12, Ljava/lang/Exception;

    const-string v13, "empty"

    invoke-direct {v12, v13}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    .line 136
    .local v2, ee:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cymobile/ymwork/act/MapDetailFragment$CustomInfoWindowAdapter;->this$0:Lcom/cymobile/ymwork/act/MapDetailFragment;

    iget-object v12, v12, Lcom/cymobile/ymwork/act/MapDetailFragment;->mRrm:Lcom/cymobile/ymwork/server/RemoteResourceManager;

    new-instance v13, Lcom/cymobile/ymwork/act/MapDetailFragment$ShopImageFetcher;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cymobile/ymwork/act/MapDetailFragment$CustomInfoWindowAdapter;->this$0:Lcom/cymobile/ymwork/act/MapDetailFragment;

    .line 137
    invoke-direct {v13, v14, v4, v3}, Lcom/cymobile/ymwork/act/MapDetailFragment$ShopImageFetcher;-><init>(Lcom/cymobile/ymwork/act/MapDetailFragment;Landroid/net/Uri;Landroid/widget/ImageView;)V

    .line 136
    invoke-virtual {v12, v13}, Lcom/cymobile/ymwork/server/RemoteResourceManager;->addObserver(Ljava/util/Observer;)V

    .line 138
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cymobile/ymwork/act/MapDetailFragment$CustomInfoWindowAdapter;->this$0:Lcom/cymobile/ymwork/act/MapDetailFragment;

    iget-object v12, v12, Lcom/cymobile/ymwork/act/MapDetailFragment;->mRrm:Lcom/cymobile/ymwork/server/RemoteResourceManager;

    invoke-virtual {v12, v4}, Lcom/cymobile/ymwork/server/RemoteResourceManager;->request(Landroid/net/Uri;)V

    .line 144
    .end local v2           #ee:Ljava/lang/Exception;
    .end local v3           #imageView:Landroid/widget/ImageView;
    .end local v4           #photoUri:Landroid/net/Uri;
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/maps/model/Marker;->getTitle()Ljava/lang/String;

    move-result-object v9

    .line 145
    .local v9, title:Ljava/lang/String;
    const v12, 0x7f080039

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 146
    .local v11, titleUi:Landroid/widget/TextView;
    if-eqz v9, :cond_3

    .line 147
    new-instance v10, Landroid/text/SpannableString;

    invoke-direct {v10, v9}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 148
    .local v10, titleText:Landroid/text/SpannableString;
    new-instance v12, Landroid/text/style/ForegroundColorSpan;

    const/high16 v13, -0x1

    invoke-direct {v12, v13}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v13, 0x0

    .line 149
    invoke-virtual {v10}, Landroid/text/SpannableString;->length()I

    move-result v14

    const/4 v15, 0x0

    .line 148
    invoke-virtual {v10, v12, v13, v14, v15}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 150
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    .end local v10           #titleText:Landroid/text/SpannableString;
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/maps/model/Marker;->getSnippet()Ljava/lang/String;

    move-result-object v6

    .line 155
    .local v6, snippet:Ljava/lang/String;
    const v12, 0x7f08003a

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 156
    .local v8, snippetUi:Landroid/widget/TextView;
    if-eqz v6, :cond_4

    .line 157
    new-instance v7, Landroid/text/SpannableString;

    invoke-direct {v7, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 163
    .local v7, snippetText:Landroid/text/SpannableString;
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    .end local v7           #snippetText:Landroid/text/SpannableString;
    :goto_2
    return-void

    .line 131
    .end local v6           #snippet:Ljava/lang/String;
    .end local v8           #snippetUi:Landroid/widget/TextView;
    .end local v9           #title:Ljava/lang/String;
    .end local v11           #titleUi:Landroid/widget/TextView;
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    .restart local v3       #imageView:Landroid/widget/ImageView;
    .restart local v4       #photoUri:Landroid/net/Uri;
    :cond_1
    const/16 v12, 0x78

    const/16 v13, 0x78

    const/4 v14, 0x0

    .line 130
    :try_start_1
    invoke-static {v1, v12, v13, v14}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 133
    invoke-virtual {v3}, Landroid/widget/ImageView;->refreshDrawableState()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 141
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v4           #photoUri:Landroid/net/Uri;
    :cond_2
    const v12, 0x7f0200e5

    invoke-virtual {v3, v12}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 152
    .end local v3           #imageView:Landroid/widget/ImageView;
    .restart local v9       #title:Ljava/lang/String;
    .restart local v11       #titleUi:Landroid/widget/TextView;
    :cond_3
    const-string v12, ""

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 165
    .restart local v6       #snippet:Ljava/lang/String;
    .restart local v8       #snippetUi:Landroid/widget/TextView;
    :cond_4
    const-string v12, ""

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method


# virtual methods
.method public getInfoContents(Lcom/amap/api/maps/model/Marker;)Landroid/view/View;
    .locals 1
    .parameter "marker"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MapDetailFragment$CustomInfoWindowAdapter;->mContents:Landroid/view/View;

    invoke-direct {p0, p1, v0}, Lcom/cymobile/ymwork/act/MapDetailFragment$CustomInfoWindowAdapter;->render(Lcom/amap/api/maps/model/Marker;Landroid/view/View;)V

    .line 112
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MapDetailFragment$CustomInfoWindowAdapter;->mContents:Landroid/view/View;

    return-object v0
.end method

.method public getInfoWindow(Lcom/amap/api/maps/model/Marker;)Landroid/view/View;
    .locals 1
    .parameter "marker"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MapDetailFragment$CustomInfoWindowAdapter;->mWindow:Landroid/view/View;

    invoke-direct {p0, p1, v0}, Lcom/cymobile/ymwork/act/MapDetailFragment$CustomInfoWindowAdapter;->render(Lcom/amap/api/maps/model/Marker;Landroid/view/View;)V

    .line 106
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MapDetailFragment$CustomInfoWindowAdapter;->mWindow:Landroid/view/View;

    return-object v0
.end method
