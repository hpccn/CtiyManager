.class Lcom/cymobile/ymwork/act/Main11Activity$1;
.super Ljava/lang/Object;
.source "Main11Activity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/act/Main11Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/Main11Activity;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/Main11Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/Main11Activity$1;->this$0:Lcom/cymobile/ymwork/act/Main11Activity;

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "name"
    .parameter "service"

    .prologue
    .line 173
    iget-object v1, p0, Lcom/cymobile/ymwork/act/Main11Activity$1;->this$0:Lcom/cymobile/ymwork/act/Main11Activity;

    invoke-static {p2}, Lcom/cymobile/ymwork/ISystemService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cymobile/ymwork/ISystemService;

    move-result-object v2

    iput-object v2, v1, Lcom/cymobile/ymwork/act/Main11Activity;->iSystemService:Lcom/cymobile/ymwork/ISystemService;

    .line 175
    :try_start_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/Main11Activity$1;->this$0:Lcom/cymobile/ymwork/act/Main11Activity;

    #calls: Lcom/cymobile/ymwork/act/Main11Activity;->readNumberFromService()V
    invoke-static {v1}, Lcom/cymobile/ymwork/act/Main11Activity;->access$0(Lcom/cymobile/ymwork/act/Main11Activity;)V

    .line 176
    iget-object v1, p0, Lcom/cymobile/ymwork/act/Main11Activity$1;->this$0:Lcom/cymobile/ymwork/act/Main11Activity;

    iget-object v1, v1, Lcom/cymobile/ymwork/act/Main11Activity;->iSystemService:Lcom/cymobile/ymwork/ISystemService;

    invoke-interface {v1}, Lcom/cymobile/ymwork/ISystemService;->readServerInfo()V

    .line 177
    iget-object v1, p0, Lcom/cymobile/ymwork/act/Main11Activity$1;->this$0:Lcom/cymobile/ymwork/act/Main11Activity;

    iget-object v1, v1, Lcom/cymobile/ymwork/act/Main11Activity;->iSystemService:Lcom/cymobile/ymwork/ISystemService;

    invoke-interface {v1}, Lcom/cymobile/ymwork/ISystemService;->cancelNotification()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :goto_0
    return-void

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/cymobile/ymwork/act/Main11Activity$1;->this$0:Lcom/cymobile/ymwork/act/Main11Activity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/cymobile/ymwork/act/Main11Activity;->iSystemService:Lcom/cymobile/ymwork/ISystemService;

    .line 185
    return-void
.end method
