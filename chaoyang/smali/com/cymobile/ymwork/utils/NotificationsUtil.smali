.class public Lcom/cymobile/ymwork/utils/NotificationsUtil;
.super Ljava/lang/Object;
.source "NotificationsUtil.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "NotificationsUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ToastReasonForFailure(Landroid/content/Context;Ljava/lang/Exception;)V
    .locals 6
    .parameter "context"
    .parameter "e"

    .prologue
    const/4 v5, 0x0

    .line 23
    const-string v3, "NotificationsUtil"

    const-string v4, "Toasting for exception: "

    invoke-static {v3, v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 25
    if-nez p1, :cond_0

    .line 26
    const-string v3, "A surprising new problem has occured. Try again!"

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 27
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 69
    .end local p1
    :goto_0
    return-void

    .line 28
    .restart local p1
    :cond_0
    instance-of v3, p1, Ljava/net/SocketTimeoutException;

    if-eqz v3, :cond_1

    .line 29
    const-string v3, "Over capacity, server request timed out!"

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 31
    :cond_1
    instance-of v3, p1, Ljava/net/SocketException;

    if-eqz v3, :cond_2

    .line 32
    const-string v3, "Server not responding"

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 34
    :cond_2
    instance-of v3, p1, Ljava/io/IOException;

    if-eqz v3, :cond_3

    .line 35
    const-string v3, "Network unavailable"

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 37
    :cond_3
    instance-of v3, p1, Lcom/cymobile/ymwork/server/error/LocationException;

    if-eqz v3, :cond_4

    .line 38
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 40
    :cond_4
    instance-of v3, p1, Lcom/cymobile/ymwork/server/error/ServerCredentialsException;

    if-eqz v3, :cond_5

    .line 41
    const-string v3, "Authorization failed."

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 43
    :cond_5
    instance-of v3, p1, Lcom/cymobile/ymwork/server/error/ServerException;

    if-eqz v3, :cond_a

    .line 45
    const-string v1, "\'"

    .line 46
    .local v1, message:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, toastLength:I
    move-object v3, p1

    .line 47
    check-cast v3, Lcom/cymobile/ymwork/server/error/ServerException;

    invoke-virtual {v3}, Lcom/cymobile/ymwork/server/error/ServerException;->getErrorCode()I

    move-result v3

    if-lez v3, :cond_8

    .line 48
    check-cast p1, Lcom/cymobile/ymwork/server/error/ServerException;

    .end local p1
    invoke-virtual {p1}, Lcom/cymobile/ymwork/server/error/ServerException;->getErrorCode()I

    move-result v0

    .line 49
    .local v0, errorcode:I
    const/16 v3, 0x190

    if-eq v0, v3, :cond_6

    const/16 v3, 0x1f4

    if-eq v0, v3, :cond_6

    const/16 v3, 0x194

    if-ne v0, v3, :cond_7

    .line 50
    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09005c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 51
    const/4 v2, 0x1

    .line 63
    .end local v0           #errorcode:I
    :goto_1
    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 53
    .restart local v0       #errorcode:I
    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09005d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 56
    .end local v0           #errorcode:I
    .restart local p1
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_9

    .line 57
    const-string v1, "Invalid Request"

    goto :goto_1

    .line 59
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 60
    const/4 v2, 0x1

    goto :goto_1

    .line 65
    .end local v1           #message:Ljava/lang/String;
    .end local v2           #toastLength:I
    :cond_a
    const-string v3, "A surprising new problem has occured. Try again!"

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 66
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method
