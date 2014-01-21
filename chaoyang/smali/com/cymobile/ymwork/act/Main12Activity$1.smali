.class Lcom/cymobile/ymwork/act/Main12Activity$1;
.super Ljava/lang/Object;
.source "Main12Activity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/act/Main12Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/Main12Activity;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/Main12Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/Main12Activity$1;->this$0:Lcom/cymobile/ymwork/act/Main12Activity;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "name"
    .parameter "service"

    .prologue
    .line 154
    iget-object v1, p0, Lcom/cymobile/ymwork/act/Main12Activity$1;->this$0:Lcom/cymobile/ymwork/act/Main12Activity;

    invoke-static {p2}, Lcom/cymobile/ymwork/ISystemService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cymobile/ymwork/ISystemService;

    move-result-object v2

    iput-object v2, v1, Lcom/cymobile/ymwork/act/Main12Activity;->iSystemService:Lcom/cymobile/ymwork/ISystemService;

    .line 156
    :try_start_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/Main12Activity$1;->this$0:Lcom/cymobile/ymwork/act/Main12Activity;

    #calls: Lcom/cymobile/ymwork/act/Main12Activity;->readNumberFromService()V
    invoke-static {v1}, Lcom/cymobile/ymwork/act/Main12Activity;->access$0(Lcom/cymobile/ymwork/act/Main12Activity;)V

    .line 157
    iget-object v1, p0, Lcom/cymobile/ymwork/act/Main12Activity$1;->this$0:Lcom/cymobile/ymwork/act/Main12Activity;

    iget-object v1, v1, Lcom/cymobile/ymwork/act/Main12Activity;->iSystemService:Lcom/cymobile/ymwork/ISystemService;

    invoke-interface {v1}, Lcom/cymobile/ymwork/ISystemService;->readServerInfo()V

    .line 158
    iget-object v1, p0, Lcom/cymobile/ymwork/act/Main12Activity$1;->this$0:Lcom/cymobile/ymwork/act/Main12Activity;

    iget-object v1, v1, Lcom/cymobile/ymwork/act/Main12Activity;->iSystemService:Lcom/cymobile/ymwork/ISystemService;

    invoke-interface {v1}, Lcom/cymobile/ymwork/ISystemService;->cancelNotification()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :goto_0
    return-void

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/cymobile/ymwork/act/Main12Activity$1;->this$0:Lcom/cymobile/ymwork/act/Main12Activity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/cymobile/ymwork/act/Main12Activity;->iSystemService:Lcom/cymobile/ymwork/ISystemService;

    .line 166
    return-void
.end method
