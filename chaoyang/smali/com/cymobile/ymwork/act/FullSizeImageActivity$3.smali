.class Lcom/cymobile/ymwork/act/FullSizeImageActivity$3;
.super Ljava/lang/Object;
.source "FullSizeImageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/FullSizeImageActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/FullSizeImageActivity;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/FullSizeImageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/FullSizeImageActivity$3;->this$0:Lcom/cymobile/ymwork/act/FullSizeImageActivity;

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 239
    iget-object v1, p0, Lcom/cymobile/ymwork/act/FullSizeImageActivity$3;->this$0:Lcom/cymobile/ymwork/act/FullSizeImageActivity;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 247
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "FullSizeImageActivity"

    const-string v2, " TODO: // ddddddddddddddddddd DIALOG_SET_USER_PHOTO_YES_NO"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    return-void
.end method
