.class Luk/co/jasonfry/android/tools/ui/PageControl$1;
.super Ljava/lang/Object;
.source "PageControl.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Luk/co/jasonfry/android/tools/ui/PageControl;->initPageControl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Luk/co/jasonfry/android/tools/ui/PageControl;


# direct methods
.method constructor <init>(Luk/co/jasonfry/android/tools/ui/PageControl;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Luk/co/jasonfry/android/tools/ui/PageControl$1;->this$0:Luk/co/jasonfry/android/tools/ui/PageControl;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "event"

    .prologue
    .line 111
    iget-object v0, p0, Luk/co/jasonfry/android/tools/ui/PageControl$1;->this$0:Luk/co/jasonfry/android/tools/ui/PageControl;

    #getter for: Luk/co/jasonfry/android/tools/ui/PageControl;->mOnPageControlClickListener:Luk/co/jasonfry/android/tools/ui/PageControl$OnPageControlClickListener;
    invoke-static {v0}, Luk/co/jasonfry/android/tools/ui/PageControl;->access$0(Luk/co/jasonfry/android/tools/ui/PageControl;)Luk/co/jasonfry/android/tools/ui/PageControl$OnPageControlClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 156
    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 117
    :pswitch_0
    iget-object v0, p0, Luk/co/jasonfry/android/tools/ui/PageControl$1;->this$0:Luk/co/jasonfry/android/tools/ui/PageControl;

    invoke-virtual {v0}, Luk/co/jasonfry/android/tools/ui/PageControl;->getOrientation()I

    move-result v0

    if-nez v0, :cond_3

    .line 119
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Luk/co/jasonfry/android/tools/ui/PageControl$1;->this$0:Luk/co/jasonfry/android/tools/ui/PageControl;

    invoke-virtual {v1}, Luk/co/jasonfry/android/tools/ui/PageControl;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 121
    iget-object v0, p0, Luk/co/jasonfry/android/tools/ui/PageControl$1;->this$0:Luk/co/jasonfry/android/tools/ui/PageControl;

    #getter for: Luk/co/jasonfry/android/tools/ui/PageControl;->mCurrentPage:I
    invoke-static {v0}, Luk/co/jasonfry/android/tools/ui/PageControl;->access$1(Luk/co/jasonfry/android/tools/ui/PageControl;)I

    move-result v0

    if-lez v0, :cond_1

    .line 123
    iget-object v0, p0, Luk/co/jasonfry/android/tools/ui/PageControl$1;->this$0:Luk/co/jasonfry/android/tools/ui/PageControl;

    #getter for: Luk/co/jasonfry/android/tools/ui/PageControl;->mOnPageControlClickListener:Luk/co/jasonfry/android/tools/ui/PageControl$OnPageControlClickListener;
    invoke-static {v0}, Luk/co/jasonfry/android/tools/ui/PageControl;->access$0(Luk/co/jasonfry/android/tools/ui/PageControl;)Luk/co/jasonfry/android/tools/ui/PageControl$OnPageControlClickListener;

    move-result-object v0

    invoke-interface {v0}, Luk/co/jasonfry/android/tools/ui/PageControl$OnPageControlClickListener;->goBackwards()V

    .line 153
    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 128
    :cond_2
    iget-object v0, p0, Luk/co/jasonfry/android/tools/ui/PageControl$1;->this$0:Luk/co/jasonfry/android/tools/ui/PageControl;

    #getter for: Luk/co/jasonfry/android/tools/ui/PageControl;->mCurrentPage:I
    invoke-static {v0}, Luk/co/jasonfry/android/tools/ui/PageControl;->access$1(Luk/co/jasonfry/android/tools/ui/PageControl;)I

    move-result v0

    iget-object v1, p0, Luk/co/jasonfry/android/tools/ui/PageControl$1;->this$0:Luk/co/jasonfry/android/tools/ui/PageControl;

    #getter for: Luk/co/jasonfry/android/tools/ui/PageControl;->mPageCount:I
    invoke-static {v1}, Luk/co/jasonfry/android/tools/ui/PageControl;->access$2(Luk/co/jasonfry/android/tools/ui/PageControl;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 130
    iget-object v0, p0, Luk/co/jasonfry/android/tools/ui/PageControl$1;->this$0:Luk/co/jasonfry/android/tools/ui/PageControl;

    #getter for: Luk/co/jasonfry/android/tools/ui/PageControl;->mOnPageControlClickListener:Luk/co/jasonfry/android/tools/ui/PageControl$OnPageControlClickListener;
    invoke-static {v0}, Luk/co/jasonfry/android/tools/ui/PageControl;->access$0(Luk/co/jasonfry/android/tools/ui/PageControl;)Luk/co/jasonfry/android/tools/ui/PageControl$OnPageControlClickListener;

    move-result-object v0

    invoke-interface {v0}, Luk/co/jasonfry/android/tools/ui/PageControl$OnPageControlClickListener;->goForwards()V

    goto :goto_1

    .line 136
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Luk/co/jasonfry/android/tools/ui/PageControl$1;->this$0:Luk/co/jasonfry/android/tools/ui/PageControl;

    invoke-virtual {v1}, Luk/co/jasonfry/android/tools/ui/PageControl;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    .line 138
    iget-object v0, p0, Luk/co/jasonfry/android/tools/ui/PageControl$1;->this$0:Luk/co/jasonfry/android/tools/ui/PageControl;

    #getter for: Luk/co/jasonfry/android/tools/ui/PageControl;->mCurrentPage:I
    invoke-static {v0}, Luk/co/jasonfry/android/tools/ui/PageControl;->access$1(Luk/co/jasonfry/android/tools/ui/PageControl;)I

    move-result v0

    if-lez v0, :cond_1

    .line 140
    iget-object v0, p0, Luk/co/jasonfry/android/tools/ui/PageControl$1;->this$0:Luk/co/jasonfry/android/tools/ui/PageControl;

    #getter for: Luk/co/jasonfry/android/tools/ui/PageControl;->mOnPageControlClickListener:Luk/co/jasonfry/android/tools/ui/PageControl$OnPageControlClickListener;
    invoke-static {v0}, Luk/co/jasonfry/android/tools/ui/PageControl;->access$0(Luk/co/jasonfry/android/tools/ui/PageControl;)Luk/co/jasonfry/android/tools/ui/PageControl$OnPageControlClickListener;

    move-result-object v0

    invoke-interface {v0}, Luk/co/jasonfry/android/tools/ui/PageControl$OnPageControlClickListener;->goBackwards()V

    goto :goto_1

    .line 145
    :cond_4
    iget-object v0, p0, Luk/co/jasonfry/android/tools/ui/PageControl$1;->this$0:Luk/co/jasonfry/android/tools/ui/PageControl;

    #getter for: Luk/co/jasonfry/android/tools/ui/PageControl;->mCurrentPage:I
    invoke-static {v0}, Luk/co/jasonfry/android/tools/ui/PageControl;->access$1(Luk/co/jasonfry/android/tools/ui/PageControl;)I

    move-result v0

    iget-object v1, p0, Luk/co/jasonfry/android/tools/ui/PageControl$1;->this$0:Luk/co/jasonfry/android/tools/ui/PageControl;

    #getter for: Luk/co/jasonfry/android/tools/ui/PageControl;->mPageCount:I
    invoke-static {v1}, Luk/co/jasonfry/android/tools/ui/PageControl;->access$2(Luk/co/jasonfry/android/tools/ui/PageControl;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 147
    iget-object v0, p0, Luk/co/jasonfry/android/tools/ui/PageControl$1;->this$0:Luk/co/jasonfry/android/tools/ui/PageControl;

    #getter for: Luk/co/jasonfry/android/tools/ui/PageControl;->mOnPageControlClickListener:Luk/co/jasonfry/android/tools/ui/PageControl$OnPageControlClickListener;
    invoke-static {v0}, Luk/co/jasonfry/android/tools/ui/PageControl;->access$0(Luk/co/jasonfry/android/tools/ui/PageControl;)Luk/co/jasonfry/android/tools/ui/PageControl$OnPageControlClickListener;

    move-result-object v0

    invoke-interface {v0}, Luk/co/jasonfry/android/tools/ui/PageControl$OnPageControlClickListener;->goForwards()V

    goto :goto_1

    .line 113
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
