.class Lcom/cymobile/ymwork/search/SearchJsonList$1;
.super Ljava/lang/Object;
.source "SearchJsonList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/search/SearchJsonList;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/search/SearchJsonList;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/search/SearchJsonList;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/search/SearchJsonList$1;->this$0:Lcom/cymobile/ymwork/search/SearchJsonList;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/cymobile/ymwork/search/SearchJsonList$1;->this$0:Lcom/cymobile/ymwork/search/SearchJsonList;

    #getter for: Lcom/cymobile/ymwork/search/SearchJsonList;->mjsonKeywordList:Ljava/util/List;
    invoke-static {v1}, Lcom/cymobile/ymwork/search/SearchJsonList;->access$0(Lcom/cymobile/ymwork/search/SearchJsonList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p3, v1, :cond_0

    .line 51
    check-cast p2, Lcom/cymobile/ymwork/search/SearchJsonListTextItem;

    .end local p2
    invoke-virtual {p2}, Lcom/cymobile/ymwork/search/SearchJsonListTextItem;->getItemText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, s:Ljava/lang/String;
    iget-object v1, p0, Lcom/cymobile/ymwork/search/SearchJsonList$1;->this$0:Lcom/cymobile/ymwork/search/SearchJsonList;

    #getter for: Lcom/cymobile/ymwork/search/SearchJsonList;->mListener:Lcom/cymobile/ymwork/search/ISearchJsonListListener;
    invoke-static {v1}, Lcom/cymobile/ymwork/search/SearchJsonList;->access$1(Lcom/cymobile/ymwork/search/SearchJsonList;)Lcom/cymobile/ymwork/search/ISearchJsonListListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/cymobile/ymwork/search/ISearchJsonListListener;->onJsonListItemClick(Ljava/lang/String;)V

    .line 54
    .end local v0           #s:Ljava/lang/String;
    :cond_0
    return-void
.end method
