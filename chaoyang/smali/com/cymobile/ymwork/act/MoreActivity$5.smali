.class Lcom/cymobile/ymwork/act/MoreActivity$5;
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

.field private final synthetic val$currentMethodFinal:I


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/MoreActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/MoreActivity$5;->this$0:Lcom/cymobile/ymwork/act/MoreActivity;

    iput p2, p0, Lcom/cymobile/ymwork/act/MoreActivity$5;->val$currentMethodFinal:I

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 233
    iget v1, p0, Lcom/cymobile/ymwork/act/MoreActivity$5;->val$currentMethodFinal:I

    if-eq p2, v1, :cond_0

    .line 234
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MoreActivity$5;->this$0:Lcom/cymobile/ymwork/act/MoreActivity;

    iget-object v1, v1, Lcom/cymobile/ymwork/act/MoreActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 235
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_notif"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 236
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 238
    .end local v0           #edit:Landroid/content/SharedPreferences$Editor;
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 239
    return-void
.end method
