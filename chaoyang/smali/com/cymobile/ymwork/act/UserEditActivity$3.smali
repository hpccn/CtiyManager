.class Lcom/cymobile/ymwork/act/UserEditActivity$3;
.super Ljava/lang/Object;
.source "UserEditActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/UserEditActivity;->ensureUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/UserEditActivity;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/UserEditActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/UserEditActivity$3;->this$0:Lcom/cymobile/ymwork/act/UserEditActivity;

    .line 141
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

    .line 144
    iget-object v1, p0, Lcom/cymobile/ymwork/act/UserEditActivity$3;->this$0:Lcom/cymobile/ymwork/act/UserEditActivity;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/UserEditActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 145
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/cymobile/ymwork/act/UserEditActivity$3;->this$0:Lcom/cymobile/ymwork/act/UserEditActivity;

    #getter for: Lcom/cymobile/ymwork/act/UserEditActivity;->usernameEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/cymobile/ymwork/act/UserEditActivity;->access$1(Lcom/cymobile/ymwork/act/UserEditActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 146
    return v3
.end method
