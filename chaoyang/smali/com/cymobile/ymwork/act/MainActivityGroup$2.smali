.class Lcom/cymobile/ymwork/act/MainActivityGroup$2;
.super Ljava/lang/Object;
.source "MainActivityGroup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/MainActivityGroup;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/MainActivityGroup;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/MainActivityGroup;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/MainActivityGroup$2;->this$0:Lcom/cymobile/ymwork/act/MainActivityGroup;

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 342
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 343
    iget-object v2, p0, Lcom/cymobile/ymwork/act/MainActivityGroup$2;->this$0:Lcom/cymobile/ymwork/act/MainActivityGroup;

    const-class v3, Lcom/cymobile/ymwork/SettingBase;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/cymobile/ymwork/act/MainActivityGroup;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 344
    .local v1, mPrefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 346
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 347
    iget-object v2, p0, Lcom/cymobile/ymwork/act/MainActivityGroup$2;->this$0:Lcom/cymobile/ymwork/act/MainActivityGroup;

    #calls: Landroid/app/TabActivity;->onBackPressed()V
    invoke-static {v2}, Lcom/cymobile/ymwork/act/MainActivityGroup;->access$0(Lcom/cymobile/ymwork/act/MainActivityGroup;)V

    .line 348
    iget-object v2, p0, Lcom/cymobile/ymwork/act/MainActivityGroup$2;->this$0:Lcom/cymobile/ymwork/act/MainActivityGroup;

    invoke-virtual {v2}, Lcom/cymobile/ymwork/act/MainActivityGroup;->finish()V

    .line 355
    return-void
.end method
