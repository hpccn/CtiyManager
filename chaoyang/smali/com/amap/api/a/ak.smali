.class Lcom/amap/api/a/ak;
.super Ljava/lang/Object;
.source "UiSettingsDelegateImp.java"

# interfaces
.implements Lcom/amap/api/a/w;


# instance fields
.field private a:Lcom/amap/api/a/n;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z


# direct methods
.method constructor <init>(Lcom/amap/api/a/n;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-boolean v0, p0, Lcom/amap/api/a/ak;->b:Z

    .line 8
    iput-boolean v0, p0, Lcom/amap/api/a/ak;->c:Z

    .line 9
    iput-boolean v0, p0, Lcom/amap/api/a/ak;->d:Z

    .line 10
    iput-boolean v1, p0, Lcom/amap/api/a/ak;->e:Z

    .line 11
    iput-boolean v0, p0, Lcom/amap/api/a/ak;->f:Z

    .line 12
    iput-boolean v0, p0, Lcom/amap/api/a/ak;->g:Z

    .line 13
    iput-boolean v0, p0, Lcom/amap/api/a/ak;->h:Z

    .line 14
    iput-boolean v1, p0, Lcom/amap/api/a/ak;->i:Z

    .line 17
    iput-object p1, p0, Lcom/amap/api/a/ak;->a:Lcom/amap/api/a/n;

    .line 18
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/amap/api/a/ak;->i:Z

    .line 23
    iget-object v0, p0, Lcom/amap/api/a/ak;->a:Lcom/amap/api/a/n;

    iget-boolean v1, p0, Lcom/amap/api/a/ak;->i:Z

    invoke-interface {v0, v1}, Lcom/amap/api/a/n;->d(Z)V

    .line 24
    return-void
.end method

.method public a()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/amap/api/a/ak;->i:Z

    return v0
.end method

.method public b(Z)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/amap/api/a/ak;->g:Z

    .line 30
    iget-object v0, p0, Lcom/amap/api/a/ak;->a:Lcom/amap/api/a/n;

    iget-boolean v1, p0, Lcom/amap/api/a/ak;->g:Z

    invoke-interface {v0, v1}, Lcom/amap/api/a/n;->a(Z)V

    .line 31
    return-void
.end method

.method public b()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/amap/api/a/ak;->g:Z

    return v0
.end method

.method public c(Z)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/amap/api/a/ak;->h:Z

    .line 36
    iget-object v0, p0, Lcom/amap/api/a/ak;->a:Lcom/amap/api/a/n;

    iget-boolean v1, p0, Lcom/amap/api/a/ak;->h:Z

    invoke-interface {v0, v1}, Lcom/amap/api/a/n;->c(Z)V

    .line 37
    return-void
.end method

.method public c()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/amap/api/a/ak;->h:Z

    return v0
.end method

.method public d(Z)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/amap/api/a/ak;->e:Z

    .line 43
    iget-object v0, p0, Lcom/amap/api/a/ak;->a:Lcom/amap/api/a/n;

    iget-boolean v1, p0, Lcom/amap/api/a/ak;->e:Z

    invoke-interface {v0, v1}, Lcom/amap/api/a/n;->b(Z)V

    .line 44
    return-void
.end method

.method public d()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/amap/api/a/ak;->e:Z

    return v0
.end method

.method public e(Z)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/amap/api/a/ak;->c:Z

    .line 50
    return-void
.end method

.method public e()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/amap/api/a/ak;->c:Z

    return v0
.end method

.method public f(Z)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/amap/api/a/ak;->f:Z

    .line 56
    return-void
.end method

.method public f()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/amap/api/a/ak;->f:Z

    return v0
.end method

.method public g(Z)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/amap/api/a/ak;->d:Z

    .line 62
    return-void
.end method

.method public g()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/amap/api/a/ak;->d:Z

    return v0
.end method

.method public h(Z)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/amap/api/a/ak;->b:Z

    .line 68
    return-void
.end method

.method public h()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/amap/api/a/ak;->b:Z

    return v0
.end method

.method public i(Z)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-virtual {p0, p1}, Lcom/amap/api/a/ak;->h(Z)V

    .line 74
    invoke-virtual {p0, p1}, Lcom/amap/api/a/ak;->g(Z)V

    .line 75
    invoke-virtual {p0, p1}, Lcom/amap/api/a/ak;->f(Z)V

    .line 76
    invoke-virtual {p0, p1}, Lcom/amap/api/a/ak;->e(Z)V

    .line 77
    return-void
.end method
