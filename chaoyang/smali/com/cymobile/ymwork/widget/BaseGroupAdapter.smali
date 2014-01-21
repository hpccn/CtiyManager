.class public abstract Lcom/cymobile/ymwork/widget/BaseGroupAdapter;
.super Landroid/widget/BaseAdapter;
.source "BaseGroupAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/cymobile/ymwork/types/BaseType;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field group:Lcom/cymobile/ymwork/types/Group;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cymobile/ymwork/types/Group",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 14
    .local p0, this:Lcom/cymobile/ymwork/widget/BaseGroupAdapter;,"Lcom/cymobile/ymwork/widget/BaseGroupAdapter<TT;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cymobile/ymwork/widget/BaseGroupAdapter;->group:Lcom/cymobile/ymwork/types/Group;

    .line 15
    return-void
.end method


# virtual methods
.method public appendGroup(Lcom/cymobile/ymwork/types/Group;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cymobile/ymwork/types/Group",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, this:Lcom/cymobile/ymwork/widget/BaseGroupAdapter;,"Lcom/cymobile/ymwork/widget/BaseGroupAdapter<TT;>;"
    .local p1, g:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<TT;>;"
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/BaseGroupAdapter;->group:Lcom/cymobile/ymwork/types/Group;

    invoke-virtual {v0, p1}, Lcom/cymobile/ymwork/types/Group;->addAll(Ljava/util/Collection;)Z

    .line 43
    invoke-virtual {p0}, Lcom/cymobile/ymwork/widget/BaseGroupAdapter;->notifyDataSetInvalidated()V

    .line 44
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 18
    .local p0, this:Lcom/cymobile/ymwork/widget/BaseGroupAdapter;,"Lcom/cymobile/ymwork/widget/BaseGroupAdapter<TT;>;"
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/BaseGroupAdapter;->group:Lcom/cymobile/ymwork/types/Group;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/BaseGroupAdapter;->group:Lcom/cymobile/ymwork/types/Group;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 22
    .local p0, this:Lcom/cymobile/ymwork/widget/BaseGroupAdapter;,"Lcom/cymobile/ymwork/widget/BaseGroupAdapter<TT;>;"
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/BaseGroupAdapter;->group:Lcom/cymobile/ymwork/types/Group;

    invoke-virtual {v0, p1}, Lcom/cymobile/ymwork/types/Group;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 26
    .local p0, this:Lcom/cymobile/ymwork/widget/BaseGroupAdapter;,"Lcom/cymobile/ymwork/widget/BaseGroupAdapter<TT;>;"
    int-to-long v0, p1

    return-wide v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 30
    .local p0, this:Lcom/cymobile/ymwork/widget/BaseGroupAdapter;,"Lcom/cymobile/ymwork/widget/BaseGroupAdapter<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 34
    .local p0, this:Lcom/cymobile/ymwork/widget/BaseGroupAdapter;,"Lcom/cymobile/ymwork/widget/BaseGroupAdapter<TT;>;"
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/BaseGroupAdapter;->group:Lcom/cymobile/ymwork/types/Group;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/BaseGroupAdapter;->group:Lcom/cymobile/ymwork/types/Group;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/types/Group;->isEmpty()Z

    move-result v0

    goto :goto_0
.end method

.method public setGroup(Lcom/cymobile/ymwork/types/Group;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cymobile/ymwork/types/Group",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, this:Lcom/cymobile/ymwork/widget/BaseGroupAdapter;,"Lcom/cymobile/ymwork/widget/BaseGroupAdapter<TT;>;"
    .local p1, g:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<TT;>;"
    iput-object p1, p0, Lcom/cymobile/ymwork/widget/BaseGroupAdapter;->group:Lcom/cymobile/ymwork/types/Group;

    .line 39
    invoke-virtual {p0}, Lcom/cymobile/ymwork/widget/BaseGroupAdapter;->notifyDataSetInvalidated()V

    .line 40
    return-void
.end method
