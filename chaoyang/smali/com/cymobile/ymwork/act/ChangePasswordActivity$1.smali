.class Lcom/cymobile/ymwork/act/ChangePasswordActivity$1;
.super Ljava/lang/Object;
.source "ChangePasswordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/ChangePasswordActivity;->ensureUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/ChangePasswordActivity;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/ChangePasswordActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/ChangePasswordActivity$1;->this$0:Lcom/cymobile/ymwork/act/ChangePasswordActivity;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/cymobile/ymwork/act/ChangePasswordActivity$1;->this$0:Lcom/cymobile/ymwork/act/ChangePasswordActivity;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/ChangePasswordActivity;->onBackPressed()V

    .line 75
    return-void
.end method
