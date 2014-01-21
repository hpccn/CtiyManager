.class Lcom/cymobile/ymwork/search/SearchJsonListAdapter$1;
.super Ljava/lang/Object;
.source "SearchJsonListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/search/SearchJsonListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/search/SearchJsonListAdapter;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/search/SearchJsonListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/search/SearchJsonListAdapter$1;->this$0:Lcom/cymobile/ymwork/search/SearchJsonListAdapter;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/cymobile/ymwork/search/SearchJsonListAdapter$1;->this$0:Lcom/cymobile/ymwork/search/SearchJsonListAdapter;

    #getter for: Lcom/cymobile/ymwork/search/SearchJsonListAdapter;->mObserver:Lcom/cymobile/ymwork/search/SugCloseButtonCloseObserver;
    invoke-static {v0}, Lcom/cymobile/ymwork/search/SearchJsonListAdapter;->access$0(Lcom/cymobile/ymwork/search/SearchJsonListAdapter;)Lcom/cymobile/ymwork/search/SugCloseButtonCloseObserver;

    move-result-object v0

    invoke-interface {v0}, Lcom/cymobile/ymwork/search/SugCloseButtonCloseObserver;->onClickSugColseButtonListener()V

    .line 75
    return-void
.end method
