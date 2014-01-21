.class Lcom/cymobile/ymwork/SystemService$5;
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
    iput-object p1, p0, Lcom/cymobile/ymwork/SystemService$5;->this$0:Lcom/cymobile/ymwork/SystemService;

    .line 468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 470
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 471
    return-void
.end method
