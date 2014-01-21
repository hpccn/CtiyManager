.class Luk/co/jasonfry/android/tools/ui/SwipeView$1;
.super Ljava/lang/Object;
.source "SwipeView.java"

# interfaces
.implements Luk/co/jasonfry/android/tools/ui/PageControl$OnPageControlClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Luk/co/jasonfry/android/tools/ui/SwipeView;->setPageControl(Luk/co/jasonfry/android/tools/ui/PageControl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Luk/co/jasonfry/android/tools/ui/SwipeView;


# direct methods
.method constructor <init>(Luk/co/jasonfry/android/tools/ui/SwipeView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Luk/co/jasonfry/android/tools/ui/SwipeView$1;->this$0:Luk/co/jasonfry/android/tools/ui/SwipeView;

    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public goBackwards()V
    .locals 2

    .prologue
    .line 370
    iget-object v0, p0, Luk/co/jasonfry/android/tools/ui/SwipeView$1;->this$0:Luk/co/jasonfry/android/tools/ui/SwipeView;

    iget-object v1, p0, Luk/co/jasonfry/android/tools/ui/SwipeView$1;->this$0:Luk/co/jasonfry/android/tools/ui/SwipeView;

    #getter for: Luk/co/jasonfry/android/tools/ui/SwipeView;->mCurrentPage:I
    invoke-static {v1}, Luk/co/jasonfry/android/tools/ui/SwipeView;->access$10(Luk/co/jasonfry/android/tools/ui/SwipeView;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Luk/co/jasonfry/android/tools/ui/SwipeView;->smoothScrollToPage(I)V

    .line 371
    return-void
.end method

.method public goForwards()V
    .locals 2

    .prologue
    .line 365
    iget-object v0, p0, Luk/co/jasonfry/android/tools/ui/SwipeView$1;->this$0:Luk/co/jasonfry/android/tools/ui/SwipeView;

    iget-object v1, p0, Luk/co/jasonfry/android/tools/ui/SwipeView$1;->this$0:Luk/co/jasonfry/android/tools/ui/SwipeView;

    #getter for: Luk/co/jasonfry/android/tools/ui/SwipeView;->mCurrentPage:I
    invoke-static {v1}, Luk/co/jasonfry/android/tools/ui/SwipeView;->access$10(Luk/co/jasonfry/android/tools/ui/SwipeView;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Luk/co/jasonfry/android/tools/ui/SwipeView;->smoothScrollToPage(I)V

    .line 366
    return-void
.end method
