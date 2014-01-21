.class public abstract Lcom/cymobile/ymwork/ISystemService$Stub;
.super Landroid/os/Binder;
.source "ISystemService.java"

# interfaces
.implements Lcom/cymobile/ymwork/ISystemService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/ISystemService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cymobile/ymwork/ISystemService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.cymobile.ymwork.ISystemService"

.field static final TRANSACTION_cancelNotification:I = 0x3

.field static final TRANSACTION_checkNewVersion:I = 0x2

.field static final TRANSACTION_clearNumbers:I = 0x6

.field static final TRANSACTION_getCurrentCaseNumber:I = 0x5

.field static final TRANSACTION_hushReadNumber:I = 0x4

.field static final TRANSACTION_readServerInfo:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.cymobile.ymwork.ISystemService"

    invoke-virtual {p0, p0, v0}, Lcom/cymobile/ymwork/ISystemService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/cymobile/ymwork/ISystemService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.cymobile.ymwork.ISystemService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/cymobile/ymwork/ISystemService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/cymobile/ymwork/ISystemService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/cymobile/ymwork/ISystemService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/cymobile/ymwork/ISystemService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 89
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 42
    :sswitch_0
    const-string v2, "com.cymobile.ymwork.ISystemService"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v2, "com.cymobile.ymwork.ISystemService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/cymobile/ymwork/ISystemService$Stub;->readServerInfo()V

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 54
    :sswitch_2
    const-string v2, "com.cymobile.ymwork.ISystemService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lcom/cymobile/ymwork/ISystemService$Stub;->checkNewVersion()V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 61
    :sswitch_3
    const-string v2, "com.cymobile.ymwork.ISystemService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/cymobile/ymwork/ISystemService$Stub;->cancelNotification()V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 68
    :sswitch_4
    const-string v2, "com.cymobile.ymwork.ISystemService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/cymobile/ymwork/ISystemService$Stub;->hushReadNumber()V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 75
    :sswitch_5
    const-string v2, "com.cymobile.ymwork.ISystemService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/cymobile/ymwork/ISystemService$Stub;->getCurrentCaseNumber()[I

    move-result-object v0

    .line 77
    .local v0, _result:[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_0

    .line 83
    .end local v0           #_result:[I
    :sswitch_6
    const-string v2, "com.cymobile.ymwork.ISystemService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/cymobile/ymwork/ISystemService$Stub;->clearNumbers()V

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
