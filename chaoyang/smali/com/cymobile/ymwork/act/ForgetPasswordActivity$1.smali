.class Lcom/cymobile/ymwork/act/ForgetPasswordActivity$1;
.super Landroid/os/Handler;
.source "ForgetPasswordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/act/ForgetPasswordActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/ForgetPasswordActivity;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/ForgetPasswordActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/ForgetPasswordActivity$1;->this$0:Lcom/cymobile/ymwork/act/ForgetPasswordActivity;

    .line 103
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 105
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 114
    :goto_0
    return-void

    .line 107
    :pswitch_0
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ForgetPasswordActivity$1;->this$0:Lcom/cymobile/ymwork/act/ForgetPasswordActivity;

    const v1, 0x7f0900ba

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 108
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ForgetPasswordActivity$1;->this$0:Lcom/cymobile/ymwork/act/ForgetPasswordActivity;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/ForgetPasswordActivity;->finish()V

    goto :goto_0

    .line 111
    :pswitch_1
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ForgetPasswordActivity$1;->this$0:Lcom/cymobile/ymwork/act/ForgetPasswordActivity;

    const v1, 0x7f0900bb

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
