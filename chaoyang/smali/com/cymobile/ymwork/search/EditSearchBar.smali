.class public Lcom/cymobile/ymwork/search/EditSearchBar;
.super Landroid/widget/LinearLayout;
.source "EditSearchBar.java"


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

.field private mChangeObserver:Lcom/cymobile/ymwork/search/ISearchBarChangeObserver;

.field private mContext:Landroid/content/Context;

.field public mDispSearchText:Ljava/lang/String;

.field private mEditText:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, ""

    sput-object v0, Lcom/cymobile/ymwork/search/EditSearchBar;->mCurrentSearchText:Ljava/lang/String;

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

    iput-object v0, p0, Lcom/cymobile/ymwork/search/EditSearchBar;->mDispSearchText:Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/cymobile/ymwork/search/EditSearchBar;->mContext:Landroid/content/Context;

    .line 36
    invoke-direct {p0}, Lcom/cymobile/ymwork/search/EditSearchBar;->init()V

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

    iput-object v0, p0, Lcom/cymobile/ymwork/search/EditSearchBar;->mDispSearchText:Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lcom/cymobile/ymwork/search/EditSearchBar;->mContext:Landroid/content/Context;

    .line 42
    invoke-direct {p0}, Lcom/cymobile/ymwork/search/EditSearchBar;->init()V

    .line 43
    return-void
.end method

.method static synthetic access$0(Lcom/cymobile/ymwork/search/EditSearchBar;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/cymobile/ymwork/search/EditSearchBar;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cymobile/ymwork/search/EditSearchBar;)Lcom/cymobile/ymwork/search/ISearchBarChangeObserver;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/cymobile/ymwork/search/EditSearchBar;->mChangeObserver:Lcom/cymobile/ymwork/search/ISearchBarChangeObserver;

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
    invoke-virtual {p0}, Lcom/cymobile/ymwork/search/EditSearchBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 48
    const v1, 0x7f030011

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 49
    invoke-direct {p0}, Lcom/cymobile/ymwork/search/EditSearchBar;->initEditText()V

    .line 50
    invoke-direct {p0}, Lcom/cymobile/ymwork/search/EditSearchBar;->initSearchButton()V

    .line 51
    return-void
.end method

