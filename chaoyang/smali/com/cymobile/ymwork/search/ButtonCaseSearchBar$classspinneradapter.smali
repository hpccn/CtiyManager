.class public Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$classspinneradapter;
.super Landroid/widget/BaseAdapter;
.source "ButtonCaseSearchBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "classspinneradapter"
.end annotation


# instance fields
.field image:[I

.field private inflater:Landroid/view/LayoutInflater;

.field private mContext:Landroid/content/Context;

.field mItem:[Ljava/lang/String;

.field final synthetic this$0:Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;


# direct methods
.method public constructor <init>(Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    .line 287
    iput-object p1, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$classspinneradapter;->this$0:Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;

    .line 288
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 281
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 283
    iput-object v0, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$classspinneradapter;->image:[I

    .line 284
    invoke-virtual {p1}, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$classspinneradapter;->mItem:[Ljava/lang/String;

    .line 289
    iput-object p2, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$classspinneradapter;->mContext:Landroid/content/Context;

    .line 290
    iget-object v0, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$classspinneradapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$classspinneradapter;->inflater:Landroid/view/LayoutInflater;

    .line 291
    return-void

    .line 281
    nop

    :array_0
    .array-data 0x4
        0x46t 0x0t 0x2t 0x7ft
        0x50t 0x0t 0x2t 0x7ft
        0x4bt 0x0t 0x2t 0x7ft
        0x59t 0x0t 0x2t 0x7ft
        0x39t 0x0t 0x2t 0x7ft
        0x49t 0x0t 0x2t 0x7ft
    .end array-data
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$classspinneradapter;->mItem:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 300
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 305
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 310
    const/4 v0, 0x0

    .line 311
    .local v0, viewHolder:Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$ViewHolder;
    if-nez p2, :cond_0

    .line 312
    new-instance v0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$ViewHolder;

    .end local v0           #viewHolder:Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$ViewHolder;
    iget-object v1, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$classspinneradapter;->this$0:Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;

    invoke-direct {v0, v1}, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$ViewHolder;-><init>(Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;)V

    .line 313
    .restart local v0       #viewHolder:Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$ViewHolder;
    iget-object v1, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$classspinneradapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03003f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 314
    const v1, 0x7f080111

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 315
    const v1, 0x7f080112

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$ViewHolder;->textView:Landroid/widget/TextView;

    .line 316
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 320
    :goto_0
    iget-object v1, v0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$ViewHolder;->imageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$classspinneradapter;->image:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 321
    iget-object v1, v0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$ViewHolder;->textView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$classspinneradapter;->mItem:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    iget-object v1, v0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$ViewHolder;->textView:Landroid/widget/TextView;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 323
    return-object p2

    .line 318
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #viewHolder:Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$ViewHolder;
    check-cast v0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$ViewHolder;

    .restart local v0       #viewHolder:Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$ViewHolder;
    goto :goto_0
.end method
