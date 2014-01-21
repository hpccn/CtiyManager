.class public Lcom/cymobile/ymwork/act/MainActivityGroup;
.super Landroid/app/TabActivity;
.source "MainActivityGroup.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# static fields
.field private static final Dialog_confirm_quit:I = 0xa

.field public static final Intent_init_TAB:Ljava/lang/String; = "Intent_init_TAB"

.field public static final Intent_init_TAB_Class:Ljava/lang/String; = "Intent_init_TAB_CLASS"

.field static final TAG:Ljava/lang/String; = "MainActivityGroup"

.field public static isInFront:Z


# instance fields
.field private final DELAY_TIME:I

.field private final INIT_SELECT:I

.field private count:I

.field homeApplication:Lcom/cymobile/ymwork/HomeApplication;

.field public imageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private initSelectTabHandle:Landroid/os/Handler;

.field private mCurSelectTabIndex:I

.field private mTabHost:Landroid/widget/TabHost;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    sput-boolean v0, Lcom/cymobile/ymwork/act/MainActivityGroup;->isInFront:Z

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    .line 39
    iput v0, p0, Lcom/cymobile/ymwork/act/MainActivityGroup;->count:I

    .line 41
    iput v0, p0, Lcom/cymobile/ymwork/act/MainActivityGroup;->mCurSelectTabIndex:I

    .line 43
    iput v0, p0, Lcom/cymobile/ymwork/act/MainActivityGroup;->INIT_SELECT:I

    .line 45
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/cymobile/ymwork/act/MainActivityGroup;->DELAY_TIME:I

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/MainActivityGroup;->imageList:Ljava/util/List;

    .line 174
    new-instance v0, Lcom/cymobile/ymwork/act/MainActivityGroup$1;

    invoke-direct {v0, p0}, Lcom/cymobile/ymwork/act/MainActivityGroup$1;-><init>(Lcom/cymobile/ymwork/act/MainActivityGroup;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/MainActivityGroup;->initSelectTabHandle:Landroid/os/Handler;

    .line 36
    return-void
.end method

.method static synthetic access$0(Lcom/cymobile/ymwork/act/MainActivityGroup;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    invoke-super {p0}, Landroid/app/TabActivity;->onBackPressed()V

    return-void
.end method

.method private initTabHost()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 77
    iget-object v4, p0, Lcom/cymobile/ymwork/act/MainActivityGroup;->mTabHost:Landroid/widget/TabHost;

    if-eqz v4, :cond_0

    .line 78
    new-instance v4, Ljava/lang/IllegalStateException;

    .line 79
    const-string v5, "Trying to intialize already initializd TabHost"

    .line 78
    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainActivityGroup;->getTabHost()Landroid/widget/TabHost;

    move-result-object v4

    iput-object v4, p0, Lcom/cymobile/ymwork/act/MainActivityGroup;->mTabHost:Landroid/widget/TabHost;

    .line 84
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/cymobile/ymwork/act/TabFourActivityGroup;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 85
    .local v2, intentTabMe:Landroid/content/Intent;
    const/high16 v4, 0x4020

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 88
    iget-object v4, p0, Lcom/cymobile/ymwork/act/MainActivityGroup;->mTabHost:Landroid/widget/TabHost;

    iget-object v5, p0, Lcom/cymobile/ymwork/act/MainActivityGroup;->mTabHost:Landroid/widget/TabHost;

    .line 89
    const-string v6, "tab_1"

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    .line 92
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainActivityGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09000f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 93
    const v7, 0x7f020135

    .line 91
    invoke-virtual {p0, v6, v7}, Lcom/cymobile/ymwork/act/MainActivityGroup;->composeLayout(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v6

    .line 90
    invoke-virtual {v5, v6}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    .line 94
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/cymobile/ymwork/act/NearbyActivityGroup;

    invoke-direct {v6, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v5, v6}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    .line 88
    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 99
    iget-object v4, p0, Lcom/cymobile/ymwork/act/MainActivityGroup;->mTabHost:Landroid/widget/TabHost;

    iget-object v5, p0, Lcom/cymobile/ymwork/act/MainActivityGroup;->mTabHost:Landroid/widget/TabHost;

    .line 100
    const-string v6, "tab_3"

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    .line 103
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainActivityGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090011

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 104
    const v7, 0x7f020137

    .line 102
    invoke-virtual {p0, v6, v7}, Lcom/cymobile/ymwork/act/MainActivityGroup;->composeLayout(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v6

    .line 101
    invoke-virtual {v5, v6}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    .line 105
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/cymobile/ymwork/act/TabThreeActivityGroup;

    invoke-direct {v6, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v5, v6}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    .line 99
    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 107
    iget-object v4, p0, Lcom/cymobile/ymwork/act/MainActivityGroup;->mTabHost:Landroid/widget/TabHost;

    iget-object v5, p0, Lcom/cymobile/ymwork/act/MainActivityGroup;->mTabHost:Landroid/widget/TabHost;

    .line 108
    const-string v6, "tab_2"

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    .line 111
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainActivityGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090010

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 112
    const v7, 0x7f020136

    .line 110
    invoke-virtual {p0, v6, v7}, Lcom/cymobile/ymwork/act/MainActivityGroup;->composeLayout(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v6

    .line 109
    invoke-virtual {v5, v6}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    .line 113
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/cymobile/ymwork/act/TabTwoActivityGroup;

    invoke-direct {v6, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v5, v6}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    .line 107
    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 114
    iget-object v4, p0, Lcom/cymobile/ymwork/act/MainActivityGroup;->mTabHost:Landroid/widget/TabHost;

    iget-object v5, p0, Lcom/cymobile/ymwork/act/MainActivityGroup;->mTabHost:Landroid/widget/TabHost;

    .line 115
    const-string v6, "tab_4"

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    .line 118
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainActivityGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090012

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 119
    const v7, 0x7f020138

    .line 117
    invoke-virtual {p0, v6, v7}, Lcom/cymobile/ymwork/act/MainActivityGroup;->composeLayout(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v6

    .line 116
    invoke-virtual {v5, v6}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    .line 120
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/cymobile/ymwork/act/TabFourActivityGroup;

    invoke-direct {v6, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v5, v6}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    .line 114
    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 122
    iget-object v4, p0, Lcom/cymobile/ymwork/act/MainActivityGroup;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4, v8}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 124
    iget-object v4, p0, Lcom/cymobile/ymwork/act/MainActivityGroup;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 126
    iget-object v4, p0, Lcom/cymobile/ymwork/act/MainActivityGroup;->mTabHost:Landroid/widget/TabHost;

    const v5, 0x7f020004

    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->setBackgroundResource(I)V

    .line 127
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 128
    .local v3, msg:Landroid/os/Message;
    iput v8, v3, Landroid/os/Message;->what:I

    .line 129
    iget-object v4, p0, Lcom/cymobile/ymwork/act/MainActivityGroup;->initSelectTabHandle:Landroid/os/Handler;

    const-wide/16 v5, 0x1f4

    invoke-virtual {v4, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 132
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainActivityGroup;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 133
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainActivityGroup;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 134
    .local v0, initIntent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 135
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "Intent_init_TAB"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 136
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "Intent_init_TAB"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 137
    .local v1, initTab:I
    iget-object v4, p0, Lcom/cymobile/ymwork/act/MainActivityGroup;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 138
    const/4 v4, 0x3

    if-ne v1, v4, :cond_1

    .line 139
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 140
    const-string v5, "Intent_init_TAB_CLASS"

    .line 139
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 148
    .end local v0           #initIntent:Landroid/content/Intent;
    .end local v1           #initTab:I
    :cond_1
    return-void
.end method


# virtual methods
.method public composeLayout(Ljava/lang/String;I)Landroid/view/View;
    .locals 9
    .parameter "s"
    .parameter "i"

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x2

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 299
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 301
    .local v1, layout:Landroid/widget/LinearLayout;
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 302
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 303
    .local v0, iv:Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/cymobile/ymwork/act/MainActivityGroup;->imageList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 305
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 308
    .local v2, lp:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v4, 0x5

    invoke-virtual {v2, v6, v4, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 309
    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 311
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 312
    .local v3, tv:Landroid/widget/TextView;
    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 313
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 314
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 316
    const/high16 v4, 0x4160

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 317
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 319
    invoke-direct {v4, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 317
    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 320
    return-object v1
.end method

.method public moveTopSelect(I)V
    .locals 11
    .parameter "selectIndex"

    .prologue
    const/4 v10, 0x0

    .line 198
    const v7, 0x7f080093

    invoke-virtual {p0, v7}, Lcom/cymobile/ymwork/act/MainActivityGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 199
    .local v6, topSelect:Landroid/view/View;
    packed-switch p1, :pswitch_data_0

    .line 215
    :goto_0
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainActivityGroup;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v7

    iget v8, p0, Lcom/cymobile/ymwork/act/MainActivityGroup;->mCurSelectTabIndex:I

    invoke-virtual {v7, v8}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 217
    .local v5, tabwidth:I
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iput v5, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 252
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainActivityGroup;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v7

    iget v8, p0, Lcom/cymobile/ymwork/act/MainActivityGroup;->mCurSelectTabIndex:I

    invoke-virtual {v7, v8}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v7

    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainActivityGroup;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v8

    iget v9, p0, Lcom/cymobile/ymwork/act/MainActivityGroup;->mCurSelectTabIndex:I

    invoke-virtual {v8, v9}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int v4, v7, v8

    .line 254
    .local v4, startMid:I
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int v3, v4, v7

    .line 257
    .local v3, startLeft:I
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainActivityGroup;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v7

    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainActivityGroup;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v8

    invoke-virtual {v8, p1}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int v2, v7, v8

    .line 259
    .local v2, endMid:I
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int v1, v2, v7

    .line 261
    .local v1, endLeft:I
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v7, v3

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int v8, v1, v8

    int-to-float v8, v8

    invoke-direct {v0, v7, v8, v10, v10}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 262
    .local v0, animation:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v7, 0xc8

    invoke-virtual {v0, v7, v8}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 263
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 264
    invoke-virtual {v6}, Landroid/view/View;->bringToFront()V

    .line 265
    invoke-virtual {v6, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 268
    iput p1, p0, Lcom/cymobile/ymwork/act/MainActivityGroup;->mCurSelectTabIndex:I

    .line 269
    const-string v7, "liwj"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\u7ec4\u4ef6\u8ddd\u79bb\u5de6\u8fb9\u8ddd"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const-string v7, "fs"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "endMid  "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  startLeft  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 272
    const-string v9, "  endLeft"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v9

    sub-int v9, v1, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 271
    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    return-void

    .line 201
    .end local v0           #animation:Landroid/view/animation/TranslateAnimation;
    .end local v1           #endLeft:I
    .end local v2           #endMid:I
    .end local v3           #startLeft:I
    .end local v4           #startMid:I
    .end local v5           #tabwidth:I
    :pswitch_0
    const v7, 0x7f020125

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 204
    :pswitch_1
    const v7, 0x7f020128

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 207
    :pswitch_2
    const v7, 0x7f020129

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 210
    :pswitch_3
    const v7, 0x7f020127

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 199
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 326
    const/16 v1, 0xa

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/MainActivityGroup;->showDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    :goto_0
    return-void

    .line 327
    :catch_0
    move-exception v0

    .line 328
    .local v0, ee:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 329
    invoke-super {p0}, Landroid/app/TabActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/MainActivityGroup;->requestWindowFeature(I)Z

    .line 55
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MainActivityGroup;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/HomeApplication;

    iput-object v1, p0, Lcom/cymobile/ymwork/act/MainActivityGroup;->homeApplication:Lcom/cymobile/ymwork/HomeApplication;

    .line 56
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainActivityGroup;->homeApplication:Lcom/cymobile/ymwork/HomeApplication;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/HomeApplication;->haveId()Z

    move-result v1

    if-nez v1, :cond_0

    .line 59
    const-class v1, Lcom/cymobile/ymwork/SettingBase;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 60
    const/4 v2, 0x2

    .line 59
    invoke-virtual {p0, v1, v2}, Lcom/cymobile/ymwork/act/MainActivityGroup;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 63
    .local v0, mPrefs:Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainActivityGroup;->homeApplication:Lcom/cymobile/ymwork/HomeApplication;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/HomeApplication;->setServerCredentials()V

    .line 72
    .end local v0           #mPrefs:Landroid/content/SharedPreferences;
    :goto_0
    const v1, 0x7f030025

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/MainActivityGroup;->setContentView(I)V

    .line 73
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/MainActivityGroup;->initTabHost()V

    .line 74
    return-void

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainActivityGroup;->homeApplication:Lcom/cymobile/ymwork/HomeApplication;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/HomeApplication;->setServerCredentials()V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 335
    const/16 v1, 0xa

    if-ne p1, v1, :cond_0

    .line 336
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 337
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const-string v1, "\u786e\u8ba4\u9000\u51fa\u5417\uff1f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 338
    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 339
    const-string v1, "\u786e\u8ba4"

    new-instance v2, Lcom/cymobile/ymwork/act/MainActivityGroup$2;

    invoke-direct {v2, p0}, Lcom/cymobile/ymwork/act/MainActivityGroup$2;-><init>(Lcom/cymobile/ymwork/act/MainActivityGroup;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 357
    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lcom/cymobile/ymwork/act/MainActivityGroup$3;

    invoke-direct {v2, p0}, Lcom/cymobile/ymwork/act/MainActivityGroup$3;-><init>(Lcom/cymobile/ymwork/act/MainActivityGroup;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 363
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 365
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 170
    invoke-super {p0}, Landroid/app/TabActivity;->onDestroy()V

    .line 171
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 153
    invoke-super {p0}, Landroid/app/TabActivity;->onResume()V

    .line 154
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainActivityGroup;->homeApplication:Lcom/cymobile/ymwork/HomeApplication;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/HomeApplication;->haveId()Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    invoke-static {p0}, Lcom/cymobile/ymwork/HomeApplication;->redirectToLoginActivityAndNoBack(Landroid/app/Activity;)V

    .line 159
    :goto_0
    return-void

    .line 158
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/cymobile/ymwork/act/MainActivityGroup;->isInFront:Z

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 163
    invoke-super {p0}, Landroid/app/TabActivity;->onStop()V

    .line 164
    const/4 v0, 0x0

    sput-boolean v0, Lcom/cymobile/ymwork/act/MainActivityGroup;->isInFront:Z

    .line 165
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 1
    .parameter "tabId"

    .prologue
    .line 281
    iget v0, p0, Lcom/cymobile/ymwork/act/MainActivityGroup;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/cymobile/ymwork/act/MainActivityGroup;->count:I

    .line 282
    const-string v0, "tab_1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 284
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/MainActivityGroup;->moveTopSelect(I)V

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    const-string v0, "tab_2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 288
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/MainActivityGroup;->moveTopSelect(I)V

    goto :goto_0

    .line 289
    :cond_2
    const-string v0, "tab_3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 292
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/MainActivityGroup;->moveTopSelect(I)V

    goto :goto_0

    .line 293
    :cond_3
    const-string v0, "tab_4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/MainActivityGroup;->moveTopSelect(I)V

    goto :goto_0
.end method