.method private initEditText()V
    .locals 2

    .prologue
    .line 54
    const-string v0, "SearchBar"

    const-string v1, "SearchBar initEditText()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const v0, 0x7f080045

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/search/EditSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/cymobile/ymwork/search/EditSearchBar;->mEditText:Landroid/widget/EditText;

    .line 56
    iget-object v0, p0, Lcom/cymobile/ymwork/search/EditSearchBar;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/cymobile/ymwork/search/EditSearchBar$1;

    invoke-direct {v1, p0}, Lcom/cymobile/ymwork/search/EditSearchBar$1;-><init>(Lcom/cymobile/ymwork/search/EditSearchBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v0, p0, Lcom/cymobile/ymwork/search/EditSearchBar;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/cymobile/ymwork/search/EditSearchBar$2;

    invoke-direct {v1, p0}, Lcom/cymobile/ymwork/search/EditSearchBar$2;-><init>(Lcom/cymobile/ymwork/search/EditSearchBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 82
    return-void
.end method

.method private initSearchButton()V
    .locals 2

    .prologue
    .line 85
    const-string v0, "SearchBar"

    const-string v1, "SearchBar initSearchButton()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const v0, 0x7f080047

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/search/EditSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cymobile/ymwork/search/EditSearchBar;->mButtonSearch:Landroid/widget/Button;

    .line 87
    iget-object v0, p0, Lcom/cymobile/ymwork/search/EditSearchBar;->mButtonSearch:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 88
    iget-object v0, p0, Lcom/cymobile/ymwork/search/EditSearchBar;->mButtonSearch:Landroid/widget/Button;

    new-instance v1, Lcom/cymobile/ymwork/search/EditSearchBar$3;

    invoke-direct {v1, p0}, Lcom/cymobile/ymwork/search/EditSearchBar$3;-><init>(Lcom/cymobile/ymwork/search/EditSearchBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    return-void
.end method


# virtual methods
.method public clearEditFocus()V
    .locals 2

    .prologue
    .line 97
    const-string v0, "SearchBar"

    const-string v1, "SearchBar clearEditFocus()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v0, p0, Lcom/cymobile/ymwork/search/EditSearchBar;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/cymobile/ymwork/search/EditSearchBar;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 101
    iget-object v0, p0, Lcom/cymobile/ymwork/search/EditSearchBar;->mButtonSearch:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    goto :goto_0
.end method

.method public dispSoftMethodInput(Z)V
    .locals 6
    .parameter "display"

    .prologue
    const/4 v5, 0x0

    .line 105
    const-string v2, "SearchBar"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SearchBar dispSoftMethodInput()"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v2, p0, Lcom/cymobile/ymwork/search/EditSearchBar;->mContext:Landroid/content/Context;

    .line 107
    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 106
    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 108
    .local v1, inputmethodmanager:Landroid/view/inputmethod/InputMethodManager;
    if-eqz p1, :cond_0

    .line 109
    const/4 v2, 0x1

    invoke-virtual {v1, v5, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 110
    iget-object v2, p0, Lcom/cymobile/ymwork/search/EditSearchBar;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 116
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v2, p0, Lcom/cymobile/ymwork/search/EditSearchBar;->mButtonSearch:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->requestFocus()Z

    .line 113
    iget-object v2, p0, Lcom/cymobile/ymwork/search/EditSearchBar;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    .line 114
    .local v0, ibinder:Landroid/os/IBinder;
    invoke-virtual {v1, v0, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyEvent"

    .prologue
    .line 120
    const-string v0, "SearchBar"

    const-string v1, "SearchBar dispatchKeyEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_0

    .line 122
    iget-object v0, p0, Lcom/cymobile/ymwork/search/EditSearchBar;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cymobile/ymwork/search/EditSearchBar;->mCurrentSearchText:Ljava/lang/String;

    .line 123
    iget-object v0, p0, Lcom/cymobile/ymwork/search/EditSearchBar;->mChangeObserver:Lcom/cymobile/ymwork/search/ISearchBarChangeObserver;

    const/4 v1, 0x2

    sget-object v2, Lcom/cymobile/ymwork/search/EditSearchBar;->mCurrentSearchText:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/cymobile/ymwork/search/ISearchBarChangeObserver;->onSearchBarChange(ILjava/lang/String;)V

    .line 125
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 2

    .prologue
    .line 129
    const-string v0, "SearchBar"

    const-string v1, "SearchBar getEditText()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/cymobile/ymwork/search/EditSearchBar;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method public getSearchEditText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 134
    const-string v0, "SearchBar"

    const-string v1, "SearchBar getSearchEditText()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v0, p0, Lcom/cymobile/ymwork/search/EditSearchBar;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setCurrentSearchText(Ljava/lang/String;)V
    .locals 4
    .parameter "text"

    .prologue
    const/16 v3, 0x32

    .line 139
    const-string v0, "SearchBar"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SearchBar setCurrentSearchText()"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    sput-object p1, Lcom/cymobile/ymwork/search/EditSearchBar;->mCurrentSearchText:Ljava/lang/String;

    .line 141
    iget-object v0, p0, Lcom/cymobile/ymwork/search/EditSearchBar;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 142
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_0

    .line 143
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/cymobile/ymwork/search/EditSearchBar;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 146
    return-void
.end method

.method public setEditFocus()V
    .locals 2

    .prologue
    .line 149
    const-string v0, "SearchBar"

    const-string v1, "SearchBar setEditFocus()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Lcom/cymobile/ymwork/search/EditSearchBar;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    :goto_0
    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/cymobile/ymwork/search/EditSearchBar;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0
.end method

.method public setFocus()V
    .locals 0

    .prologue
    .line 156
    return-void
.end method

.method public setObserver(Lcom/cymobile/ymwork/search/ISearchBarChangeObserver;)V
    .locals 2
    .parameter "observer"

    .prologue
    .line 159
    const-string v0, "SearchBar"

    const-string v1, "SearchBar setObserver()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iput-object p1, p0, Lcom/cymobile/ymwork/search/EditSearchBar;->mChangeObserver:Lcom/cymobile/ymwork/search/ISearchBarChangeObserver;

    .line 161
    return-void
.end method

.method public setSearchBarEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 164
    const-string v0, "SearchBar"

    const-string v1, "SearchBar setSearchBarEnabled()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v0, p0, Lcom/cymobile/ymwork/search/EditSearchBar;->mButtonSearch:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 166
    iget-object v0, p0, Lcom/cymobile/ymwork/search/EditSearchBar;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 167
    return-void
.end method

.method public setSearchEditText(Ljava/lang/String;)V
    .locals 4
    .parameter "text"

    .prologue
    .line 170
    const-string v1, "SearchBar"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SearchBar setSearchEditText()"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 172
    :cond_0
    iget-object v1, p0, Lcom/cymobile/ymwork/search/EditSearchBar;->mEditText:Landroid/widget/EditText;

    const v2, 0x7f090013

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(I)V

    .line 173
    iget-object v1, p0, Lcom/cymobile/ymwork/search/EditSearchBar;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 185
    :goto_0
    return-void

    .line 175
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 176
    .local v0, length:I
    const/16 v1, 0x32

    if-le v0, v1, :cond_2

    .line 177
    const/16 v0, 0x32

    .line 178
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 180
    :cond_2
    iget-object v1, p0, Lcom/cymobile/ymwork/search/EditSearchBar;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v1, p0, Lcom/cymobile/ymwork/search/EditSearchBar;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 182
    iget-object v1, p0, Lcom/cymobile/ymwork/search/EditSearchBar;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/cymobile/ymwork/search/EditSearchBar;->mCurrentSearchText:Ljava/lang/String;

    .line 183
    iget-object v1, p0, Lcom/cymobile/ymwork/search/EditSearchBar;->mChangeObserver:Lcom/cymobile/ymwork/search/ISearchBarChangeObserver;

    const/4 v2, 0x2

    sget-object v3, Lcom/cymobile/ymwork/search/EditSearchBar;->mCurrentSearchText:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/cymobile/ymwork/search/ISearchBarChangeObserver;->onSearchBarChange(ILjava/lang/String;)V

    goto :goto_0
.end method
