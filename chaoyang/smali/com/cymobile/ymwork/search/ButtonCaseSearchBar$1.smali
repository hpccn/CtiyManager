.class Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$1;
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
    iput-object p1, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$1;->this$0:Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar$1;->this$0:Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;

    iget-object v0, v0, Lcom/cymobile/ymwork/search/ButtonCaseSearchBar;->classspinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->performClick()Z

    .line 112
    return-void
.end method
