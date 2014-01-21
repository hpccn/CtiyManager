.class public Lcom/cymobile/ymwork/act/RegisterActivity$OnViewClickListener;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/act/RegisterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnViewClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/RegisterActivity;


# direct methods
.method public constructor <init>(Lcom/cymobile/ymwork/act/RegisterActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 322
    iput-object p1, p0, Lcom/cymobile/ymwork/act/RegisterActivity$OnViewClickListener;->this$0:Lcom/cymobile/ymwork/act/RegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 326
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 344
    :goto_0
    :sswitch_0
    return-void

    .line 334
    :sswitch_1
    :try_start_0
    iget-object v3, p0, Lcom/cymobile/ymwork/act/RegisterActivity$OnViewClickListener;->this$0:Lcom/cymobile/ymwork/act/RegisterActivity;

    const v4, 0x7f0800c0

    invoke-virtual {v3, v4}, Lcom/cymobile/ymwork/act/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 335
    .local v2, registerbutton:Landroid/widget/Button;
    iget-object v3, p0, Lcom/cymobile/ymwork/act/RegisterActivity$OnViewClickListener;->this$0:Lcom/cymobile/ymwork/act/RegisterActivity;

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Lcom/cymobile/ymwork/act/RegisterActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 336
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v2}, Landroid/widget/Button;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    .end local v1           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v2           #registerbutton:Landroid/widget/Button;
    :goto_1
    iget-object v3, p0, Lcom/cymobile/ymwork/act/RegisterActivity$OnViewClickListener;->this$0:Lcom/cymobile/ymwork/act/RegisterActivity;

    new-instance v4, Lcom/cymobile/ymwork/act/RegisterActivity$RegisterTask;

    iget-object v5, p0, Lcom/cymobile/ymwork/act/RegisterActivity$OnViewClickListener;->this$0:Lcom/cymobile/ymwork/act/RegisterActivity;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/cymobile/ymwork/act/RegisterActivity$RegisterTask;-><init>(Lcom/cymobile/ymwork/act/RegisterActivity;Lcom/cymobile/ymwork/act/RegisterActivity$RegisterTask;)V

    #setter for: Lcom/cymobile/ymwork/act/RegisterActivity;->mRegisterTask:Landroid/os/AsyncTask;
    invoke-static {v3, v4}, Lcom/cymobile/ymwork/act/RegisterActivity;->access$9(Lcom/cymobile/ymwork/act/RegisterActivity;Landroid/os/AsyncTask;)V

    .line 341
    iget-object v3, p0, Lcom/cymobile/ymwork/act/RegisterActivity$OnViewClickListener;->this$0:Lcom/cymobile/ymwork/act/RegisterActivity;

    #getter for: Lcom/cymobile/ymwork/act/RegisterActivity;->mRegisterTask:Landroid/os/AsyncTask;
    invoke-static {v3}, Lcom/cymobile/ymwork/act/RegisterActivity;->access$10(Lcom/cymobile/ymwork/act/RegisterActivity;)Landroid/os/AsyncTask;

    move-result-object v3

    invoke-static {v3}, Lcom/cymobile/ymwork/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V

    goto :goto_0

    .line 337
    :catch_0
    move-exception v0

    .line 338
    .local v0, ee:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 326
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f08002d -> :sswitch_0
        0x7f0800c0 -> :sswitch_1
    .end sparse-switch
.end method
