.class Lcom/cymobile/ymwork/search/ButtonSearchBar$1;
.super Ljava/lang/Object;
.source "ButtonSearchBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/search/ButtonSearchBar;->initButtonText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/search/ButtonSearchBar;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/search/ButtonSearchBar;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/search/ButtonSearchBar$1;->this$0:Lcom/cymobile/ymwork/search/ButtonSearchBar;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 58
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/cymobile/ymwork/search/ButtonSearchBar$1;->this$0:Lcom/cymobile/ymwork/search/ButtonSearchBar;

    #getter for: Lcom/cymobile/ymwork/search/ButtonSearchBar;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/cymobile/ymwork/search/ButtonSearchBar;->access$0(Lcom/cymobile/ymwork/search/ButtonSearchBar;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/cymobile/ymwork/act/SearchableActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    .local v0, searchIntent:Landroid/content/Intent;
    return-void
.end method
