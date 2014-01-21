.class Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity$11;
.super Ljava/lang/Object;
.source "ShopDetailsFireServiceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity$11;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;

    .line 810
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 813
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 814
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "caseid"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity$11;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;

    #getter for: Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;->mCaseid:Ljava/lang/String;
    invoke-static {v2}, Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;->access$2(Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 815
    .local v0, extra:[Ljava/lang/String;
    iget-object v1, p0, Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity$11;->this$0:Lcom/cymobile/ymwork/act/ShopDetailsFireServiceActivity;

    const-class v2, Lcom/cymobile/ymwork/act/ReplyListActivity;

    invoke-static {v1, v2, v0}, Lcom/cymobile/ymwork/HomeApplication;->redirectToLoginActivityAndBack(Landroid/app/Activity;Ljava/lang/Class;[Ljava/lang/String;)V

    .line 816
    return-void
.end method
