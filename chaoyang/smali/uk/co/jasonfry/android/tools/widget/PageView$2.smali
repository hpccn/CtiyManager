.class Luk/co/jasonfry/android/tools/widget/PageView$2;
.super Ljava/lang/Object;
.source "PageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Luk/co/jasonfry/android/tools/widget/PageView;->rearrangePages(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Luk/co/jasonfry/android/tools/widget/PageView;

.field private final synthetic val$pageToScrollTo:I

.field private final synthetic val$smooth:Z


# direct methods
.method constructor <init>(Luk/co/jasonfry/android/tools/widget/PageView;ZI)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Luk/co/jasonfry/android/tools/widget/PageView$2;->this$0:Luk/co/jasonfry/android/tools/widget/PageView;

    iput-boolean p2, p0, Luk/co/jasonfry/android/tools/widget/PageView$2;->val$smooth:Z

    iput p3, p0, Luk/co/jasonfry/android/tools/widget/PageView$2;->val$pageToScrollTo:I

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 337
    iget-boolean v0, p0, Luk/co/jasonfry/android/tools/widget/PageView$2;->val$smooth:Z

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Luk/co/jasonfry/android/tools/widget/PageView$2;->this$0:Luk/co/jasonfry/android/tools/widget/PageView;

    iget v1, p0, Luk/co/jasonfry/android/tools/widget/PageView$2;->val$pageToScrollTo:I

    #calls: Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->smoothScrollToPage(I)V
    invoke-static {v0, v1}, Luk/co/jasonfry/android/tools/widget/PageView;->access$3(Luk/co/jasonfry/android/tools/widget/PageView;I)V

    .line 345
    :goto_0
    return-void

    .line 343
    :cond_0
    iget-object v0, p0, Luk/co/jasonfry/android/tools/widget/PageView$2;->this$0:Luk/co/jasonfry/android/tools/widget/PageView;

    iget v1, p0, Luk/co/jasonfry/android/tools/widget/PageView$2;->val$pageToScrollTo:I

    #calls: Luk/co/jasonfry/android/tools/widget/BounceSwipeView;->scrollToPage(I)V
    invoke-static {v0, v1}, Luk/co/jasonfry/android/tools/widget/PageView;->access$1(Luk/co/jasonfry/android/tools/widget/PageView;I)V

    goto :goto_0
.end method
