.class Lcom/cymobile/ymwork/act/MoreActivity$6;
.super Ljava/lang/Object;
.source "MoreActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/MoreActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/MoreActivity;

.field private final synthetic val$currentListNumFinal:I


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/MoreActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/MoreActivity$6;->this$0:Lcom/cymobile/ymwork/act/MoreActivity;

    iput p2, p0, Lcom/cymobile/ymwork/act/MoreActivity$6;->val$currentListNumFinal:I

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 253
    iget v1, p0, Lcom/cymobile/ymwork/act/MoreActivity$6;->val$currentListNumFinal:I

    if-eq p2, v1, :cond_0

    .line 254
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MoreActivity$6;->this$0:Lcom/cymobile/ymwork/act/MoreActivity;

    iget-object v1, v1, Lcom/cymobile/ymwork/act/MoreActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 255
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_listnum"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 256
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 258
    .end local v0           #edit:Landroid/content/SharedPreferences$Editor;
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 259
    return-void
.end method
