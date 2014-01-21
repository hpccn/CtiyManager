.class public Lcom/cymobile/ymwork/search/ButtonSearchBar;
.super Landroid/widget/LinearLayout;
.source "ButtonSearchBar.java"


# static fields
.field public static final SEARCHBAR_MAX_LEN:I = 0x32

.field public static final SEARCH_BAR_BUTTON_CLICKED:I = 0x3

.field public static final SEARCH_BAR_EDITER_CLICKED:I = 0x1

.field public static final SEARCH_BAR_EDITER_ENTER:I = 0x2

.field public static final SEARCH_BAR_TEXT_CHANGE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SearchBar"

.field public static mCurrentSearchText:Ljava/lang/String;


# instance fields
.field private mButtonSearch:Landroid/widget/Button;

.field private mButtonText:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field public mDispSearchText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, ""

    sput-object v0, Lcom/cymobile/ymwork/search/ButtonSearchBar;->mCurrentSearchText:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "contact"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/cymobile/ymwork/search/ButtonSearchBar;->mDispSearchText:Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/cymobile/ymwork/search/ButtonSearchBar;->mContext:Landroid/content/Context;

    .line 36
    invoke-direct {p0}, Lcom/cymobile/ymwork/search/ButtonSearchBar;->init()V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/cymobile/ymwork/search/ButtonSearchBar;->mDispSearchText:Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lcom/cymobile/ymwork/search/ButtonSearchBar;->mContext:Landroid/content/Context;

    .line 42
    invoke-direct {p0}, Lcom/cymobile/ymwork/search/ButtonSearchBar;->init()V

    .line 43
    return-void
.end method

.method static synthetic access$0(Lcom/cymobile/ymwork/search/ButtonSearchBar;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/cymobile/ymwork/search/ButtonSearchBar;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 46
    const-string v0, "SearchBar"

    const-string v1, "SearchBar init()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-virtual {p0}, Lcom/cymobile/ymwork/search/ButtonSearchBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 48
    const v1, 0x7f030004

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 49
    invoke-direct {p0}, Lcom/cymobile/ymwork/search/ButtonSearchBar;->initButtonText()V

    .line 51
    return-void
.end method

.method private initButtonText()V
    .locals 2

    .prologue
    .line 54
    const-string v0, "SearchBar"

    const-string v1, "SearchBar initEditText()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const v0, 0x7f080026

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/search/ButtonSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cymobile/ymwork/search/ButtonSearchBar;->mButtonText:Landroid/widget/Button;

    .line 56
    iget-object v0, p0, Lcom/cymobile/ymwork/search/ButtonSearchBar;->mButtonText:Landroid/widget/Button;

    new-instance v1, Lcom/cymobile/ymwork/search/ButtonSearchBar$1;

    invoke-direct {v1, p0}, Lcom/cymobile/ymwork/search/ButtonSearchBar$1;-><init>(Lcom/cymobile/ymwork/search/ButtonSearchBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyEvent"

    .prologue
    .line 106
    const-string v0, "SearchBar"

    const-string v1, "SearchBar dispatchKeyEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public getButton()Landroid/widget/Button;
    .locals 2

    .prologue
    .line 117
    const-string v0, "SearchBar"

    const-string v1, "SearchBar getEditText()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lcom/cymobile/ymwork/search/ButtonSearchBar;->mButtonText:Landroid/widget/Button;

    return-object v0
.end method

.method public getSearchEditText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 122
    const-string v0, "SearchBar"

    const-string v1, "SearchBar getSearchEditText()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, p0, Lcom/cymobile/ymwork/search/ButtonSearchBar;->mButtonText:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method setCurrentSearchText(Ljava/lang/String;)V
    .locals 4
    .parameter "text"

    .prologue
    const/16 v3, 0x32

    .line 127
    const-string v0, "SearchBar"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SearchBar setCurrentSearchText()"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    sput-object p1, Lcom/cymobile/ymwork/search/ButtonSearchBar;->mCurrentSearchText:Ljava/lang/String;

    .line 129
    iget-object v0, p0, Lcom/cymobile/ymwork/search/ButtonSearchBar;->mButtonText:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 130
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_0

    .line 131
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 134
    :cond_0
    return-void
.end method

.method public setSearchBarEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 146
    const-string v0, "SearchBar"

    const-string v1, "SearchBar setSearchBarEnabled()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v0, p0, Lcom/cymobile/ymwork/search/ButtonSearchBar;->mButtonSearch:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 149
    return-void
.end method

.method public setSearchEditText(Ljava/lang/String;)V
    .locals 4
    .parameter "text"

    .prologue
    .line 152
    const-string v1, "SearchBar"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SearchBar setSearchEditText()"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 154
    :cond_0
    iget-object v1, p0, Lcom/cymobile/ymwork/search/ButtonSearchBar;->mButtonText:Landroid/widget/Button;

    const v2, 0x7f090013

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setHint(I)V

    .line 168
    :goto_0
    return-void

    .line 157
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 158
    .local v0, length:I
    const/16 v1, 0x32

    if-le v0, v1, :cond_2

    .line 159
    const/16 v0, 0x32

    .line 160
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 164
    :cond_2
    iget-object v1, p0, Lcom/cymobile/ymwork/search/ButtonSearchBar;->mButtonText:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/cymobile/ymwork/search/ButtonSearchBar;->mCurrentSearchText:Ljava/lang/String;

    goto :goto_0
.end method
