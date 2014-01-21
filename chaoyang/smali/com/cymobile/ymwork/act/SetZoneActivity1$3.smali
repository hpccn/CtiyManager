.class Lcom/cymobile/ymwork/act/SetZoneActivity1$3;
.super Ljava/lang/Object;
.source "SetZoneActivity1.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/SetZoneActivity1;->ensureUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/SetZoneActivity1;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/SetZoneActivity1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1$3;->this$0:Lcom/cymobile/ymwork/act/SetZoneActivity1;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    .line 130
    iget-object v1, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1$3;->this$0:Lcom/cymobile/ymwork/act/SetZoneActivity1;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/SetZoneActivity1;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 131
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/cymobile/ymwork/act/SetZoneActivity1$3;->this$0:Lcom/cymobile/ymwork/act/SetZoneActivity1;

    #getter for: Lcom/cymobile/ymwork/act/SetZoneActivity1;->streetZoneSpinner:Landroid/widget/Spinner;
    invoke-static {v1}, Lcom/cymobile/ymwork/act/SetZoneActivity1;->access$4(Lcom/cymobile/ymwork/act/SetZoneActivity1;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Spinner;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 132
    return v3
.end method
