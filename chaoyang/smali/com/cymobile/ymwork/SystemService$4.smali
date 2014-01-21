.class Lcom/cymobile/ymwork/SystemService$4;
.super Ljava/lang/Object;
.source "SystemService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/SystemService;->createVersionDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/SystemService;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/SystemService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/SystemService$4;->this$0:Lcom/cymobile/ymwork/SystemService;

    .line 457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 459
    iget-object v2, p0, Lcom/cymobile/ymwork/SystemService$4;->this$0:Lcom/cymobile/ymwork/SystemService;

    iget-object v2, v2, Lcom/cymobile/ymwork/SystemService;->currentServerSettings:Lcom/cymobile/ymwork/types/ServerSettings;

    if-eqz v2, :cond_0

    .line 460
    iget-object v2, p0, Lcom/cymobile/ymwork/SystemService$4;->this$0:Lcom/cymobile/ymwork/SystemService;

    iget-object v2, v2, Lcom/cymobile/ymwork/SystemService;->currentServerSettings:Lcom/cymobile/ymwork/types/ServerSettings;

    invoke-virtual {v2}, Lcom/cymobile/ymwork/types/ServerSettings;->getDownloadaddress()Ljava/lang/String;

    move-result-object v0

    .line 461
    .local v0, address:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 462
    .local v1, browserIntent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 463
    iget-object v2, p0, Lcom/cymobile/ymwork/SystemService$4;->this$0:Lcom/cymobile/ymwork/SystemService;

    invoke-virtual {v2}, Lcom/cymobile/ymwork/SystemService;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    .line 465
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #browserIntent:Landroid/content/Intent;
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 466
    return-void
.end method
