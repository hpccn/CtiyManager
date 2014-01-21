.class Lcom/cymobile/ymwork/act/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/act/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/MainActivity;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/MainActivity$2;->this$0:Lcom/cymobile/ymwork/act/MainActivity;

    .line 398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "name"
    .parameter "service"

    .prologue
    .line 400
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainActivity$2;->this$0:Lcom/cymobile/ymwork/act/MainActivity;

    invoke-static {p2}, Lcom/cymobile/ymwork/ISystemService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cymobile/ymwork/ISystemService;

    move-result-object v2

    iput-object v2, v1, Lcom/cymobile/ymwork/act/MainActivity;->iSystemService:Lcom/cymobile/ymwork/ISystemService;

    .line 402
    :try_start_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainActivity$2;->this$0:Lcom/cymobile/ymwork/act/MainActivity;

    iget-boolean v1, v1, Lcom/cymobile/ymwork/act/MainActivity;->makeServiceReadNumberOnce:Z

    if-eqz v1, :cond_0

    .line 403
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainActivity$2;->this$0:Lcom/cymobile/ymwork/act/MainActivity;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/cymobile/ymwork/act/MainActivity;->makeServiceReadNumberOnce:Z

    .line 404
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainActivity$2;->this$0:Lcom/cymobile/ymwork/act/MainActivity;

    iget-object v1, v1, Lcom/cymobile/ymwork/act/MainActivity;->iSystemService:Lcom/cymobile/ymwork/ISystemService;

    invoke-interface {v1}, Lcom/cymobile/ymwork/ISystemService;->hushReadNumber()V

    .line 406
    :cond_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainActivity$2;->this$0:Lcom/cymobile/ymwork/act/MainActivity;

    #calls: Lcom/cymobile/ymwork/act/MainActivity;->readNumberFromService()V
    invoke-static {v1}, Lcom/cymobile/ymwork/act/MainActivity;->access$0(Lcom/cymobile/ymwork/act/MainActivity;)V

    .line 407
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainActivity$2;->this$0:Lcom/cymobile/ymwork/act/MainActivity;

    iget-object v1, v1, Lcom/cymobile/ymwork/act/MainActivity;->iSystemService:Lcom/cymobile/ymwork/ISystemService;

    invoke-interface {v1}, Lcom/cymobile/ymwork/ISystemService;->readServerInfo()V

    .line 408
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainActivity$2;->this$0:Lcom/cymobile/ymwork/act/MainActivity;

    iget-object v1, v1, Lcom/cymobile/ymwork/act/MainActivity;->iSystemService:Lcom/cymobile/ymwork/ISystemService;

    invoke-interface {v1}, Lcom/cymobile/ymwork/ISystemService;->cancelNotification()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    :goto_0
    return-void

    .line 409
    :catch_0
    move-exception v0

    .line 410
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 414
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainActivity$2;->this$0:Lcom/cymobile/ymwork/act/MainActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/cymobile/ymwork/act/MainActivity;->iSystemService:Lcom/cymobile/ymwork/ISystemService;

    .line 415
    return-void
.end method
