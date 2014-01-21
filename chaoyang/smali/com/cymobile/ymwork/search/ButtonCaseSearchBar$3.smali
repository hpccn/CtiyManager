.class Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$3;
.super Ljava/lang/Object;
.source "ButtonCaseSearchBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->initButtonText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$3;->this$0:Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 159
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$3;->this$0:Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;

    #getter for: Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->access$3(Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/cymobile/ymwork/act/SearchableActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 166
    .local v0, searchIntent:Landroid/content/Intent;
    return-void
.end method
