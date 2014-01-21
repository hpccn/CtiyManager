.class Lcom/cymobile/ymwork/act/SplashScreenActivity$1;
.super Ljava/lang/Object;
.source "SplashScreenActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/act/SplashScreenActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/SplashScreenActivity;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/SplashScreenActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/SplashScreenActivity$1;->this$0:Lcom/cymobile/ymwork/act/SplashScreenActivity;

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "service"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/cymobile/ymwork/act/SplashScreenActivity$1;->this$0:Lcom/cymobile/ymwork/act/SplashScreenActivity;

    invoke-static {p2}, Lcom/cymobile/ymwork/ISystemService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cymobile/ymwork/ISystemService;

    move-result-object v1

    iput-object v1, v0, Lcom/cymobile/ymwork/act/SplashScreenActivity;->iSystemService:Lcom/cymobile/ymwork/ISystemService;

    .line 199
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/cymobile/ymwork/act/SplashScreenActivity$1;->this$0:Lcom/cymobile/ymwork/act/SplashScreenActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/cymobile/ymwork/act/SplashScreenActivity;->iSystemService:Lcom/cymobile/ymwork/ISystemService;

    .line 202
    return-void
.end method
