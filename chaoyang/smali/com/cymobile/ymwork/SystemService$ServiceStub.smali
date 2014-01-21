.class Lcom/cymobile/ymwork/SystemService$ServiceStub;
.super Lcom/cymobile/ymwork/ISystemService$Stub;
.source "SystemService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/SystemService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ServiceStub"
.end annotation


# instance fields
.field mService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/cymobile/ymwork/SystemService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/SystemService;)V
    .locals 1
    .parameter "service"

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/cymobile/ymwork/ISystemService$Stub;-><init>()V

    .line 140
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/SystemService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    .line 141
    return-void
.end method


# virtual methods
.method public cancelNotification()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/cymobile/ymwork/SystemService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cymobile/ymwork/SystemService;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/SystemService;->cancelNotification()V

    .line 158
    return-void
.end method

.method public checkNewVersion()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Lcom/cymobile/ymwork/SystemService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cymobile/ymwork/SystemService;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/SystemService;->checkNewVersion()V

    .line 152
    return-void
.end method

.method public clearNumbers()V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/cymobile/ymwork/SystemService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cymobile/ymwork/SystemService;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/SystemService;->clearNumbers()V

    .line 161
    return-void
.end method

.method public getCurrentCaseNumber()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Lcom/cymobile/ymwork/SystemService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cymobile/ymwork/SystemService;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/SystemService;->getCurrentCaseNumber()[I

    move-result-object v0

    return-object v0
.end method

.method public hushReadNumber()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lcom/cymobile/ymwork/SystemService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cymobile/ymwork/SystemService;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/SystemService;->hushReadNumber()V

    .line 148
    return-void
.end method

.method public readServerInfo()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lcom/cymobile/ymwork/SystemService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cymobile/ymwork/SystemService;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/SystemService;->readServerInfo()V

    .line 145
    return-void
.end method
